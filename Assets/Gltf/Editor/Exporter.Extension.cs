﻿using UnityEngine;

namespace Gltf.Serialization
{
    internal sealed partial class Exporter
    {
        private abstract class Extension
        {
            protected Exporter exporter;

            public Extension(Exporter exporter)
            {
                this.exporter = exporter;
            }

            // Return true to overwrite default behavior.
            public virtual bool ExportNode(GameObject gameObject, out int index) { index = -1; return false; }
            public virtual bool ExportAnimation(GameObject gameObject, AnimationClip unityAnimationClip, out int index) { index = -1; return false; }
            public virtual bool ExportMaterial(Material unityMaterial, out int index) { index = -1; return false; }
            public virtual bool ExportTexture(Texture2D unityTexture, string name, out int index) { index = -1; return false; }
            public virtual bool ExportMesh(Renderer renderer, Mesh unityMesh, int materialIndex, out int index) { index = -1; return false; }
            public virtual bool ExportSkin(SkinnedMeshRenderer skinnedMeshRenderer, out int index) { index = -1; return false; }

            public virtual void PostExportNode(int index, GameObject gameObject) { }
            public virtual void PostExportAnimation(int index, GameObject gameObject, AnimationClip unityAnimationClip) { }
            public virtual void PostExportMaterial(int index, Material unityMaterial) { }
            public virtual void PostExportTexture(int index, Texture2D unityTexture) { }
            public virtual void PostExportMesh(int index, Renderer renderer, Mesh unityMesh, int materialIndex) { }
            public virtual void PostExportSkin(int index, SkinnedMeshRenderer skinnedMeshRenderer) { }
        }
    }
}
