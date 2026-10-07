Shader "Custom/TextMeshProDissolveShader"
{
    Properties
    {
        _MainTex ("Font Texture", 2D) = "white" {}
        _FaceColor ("Face Color", Color) = (1,1,1,1)
        _DissolveThreshold ("Dissolve Threshold", Range(0,1)) = 0.5
        _DissolveColor ("Dissolve Color", Color) = (1,1,1,1)
        _CullMode ("Cull Mode", Float) = 2 // 2 corresponds to back-face culling
    }
    SubShader
    {
        Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" }
        LOD 100

        Cull [_CullMode] // Use the cull mode property

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            struct appdata_t
            {
                float4 vertex : POSITION;
                float2 texcoord : TEXCOORD0;
            };

            struct v2f
            {
                float2 texcoord : TEXCOORD0;
                float4 vertex : SV_POSITION;
            };

            sampler2D _MainTex;
            float4 _FaceColor;
            float _DissolveThreshold;
            fixed4 _DissolveColor;

            v2f vert (appdata_t v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.texcoord = v.texcoord;
                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                fixed4 col = tex2D(_MainTex, i.texcoord) * _FaceColor;

                // 生成噪声值以实现Dissolve效果
                float noise = frac(sin(dot(i.texcoord.xy, float2(12.9898, 78.233))) * 43758.5453);

                if (noise < _DissolveThreshold)
                {
                    discard;
                }

                col = lerp(col, _DissolveColor, noise);
                return col;
            }
            ENDCG
        }
    }
}
