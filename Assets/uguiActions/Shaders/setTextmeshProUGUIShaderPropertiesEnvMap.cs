// (c) Eric Vander Wal, 2017 All rights reserved.
// Custom Action by DumbGameDev
// www.dumbgamedev.com

using UnityEngine;
using TMPro;

namespace HutongGames.PlayMaker.Actions
{
	[ActionCategory("TextMesh Pro UGUI Shader")]
	[Tooltip("Set Text Mesh Pro UGUI env map shaders.")]

	public class setTextmeshProUGUIShaderPropertiesEnvMap : FsmStateAction
	{
		[RequiredField]
		[CheckForComponent(typeof(TextMeshProUGUI))]
		[Tooltip("Textmesh Pro component is required.")]
		public FsmOwnerDefault gameObject;

        public FsmColor faceColor;
        public FsmColor outlineColor;

        [ActionSection("Texture")]
        public FsmTexture texture;

        public FsmVector3 rotation;
               
        [Tooltip("Check this box to preform this action every frame.")]
		public FsmBool everyFrame;

		TextMeshProUGUI meshproScript;

		public override void Reset()
		{

			gameObject = null;
            outlineColor = null;
            faceColor = null;
            texture = null;
            rotation = null;
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

            meshproScript.fontSharedMaterial.SetVector("_EnvMatrixRotation", rotation.Value);
            meshproScript.fontSharedMaterial.SetTexture("_Cube", texture.Value);
            meshproScript.fontSharedMaterial.SetColor("_ReflectFaceColor", faceColor.Value);
            meshproScript.fontSharedMaterial.SetColor("_ReflectOutlineColor", outlineColor.Value);


        }

    }
}