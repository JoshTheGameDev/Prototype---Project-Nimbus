// (c) Eric Vander Wal, 2017 All rights reserved.
// Custom Action by DumbGameDev
// www.dumbgamedev.com

using UnityEngine;
using TMPro;

namespace HutongGames.PlayMaker.Actions
{
	[ActionCategory("TextMesh Pro UGUI Shader")]
	[Tooltip("Set Text Mesh Pro lighting shaders UGUI.")]

	public class setTextmeshProUGUIShaderPropertiesLighting : FsmStateAction
	{
		[RequiredField]
		[CheckForComponent(typeof(TextMeshProUGUI))]
		[Tooltip("Textmesh Pro component is required.")]
		public FsmOwnerDefault gameObject;

        [HasFloatSlider(0, 6.2831853f)]
        public FsmFloat lightAngle;

        public FsmColor specularColor;

        [HasFloatSlider(0, 4f)]
        public FsmFloat specularPower;

        [HasFloatSlider(5, 15.0f)]
        public FsmFloat reflectivityPower;

        [HasFloatSlider(0, 1f)]
        public FsmFloat diffuseShadow;

        [HasFloatSlider(1, 0)]
        public FsmFloat ambientShadow;
        
        [Tooltip("Check this box to preform this action every frame.")]
		public FsmBool everyFrame;

		TextMeshProUGUI meshproScript;

		public override void Reset()
		{
            specularPower = null;
            specularColor = null;
            reflectivityPower = null;
            diffuseShadow = null;
            lightAngle = null;
            ambientShadow = null;
            gameObject = null;
            everyFrame = false;
		}

		public override void OnEnter()
		{

           var go = Fsm.GetOwnerDefaultTarget(gameObject);
			meshproScript = go.GetComponent<TextMeshProUGUI>();

			if (!everyFrame.Value)
			{
				DoMeshChange();
				Finish();
			}

		}

		public override void OnUpdate()
		{
			if (everyFrame.Value)
			{
				DoMeshChange();
			}
		}

		void DoMeshChange()
		{

    var go = Fsm.GetOwnerDefaultTarget(gameObject);

            if (go == null)
			{
				return;
			}

           meshproScript.fontSharedMaterial.SetFloat("_LightAngle", lightAngle.Value);
           meshproScript.fontSharedMaterial.SetColor("_SpecularColor", specularColor.Value);
           meshproScript.fontSharedMaterial.SetFloat("_SpecularPower", lightAngle.Value);
           meshproScript.fontSharedMaterial.SetFloat("_Reflectivity", reflectivityPower.Value);
           meshproScript.fontSharedMaterial.SetFloat("_Diffuse", diffuseShadow.Value);
           meshproScript.fontSharedMaterial.SetFloat("_Ambient", ambientShadow.Value);
                      
        }

    }
}