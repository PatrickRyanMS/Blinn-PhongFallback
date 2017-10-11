﻿using Newtonsoft.Json;
using System;
using System.Linq;
using UnityEditor;
using UnityEngine;

namespace Gltf.Serialization
{
    public class ExportWindow : EditorWindow
    {
        private static class PrefKeys
        {
            public const string OutputDirectory = "Gltf.Serialization.ExportWindow.OutputDirectory";
            public const string OutputBinary = "Gltf.Serialization.ExportWindow.OutputBinary";
            public const string JsonFormatting = "Gltf.Serialization.ExportWindow.JsonFormatting";
            public const string ImageFormat = "Gltf.Serialization.ExportWindow.ImageFormat";
            public const string BakeAnimations = "Gltf.Serialization.ExportWindow.BakeAnimations";
            public const string ShowExtensions = "Gltf.Serialization.ExportWindow.ShowExtension";
            public const string Extension_KHR_materials_pbrSpecularGlossiness = "Gltf.Serialization.ExportWindow.Extension.KHR_materials_pbrSpecularGlossiness";
        }

        private string outputDirectory;
        private bool outputBinary;
        private Formatting jsonFormatting;
        private ImageFormat imageFormat;
        private bool bakeAnimations;
        private bool showExtensions;
        private bool extension_KHR_materials_pbrSpecularGlossiness;

        [MenuItem("Assets/glTF Tools for Unity/Export")]
        public static new void Show()
        {
            GetWindow(typeof(ExportWindow), true, "glTF Tools for Unity - Export").ShowUtility();
        }

        private void Awake()
        {
            this.outputDirectory = EditorPrefs.GetString(PrefKeys.OutputDirectory, "Output");
            this.outputBinary = EditorPrefs.GetBool(PrefKeys.OutputBinary, false);
            this.jsonFormatting = (Formatting)EditorPrefs.GetInt(PrefKeys.JsonFormatting, (int)Formatting.Indented);
            this.imageFormat = (ImageFormat)EditorPrefs.GetInt(PrefKeys.ImageFormat, (int)ImageFormat.PNG);
            this.bakeAnimations = EditorPrefs.GetBool(PrefKeys.BakeAnimations, false);
            this.showExtensions = EditorPrefs.GetBool(PrefKeys.ShowExtensions, true);
            this.extension_KHR_materials_pbrSpecularGlossiness = EditorPrefs.GetBool(PrefKeys.Extension_KHR_materials_pbrSpecularGlossiness, false);
        }

        private void OnDestroy()
        {
            EditorPrefs.SetString(PrefKeys.OutputDirectory, this.outputDirectory);
            EditorPrefs.SetBool(PrefKeys.OutputBinary, this.outputBinary);
            EditorPrefs.SetInt(PrefKeys.JsonFormatting, (int)this.jsonFormatting);
            EditorPrefs.SetInt(PrefKeys.ImageFormat, (int)this.imageFormat);
            EditorPrefs.SetBool(PrefKeys.BakeAnimations, this.bakeAnimations);
            EditorPrefs.SetBool(PrefKeys.ShowExtensions, this.showExtensions);
            EditorPrefs.SetBool(PrefKeys.Extension_KHR_materials_pbrSpecularGlossiness, this.extension_KHR_materials_pbrSpecularGlossiness);
        }

        private void OnGUI()
        {
            this.outputDirectory = EditorGUILayout.TextField("Output Directory", this.outputDirectory);
            this.outputBinary = EditorGUILayout.Toggle("Output Binary", this.outputBinary);
            this.jsonFormatting = (Formatting)EditorGUILayout.EnumPopup("JSON Formatting", this.jsonFormatting);
            this.imageFormat = (ImageFormat)EditorGUILayout.EnumPopup("Image Format", this.imageFormat);
            this.bakeAnimations = EditorGUILayout.Toggle("Bake Animations", this.bakeAnimations);

            EditorGUILayout.Separator();

            this.showExtensions = EditorGUILayout.Foldout(this.showExtensions, "Extensions");
            if (this.showExtensions)
            {
                EditorGUI.indentLevel++;
                this.extension_KHR_materials_pbrSpecularGlossiness = EditorGUILayout.ToggleLeft("KHR_materials_pbrSpecularGlossiness", this.extension_KHR_materials_pbrSpecularGlossiness);
                EditorGUI.indentLevel--;
            }

            EditorGUILayout.LabelField(string.Empty, GUI.skin.horizontalSlider);

            using (new GUILayout.HorizontalScope())
            {
                GUILayout.FlexibleSpace();
                if (GUILayout.Button("Export"))
                {
                    var extensions = Extensions.None;
                    if (this.extension_KHR_materials_pbrSpecularGlossiness)
                    {
                        extensions |= Extensions.KHR_materials_pbrSpecularGlossiness;
                    }

                    Selection.gameObjects.ForEach(gameObject =>
                    {
                        gameObject.Export(this.outputDirectory, gameObject.name, this.outputBinary, new ExportSettings(this.jsonFormatting, this.imageFormat, this.bakeAnimations, extensions));
                        Debug.LogFormat(gameObject, "[{0}] Exported {1}", DateTime.Now, gameObject.name);
                    });

                    Debug.LogFormat("[{0}] Exported {1} game object(s)", DateTime.Now, Selection.gameObjects.Count());
                }
            }
        }
    }
}
