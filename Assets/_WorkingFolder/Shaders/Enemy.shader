// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:4,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.1,fgrn:14,fgrf:22,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32953,y:32712,varname:node_4795,prsc:2|normal-6958-OUT,emission-6958-OUT,custl-2368-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32251,y:32746,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b54a8b64c13d7482aac774bba4939a5d,ntxv:0,isnm:False|UVIN-9847-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32495,y:32793,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-8003-OUT,D-2368-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32251,y:32917,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Lerp,id:6958,x:32759,y:32813,varname:node_6958,prsc:2|A-8003-OUT,B-2393-OUT,T-2797-OUT;n:type:ShaderForge.SFN_Multiply,id:2797,x:32495,y:32917,varname:node_2797,prsc:2|A-6074-A,B-2053-A;n:type:ShaderForge.SFN_Vector1,id:8003,x:32495,y:32731,varname:node_8003,prsc:2,v1:0.75;n:type:ShaderForge.SFN_Panner,id:7242,x:31510,y:32760,varname:node_7242,prsc:2,spu:0.1,spv:0.1|UVIN-8111-UVOUT,DIST-7571-OUT;n:type:ShaderForge.SFN_TexCoord,id:8111,x:31331,y:32760,varname:node_8111,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Distance,id:7571,x:31361,y:32952,varname:node_7571,prsc:2|A-5591-OUT,B-7070-OUT;n:type:ShaderForge.SFN_Vector1,id:5591,x:31176,y:32952,varname:node_5591,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:7070,x:31166,y:33042,varname:node_7070,prsc:2,v1:1;n:type:ShaderForge.SFN_AmbientLight,id:534,x:32201,y:33294,varname:node_534,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2368,x:32628,y:33070,varname:node_2368,prsc:2|A-534-RGB,B-6988-OUT,C-7641-RGB;n:type:ShaderForge.SFN_Vector1,id:6988,x:32305,y:33445,varname:node_6988,prsc:2,v1:5;n:type:ShaderForge.SFN_Color,id:7641,x:32225,y:33100,ptovrint:False,ptlb:node_7641,ptin:_node_7641,varname:node_7641,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5378236,c2:0.525519,c3:0.8823529,c4:1;n:type:ShaderForge.SFN_Vector1,id:3265,x:31656,y:32863,varname:node_3265,prsc:2,v1:1;n:type:ShaderForge.SFN_Rotator,id:1790,x:31851,y:32746,varname:node_1790,prsc:2|UVIN-7242-UVOUT,SPD-3265-OUT;n:type:ShaderForge.SFN_UVTile,id:9847,x:32064,y:32746,varname:node_9847,prsc:2|UVIN-1790-UVOUT,WDT-123-OUT,HGT-3424-OUT,TILE-1809-OUT;n:type:ShaderForge.SFN_Vector1,id:123,x:31745,y:32974,varname:node_123,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector1,id:3424,x:31809,y:33038,varname:node_3424,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector1,id:1809,x:31873,y:33102,varname:node_1809,prsc:2,v1:0.25;proporder:6074-7641;pass:END;sub:END;*/

Shader "Shader Forge/Enemy" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _node_7641 ("node_7641", Color) = (0.5378236,0.525519,0.8823529,1)
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend DstColor Zero
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 xboxone 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _node_7641;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float node_8003 = 0.75;
                float node_123 = 2.0;
                float node_1809 = 0.25;
                float2 node_9847_tc_rcp = float2(1.0,1.0)/float2( node_123, 2.0 );
                float node_9847_ty = floor(node_1809 * node_9847_tc_rcp.x);
                float node_9847_tx = node_1809 - node_123 * node_9847_ty;
                float4 node_9570 = _Time;
                float node_1790_ang = node_9570.g;
                float node_1790_spd = 1.0;
                float node_1790_cos = cos(node_1790_spd*node_1790_ang);
                float node_1790_sin = sin(node_1790_spd*node_1790_ang);
                float2 node_1790_piv = float2(0.5,0.5);
                float2 node_1790 = (mul((i.uv0+distance(1.0,1.0)*float2(0.1,0.1))-node_1790_piv,float2x2( node_1790_cos, -node_1790_sin, node_1790_sin, node_1790_cos))+node_1790_piv);
                float2 node_9847 = (node_1790 + float2(node_9847_tx, node_9847_ty)) * node_9847_tc_rcp;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_9847, _MainTex));
                float3 node_2368 = (UNITY_LIGHTMODEL_AMBIENT.rgb*5.0*_node_7641.rgb);
                float3 node_6958 = lerp(float3(node_8003,node_8003,node_8003),(_MainTex_var.rgb*i.vertexColor.rgb*node_8003*node_2368),(_MainTex_var.a*i.vertexColor.a));
                float3 normalLocal = node_6958;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
////// Lighting:
////// Emissive:
                float3 emissive = node_6958;
                float3 finalColor = emissive + node_2368;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0.5,0.5,0.5,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
