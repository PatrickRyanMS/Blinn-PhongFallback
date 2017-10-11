﻿using System;
using System.Collections.Generic;
using UnityEngine;

public class PbrMaterialManager
{
    private static class ShaderName
    {
        public const string Standard = "Standard";
        public const string StandardSpecularSetup = "Standard (Specular setup)";
    }

    private ObjectTracker objectTracker;
    private Dictionary<SpecularInfo, MetallicInfo> specularToMetallicCache = new Dictionary<SpecularInfo, MetallicInfo>();
    private Dictionary<MetallicInfo, SpecularInfo> metallicToSpecularCache = new Dictionary<MetallicInfo, SpecularInfo>();

    public PbrMaterialManager(ObjectTracker objectTracker)
    {
        this.objectTracker = objectTracker;
    }

    public Material ConvertToMetallic(Material material)
    {
        MetallicInfo metallicInfo;

        var shaderName = material.shader.name;
        switch (shaderName)
        {
            case ShaderName.Standard:
                metallicInfo = material.GetInfo<MetallicInfo>();
                break;

            case ShaderName.StandardSpecularSetup:
                var specularInfo = material.GetInfo<SpecularInfo>();
                if (!this.specularToMetallicCache.TryGetValue(specularInfo, out metallicInfo))
                {
                    metallicInfo = this.ConvertToMetallic(specularInfo);
                    this.specularToMetallicCache.Add(specularInfo, metallicInfo);
                }
                break;

            default:
                throw new NotSupportedException("Shader '" + shaderName + "' is not supported");
        }

        material = this.objectTracker.Add(new Material(Shader.Find(ShaderName.Standard)));
        material.SetInfo(metallicInfo);
        return material;
    }

    public Material ConvertToSpecular(Material material)
    {
        SpecularInfo specularInfo;

        var shaderName = material.shader.name;
        switch (shaderName)
        {
            case ShaderName.Standard:
                var metallicInfo = material.GetInfo<MetallicInfo>();
                if (!this.metallicToSpecularCache.TryGetValue(metallicInfo, out specularInfo))
                {
                    specularInfo = this.ConvertToSpecular(metallicInfo);
                    this.metallicToSpecularCache.Add(metallicInfo, specularInfo);
                }
                break;

            case ShaderName.StandardSpecularSetup:
                specularInfo = material.GetInfo<SpecularInfo>();
                break;

            default:
                throw new NotSupportedException("Shader '" + shaderName + "' is not supported");
        }

        material = this.objectTracker.Add(new Material(Shader.Find(ShaderName.StandardSpecularSetup)));
        material.SetInfo(specularInfo);
        return material;
    }

    private SpecularInfo ConvertToSpecular(MetallicInfo info)
    {
        if (info._MainTex == null || info._MetallicGlossMap == null)
        {
            throw new NotImplementedException();
        }

        if (info._MainTex.width != info._MetallicGlossMap.width ||
            info._MainTex.height != info._MetallicGlossMap.height)
        {
            throw new NotImplementedException();
        }

        var baseColorPixels = info._MainTex.GetPixels();
        var metallicGlossPixels = info._MetallicGlossMap.GetPixels();

        var diffusePixels = new Color[baseColorPixels.Length];
        var specularGlossinessPixels = new Color[baseColorPixels.Length];

        var diffuseTextureFormat = TextureFormat.RGB24;
        for (int i = 0; i < baseColorPixels.Length; i++)
        {
            var metallicRoughness = new MetallicRoughness
            {
                BaseColor = baseColorPixels[i].linear,
                Metallic = Mathf.GammaToLinearSpace(metallicGlossPixels[i].r),
                Roughness = 1.0f - metallicGlossPixels[i].a,
            };

            var specularGlossiness = PbrUtilities.Convert(metallicRoughness);

            if (specularGlossiness.Diffuse.a != 1.0f)
            {
                diffuseTextureFormat = TextureFormat.ARGB32;
            }

            diffusePixels[i] = specularGlossiness.Diffuse.gamma;

            specularGlossinessPixels[i] = specularGlossiness.Specular.gamma;
            specularGlossinessPixels[i].a = specularGlossiness.Glossiness;
        }

        var diffuseTexture = this.objectTracker.Add(new Texture2D(info._MainTex.width, info._MainTex.height, diffuseTextureFormat, false));
        diffuseTexture.SetPixels(diffusePixels);
        diffuseTexture.Apply();

        var specularGlossinessTexture = this.objectTracker.Add(new Texture2D(info._MainTex.width, info._MainTex.height, TextureFormat.ARGB32, false));
        specularGlossinessTexture.SetPixels(specularGlossinessPixels);
        specularGlossinessTexture.Apply();

        return new SpecularInfo
        {
            _Color = Color.white,
            _MainTex = diffuseTexture,
            _SpecColor = Color.white,
            _Glossiness = 1.0f,
            _SpecGlossMap = specularGlossinessTexture,
            _GlossMapScale = 1.0f,
            _SmoothnessTextureChannel = 0.0f,
        };
    }

    private MetallicInfo ConvertToMetallic(SpecularInfo info)
    {
        if (info._MainTex == null || info._SpecGlossMap == null)
        {
            throw new NotImplementedException();
        }

        if (info._MainTex.width != info._SpecGlossMap.width ||
            info._MainTex.height != info._SpecGlossMap.height)
        {
            throw new NotImplementedException();
        }

        var diffusePixels = info._MainTex.GetPixels();
        var specGlossPixels = info._SpecGlossMap.GetPixels();

        var baseColorPixels = new Color[diffusePixels.Length];
        var metallicGlossPixels = new Color[diffusePixels.Length];

        var baseColorTextureFormat = TextureFormat.RGB24;
        for (int i = 0; i < diffusePixels.Length; i++)
        {
            var specularGlossiness = new SpecularGlossiness
            {
                Diffuse = diffusePixels[i].linear,
                Specular = specGlossPixels[i].linear,
                Glossiness = specGlossPixels[i].a
            };

            var metallicRoughness = PbrUtilities.Convert(specularGlossiness);

            if (metallicRoughness.BaseColor.a != 1.0f)
            {
                baseColorTextureFormat = TextureFormat.ARGB32;
            }

            baseColorPixels[i] = metallicRoughness.BaseColor.gamma;

            var metallic = Mathf.LinearToGammaSpace(metallicRoughness.Metallic);
            var glossiness = 1.0f - metallicRoughness.Roughness;
            metallicGlossPixels[i] = new Color(metallic, metallic, metallic, glossiness);
        }

        var baseColorTexture = this.objectTracker.Add(new Texture2D(info._MainTex.width, info._MainTex.height, baseColorTextureFormat, false));
        baseColorTexture.SetPixels(baseColorPixels);
        baseColorTexture.Apply();

        var metallicGlossTexture = this.objectTracker.Add(new Texture2D(info._MainTex.width, info._MainTex.height, TextureFormat.ARGB32, false));
        metallicGlossTexture.SetPixels(metallicGlossPixels);
        metallicGlossTexture.Apply();

        return new MetallicInfo
        {
            _Color = Color.white,
            _MainTex = baseColorTexture,
            _Metallic = 1.0f,
            _Glossiness = 0.0f,
            _MetallicGlossMap = metallicGlossTexture,
            _GlossMapScale = 1.0f,
            _SmoothnessTextureChannel = 0.0f,
        };
    }
}
