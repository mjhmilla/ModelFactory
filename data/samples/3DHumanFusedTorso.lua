return {
metadata = {
	 {scaling_used = {"deLeva1996_fusedTorso"},
	 subject_age = {30.0},
	 subject_height = {1.70},
	 subject_weight = {80.00},
	 subject_gender = {"male"},
	 subject_pelvisWidth = {0.2400},
	 subject_hipCenterWidth = {0.1700},
	 subject_shoulderCenterWidth = {0.4000},
	 subject_heelAnkleXOffset = {0.0800},
	 subject_heelAnkleZOffset = {0.0900},
	 subject_shoulderNeckZOffset = {0.0700},
	 subject_footWidth = {0.0900},
	},
},
gravity = { 0, 0, -9.81,},
configuration = {
	axis_front = { 1, 0, 0,},
	axis_right = { 0, -1, 0,},
	axis_up = { 0, 0, 1,},
},
points = {
	{name = "Thigh_R", body = "Thigh_R", point = {0.082451, -0.000000, -0.309193,},},
	{name = "Heel_Medial_R", body = "Foot_R", point = {-0.080000, 0.045000, -0.090000,},},
	{name = "Heel_Lateral_R", body = "Foot_R", point = {-0.080000, -0.045000, -0.090000,},},
	{name = "Toe_R", body = "Foot_R", point = {0.109016, 0.000000, -0.090000,},},
	{name = "Thigh_L", body = "Thigh_L", point = {0.082451, 0.000000, -0.309193,},},
	{name = "Heel_Medial_L", body = "Foot_L", point = {-0.080000, -0.045000, -0.090000,},},
	{name = "Heel_Lateral_L", body = "Foot_L", point = {-0.080000, 0.045000, -0.090000,},},
	{name = "Toe_L", body = "Foot_L", point = {0.109016, 0.000000, -0.090000,},},
	{name = "ProximalMetacarpal_Medial_R", body = "Hand_R", point = {-0.036695, 0.027521, -0.036695,},},
	{name = "ProximalMetacarpal_Lateral_R", body = "Hand_R", point = {0.036695, 0.027521, -0.036695,},},
	{name = "DistalMetacarpal_Medial_R", body = "Hand_R", point = {-0.036695, 0.027521, -0.110085,},},
	{name = "DistalMetacarpal_Lateral_R", body = "Hand_R", point = {0.036695, 0.027521, -0.110085,},},
	{name = "ProximalMetacarpal_Medial_L", body = "Hand_L", point = {-0.036695, -0.027521, -0.036695,},},
	{name = "ProximalMetacarpal_Lateral_L", body = "Hand_L", point = {0.036695, -0.027521, -0.036695,},},
	{name = "DistalMetacarpal_Medial_L", body = "Hand_L", point = {-0.036695, -0.027521, -0.110085,},},
	{name = "DistalMetacarpal_Lateral_L", body = "Hand_L", point = {0.036695, -0.027521, -0.110085,},},
},
constraint_sets = {
},
frames = {
	{name   = "Torso",
	parent = "ROOT",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, 0.000000,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 34.768000,
		com = 	{ 0.000000, 0.000000, 0.286417,},
		inertia = 
			{{ 1.298059, 0.000000, 0.000000,},
			{ 0.000000, 1.129769, 0.000000,},
			{ 0.000000, 0.000000, 0.344604,},},
	},
	joint = 
		{{ 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000,},
		{ 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000,},
		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		LASI = 	{ 0.103091, 0.117818, 0.117818,},
		RASI = 	{ 0.103091, -0.117818, 0.117818,},
		LPSI = 	{ -0.088364, 0.070691, 0.147273,},
		RPSI = 	{ -0.088364, -0.070691, 0.147273,},
		C7   = 	{ -0.088364, 0.000000, 0.559638,},},
	visuals = {{
		src         = "torso.obj",
		dimensions  = 	{ 0.192000, 0.300000, 0.589092,},
		mesh_center = 	{ 0.000000, 0.000000, 0.294546,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "Thigh_R",
	parent = "Torso",
	joint_frame = {
		r = 	{ 0.000000, -0.085000, 0.000000,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 11.328000,
		com = 	{ 0.000000, 0.000000, -0.168819,},
		inertia = 
			{{ 0.208392, 0.000000, 0.000000,},
			{ 0.000000, 0.208392, 0.000000,},
			{ 0.000000, 0.000000, 0.042743,},},
	},
	joint = 
		{{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		RTHI    = 	{ 0.000000, -0.082451, -0.136045,},
		RKNE    = 	{ 0.000000, -0.061839, -0.412257,},
		RKNE_md = 	{ 0.000000, 0.061839, -0.412257,},},
	visuals = {{
		src         = "thighR.obj",
		dimensions  = 	{ 0.206129, 0.164903, 0.494709,},
		mesh_center = 	{ 0.000000, 0.000000, -0.206129,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "Shank_R",
	parent = "Thigh_R",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.412257,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 3.464000,
		com = 	{ 0.000000, 0.000000, -0.188955,},
		inertia = 
			{{ 0.040339, 0.000000, 0.000000,},
			{ 0.000000, 0.038748, 0.000000,},
			{ 0.000000, 0.000000, 0.006662,},},
	},
	joint = 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		RTIB = 	{ 0.000000, -0.085986, -0.141877,},
		RKNE = 	{ 0.000000, -0.061839, 0.000000,},
		RANK = 	{ 0.000000, -0.064490, -0.429931,},},
	visuals = {{
		src         = "shankR.obj",
		dimensions  = 	{ 0.128979, 0.128979, 0.515917,},
		mesh_center = 	{ 0.000000, 0.000000, -0.214966,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "Foot_R",
	parent = "Shank_R",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.429931,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 1.096000,
		com = 	{ 0.031268, 0.000000, -0.045000,},
		inertia = 
			{{ 0.004598, 0.000000, 0.000000,},
			{ 0.000000, 0.004178, 0.000000,},
			{ 0.000000, 0.000000, 0.001070,},},
	},
	joint = 
		{{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		RANK = 	{ 0.000000, -0.064490, 0.000000,},
		RTOE = 	{ 0.176415, 0.000000, -0.042993,},
		RHEE = 	{ -0.075607, 0.000000, -0.042993,},},
	visuals = {{
		src         = "footR.obj",
		dimensions  = 	{ 0.252022, 0.090000, 0.090000,},
		mesh_center = 	{ 0.046011, 0.000000, -0.045000,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "Thigh_L",
	parent = "Torso",
	joint_frame = {
		r = 	{ 0.000000, 0.085000, 0.000000,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 11.328000,
		com = 	{ 0.000000, 0.000000, -0.168819,},
		inertia = 
			{{ 0.208392, 0.000000, 0.000000,},
			{ 0.000000, 0.208392, 0.000000,},
			{ 0.000000, 0.000000, 0.042743,},},
	},
	joint = 
		{{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		LTHI    = 	{ 0.000000, 0.082451, -0.276212,},
		LKNE    = 	{ 0.000000, 0.061839, -0.412257,},
		LKNE_md = 	{ 0.000000, -0.061839, -0.412257,},},
	visuals = {{
		src         = "thighL.obj",
		dimensions  = 	{ 0.206129, 0.164903, 0.494709,},
		mesh_center = 	{ 0.000000, 0.000000, -0.206129,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "Shank_L",
	parent = "Thigh_L",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.412257,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 3.464000,
		com = 	{ 0.000000, 0.000000, -0.188955,},
		inertia = 
			{{ 0.040339, 0.000000, 0.000000,},
			{ 0.000000, 0.038748, 0.000000,},
			{ 0.000000, 0.000000, 0.006662,},},
	},
	joint = 
{		{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		LTIB = 	{ 0.000000, 0.085986, -0.288054,},
		LKNE = 	{ 0.000000, 0.061839, 0.000000,},
		LANK = 	{ 0.000000, 0.064490, -0.429931,},},
	visuals = {{
		src         = "shankL.obj",
		dimensions  = 	{ 0.128979, 0.128979, 0.515917,},
		mesh_center = 	{ 0.000000, 0.000000, -0.214966,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "Foot_L",
	parent = "Shank_L",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.429931,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 1.096000,
		com = 	{ 0.031268, 0.000000, -0.045000,},
		inertia = 
			{{ 0.004598, 0.000000, 0.000000,},
			{ 0.000000, 0.004178, 0.000000,},
			{ 0.000000, 0.000000, 0.001070,},},
	},
	joint = 
		{{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		LANK = 	{ 0.000000, 0.064490, 0.000000,},
		LTOE = 	{ 0.176415, 0.000000, -0.042993,},
		LHEE = 	{ -0.075607, 0.000000, -0.042993,},},
	visuals = {{
		src         = "footL.obj",
		dimensions  = 	{ 0.252022, 0.090000, 0.090000,},
		mesh_center = 	{ 0.046011, 0.000000, -0.045000,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "Head",
	parent = "Torso",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, 0.589092,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 5.552000,
		com = 	{ 0.000000, 0.000000, 0.118542,},
		inertia = 
			{{ 0.028674, 0.000000, 0.000000,},
			{ 0.000000, 0.030990, 0.000000,},
			{ 0.000000, 0.000000, 0.021276,},},
	},
	joint = 
		{{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		LBHD = 	{ -0.071154, 0.071154, 0.142308,},
		RBHD = 	{ -0.071154, -0.071154, 0.142308,},
		LFHD = 	{ 0.071154, 0.071154, 0.142308,},
		RFHD = 	{ 0.071154, -0.071154, 0.142308,},},
	visuals = {{
		src         = "head.obj",
		dimensions  = 	{ 0.189744, 0.189744, 0.249039,},
		mesh_center = 	{ 0.000000, 0.000000, 0.094872,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "UpperArm_R",
	parent = "Torso",
	joint_frame = {
		r = 	{ 0.000000, -0.200000, 0.519092,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 2.168000,
		com = 	{ 0.000000, 0.000000, -0.158768,},
		inertia = 
			{{ 0.013324, 0.000000, 0.000000,},
			{ 0.000000, 0.011870, 0.000000,},
			{ 0.000000, 0.000000, 0.004095,},},
	},
	joint = 
		{{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		RSHO = 	{ 0.000000, 0.000000, 0.027507,},
		RUPA = 	{ 0.000000, -0.041260, -0.184294,},
		RELB = 	{ 0.000000, -0.041260, -0.275066,},},
	visuals = {{
		src         = "upperArmR.obj",
		dimensions  = 	{ 0.137533, 0.110026, 0.302573,},
		mesh_center = 	{ 0.000000, 0.000000, -0.137533,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "LowerArm_R",
	parent = "UpperArm_R",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.275066,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 1.296000,
		com = 	{ 0.000000, 0.000000, -0.120098,},
		inertia = 
			{{ 0.006806, 0.000000, 0.000000,},
			{ 0.000000, 0.006274, 0.000000,},
			{ 0.000000, 0.000000, 0.001308,},},
	},
	joint = 
		{{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		RELB = 	{ 0.000000, -0.041260, 0.000000,},
		RWRB = 	{ 0.052513, 0.000000, -0.262567,},
		RWRA = 	{ -0.052513, 0.000000, -0.262567,},},
	visuals = {{
		src         = "lowerArmR.obj",
		dimensions  = 	{ 0.105027, 0.078770, 0.288824,},
		mesh_center = 	{ 0.000000, 0.000000, -0.131284,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "Hand_R",
	parent = "LowerArm_R",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.262567,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 0.488000,
		com = 	{ 0.000000, 0.000000, -0.066491,},
		inertia = 
			{{ 0.001363, 0.000000, 0.000000,},
			{ 0.000000, 0.000907, 0.000000,},
			{ 0.000000, 0.000000, 0.000556,},},
	},
	joint = 
		{{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		RFIN = 	{ 0.000000, 0.000000, -0.146780,},
		RWRB = 	{ 0.052513, 0.000000, 0.000000,},
		RWRA = 	{ -0.052513, 0.000000, 0.000000,},},
	visuals = {{
		src         = "handR.obj",
		dimensions  = 	{ 0.128433, 0.055043, 0.183475,},
		mesh_center = 	{ 0.000000, 0.000000, -0.073390,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "UpperArm_L",
	parent = "Torso",
	joint_frame = {
		r = 	{ 0.000000, 0.200000, 0.519092,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 2.168000,
		com = 	{ 0.000000, 0.000000, -0.158768,},
		inertia = 
			{{ 0.013324, 0.000000, 0.000000,},
			{ 0.000000, 0.011870, 0.000000,},
			{ 0.000000, 0.000000, 0.004095,},},
	},
	joint = 
		{{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		LSHO = 	{ 0.000000, 0.000000, 0.027507,},
		LUPA = 	{ 0.000000, 0.041260, -0.137533,},
		LELB = 	{ 0.000000, 0.041260, -0.275066,},},
	visuals = {{
		src         = "upperArmL.obj",
		dimensions  = 	{ 0.137533, 0.110026, 0.302573,},
		mesh_center = 	{ 0.000000, 0.000000, -0.137533,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "LowerArm_L",
	parent = "UpperArm_L",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.275066,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 1.296000,
		com = 	{ 0.000000, 0.000000, -0.120098,},
		inertia = 
			{{ 0.006806, 0.000000, 0.000000,},
			{ 0.000000, 0.006274, 0.000000,},
			{ 0.000000, 0.000000, 0.001308,},},
	},
	joint = 
		{{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		LELB = 	{ 0.000000, 0.041260, 0.000000,},
		LWRB = 	{ -0.052513, 0.000000, -0.262567,},
		LWRA = 	{ 0.052513, 0.000000, -0.262567,},},
	visuals = {{
		src         = "lowerArmL.obj",
		dimensions  = 	{ 0.105027, 0.078770, 0.288824,},
		mesh_center = 	{ 0.000000, 0.000000, -0.131284,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	{name   = "Hand_L",
	parent = "LowerArm_L",
	joint_frame = {
		r = 	{ 0.000000, 0.000000, -0.262567,},
		E = 
			{{ 1.000000, 0.000000, 0.000000,},
			{ 0.000000, 1.000000, 0.000000,},
			{ 0.000000, 0.000000, 1.000000,},},
	},
	body = {
		mass   = 0.488000,
		com = 	{ 0.000000, 0.000000, -0.066491,},
		inertia = 
			{{ 0.001363, 0.000000, 0.000000,},
			{ 0.000000, 0.000907, 0.000000,},
			{ 0.000000, 0.000000, 0.000556,},},
	},
	joint = 
		{{ 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000,},
		{ 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000,},},
	markers = {
		LFIN = 	{ 0.000000, 0.000000, -0.146780,},
		LWRB = 	{ -0.052513, 0.000000, 0.000000,},
		LWRA = 	{ 0.052513, 0.000000, 0.000000,},},
	visuals = {{
		src         = "handL.obj",
		dimensions  = 	{ 0.128433, 0.055043, 0.183475,},
		mesh_center = 	{ 0.000000, 0.000000, -0.073390,},
		color       = 	{ 0.200000, 0.700000, 0.300000,},
		},},
	},
	},
}