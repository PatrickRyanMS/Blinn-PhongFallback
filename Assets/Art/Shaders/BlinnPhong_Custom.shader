// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33868,y:32582,varname:node_9361,prsc:2|normal-5721-RGB,emission-4091-OUT,custl-5085-OUT,clip-5269-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8068,x:32635,y:33071,varname:node_8068,prsc:2;n:type:ShaderForge.SFN_LightColor,id:3406,x:32635,y:32927,varname:node_3406,prsc:2;n:type:ShaderForge.SFN_LightVector,id:6869,x:31488,y:32432,varname:node_6869,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9684,x:31488,y:32558,prsc:2,pt:True;n:type:ShaderForge.SFN_HalfVector,id:9471,x:31487,y:32884,varname:node_9471,prsc:2;n:type:ShaderForge.SFN_Dot,id:7782,x:31699,y:32516,cmnt:Lambert,varname:node_7782,prsc:2,dt:0|A-6869-OUT,B-9684-OUT;n:type:ShaderForge.SFN_Dot,id:3269,x:31699,y:32881,cmnt:Blinn-Phong,varname:node_3269,prsc:2,dt:1|A-9684-OUT,B-9471-OUT;n:type:ShaderForge.SFN_Multiply,id:2746,x:32401,y:32863,cmnt:Specular Contribution,varname:node_2746,prsc:2|A-3505-OUT,B-5267-OUT,C-7706-OUT,D-8176-RGB;n:type:ShaderForge.SFN_Tex2d,id:851,x:31489,y:32263,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_851,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:99c3ab03e446a204ebf9ad25174d3f02,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1941,x:32405,y:32574,cmnt:Diffuse Contribution,varname:node_1941,prsc:2|A-544-OUT,B-3505-OUT,C-6688-OUT;n:type:ShaderForge.SFN_Color,id:5927,x:31896,y:32275,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Exp,id:1700,x:31699,y:33027,varname:node_1700,prsc:2,et:1|IN-65-OUT;n:type:ShaderForge.SFN_Power,id:5267,x:31897,y:32891,cmnt:Specular gloss from map,varname:node_5267,prsc:2|VAL-3269-OUT,EXP-1700-OUT;n:type:ShaderForge.SFN_Add,id:2159,x:32635,y:32787,cmnt:Combine,varname:node_2159,prsc:2|A-1941-OUT,B-2746-OUT;n:type:ShaderForge.SFN_Multiply,id:5085,x:32882,y:32927,cmnt:Attenuate and Color,varname:node_5085,prsc:2|A-2159-OUT,B-3406-RGB,C-8068-OUT;n:type:ShaderForge.SFN_Color,id:4865,x:31280,y:33369,ptovrint:False,ptlb:Spec Color,ptin:_SpecColor,varname:node_4865,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_AmbientLight,id:7528,x:32792,y:32526,varname:node_7528,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2460,x:33011,y:32480,cmnt:Ambient Light,varname:node_2460,prsc:2|A-544-OUT,B-7528-RGB;n:type:ShaderForge.SFN_Multiply,id:544,x:32081,y:32209,cmnt:Diffuse Color,varname:node_544,prsc:2|A-4998-OUT,B-5927-RGB;n:type:ShaderForge.SFN_Set,id:6449,x:31659,y:32349,varname:AlphaClip,prsc:2|IN-851-A;n:type:ShaderForge.SFN_Get,id:5269,x:32854,y:33061,varname:node_5269,prsc:2|IN-6449-OUT;n:type:ShaderForge.SFN_Tex2d,id:5721,x:33561,y:32472,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_5721,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f38465f7a560ac44188ccbd091666dee,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:609,x:31893,y:32493,varname:node_609,prsc:2|A-8354-OUT,B-7782-OUT;n:type:ShaderForge.SFN_Vector1,id:8354,x:31699,y:32445,varname:node_8354,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:3081,x:30916,y:33035,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_3081,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:db1533004c1f7cc47a5bc6397201d58f,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Set,id:4318,x:31317,y:32936,varname:Metallic,prsc:2|IN-3081-R;n:type:ShaderForge.SFN_Set,id:4440,x:31659,y:32265,varname:Diffuse,prsc:2|IN-851-RGB;n:type:ShaderForge.SFN_Lerp,id:8034,x:31487,y:33446,cmnt:Metallic reflects base color in spec while dieletric reflects spec color,varname:node_8034,prsc:2|A-4865-RGB,B-1515-OUT,T-9608-OUT;n:type:ShaderForge.SFN_Get,id:1515,x:31259,y:33522,varname:node_1515,prsc:2|IN-4440-OUT;n:type:ShaderForge.SFN_Get,id:9608,x:31259,y:33581,varname:node_9608,prsc:2|IN-4318-OUT;n:type:ShaderForge.SFN_Tex2d,id:8106,x:33011,y:32629,ptovrint:False,ptlb:Emissive,ptin:_Emissive,varname:node_8106,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:349419fabc93a7c44aab4dd35355c9ec,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:4091,x:33561,y:32667,cmnt: Add emissive map,varname:node_4091,prsc:2|A-2460-OUT,B-9470-OUT;n:type:ShaderForge.SFN_Slider,id:3829,x:32854,y:32807,ptovrint:False,ptlb:Emissive Power,ptin:_EmissivePower,varname:node_3829,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:9470,x:33232,y:32711,cmnt:Power of emission applied,varname:node_9470,prsc:2|A-8106-RGB,B-3829-OUT;n:type:ShaderForge.SFN_Add,id:3505,x:32094,y:32446,cmnt:Half-Lambert,varname:node_3505,prsc:2|A-8354-OUT,B-609-OUT,C-9538-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:65,x:31487,y:33027,varname:node_65,prsc:2,a:1,b:11|IN-3081-A;n:type:ShaderForge.SFN_Get,id:5029,x:30906,y:33212,varname:node_5029,prsc:2|IN-4440-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5753,x:31094,y:33212,varname:node_5753,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-5029-OUT;n:type:ShaderForge.SFN_Multiply,id:7706,x:31770,y:33281,varname:node_7706,prsc:2|A-7129-OUT,B-8034-OUT;n:type:ShaderForge.SFN_OneMinus,id:5469,x:31280,y:33212,varname:node_5469,prsc:2|IN-5753-OUT;n:type:ShaderForge.SFN_Multiply,id:7129,x:31487,y:33209,cmnt:Gloss x Diffuse Green to simulate spec,varname:node_7129,prsc:2|A-3081-A,B-5469-OUT;n:type:ShaderForge.SFN_Get,id:4998,x:31875,y:32191,varname:node_4998,prsc:2|IN-4440-OUT;n:type:ShaderForge.SFN_Cubemap,id:2571,x:31606,y:34024,ptovrint:False,ptlb:HDRI,ptin:_HDRI,varname:node_2571,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,cube:f80d47581a2d96243bf40e8c38433a06,pvfc:0|MIP-664-OUT;n:type:ShaderForge.SFN_Lerp,id:6228,x:32039,y:33776,varname:node_6228,prsc:2|A-5377-OUT,B-2571-RGB,T-1168-OUT;n:type:ShaderForge.SFN_Vector1,id:5377,x:31606,y:33817,varname:node_5377,prsc:2,v1:0;n:type:ShaderForge.SFN_ConstantLerp,id:664,x:31379,y:34024,varname:node_664,prsc:2,a:0,b:4|IN-5586-OUT;n:type:ShaderForge.SFN_Lerp,id:524,x:32039,y:33906,varname:node_524,prsc:2|A-9524-OUT,B-2571-RGB,T-1168-OUT;n:type:ShaderForge.SFN_Vector1,id:9524,x:31606,y:33875,varname:node_9524,prsc:2,v1:1;n:type:ShaderForge.SFN_Set,id:1872,x:31317,y:33111,varname:Gloss,prsc:2|IN-3081-A;n:type:ShaderForge.SFN_Get,id:1168,x:31585,y:33940,varname:node_1168,prsc:2|IN-1872-OUT;n:type:ShaderForge.SFN_Set,id:4174,x:33105,y:33990,varname:ReflectDark,prsc:2|IN-4474-OUT;n:type:ShaderForge.SFN_Set,id:5936,x:33105,y:33758,varname:ReflectLight,prsc:2|IN-3990-OUT;n:type:ShaderForge.SFN_Get,id:9538,x:31872,y:32628,varname:node_9538,prsc:2|IN-5936-OUT;n:type:ShaderForge.SFN_Get,id:6688,x:31880,y:32778,varname:node_6688,prsc:2|IN-4174-OUT;n:type:ShaderForge.SFN_Get,id:8344,x:32022,y:34043,varname:node_8344,prsc:2|IN-4318-OUT;n:type:ShaderForge.SFN_OneMinus,id:9983,x:32259,y:34067,varname:node_9983,prsc:2|IN-8344-OUT;n:type:ShaderForge.SFN_Add,id:6444,x:32488,y:34010,varname:node_6444,prsc:2|A-524-OUT,B-9983-OUT;n:type:ShaderForge.SFN_Multiply,id:4540,x:32328,y:33777,varname:node_4540,prsc:2|A-6228-OUT,B-7500-OUT,C-8344-OUT;n:type:ShaderForge.SFN_Get,id:5586,x:31172,y:34024,varname:node_5586,prsc:2|IN-1872-OUT;n:type:ShaderForge.SFN_Tex2d,id:8176,x:32138,y:33208,ptovrint:False,ptlb:Occlusion,ptin:_Occlusion,varname:node_8176,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d87a7d3a17e6f264e82f33835589ed13,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Dot,id:4213,x:31699,y:32688,varname:node_4213,prsc:2,dt:0|A-9684-OUT,B-8523-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:8523,x:31487,y:32714,varname:node_8523,prsc:2;n:type:ShaderForge.SFN_Set,id:6372,x:31880,y:32701,varname:HorizonOcclusion,prsc:2|IN-4213-OUT;n:type:ShaderForge.SFN_Get,id:7500,x:32018,y:33715,varname:node_7500,prsc:2|IN-6372-OUT;n:type:ShaderForge.SFN_Slider,id:2906,x:32490,y:33901,ptovrint:False,ptlb:Enable CubeMap,ptin:_EnableCubeMap,varname:node_2906,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:5883,x:32647,y:33717,varname:node_5883,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5471,x:32647,y:33816,varname:node_5471,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:4474,x:32931,y:33990,varname:node_4474,prsc:2|A-5471-OUT,B-6444-OUT,T-2906-OUT;n:type:ShaderForge.SFN_Lerp,id:3990,x:32931,y:33758,varname:node_3990,prsc:2|A-5883-OUT,B-4540-OUT,T-2906-OUT;proporder:5927-4865-851-5721-3081-8176-8106-2571-3829-2906;pass:END;sub:END;*/

Shader "EDM/BlinnPhong_Custom" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _SpecColor ("Spec Color", Color) = (1,1,1,1)
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _Metallic ("Metallic", 2D) = "white" {}
        _Occlusion ("Occlusion", 2D) = "white" {}
        _Emissive ("Emissive", 2D) = "white" {}
        _HDRI ("HDRI", Cube) = "_Skybox" {}
        _EmissivePower ("Emissive Power", Range(0, 1)) = 1
        _EnableCubeMap ("Enable CubeMap", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _Color;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Metallic; uniform float4 _Metallic_ST;
            uniform sampler2D _Emissive; uniform float4 _Emissive_ST;
            uniform float _EmissivePower;
            uniform samplerCUBE _HDRI;
            uniform sampler2D _Occlusion; uniform float4 _Occlusion_ST;
            uniform float _EnableCubeMap;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float AlphaClip = _Diffuse_var.a;
                clip(AlphaClip - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float3 Diffuse = _Diffuse_var.rgb;
                float3 node_544 = (Diffuse*_Color.rgb); // Diffuse Color
                float4 _Emissive_var = tex2D(_Emissive,TRANSFORM_TEX(i.uv0, _Emissive));
                float3 emissive = ((node_544*UNITY_LIGHTMODEL_AMBIENT.rgb)+(_Emissive_var.rgb*_EmissivePower));
                float node_8354 = 0.5;
                float node_5883 = 0.0;
                float node_5377 = 0.0;
                float4 _Metallic_var = tex2D(_Metallic,TRANSFORM_TEX(i.uv0, _Metallic));
                float Gloss = _Metallic_var.a;
                float4 _HDRI_var = texCUBElod(_HDRI,float4(viewReflectDirection,lerp(0,4,Gloss)));
                float node_1168 = Gloss;
                float node_4213 = dot(normalDirection,viewReflectDirection);
                float HorizonOcclusion = node_4213;
                float node_7500 = HorizonOcclusion;
                float Metallic = _Metallic_var.r;
                float node_8344 = Metallic;
                float3 ReflectLight = lerp(float3(node_5883,node_5883,node_5883),(lerp(float3(node_5377,node_5377,node_5377),_HDRI_var.rgb,node_1168)*node_7500*node_8344),_EnableCubeMap);
                float3 node_9538 = ReflectLight;
                float3 node_3505 = (node_8354+(node_8354*dot(lightDirection,normalDirection))+node_9538); // Half-Lambert
                float node_5471 = 1.0;
                float node_9524 = 1.0;
                float3 node_6444 = (lerp(float3(node_9524,node_9524,node_9524),_HDRI_var.rgb,node_1168)+(1.0 - node_8344));
                float ReflectDark = lerp(float3(node_5471,node_5471,node_5471),node_6444,_EnableCubeMap);
                float node_6688 = ReflectDark;
                float3 node_1941 = (node_544*node_3505*node_6688); // Diffuse Contribution
                float4 _Occlusion_var = tex2D(_Occlusion,TRANSFORM_TEX(i.uv0, _Occlusion));
                float3 finalColor = emissive + ((node_1941+(node_3505*pow(max(0,dot(normalDirection,halfDirection)),exp2(lerp(1,11,_Metallic_var.a)))*((_Metallic_var.a*(1.0 - Diffuse.g))*lerp(_SpecColor.rgb,Diffuse,Metallic))*_Occlusion_var.rgb))*_LightColor0.rgb*attenuation);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _Color;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Metallic; uniform float4 _Metallic_ST;
            uniform sampler2D _Emissive; uniform float4 _Emissive_ST;
            uniform float _EmissivePower;
            uniform samplerCUBE _HDRI;
            uniform sampler2D _Occlusion; uniform float4 _Occlusion_ST;
            uniform float _EnableCubeMap;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float AlphaClip = _Diffuse_var.a;
                clip(AlphaClip - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 Diffuse = _Diffuse_var.rgb;
                float3 node_544 = (Diffuse*_Color.rgb); // Diffuse Color
                float node_8354 = 0.5;
                float node_5883 = 0.0;
                float node_5377 = 0.0;
                float4 _Metallic_var = tex2D(_Metallic,TRANSFORM_TEX(i.uv0, _Metallic));
                float Gloss = _Metallic_var.a;
                float4 _HDRI_var = texCUBElod(_HDRI,float4(viewReflectDirection,lerp(0,4,Gloss)));
                float node_1168 = Gloss;
                float node_4213 = dot(normalDirection,viewReflectDirection);
                float HorizonOcclusion = node_4213;
                float node_7500 = HorizonOcclusion;
                float Metallic = _Metallic_var.r;
                float node_8344 = Metallic;
                float3 ReflectLight = lerp(float3(node_5883,node_5883,node_5883),(lerp(float3(node_5377,node_5377,node_5377),_HDRI_var.rgb,node_1168)*node_7500*node_8344),_EnableCubeMap);
                float3 node_9538 = ReflectLight;
                float3 node_3505 = (node_8354+(node_8354*dot(lightDirection,normalDirection))+node_9538); // Half-Lambert
                float node_5471 = 1.0;
                float node_9524 = 1.0;
                float3 node_6444 = (lerp(float3(node_9524,node_9524,node_9524),_HDRI_var.rgb,node_1168)+(1.0 - node_8344));
                float ReflectDark = lerp(float3(node_5471,node_5471,node_5471),node_6444,_EnableCubeMap);
                float node_6688 = ReflectDark;
                float3 node_1941 = (node_544*node_3505*node_6688); // Diffuse Contribution
                float4 _Occlusion_var = tex2D(_Occlusion,TRANSFORM_TEX(i.uv0, _Occlusion));
                float3 finalColor = ((node_1941+(node_3505*pow(max(0,dot(normalDirection,halfDirection)),exp2(lerp(1,11,_Metallic_var.a)))*((_Metallic_var.a*(1.0 - Diffuse.g))*lerp(_SpecColor.rgb,Diffuse,Metallic))*_Occlusion_var.rgb))*_LightColor0.rgb*attenuation);
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float AlphaClip = _Diffuse_var.a;
                clip(AlphaClip - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
