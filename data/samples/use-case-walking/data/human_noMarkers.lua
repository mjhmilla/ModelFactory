return {
metadata = {
	 {scaling_used = "deLeva1996_segmentedTrunk",
	 subject_age = 30.0,
	 subject_height = 1.68,
	 subject_weight = 55.00,
	 subject_gender = "female",
	 subject_pelvisWidth = 0.2400,
	 subject_hipCenterWidth = 0.1700,
	 subject_shoulderCenterWidth = 0.4000,
	 subject_heelAnkleXOffset = 0.0800,
	 subject_heelAnkleZOffset = 0.0900,
	 subject_shoulderNeckZOffset = 0.0700,
	 subject_footWidth = 0.0900},
},
gravity = { 0, 0, -9.81,},
configuration = {
	axis_front = { 1, 0, 0,},
	axis_right = { 0, -1, 0,},
	axis_up = { 0, 0, 1,},
},
points = {
	{name = "Heel_Medial_R", body = "FootR_Sagittal", point = {-0.080000, 0.045000, -0.090000,},},
	{name = "Heel_Lateral_R", body = "FootR_Sagittal", point = {-0.080000, -0.045000, -0.090000,},},
	{name = "Toe_R", body = "FootR_Sagittal", point = {0.085797, 0.000000, -0.090000,},},
	{name = "Heel_Medial_L", body = "FootL_Sagittal", point = {-0.080000, -0.045000, -0.090000,},},
	{name = "Heel_Lateral_L", body = "FootL_Sagittal", point = {-0.080000, 0.045000, -0.090000,},},
	{name = "Toe_L", body = "FootL_Sagittal", point = {0.085797, 0.000000, -0.090000,},},
},
constraint_sets = {
	 FootRightFlat = {
	{point = "Heel_Medial_R", normal = {1, 0, 0,},},
	{point = "Heel_Medial_R", normal = {0, 1, 0,},},
	{point = "Heel_Medial_R", normal = {0, 0, 1,},},
	{point = "Heel_Lateral_R", normal = {1, 0, 0,},},
	{point = "Heel_Lateral_R", normal = {0, 1, 0,},},
	{point = "Heel_Lateral_R", normal = {0, 0, 1,},},
	{point = "Toe_R", normal = {0, 1, 0,},},
	{point = "Toe_R", normal = {0, 0, 1,},},
	},
	 RightToe = {
	{point = "Toe_R", normal = {1, 0, 0,},},
	{point = "Toe_R", normal = {0, 1, 0,},},
	{point = "Toe_R", normal = {0, 0, 1,},},
	},
	 RightToeLeftHeel = {
	{point = "Toe_R", normal = {1, 0, 0,},},
	{point = "Toe_R", normal = {0, 1, 0,},},
	{point = "Toe_R", normal = {0, 0, 1,},},
	{point = "Heel_Medial_L", normal = {1, 0, 0,},},
	{point = "Heel_Medial_L", normal = {0, 1, 0,},},
	{point = "Heel_Medial_L", normal = {0, 0, 1,},},
	{point = "Heel_Lateral_L", normal = {1, 0, 0,},},
	{point = "Heel_Lateral_L", normal = {0, 1, 0,},},
	{point = "Heel_Lateral_L", normal = {0, 0, 1,},},
	},
	 RightToeLeftFlat = {
	{point = "Toe_R", normal = {1, 0, 0,},},
	{point = "Toe_R", normal = {0, 1, 0,},},
	{point = "Toe_R", normal = {0, 0, 1,},},
	{point = "Heel_Medial_L", normal = {1, 0, 0,},},
	{point = "Heel_Medial_L", normal = {0, 1, 0,},},
	{point = "Heel_Medial_L", normal = {0, 0, 1,},},
	{point = "Heel_Lateral_L", normal = {1, 0, 0,},},
	{point = "Heel_Lateral_L", normal = {0, 1, 0,},},
	{point = "Heel_Lateral_L", normal = {0, 0, 1,},},
	{point = "Toe_L", normal = {0, 1, 0,},},
	{point = "Toe_L", normal = {0, 0, 1,},},
	},
	 FootLeftFlat = {
	{point = "Heel_Medial_L", normal = {1, 0, 0,},},
	{point = "Heel_Medial_L", normal = {0, 1, 0,},},
	{point = "Heel_Medial_L", normal = {0, 0, 1,},},
	{point = "Heel_Lateral_L", normal = {1, 0, 0,},},
	{point = "Heel_Lateral_L", normal = {0, 1, 0,},},
	{point = "Heel_Lateral_L", normal = {0, 0, 1,},},
	{point = "Toe_L", normal = {0, 1, 0,},},
	{point = "Toe_L", normal = {0, 0, 1,},},
	},
	 LeftToe = {
	{point = "Toe_L", normal = {1, 0, 0,},},
	{point = "Toe_L", normal = {0, 1, 0,},},
	{point = "Toe_L", normal = {0, 0, 1,},},
	},
	 LeftToeRightHeel = {
	{point = "Toe_L", normal = {1, 0, 0,},},
	{point = "Toe_L", normal = {0, 1, 0,},},
	{point = "Toe_L", normal = {0, 0, 1,},},
	{point = "Heel_Medial_R", normal = {1, 0, 0,},},
	{point = "Heel_Medial_R", normal = {0, 1, 0,},},
	{point = "Heel_Medial_R", normal = {0, 0, 1,},},
	{point = "Heel_Lateral_R", normal = {1, 0, 0,},},
	{point = "Heel_Lateral_R", normal = {0, 1, 0,},},
	{point = "Heel_Lateral_R", normal = {0, 0, 1,},},
	},
	 LeftToeRightFlat = {
	{point = "Toe_L", normal = {1, 0, 0,},},
	{point = "Toe_L", normal = {0, 1, 0,},},
	{point = "Toe_L", normal = {0, 0, 1,},},
	{point = "Heel_Medial_R", normal = {1, 0, 0,},},
	{point = "Heel_Medial_R", normal = {0, 1, 0,},},
	{point = "Heel_Medial_R", normal = {0, 0, 1,},},
	{point = "Heel_Lateral_R", normal = {1, 0, 0,},},
	{point = "Heel_Lateral_R", normal = {0, 1, 0,},},
	{point = "Heel_Lateral_R", normal = {0, 0, 1,},},
	{point = "Toe_R", normal = {0, 1, 0,},},
	{point = "Toe_R", normal = {0, 0, 1,},},
	},
},
frames = {
	{name   = "Pelvis_Sagittal",
	parent = "ROOT",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, 0.000000,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 6.858500,
		com = 	{ 0.000000, 0.000000, 0.089279,},
		inertia = 
			{{ 0.039717, 0.000000, 0.000000,},
			{ 0.000000, 0.034234, 0.000000,},
			{ 0.000000, 0.000000, 0.041761,},},
	},
	joint= 
		{{ 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000,},
		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "pelvis.obj",
		dimensions  = 	{ 0.240000, 0.300000, 0.263620,},
		mesh_center = 	{ 0.000000, 0.000000, 0.043937,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "ThighR_Sagittal",
	parent = "Pelvis_Sagittal",
	joint_frame = {
		r = 	{ 0.000000, -0.085000, 0.000000,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 8.129000,
		com = 	{ 0.000000, 0.000000, -0.128883,},
		inertia = 
			{{ 0.140924, 0.000000, 0.000000,},
			{ 0.000000, 0.137131, 0.000000,},
			{ 0.000000, 0.000000, 0.027162,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "thighR.obj",
		dimensions  = 	{ 0.178409, 0.142727, 0.428182,},
		mesh_center = 	{ 0.000000, 0.000000, -0.178409,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "ShankR_Sagittal",
	parent = "ThighR_Sagittal",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.356818,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 2.645500,
		com = 	{ 0.000000, 0.000000, -0.184828,},
		inertia = 
			{{ 0.034016, 0.000000, 0.000000,},
			{ 0.000000, 0.033005, 0.000000,},
			{ 0.000000, 0.000000, 0.004039,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "shankR.obj",
		dimensions  = 	{ 0.127409, 0.127409, 0.509636,},
		mesh_center = 	{ 0.000000, 0.000000, -0.212348,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "FootR_Sagittal",
	parent = "ShankR_Sagittal",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.424696,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 0.709500,
		com = 	{ 0.008735, 0.000000, -0.045000,},
		inertia = 
			{{ 0.003100, 0.000000, 0.000000,},
			{ 0.000000, 0.002699, 0.000000,},
			{ 0.000000, 0.000000, 0.000670,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "footR.obj",
		dimensions  = 	{ 0.221063, 0.090000, 0.090000,},
		mesh_center = 	{ 0.030531, 0.000000, -0.045000,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "ThighL_Sagittal",
	parent = "Pelvis_Sagittal",
	joint_frame = {
		r = 	{ 0.000000, 0.085000, 0.000000,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 8.129000,
		com = 	{ 0.000000, 0.000000, -0.128883,},
		inertia = 
			{{ 0.140924, 0.000000, 0.000000,},
			{ 0.000000, 0.137131, 0.000000,},
			{ 0.000000, 0.000000, 0.027162,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "thighL.obj",
		dimensions  = 	{ 0.178409, 0.142727, 0.428182,},
		mesh_center = 	{ 0.000000, 0.000000, -0.178409,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "ShankL_Sagittal",
	parent = "ThighL_Sagittal",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.356818,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 2.645500,
		com = 	{ 0.000000, 0.000000, -0.184828,},
		inertia = 
			{{ 0.034016, 0.000000, 0.000000,},
			{ 0.000000, 0.033005, 0.000000,},
			{ 0.000000, 0.000000, 0.004039,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "shankL.obj",
		dimensions  = 	{ 0.127409, 0.127409, 0.509636,},
		mesh_center = 	{ 0.000000, 0.000000, -0.212348,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "FootL_Sagittal",
	parent = "ShankL_Sagittal",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.424696,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 0.709500,
		com = 	{ 0.008735, 0.000000, -0.045000,},
		inertia = 
			{{ 0.003100, 0.000000, 0.000000,},
			{ 0.000000, 0.002699, 0.000000,},
			{ 0.000000, 0.000000, 0.000670,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "footL.obj",
		dimensions  = 	{ 0.221063, 0.090000, 0.090000,},
		mesh_center = 	{ 0.030531, 0.000000, -0.045000,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "MiddleTrunk_Sagittal",
	parent = "Pelvis_Sagittal",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, 0.175746,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 8.057500,
		com = 	{ 0.000000, 0.000000, 0.109097,},
		inertia = 
			{{ 0.059700, 0.000000, 0.000000,},
			{ 0.000000, 0.039903, 0.000000,},
			{ 0.000000, 0.000000, 0.054840,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "middleTrunk.obj",
		dimensions  = 	{ 0.216000, 0.264000, 0.298188,},
		mesh_center = 	{ 0.000000, 0.000000, 0.049698,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "UpperTrunk_Sagittal",
	parent = "MiddleTrunk_Sagittal",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, 0.198792,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 8.497500,
		com = 	{ 0.000000, 0.000000, 0.109282,},
		inertia = 
			{{ 0.089940, 0.000000, 0.000000,},
			{ 0.000000, 0.040836, 0.000000,},
			{ 0.000000, 0.000000, 0.083497,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "upperTrunk.obj",
		dimensions  = 	{ 0.210000, 0.400000, 0.231811,},
		mesh_center = 	{ 0.000000, 0.000000, 0.088309,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "Head_Sagittal",
	parent = "UpperTrunk_Sagittal",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, 0.220772,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 3.674000,
		com = 	{ 0.000000, 0.000000, 0.121739,},
		inertia = 
			{{ 0.015025, 0.000000, 0.000000,},
			{ 0.000000, 0.017804, 0.000000,},
			{ 0.000000, 0.000000, 0.013936,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "head.obj",
		dimensions  = 	{ 0.188780, 0.188780, 0.247773,},
		mesh_center = 	{ 0.000000, 0.000000, 0.094390,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "UpperArmR_Sagittal",
	parent = "UpperTrunk_Sagittal",
	joint_frame = {
		r = 	{ 0.000000, -0.200000, 0.150772,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 1.402500,
		com = 	{ 0.000000, 0.000000, -0.153275,},
		inertia = 
			{{ 0.007691, 0.000000, 0.000000,},
			{ 0.000000, 0.006727, 0.000000,},
			{ 0.000000, 0.000000, 0.002180,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "upperArmR.obj",
		dimensions  = 	{ 0.133190, 0.106552, 0.293017,},
		mesh_center = 	{ 0.000000, 0.000000, -0.133190,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "LowerArmR_Sagittal",
	parent = "UpperArmR_Sagittal",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.266379,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 0.759000,
		com = 	{ 0.000000, 0.000000, -0.116675,},
		inertia = 
			{{ 0.003386, 0.000000, 0.000000,},
			{ 0.000000, 0.003283, 0.000000,},
			{ 0.000000, 0.000000, 0.000439,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "lowerArmR.obj",
		dimensions  = 	{ 0.102369, 0.076776, 0.281514,},
		mesh_center = 	{ 0.000000, 0.000000, -0.127961,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "Hand_SagittalR",
	parent = "LowerArmR_Sagittal",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.255922,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 0.308000,
		com = 	{ 0.000000, 0.000000, -0.056445,},
		inertia = 
			{{ 0.000497, 0.000000, 0.000000,},
			{ 0.000000, 0.000361, 0.000000,},
			{ 0.000000, 0.000000, 0.000198,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "handR.obj",
		dimensions  = 	{ 0.115295, 0.049412, 0.164708,},
		mesh_center = 	{ 0.000000, 0.000000, -0.082354,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "UpperArmL_Sagittal",
	parent = "UpperTrunk_Sagittal",
	joint_frame = {
		r = 	{ 0.000000, 0.200000, 0.150772,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 1.402500,
		com = 	{ 0.000000, 0.000000, -0.153275,},
		inertia = 
			{{ 0.007691, 0.000000, 0.000000,},
			{ 0.000000, 0.006727, 0.000000,},
			{ 0.000000, 0.000000, 0.002180,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "upperArmL.obj",
		dimensions  = 	{ 0.133190, 0.106552, 0.293017,},
		mesh_center = 	{ 0.000000, -0.000000, -0.133190,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "LowerArmL_Sagittal",
	parent = "UpperArmL_Sagittal",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.266379,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 0.759000,
		com = 	{ 0.000000, 0.000000, -0.116675,},
		inertia = 
			{{ 0.003386, 0.000000, 0.000000,},
			{ 0.000000, 0.003283, 0.000000,},
			{ 0.000000, 0.000000, 0.000439,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "lowerArmL.obj",
		dimensions  = 	{ 0.102369, 0.076776, 0.281514,},
		mesh_center = 	{ 0.000000, 0.000000, -0.127961,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "Hand_SagittalL",
	parent = "LowerArmL_Sagittal",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.255922,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 0.308000,
		com = 	{ 0.000000, 0.000000, -0.056445,},
		inertia = 
			{{ 0.000497, 0.000000, 0.000000,},
			{ 0.000000, 0.000361, 0.000000,},
			{ 0.000000, 0.000000, 0.000198,},},
	},
	joint= 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {},
	visuals = {{
		src         = "handL.obj",
		dimensions  = 	{ 0.115295, 0.049412, 0.164708,},
		mesh_center = 	{ 0.000000, 0.000000, -0.082354,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	},
}