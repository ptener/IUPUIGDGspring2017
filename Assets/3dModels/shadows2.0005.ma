//Maya ASCII 2017 scene
//Name: shadows2.0005.ma
//Last modified: Thu, May 04, 2017 12:40:04 PM
//Codeset: 1252
requires maya "2017";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "1.3.0.0";
requires -nodeType "renderSetup" "renderSetup.py" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "DABAD6E3-4D66-5411-722B-009DF20F5EEA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.268583870183257 1.438371581068264 3.3528491441547033 ;
	setAttr ".r" -type "double3" -15.338352734614206 -2488.5999999993724 9.3156572861206101e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "37483263-4B26-769E-2F3C-C8B9D0F6A3E6";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 4.1639506616836748;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "A370B289-461A-BCE4-6C56-04AE31B2E7F0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B80400EB-4B76-66C0-8F9F-E2B59C475251";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 10.069285271775193;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "A34DC312-4685-A837-1005-F49FB21F05D9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.025645796268117589 0.59454013602385813 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F982A779-4291-B349-549B-A5B4D90DC7A8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 4.2507929875854193;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "4E700374-4A91-C24B-D329-E1BB81BD1FD9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "50DF574A-4EC2-0919-1E6F-69848F5E264A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pPlane1";
	rename -uid "A8BA951D-480F-85EE-52BF-E9B6970B16FE";
	setAttr ".t" -type "double3" -4.4408920985006257e-016 1.5002482252794132 -6.9452049725057838 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 5.82 1 3.04 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "B21BD23C-4879-D691-4651-7FAEAC50FDD4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPlane2";
	rename -uid "042DF0F5-4754-7C5D-9BBC-89BA24E6C5D1";
	setAttr ".t" -type "double3" -5.0792199970727925 1.5599729501811572 -6.897107793713996 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 3.7202445412747283 0.34446708715506669 6.6137680733772752 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	rename -uid "E3760E5B-441E-40EA-3375-05BFE3A9D5B3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube1";
	rename -uid "F55884BA-44E9-DF07-37FC-E2A4CAC4108F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 0.029109011744135105 0 ;
	setAttr ".sp" -type "double3" 0 0.029109011744135105 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "45C43CF3-4EE8-7070-29C8-6CBB2BEDC63E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.55414474010467529 0.49614258110523224 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCubeShape1Orig" -p "pCube1";
	rename -uid "DEF9B3F3-438C-B4F2-E730-62A45F91AA26";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 195 ".uvst[0].uvsp[0:194]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.5 1 0.5 0.75 0.5 0.5 0.5 0.25 0.25 0.25 0.375
		 0.375 0.5 0.375 0.625 0.375 0.75 0.25 0.625 0.875 0.75 0 0.5 0.875 0.25 0 0.375 0.875
		 0.37499997 0.025 0.5 0.025000006 0.625 0.025 0.75 0.025000006 0.625 0.72499996 0.875
		 0.025000006 0.5 0.72499996 0.125 0.025000006 0.375 0.72499996 0.25 0.025 0.125 0.047500011
		 0.375 0.70249999 0.5 0.70249999 0.625 0.70249999 0.875 0.047500011 0.75 0.047500011
		 0.625 0.047499999 0.5 0.047500011 0.37499997 0.047499999 0.25 0.047499999 0.125 0.18925001
		 0.375 0.56075001 0.5 0.56075001 0.625 0.56075001 0.875 0.18925001 0.75 0.18925001
		 0.625 0.18924999 0.5 0.18925001 0.375 0.18924999 0.25 0.18924999 0.625 0.375 0.625
		 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25 0.5 0.25 0.625 0.25 0.625 0.375 0.625
		 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25 0.5 0.25 0.625 0.25 0.625 0.375 0.625
		 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25 0.5 0.25 0.625 0.25 0.625 0.375 0.625
		 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25 0.5 0.25 0.625 0.25 0.625 0.375 0.625
		 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25 0.5 0.25 0.625 0.25 0.5 0.5 0.37499997
		 0.5 0.37499997 0.37499997 0.37499997 0.25 0.5 0.25 0.625 0.25 0.625 0.37499997 0.625
		 0.5 0.5 0.5 0.625 0.5 0.625 0.37499997 0.625 0.25 0.5 0.25 0.37499997 0.25 0.37499997
		 0.37499997 0.37499997 0.5 0.5 0.5 0.625 0.5 0.625 0.37499997 0.625 0.25 0.5 0.25
		 0.37499997 0.25 0.37499997 0.37499997 0.37499997 0.5 0.5 0.5 0.625 0.5 0.625 0.37499997
		 0.625 0.25 0.5 0.25 0.37499997 0.25 0.37499997 0.37499997 0.37499997 0.5 0.5 0.5
		 0.625 0.5 0.625 0.375 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.375 0.375 0.5 0.5 0.5
		 0.625 0.5 0.625 0.375 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.375 0.375 0.5 0.5 0.5
		 0.625 0.5 0.625 0.375 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.375 0.375 0.5 0.5 0.5
		 0.625 0.5 0.625 0.375 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.375 0.375 0.5 0.5 0.5
		 0.625 0.5 0.625 0.375 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.375 0.375 0.5 0.5 0.5
		 0.625 0.5 0.625 0.375 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.375 0.375 0.5 0.5 0.5
		 0.625 0.5 0.625 0.375 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.375 0.375 0.5 0.5 0.5
		 0.625 0.5 0.625 0.375 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.375 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 178 ".vt";
	setAttr ".vt[0:165]"  -0.30326295 -0.43085706 0.30325609 0.30325609 -0.43085706 0.30325609
		 -0.21842909 0.00087393448 0.21858948 0.21858948 0.00087393448 0.21858948 -0.21842909 0.00087393448 -0.21842909
		 0.21858948 0.00087393448 -0.21842909 -0.30326295 -0.43085706 -0.30326295 0.30325609 -0.43085706 -0.30326295
		 0 -0.50131691 0.66013646 0 -0.50131691 -0.66013646 8.0201535e-005 0.00087393448 -0.29466742
		 8.0201535e-005 0.00087393448 0.29482782 -0.29466742 0.00087393448 8.0206242e-005
		 0.29482782 0.00087393448 8.0206242e-005 0.66013646 -0.50131691 0 0 -0.470891 0 -0.66013646 -0.50131691 0
		 -0.30326295 -0.3702051 0.30325609 0 -0.36928961 0.66013646 0.30325609 -0.3702051 0.30325609
		 0.66013646 -0.36928961 0 0.30325609 -0.3702051 -0.30326295 0 -0.36928961 -0.66013646
		 -0.30224758 -0.37021524 -0.30224758 -0.66013646 -0.36928961 0 -0.30231085 -0.30527818 -0.30231085
		 0 -0.25046501 -0.66013646 0.30319282 -0.30508533 -0.30332622 0.66013646 -0.25046501 0
		 0.30319282 -0.30508533 0.30319282 0 -0.25046501 0.66013646 -0.30332622 -0.30508533 0.30319282
		 -0.66013646 -0.25046501 0 -0.28665909 -0.18500642 -0.28665909 8.1328129e-005 -0.14607929 -0.40878806
		 0.28713524 -0.18494214 -0.28699747 0.40895072 -0.14607929 8.1330101e-005 0.28713524 -0.18494214 0.28713524
		 8.1328129e-005 -0.14607929 0.40895072 -0.28699747 -0.18494214 0.28713524 -0.40878806 -0.14607929 8.1330101e-005
		 8.0201535e-005 1.11114001 -0.2946676 0.29482782 1.11114001 8.0142017e-005 0.21858948 1.11114001 -0.21842936
		 -0.29466742 1.11114001 8.0206242e-005 -0.21842909 1.11114001 -0.21842921 -0.21842909 1.11114001 0.2185896
		 8.0201535e-005 1.11114001 0.29482794 0.21858948 1.11114001 0.2185896 8.0201222e-005 1.17821479 -0.26828614
		 0.26844636 1.17821479 8.0135964e-005 0.19903174 1.17821479 -0.19887163 -0.26828596 1.17821479 8.0201506e-005
		 -0.19887134 1.17821479 -0.19887149 -0.19887134 1.17821479 0.19903187 8.0201222e-005 1.17821479 0.26844645
		 0.19903174 1.17821479 0.19903187 8.0200611e-005 1.23078656 -0.21650128 0.21666153 1.23078656 8.0142279e-005
		 0.1606414 1.23078656 -0.16048124 -0.21650113 1.23078656 8.0192214e-005 -0.16048101 1.23078656 -0.16048113
		 -0.16048101 1.23078656 0.16064151 8.0200611e-005 1.23078656 0.21666159 0.1606414 1.23078656 0.16064151
		 8.0199541e-005 1.26668 -0.12635215 0.12651247 1.26668 8.014535e-005 0.093809932 1.26668 -0.093649723
		 -0.12635207 1.26668 8.0174505e-005 -0.093649536 1.26668 -0.093649641 -0.093649536 1.26668 0.09381
		 8.0199541e-005 1.26668 0.12651245 0.093809932 1.26668 0.09381 8.0198632e-005 1.28117502 -0.049130641
		 8.0198799e-005 1.28117502 8.0157071e-005 0.049290977 1.28117502 8.015184e-005 0.036562245 1.28117502 -0.036401987
		 -0.049130581 1.28117502 8.0161582e-005 -0.036401849 1.28117502 -0.036401931 -0.036401849 1.28117502 0.036562283
		 8.0198632e-005 1.28117502 0.049290948 0.036562245 1.28117502 0.036562283 8.0201527e-005 0.11190055 -0.29466742
		 -0.21842909 0.11190055 -0.2184291 -0.29466742 0.11190055 8.0206242e-005 -0.21842909 0.11190055 0.21858948
		 8.0201527e-005 0.11190055 0.29482782 0.21858947 0.11190055 0.21858948 0.29482782 0.11190055 8.0199825e-005
		 0.21858947 0.11190055 -0.21842912 8.0201527e-005 0.21182449 -0.29466742 0.21858947 0.21182449 -0.21842915
		 0.29482782 0.21182449 8.0194048e-005 0.21858947 0.21182449 0.21858948 8.0201527e-005 0.21182449 0.29482782
		 -0.21842909 0.21182449 0.21858948 -0.29466742 0.21182449 8.0206242e-005 -0.21842909 0.21182449 -0.21842912
		 8.0201527e-005 0.30175605 -0.29466742 0.21858947 0.30175605 -0.21842916 0.29482782 0.30175605 8.0188838e-005
		 0.21858947 0.30175605 0.21858948 8.0201527e-005 0.30175605 0.29482782 -0.21842909 0.30175605 0.21858948
		 -0.29466742 0.30175605 8.0206242e-005 -0.21842909 0.30175605 -0.21842913 8.0201527e-005 0.38269442 -0.29466742
		 0.21858947 0.38269442 -0.21842918 0.29482782 0.38269442 8.0184152e-005 0.21858947 0.38269442 0.21858948
		 8.0201527e-005 0.38269442 0.29482782 -0.21842909 0.38269442 0.21858948 -0.29466742 0.38269442 8.0206242e-005
		 -0.21842909 0.38269442 -0.21842915 8.0201527e-005 0.46685028 -0.29466745 0.21858947 0.46685028 -0.21842921
		 0.29482782 0.46685028 8.0179285e-005 0.21858947 0.46685028 0.2185895 8.0201527e-005 0.46685028 0.29482785
		 -0.21842909 0.46685028 0.2185895 -0.29466742 0.46685028 8.0206242e-005 -0.21842909 0.46685028 -0.21842915
		 8.0201527e-005 0.55328822 -0.29466748 0.21858947 0.55328822 -0.21842924 0.29482782 0.55328822 8.0174286e-005
		 0.21858947 0.55328822 0.21858951 8.0201527e-005 0.55328822 0.29482788 -0.21842909 0.55328822 0.21858951
		 -0.29466742 0.55328822 8.020625e-005 -0.21842909 0.55328822 -0.21842916 8.0201527e-005 0.63464254 -0.29466748
		 0.21858947 0.63464254 -0.21842925 0.29482782 0.63464254 8.0169579e-005 0.21858947 0.63464254 0.21858953
		 8.0201527e-005 0.63464254 0.29482788 -0.21842909 0.63464254 0.21858953 -0.29466742 0.63464254 8.0206242e-005
		 -0.21842909 0.63464254 -0.21842918 8.0201535e-005 0.7210806 -0.29466751 0.21858948 0.7210806 -0.21842927
		 0.29482782 0.7210806 8.016458e-005 0.21858948 0.7210806 0.21858954 8.0201535e-005 0.7210806 0.29482791
		 -0.21842909 0.7210806 0.21858954 -0.29466742 0.7210806 8.0206242e-005 -0.21842909 0.7210806 -0.21842918
		 8.0201535e-005 0.80751932 -0.29466754 0.21858948 0.80751932 -0.2184293 0.29482782 0.80751932 8.0159582e-005
		 0.21858948 0.80751932 0.21858954 8.0201535e-005 0.80751932 0.29482794 -0.21842909 0.80751932 0.21858954
		 -0.29466742 0.80751932 8.0206242e-005 -0.21842909 0.80751932 -0.21842918 8.0201535e-005 0.89904243 -0.29466754
		 0.21858948 0.89904243 -0.21842933 0.29482782 0.89904243 8.0154292e-005 0.21858948 0.89904243 0.21858956
		 8.0201535e-005 0.89904243 0.29482794 -0.21842909 0.89904243 0.21858956 -0.29466742 0.89904243 8.0206242e-005
		 -0.21842909 0.89904243 -0.21842918 8.0201527e-005 0.9854809 -0.29466754 0.21858948 0.9854809 -0.21842933
		 0.29482782 0.9854809 8.0149286e-005 0.21858948 0.9854809 0.21858957;
	setAttr ".vt[166:177]" 8.0201527e-005 0.9854809 0.29482794 -0.21842909 0.9854809 0.21858957
		 -0.29466742 0.9854809 8.0206242e-005 -0.21842909 0.9854809 -0.21842918 8.0201527e-005 1.048310518 -0.29466757
		 0.21858948 1.048310518 -0.21842934 0.29482782 1.048310518 8.0145648e-005 0.21858948 1.048310518 0.21858959
		 8.0201527e-005 1.048310518 0.29482794 -0.21842909 1.048310518 0.21858959 -0.29466742 1.048310518 8.0206242e-005
		 -0.21842909 1.048310518 -0.21842919;
	setAttr -s 352 ".ed";
	setAttr ".ed[0:165]"  0 8 0 2 11 0 4 10 0 6 9 0 0 17 0 1 19 0 2 12 0 3 13 0
		 4 33 0 5 35 0 6 16 0 7 14 0 8 1 0 9 7 0 10 5 0 11 3 0 8 15 1 9 22 1 11 38 1 12 4 0
		 13 5 0 14 1 0 15 9 1 16 0 0 13 36 1 14 15 1 15 16 1 16 24 1 17 31 0 18 8 1 19 29 0
		 20 14 1 21 7 0 22 26 1 23 6 0 24 32 1 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1
		 23 24 1 24 17 1 25 23 0 26 34 1 27 21 0 28 20 1 29 37 0 30 18 1 31 39 0 32 40 1 25 26 1
		 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1 31 32 1 32 25 1 33 25 0 34 10 1 35 27 0 36 28 1
		 37 3 0 38 30 1 39 2 0 40 12 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 40 1
		 40 33 1 10 82 0 13 88 0 5 89 0 42 43 1 41 43 1 12 84 0 4 83 0 45 41 1 44 45 1 2 85 0
		 11 86 0 46 47 1 46 44 1 3 87 0 47 48 1 48 42 1 41 49 0 42 50 0 43 51 0 50 51 1 49 51 1
		 44 52 0 45 53 0 53 49 1 52 53 1 46 54 0 47 55 0 54 55 1 54 52 1 48 56 0 55 56 1 56 50 1
		 49 57 0 50 58 0 51 59 0 58 59 0 57 59 0 52 60 0 53 61 0 61 57 0 60 61 0 54 62 0 55 63 0
		 62 63 0 62 60 0 56 64 0 63 64 0 64 58 0 57 65 0 58 66 0 59 67 0 66 67 0 65 67 0 60 68 0
		 61 69 0 69 65 0 68 69 0 62 70 0 63 71 0 70 71 0 70 68 0 64 72 0 71 72 0 72 66 0 65 73 0
		 73 74 1 66 75 0 74 75 1 67 76 0 75 76 0 73 76 0 68 77 0 77 74 1 69 78 0 78 73 0 77 78 0
		 70 79 0 71 80 0 79 80 0 74 80 1 79 77 0 72 81 0 80 81 0 81 75 0 82 90 0 83 97 0 84 96 0
		 85 95 0 86 94 0 87 93 0;
	setAttr ".ed[166:331]" 88 92 0 89 91 0 82 83 1 83 84 1 84 85 1 85 86 1 86 87 1
		 87 88 1 88 89 1 89 82 1 90 98 0 91 99 0 92 100 0 93 101 0 94 102 0 95 103 0 96 104 0
		 97 105 0 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1 97 90 1 98 106 0
		 99 107 0 100 108 0 101 109 0 102 110 0 103 111 0 104 112 0 105 113 0 98 99 1 99 100 1
		 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 98 1 106 114 0 107 115 0 108 116 0
		 109 117 0 110 118 0 111 119 0 112 120 0 113 121 0 106 107 1 107 108 1 108 109 1 109 110 1
		 110 111 1 111 112 1 112 113 1 113 106 1 114 122 0 115 123 0 116 124 0 117 125 0 118 126 0
		 119 127 0 120 128 0 121 129 0 114 115 1 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1
		 120 121 1 121 114 1 122 130 0 123 131 0 124 132 0 125 133 0 126 134 0 127 135 0 128 136 0
		 129 137 0 122 123 1 123 124 1 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 122 1
		 130 138 0 131 139 0 132 140 0 133 141 0 134 142 0 135 143 0 136 144 0 137 145 0 130 131 1
		 131 132 1 132 133 1 133 134 1 134 135 1 135 136 1 136 137 1 137 130 1 138 146 0 139 147 0
		 140 148 0 141 149 0 142 150 0 143 151 0 144 152 0 145 153 0 138 139 1 139 140 1 140 141 1
		 141 142 1 142 143 1 143 144 1 144 145 1 145 138 1 146 154 0 147 155 0 148 156 0 149 157 0
		 150 158 0 151 159 0 152 160 0 153 161 0 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 146 1 154 162 0 155 163 0 156 164 0 157 165 0 158 166 0 159 167 0
		 160 168 0 161 169 0 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 160 1 160 161 1
		 161 154 1 162 170 0 163 171 0 164 172 0 165 173 0 166 174 0 167 175 0 168 176 0 169 177 0
		 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[332:351]" 166 167 1 167 168 1 168 169 1 169 162 1 170 41 0 171 43 0
		 172 42 0 173 48 0 174 47 0 175 46 0 176 44 0 177 45 0 170 171 1 171 172 1 172 173 1
		 173 174 1 174 175 1 175 176 1 176 177 1 177 170 1;
	setAttr -s 176 -ch 704 ".fc[0:175]" -type "polyFaces" 
		f 4 56 49 37 30
		mu 0 4 45 46 30 31
		f 4 141 143 145 -147
		mu 0 4 93 21 91 92
		f 4 40 33 53 46
		mu 0 4 33 35 41 42
		f 4 25 22 13 11
		mu 0 4 24 26 16 7
		f 4 54 47 39 -47
		mu 0 4 43 44 32 34
		f 4 42 35 59 44
		mu 0 4 36 38 48 39
		f 4 3 -23 26 -11
		mu 0 4 6 16 26 28
		f 4 52 -34 41 -45
		mu 0 4 40 41 35 37
		f 4 148 -142 -151 -152
		mu 0 4 95 21 93 94
		f 4 36 -50 57 -29
		mu 0 4 29 30 46 47
		f 4 154 -156 -149 -157
		mu 0 4 96 97 21 95
		f 4 -144 155 158 159
		mu 0 4 91 21 97 98
		f 4 38 -48 55 -31
		mu 0 4 31 32 44 45
		f 4 16 -26 21 -13
		mu 0 4 15 26 24 9
		f 4 -27 -17 -1 -24
		mu 0 4 28 26 15 8
		f 4 58 -36 43 28
		mu 0 4 47 48 38 29
		f 4 0 -30 -37 -5
		mu 0 4 0 14 30 29
		f 4 -38 29 12 5
		mu 0 4 31 30 14 1
		f 4 -22 -32 -39 -6
		mu 0 4 1 25 32 31
		f 4 -40 31 -12 -33
		mu 0 4 34 32 25 10
		f 4 17 -41 32 -14
		mu 0 4 16 35 33 7
		f 4 -42 -18 -4 -35
		mu 0 4 37 35 16 6
		f 4 10 27 -43 34
		mu 0 4 12 27 38 36
		f 4 -44 -28 23 4
		mu 0 4 29 38 27 0
		f 4 68 -46 -53 -61
		mu 0 4 50 51 41 40
		f 4 -54 45 69 62
		mu 0 4 42 41 51 52
		f 4 70 63 -55 -63
		mu 0 4 53 54 44 43
		f 4 -56 -64 71 -49
		mu 0 4 45 44 54 55
		f 4 72 65 -57 48
		mu 0 4 55 56 46 45
		f 4 -58 -66 73 -51
		mu 0 4 47 46 56 57
		f 4 74 -52 -59 50
		mu 0 4 57 58 48 47
		f 4 -60 51 75 60
		mu 0 4 39 48 58 49
		f 4 2 -62 -69 -9
		mu 0 4 4 17 51 50
		f 4 -70 61 14 9
		mu 0 4 52 51 17 5
		f 4 24 -71 -10 -21
		mu 0 4 23 54 53 11
		f 4 -72 -25 -8 -65
		mu 0 4 55 54 23 3
		f 4 18 -73 64 -16
		mu 0 4 18 56 55 3
		f 4 -74 -19 -2 -67
		mu 0 4 57 56 18 2
		f 4 -68 -75 66 6
		mu 0 4 19 58 57 2
		f 4 -76 67 19 8
		mu 0 4 49 58 19 13
		f 4 174 167 185 -167
		mu 0 4 105 106 108 109
		f 4 175 160 184 -168
		mu 0 4 106 99 107 108
		f 4 168 161 191 -161
		mu 0 4 99 100 114 107
		f 4 169 162 190 -162
		mu 0 4 100 101 113 114
		f 4 171 164 188 -164
		mu 0 4 102 103 111 112
		f 4 170 163 189 -163
		mu 0 4 101 102 112 113
		f 4 172 165 187 -165
		mu 0 4 103 104 110 111
		f 4 173 166 186 -166
		mu 0 4 104 105 109 110
		f 4 79 94 -96 -94
		mu 0 4 59 60 68 67
		f 4 -81 92 96 -95
		mu 0 4 60 61 69 68
		f 4 -84 98 99 -93
		mu 0 4 61 62 70 69
		f 4 -85 97 100 -99
		mu 0 4 62 63 71 70
		f 4 87 102 -104 -102
		mu 0 4 64 65 73 72
		f 4 -89 101 104 -98
		mu 0 4 63 64 72 71
		f 4 90 105 -107 -103
		mu 0 4 65 66 74 73
		f 4 91 93 -108 -106
		mu 0 4 66 59 67 74
		f 4 95 110 -112 -110
		mu 0 4 67 68 76 75
		f 4 -97 108 112 -111
		mu 0 4 68 69 77 76
		f 4 -100 114 115 -109
		mu 0 4 69 70 78 77
		f 4 -101 113 116 -115
		mu 0 4 70 71 79 78
		f 4 103 118 -120 -118
		mu 0 4 72 73 81 80
		f 4 -105 117 120 -114
		mu 0 4 71 72 80 79
		f 4 106 121 -123 -119
		mu 0 4 73 74 82 81
		f 4 107 109 -124 -122
		mu 0 4 74 67 75 82
		f 4 111 126 -128 -126
		mu 0 4 75 76 84 83
		f 4 -113 124 128 -127
		mu 0 4 76 77 85 84
		f 4 -116 130 131 -125
		mu 0 4 77 78 86 85
		f 4 -117 129 132 -131
		mu 0 4 78 79 87 86
		f 4 119 134 -136 -134
		mu 0 4 80 81 89 88
		f 4 -121 133 136 -130
		mu 0 4 79 80 88 87
		f 4 122 137 -139 -135
		mu 0 4 81 82 90 89
		f 4 123 125 -140 -138
		mu 0 4 82 75 83 90
		f 4 127 144 -146 -143
		mu 0 4 83 84 92 91
		f 4 -129 140 146 -145
		mu 0 4 84 85 93 92
		f 4 -132 149 150 -141
		mu 0 4 85 86 94 93
		f 4 -133 147 151 -150
		mu 0 4 86 87 95 94
		f 4 135 153 -155 -153
		mu 0 4 88 89 97 96
		f 4 -137 152 156 -148
		mu 0 4 87 88 96 95
		f 4 138 157 -159 -154
		mu 0 4 89 90 98 97
		f 4 139 142 -160 -158
		mu 0 4 90 83 91 98
		f 4 -3 82 -169 -77
		mu 0 4 17 4 100 99
		f 4 -20 81 -170 -83
		mu 0 4 4 20 101 100
		f 4 -7 85 -171 -82
		mu 0 4 20 2 102 101
		f 4 1 86 -172 -86
		mu 0 4 2 18 103 102
		f 4 15 89 -173 -87
		mu 0 4 18 3 104 103
		f 4 7 77 -174 -90
		mu 0 4 3 22 105 104
		f 4 20 78 -175 -78
		mu 0 4 22 5 106 105
		f 4 -15 76 -176 -79
		mu 0 4 5 17 99 106
		f 4 -185 176 200 -178
		mu 0 4 108 107 115 116
		f 4 -186 177 201 -179
		mu 0 4 109 108 116 117
		f 4 -187 178 202 -180
		mu 0 4 110 109 117 118
		f 4 -188 179 203 -181
		mu 0 4 111 110 118 119
		f 4 -189 180 204 -182
		mu 0 4 112 111 119 120
		f 4 -190 181 205 -183
		mu 0 4 113 112 120 121
		f 4 -191 182 206 -184
		mu 0 4 114 113 121 122
		f 4 -192 183 207 -177
		mu 0 4 107 114 122 115
		f 4 -201 192 216 -194
		mu 0 4 116 115 123 124
		f 4 -202 193 217 -195
		mu 0 4 117 116 124 125
		f 4 -203 194 218 -196
		mu 0 4 118 117 125 126
		f 4 -204 195 219 -197
		mu 0 4 119 118 126 127
		f 4 -205 196 220 -198
		mu 0 4 120 119 127 128
		f 4 -206 197 221 -199
		mu 0 4 121 120 128 129
		f 4 -207 198 222 -200
		mu 0 4 122 121 129 130
		f 4 -208 199 223 -193
		mu 0 4 115 122 130 123
		f 4 -217 208 232 -210
		mu 0 4 124 123 131 132
		f 4 -218 209 233 -211
		mu 0 4 125 124 132 133
		f 4 -219 210 234 -212
		mu 0 4 126 125 133 134
		f 4 -220 211 235 -213
		mu 0 4 127 126 134 135
		f 4 -221 212 236 -214
		mu 0 4 128 127 135 136
		f 4 -222 213 237 -215
		mu 0 4 129 128 136 137
		f 4 -223 214 238 -216
		mu 0 4 130 129 137 138
		f 4 -224 215 239 -209
		mu 0 4 123 130 138 131
		f 4 -233 224 248 -226
		mu 0 4 132 131 139 140
		f 4 -234 225 249 -227
		mu 0 4 133 132 140 141
		f 4 -235 226 250 -228
		mu 0 4 134 133 141 142
		f 4 -236 227 251 -229
		mu 0 4 135 134 142 143
		f 4 -237 228 252 -230
		mu 0 4 136 135 143 144
		f 4 -238 229 253 -231
		mu 0 4 137 136 144 145
		f 4 -239 230 254 -232
		mu 0 4 138 137 145 146
		f 4 -240 231 255 -225
		mu 0 4 131 138 146 139
		f 4 -249 240 264 -242
		mu 0 4 140 139 147 148
		f 4 -250 241 265 -243
		mu 0 4 141 140 148 149
		f 4 -251 242 266 -244
		mu 0 4 142 141 149 150
		f 4 -252 243 267 -245
		mu 0 4 143 142 150 151
		f 4 -253 244 268 -246
		mu 0 4 144 143 151 152
		f 4 -254 245 269 -247
		mu 0 4 145 144 152 153
		f 4 -255 246 270 -248
		mu 0 4 146 145 153 154
		f 4 -256 247 271 -241
		mu 0 4 139 146 154 147
		f 4 -265 256 280 -258
		mu 0 4 148 147 155 156
		f 4 -266 257 281 -259
		mu 0 4 149 148 156 157
		f 4 -267 258 282 -260
		mu 0 4 150 149 157 158
		f 4 -268 259 283 -261
		mu 0 4 151 150 158 159
		f 4 -269 260 284 -262
		mu 0 4 152 151 159 160
		f 4 -270 261 285 -263
		mu 0 4 153 152 160 161
		f 4 -271 262 286 -264
		mu 0 4 154 153 161 162
		f 4 -272 263 287 -257
		mu 0 4 147 154 162 155
		f 4 -281 272 296 -274
		mu 0 4 156 155 163 164
		f 4 -282 273 297 -275
		mu 0 4 157 156 164 165
		f 4 -283 274 298 -276
		mu 0 4 158 157 165 166
		f 4 -284 275 299 -277
		mu 0 4 159 158 166 167
		f 4 -285 276 300 -278
		mu 0 4 160 159 167 168
		f 4 -286 277 301 -279
		mu 0 4 161 160 168 169
		f 4 -287 278 302 -280
		mu 0 4 162 161 169 170
		f 4 -288 279 303 -273
		mu 0 4 155 162 170 163
		f 4 -297 288 312 -290
		mu 0 4 164 163 171 172
		f 4 -298 289 313 -291
		mu 0 4 165 164 172 173
		f 4 -299 290 314 -292
		mu 0 4 166 165 173 174
		f 4 -300 291 315 -293
		mu 0 4 167 166 174 175
		f 4 -301 292 316 -294
		mu 0 4 168 167 175 176
		f 4 -302 293 317 -295
		mu 0 4 169 168 176 177
		f 4 -303 294 318 -296
		mu 0 4 170 169 177 178
		f 4 -304 295 319 -289
		mu 0 4 163 170 178 171
		f 4 -313 304 328 -306
		mu 0 4 172 171 179 180
		f 4 -314 305 329 -307
		mu 0 4 173 172 180 181
		f 4 -315 306 330 -308
		mu 0 4 174 173 181 182
		f 4 -316 307 331 -309
		mu 0 4 175 174 182 183
		f 4 -317 308 332 -310
		mu 0 4 176 175 183 184
		f 4 -318 309 333 -311
		mu 0 4 177 176 184 185
		f 4 -319 310 334 -312
		mu 0 4 178 177 185 186
		f 4 -320 311 335 -305
		mu 0 4 171 178 186 179
		f 4 -329 320 344 -322
		mu 0 4 180 179 187 188
		f 4 -330 321 345 -323
		mu 0 4 181 180 188 189
		f 4 -331 322 346 -324
		mu 0 4 182 181 189 190
		f 4 -332 323 347 -325
		mu 0 4 183 182 190 191
		f 4 -333 324 348 -326
		mu 0 4 184 183 191 192
		f 4 -334 325 349 -327
		mu 0 4 185 184 192 193
		f 4 -335 326 350 -328
		mu 0 4 186 185 193 194
		f 4 -336 327 351 -321
		mu 0 4 179 186 194 187
		f 4 -345 336 80 -338
		mu 0 4 188 187 61 60
		f 4 -346 337 -80 -339
		mu 0 4 189 188 60 59
		f 4 -347 338 -92 -340
		mu 0 4 190 189 59 66
		f 4 -348 339 -91 -341
		mu 0 4 191 190 66 65
		f 4 -349 340 -88 -342
		mu 0 4 192 191 65 64
		f 4 -350 341 88 -343
		mu 0 4 193 192 64 63
		f 4 -351 342 84 -344
		mu 0 4 194 193 63 62
		f 4 -352 343 83 -337
		mu 0 4 187 194 62 61;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "left";
	rename -uid "92B62C5E-4ACE-2FCF-A4B3-6A8C6E069F44";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "F6184311-4AA2-C55B-1C38-DBBB953FC7CC";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 4.7152650440274551;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "joint1";
	rename -uid "D75643BB-4F38-740D-B366-EE81C52E318D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -6.4058359129270243e-005 -0.50095748944129193 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.4058359129270243e-005 -0.50095748944129193 0 1;
	setAttr ".radi" 0.25;
createNode joint -n "joint4" -p "joint1";
	rename -uid "658EBAAB-4767-1C78-F718-028645E2CED3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.6479873021779667e-017 0.50192810886169281 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-016 0 0
		 0 0 1 0 -6.4058359129286722e-005 0.00097061942040088667 0 1;
	setAttr ".radi" 0.25;
createNode joint -n "joint6" -p "joint4";
	rename -uid "D8CCFCEB-4FBB-EC69-8CBC-CCBED141BF53";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.55239089887022164 -1.1317699483010461e-005 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -0.0041686668767182238 ;
	setAttr ".bps" -type "matrix" 7.2756962353592871e-005 0.99999999735321243 0 0 -0.99999999735321243 7.2756962353592871e-005 0 0
		 0 0 1 0 -5.2740659646153604e-005 0.55336151829062263 0 1;
	setAttr ".radi" 0.25;
createNode joint -n "joint7" -p "joint6";
	rename -uid "C4385183-4B6A-9939-4F47-0E8FF7E36CD4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.43280108363728398 1.0005758204214158e-005 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 2.0114361702148296 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.995831333123277 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 5.5511151231257827e-017 0 0 -5.5511151231257827e-017 1.0000000000000002 0 0
		 0 0 1 0 -3.1257125675092568e-005 0.98616260151036261 0 1;
	setAttr ".radi" 0.25;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E51755F3-4283-8A4A-575F-93B2B11D4CC6";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "290306AE-4B54-6F54-CE98-488573F4ED32";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "637DF421-4165-5E3C-8FF9-409174981D42";
createNode displayLayerManager -n "layerManager";
	rename -uid "7D474E06-4173-FFEB-5839-4D8054CD40C7";
	setAttr ".cdl" 1;
	setAttr -s 5 ".dli[1:4]"  1 2 3 4;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "2FF6E10A-48D0-F6BD-E0DD-4A96ADA35591";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "79A9B26F-4FAB-3967-E5B3-99A6E411BA00";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "227F592E-4166-9F19-CA46-A3802495CE6A";
	setAttr ".g" yes;
createNode lambert -n "lambert2";
	rename -uid "0C98081F-41B9-5BF0-8F5E-41A8180DD9AF";
createNode shadingEngine -n "lambert2SG";
	rename -uid "E21DDB5E-4673-0225-28E6-46A9FA0EFA4F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "14FD89D9-43B6-41D6-58E9-FF9FDFC07C8E";
createNode file -n "file1";
	rename -uid "CBBD633C-414B-18FD-B917-879603D6263F";
	setAttr ".ftn" -type "string" "C:/Users/Chris/Desktop/moon5_enemyshadows//sourceimages/ghost_ref.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "32F803ED-4295-25A4-3397-BCA36B800187";
createNode lambert -n "lambert3";
	rename -uid "3E42036A-4B8B-7278-C25D-7290A98B23F0";
createNode shadingEngine -n "lambert3SG";
	rename -uid "26F91F4C-4EF6-564F-97F0-2C9ABD9AA68A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "0E1E5A06-4681-22AC-199E-1885997B3A81";
createNode file -n "file2";
	rename -uid "A4B7F3B2-4FF0-E1F6-1C48-69897D720732";
	setAttr ".ftn" -type "string" "C:/Users/Chris/Desktop/moon5_enemyshadows//sourceimages/Screenshot_20170421-210111.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "FDF57F63-4157-D485-9848-489FE110D9EC";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "55E93285-46B6-E715-769D-2FA0889E8380";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 834\n                -height 440\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 834\n            -height 440\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n"
		+ "                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n"
		+ "            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n"
		+ "                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n"
		+ "                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 834\\n    -height 440\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 834\\n    -height 440\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D16A8990-4833-3D5A-05AE-8290E4DBDC68";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "shadow_worm";
	rename -uid "A581C00C-47BA-7425-3AD9-86A40CAE6F17";
	setAttr ".do" 1;
createNode displayLayer -n "reference";
	rename -uid "AE068DE8-4BA2-1C2B-FFFD-20877940CEFC";
	setAttr ".do" 2;
createNode skinCluster -n "skinCluster1";
	rename -uid "7623E7E9-4D03-3483-ABF3-50A09128E694";
	setAttr -s 178 ".wl";
	setAttr -s 4 ".wl[0].w[0:3]"  0.99841485300964239 8.9668807049747556e-005 
		0.0014176975299895562 7.7780653318350757e-005;
	setAttr -s 3 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.99840183064615584;
	setAttr ".wl[1].w[2]" 0.0015132956574342236;
	setAttr ".wl[1].w[3]" 8.4873696409937203e-005;
	setAttr -s 4 ".wl[2].w[0:3]"  0.53414840188544455 0.46224305033683777 
		0.0035826480144554441 2.5899763262278512e-005;
	setAttr -s 4 ".wl[3].w[0:3]"  0.53286465463075261 0.46299058198928833 
		0.0041110554013504656 3.3707978608579379e-005;
	setAttr -s 4 ".wl[4].w[0:3]"  0.51525331482282821 0.48150278787538081 
		0.0032220665431410738 2.1830758649957138e-005;
	setAttr -s 4 ".wl[5].w[0:3]"  0.50529866905049015 0.49097353151286044 
		0.0036988836693693356 2.8915767280123548e-005;
	setAttr -s 4 ".wl[6].w[0:3]"  0.99849878013044846 0.00010953987657558173 
		0.0013210134181828803 7.0666574793024393e-005;
	setAttr -s 3 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.99850438770785166;
	setAttr ".wl[7].w[2]" 0.0014178246637068692;
	setAttr ".wl[7].w[3]" 7.7787628441491587e-005;
	setAttr -s 4 ".wl[8].w[0:3]"  0.99780024033025305 0.00062355439877137542 
		0.0014921138636502995 8.4091407325246251e-005;
	setAttr -s 4 ".wl[9].w[0:3]"  0.99857829487487992 7.7246931073915448e-010 
		0.001348414772241956 7.3289580408895583e-005;
	setAttr -s 4 ".wl[10].w[0:3]"  0.46832829861243108 0.52741909331647974 
		0.0042286684612711997 2.3939609817833809e-005;
	setAttr -s 4 ".wl[11].w[0:3]"  0.45522696020748243 0.54020121900258333 
		0.0045436904779001383 2.8130312034069542e-005;
	setAttr -s 4 ".wl[12].w[0:3]"  0.4721017273935833 0.52398724255245566 
		0.0038908505243050095 2.0179529656009235e-005;
	setAttr -s 4 ".wl[13].w[0:3]"  0.45282434790930653 0.54251714015876784 
		0.0046275383703757575 3.0973561549852099e-005;
	setAttr -s 4 ".wl[14].w[0:3]"  0.99842259871056249 2.1289243079536391e-007 
		0.0014930445393391788 8.414385766756312e-005;
	setAttr -s 3 ".wl[15].w";
	setAttr ".wl[15].w[0]" 0.99858822675335024;
	setAttr ".wl[15].w[2]" 0.0013364681296659242;
	setAttr ".wl[15].w[3]" 7.5305116983752626e-005;
	setAttr -s 4 ".wl[16].w[0:3]"  0.99852460306714219 5.3769021178595722e-005 
		0.0013483422719030465 7.3285639776139036e-005;
	setAttr -s 4 ".wl[17].w[0:3]"  0.99838459257640599 2.4120839952956885e-005 
		0.0015126106114034268 7.867597223765322e-005;
	setAttr -s 3 ".wl[18].w";
	setAttr ".wl[18].w[0]" 0.99820437433073761;
	setAttr ".wl[18].w[2]" 0.001705734475498308;
	setAttr ".wl[18].w[3]" 8.989119376413314e-005;
	setAttr -s 3 ".wl[19].w";
	setAttr ".wl[19].w[0]" 0.99826683816034611;
	setAttr ".wl[19].w[2]" 0.0016458577119283771;
	setAttr ".wl[19].w[3]" 8.7304127725532505e-005;
	setAttr -s 3 ".wl[20].w";
	setAttr ".wl[20].w[0]" 0.99820437434049181;
	setAttr ".wl[20].w[2]" 0.0017057344660807044;
	setAttr ".wl[20].w[3]" 8.9891193427511554e-005;
	setAttr -s 3 ".wl[21].w";
	setAttr ".wl[21].w[0]" 0.99840867504917419;
	setAttr ".wl[21].w[2]" 0.0015126470813730812;
	setAttr ".wl[21].w[3]" 7.8677869452809451e-005;
	setAttr -s 3 ".wl[22].w";
	setAttr ".wl[22].w[0]" 0.9984140067228513;
	setAttr ".wl[22].w[2]" 0.0015087249424110302;
	setAttr ".wl[22].w[3]" 7.7268334737682959e-005;
	setAttr -s 3 ".wl[23].w";
	setAttr ".wl[23].w[0]" 0.9985471061095168;
	setAttr ".wl[23].w[2]" 0.001382556359395143;
	setAttr ".wl[23].w[3]" 7.0337531088102533e-005;
	setAttr -s 3 ".wl[24].w";
	setAttr ".wl[24].w[0]" 0.99841400671374114;
	setAttr ".wl[24].w[2]" 0.0015087249512638677;
	setAttr ".wl[24].w[3]" 7.7268334994971168e-005;
	setAttr -s 4 ".wl[25].w[0:3]"  0.99826388147494494 7.2080241807270795e-005 
		0.001591581475760872 7.2456807486876083e-005;
	setAttr -s 3 ".wl[26].w";
	setAttr ".wl[26].w[0]" 0.99814334747862099;
	setAttr ".wl[26].w[2]" 0.0017741010385404308;
	setAttr ".wl[26].w[3]" 8.2551482838592692e-005;
	setAttr -s 4 ".wl[27].w[0:3]"  0.99812970096709275 1.6320658687618561e-005 
		0.0017731176102257051 8.0860763993931143e-005;
	setAttr -s 4 ".wl[28].w[0:3]"  0.99781647575079557 3.6485535019892268e-006 
		0.0020820169852946106 9.7858710407804019e-005;
	setAttr -s 4 ".wl[29].w[0:3]"  0.99770615988731781 0.0002540225104894489 
		0.0019501130890548501 8.9704513137938262e-005;
	setAttr -s 4 ".wl[30].w[0:3]"  0.99782364167396032 8.4908401731809136e-007 
		0.0020777068398331044 9.7802402189284734e-005;
	setAttr -s 4 ".wl[31].w[0:3]"  0.99803217299873448 0.00012459424033295363 
		0.0017625011828025731 8.073157813007159e-005;
	setAttr -s 4 ".wl[32].w[0:3]"  0.9980997778675601 5.0559014198370278e-005 
		0.001767189594248608 8.2473523992979169e-005;
	setAttr -s 4 ".wl[33].w[0:3]"  0.97795696543229638 0.02034098282456398 
		0.00165363071449388 4.8421028645814659e-005;
	setAttr -s 4 ".wl[34].w[0:3]"  0.97343234953367586 0.024418938905000687 
		0.0020929081777181992 5.5803383605275048e-005;
	setAttr -s 4 ".wl[35].w[0:3]"  0.98184078030898325 0.016114244237542152 
		0.0019886572704600116 5.6318183014541996e-005;
	setAttr -s 4 ".wl[36].w[0:3]"  0.98931028881971983 0.0080865751951932907 
		0.0025348639545109564 6.8272030575899668e-005;
	setAttr -s 4 ".wl[37].w[0:3]"  0.95295345099403161 0.04485967755317688 
		0.0021253356980788806 6.1535754712609722e-005;
	setAttr -s 4 ".wl[38].w[0:3]"  0.98954471450156267 0.0079112071543931961 
		0.0024765675341884398 6.7510809855669446e-005;
	setAttr -s 4 ".wl[39].w[0:3]"  0.96880827942740477 0.029281547293066978 
		0.0018557777616587622 5.4395517869437231e-005;
	setAttr -s 4 ".wl[40].w[0:3]"  0.98656160407470628 0.011360102333128452 
		0.0020226730663535325 5.5620525811816735e-005;
	setAttr -s 4 ".wl[41].w[0:3]"  4.2705272800105878e-006 0.0013659390910300256 
		0.25185754895210266 0.74677224142958731;
	setAttr -s 4 ".wl[42].w[0:3]"  7.6261213378188974e-006 0.0021322986502069255 
		0.069178216159343719 0.92868185906911149;
	setAttr -s 4 ".wl[43].w[0:3]"  6.4592075216379619e-006 0.0020756387974345913 
		0.078218653798103333 0.91969924819694049;
	setAttr -s 4 ".wl[44].w[0:3]"  3.1443437231210287e-006 0.00099072089968496092 
		0.50120776750195573 0.49779836725463611;
	setAttr -s 4 ".wl[45].w[0:3]"  2.8375529621525807e-006 0.0010227500208243861 
		0.50151659101282631 0.49745782141338724;
	setAttr -s 4 ".wl[46].w[0:3]"  4.0893413548619821e-006 0.0012600871747154283 
		0.50183560064457644 0.49690022283935326;
	setAttr -s 4 ".wl[47].w[0:3]"  5.4188793452398321e-006 0.0014870720423114656 
		0.37541371583938599 0.62309379323895731;
	setAttr -s 4 ".wl[48].w[0:3]"  7.4814677255407162e-006 0.0021657998084474279 
		0.20227482914924622 0.79555188957458078;
	setAttr -s 4 ".wl[49].w[0:3]"  4.0163346593965118e-006 0.00087812831350295671 
		0.16461892426013947 0.83449893109169815;
	setAttr -s 4 ".wl[50].w[0:3]"  6.2886756726281726e-006 0.001290010155624197 
		0.0098359202966094017 0.98886778087209382;
	setAttr -s 4 ".wl[51].w[0:3]"  6.0437848497569375e-006 0.0013861761960366433 
		0.020377658307552338 0.97823012171156121;
	setAttr -s 4 ".wl[52].w[0:3]"  2.6903653259581904e-006 0.00058831972238387734 
		0.44681999087333679 0.55258899903895342;
	setAttr -s 4 ".wl[53].w[0:3]"  3.0060324152823555e-006 0.00074351107304761806 
		0.38995733857154846 0.60929614432298862;
	setAttr -s 4 ".wl[54].w[0:3]"  3.4186943882130304e-006 0.0007809101542881517 
		0.46632355451583862 0.53289211663548497;
	setAttr -s 4 ".wl[55].w[0:3]"  4.7652645429637721e-006 0.0009758650936504379 
		0.25473412871360779 0.74428524092819881;
	setAttr -s 4 ".wl[56].w[0:3]"  7.0750383655368082e-006 0.0015412410713095503 
		0.061195127665996552 0.93725655622432835;
	setAttr -s 4 ".wl[57].w[0:3]"  3.3719115033815352e-006 0.00064598058772966213 
		0.075936399400234222 0.92341424810053274;
	setAttr -s 3 ".wl[58].w";
	setAttr ".wl[58].w[0]" 4.5773351178875114e-006;
	setAttr ".wl[58].w[1]" 0.00085215482289209652;
	setAttr ".wl[58].w[3]" 0.99914326784199003;
	setAttr -s 4 ".wl[59].w[0:3]"  4.8333284108114443e-006 0.00094490507000766016 
		0.0038735843263566494 0.99517667727522485;
	setAttr -s 4 ".wl[60].w[0:3]"  2.806034291084549e-006 0.00053748604404969011 
		0.23099152743816376 0.76846818048349552;
	setAttr -s 4 ".wl[61].w[0:3]"  3.0685652045419678e-006 0.00062301376850169192 
		0.23402968049049377 0.76534423717580002;
	setAttr -s 4 ".wl[62].w[0:3]"  3.5794856942082348e-006 0.00069963856240161599 
		0.2645946741104126 0.73470210784149159;
	setAttr -s 4 ".wl[63].w[0:3]"  4.0027706007025945e-006 0.000745054508770567 
		0.12541337311267853 0.87383756960795023;
	setAttr -s 4 ".wl[64].w[0:3]"  5.5494324583357439e-006 0.0010577833104911116 
		0.01775277778506279 0.98118388947198776;
	setAttr -s 4 ".wl[65].w[0:3]"  2.4822126223309163e-006 0.00046885181988909336 
		0.02458459697663784 0.97494406899085073;
	setAttr -s 4 ".wl[66].w[0:3]"  3.210626813900299e-006 0.00059203509799941694 
		0.00012299296213313937 0.99928176131305357;
	setAttr -s 4 ".wl[67].w[0:3]"  3.407471617172839e-006 0.00063244548016677552 
		0.00053039629710838199 0.9988337507511077;
	setAttr -s 4 ".wl[68].w[0:3]"  2.345937465581301e-006 0.00044311150929556112 
		0.078135669231414795 0.92141887332182404;
	setAttr -s 4 ".wl[69].w[0:3]"  2.6439306835876941e-006 0.0005003271175324991 
		0.073951452970504761 0.92554557598127918;
	setAttr -s 4 ".wl[70].w[0:3]"  3.1434649706599185e-006 0.00058344433113529911 
		0.07796826958656311 0.9214451426173309;
	setAttr -s 4 ".wl[71].w[0:3]"  3.0989848527128333e-006 0.00057144843167807556 
		0.034891564399003983 0.96453388818446528;
	setAttr -s 4 ".wl[72].w[0:3]"  3.9212528837122847e-006 0.00071786196265176546 
		0.0060877520591020584 0.99319046472536243;
	setAttr -s 4 ".wl[73].w[0:3]"  2.0698972741709591e-006 0.00039998015150940325 
		0.0060041672550141811 0.99359378269620224;
	setAttr -s 4 ".wl[74].w[0:3]"  2.2262479070215356e-006 0.00042483672893016362 
		0.0021525570191442966 0.99742038000401856;
	setAttr -s 3 ".wl[75].w";
	setAttr ".wl[75].w[0]" 2.5546162363678898e-006;
	setAttr ".wl[75].w[1]" 0.00047878559592629292;
	setAttr ".wl[75].w[3]" 0.99951865978783738;
	setAttr -s 4 ".wl[76].w[0:3]"  2.4735768359480237e-006 0.00046667775551204304 
		0.0014145077439025044 0.99811634092374946;
	setAttr -s 4 ".wl[77].w[0:3]"  2.0515669970882498e-006 0.00039643805897230939 
		0.014806691557168961 0.98479481881686159;
	setAttr -s 4 ".wl[78].w[0:3]"  2.0757948103011703e-006 0.00040047494702155151 
		0.014168577268719673 0.98542887198944851;
	setAttr -s 4 ".wl[79].w[0:3]"  2.4417760251493283e-006 0.00046067801912375955 
		0.014252704568207264 0.98528417563664383;
	setAttr -s 4 ".wl[80].w[0:3]"  2.5389056842453095e-006 0.0004758411079289548 
		0.0061499988660216331 0.99337162112036514;
	setAttr -s 4 ".wl[81].w[0:3]"  2.8485025985814545e-006 0.00052823058334108396 
		0.00083022896433249116 0.99863869194972787;
	setAttr -s 4 ".wl[82].w[0:3]"  0.3249498155424963 0.66034786639299514 
		0.0146613892275447 4.0928836963788923e-005;
	setAttr -s 4 ".wl[83].w[0:3]"  0.32857994271286584 0.65683335261781051 
		0.014553490350722337 3.3214318601363442e-005;
	setAttr -s 4 ".wl[84].w[0:3]"  0.32483504658427831 0.66016752832627446 
		0.014964479500094448 3.2945589352992309e-005;
	setAttr -s 4 ".wl[85].w[0:3]"  0.31751633201744095 0.666965744802272 
		0.015478919177303839 3.9004002983186277e-005;
	setAttr -s 4 ".wl[86].w[0:3]"  0.30917753131550063 0.67517509294478262 
		0.015597941361004919 4.9434378711861297e-005;
	setAttr -s 4 ".wl[87].w[0:3]"  0.30879663971986693 0.67585705382620687 
		0.01529079988406047 5.5506569865776855e-005;
	setAttr -s 4 ".wl[88].w[0:3]"  0.31046145488130855 0.67431898228818665 
		0.015163564666114527 5.5998164390250369e-005;
	setAttr -s 4 ".wl[89].w[0:3]"  0.31883329811452993 0.66617731292296323 
		0.014938153897972496 5.1235064534299582e-005;
	setAttr -s 4 ".wl[90].w[0:3]"  0.18191465701613904 0.77015348227637692 
		0.047829814648334509 0.0001020460591495491;
	setAttr -s 4 ".wl[91].w[0:3]"  0.17841331690412615 0.77478608389022829 
		0.04667233538958504 0.00012826381606050586;
	setAttr -s 4 ".wl[92].w[0:3]"  0.17297665316450803 0.78049402865636408 
		0.04638770945469959 0.00014160872442836871;
	setAttr -s 4 ".wl[93].w[0:3]"  0.17041228832484978 0.78265154519316948 
		0.046795169406227709 0.00014099707575295083;
	setAttr -s 4 ".wl[94].w[0:3]"  0.17009665116943884 0.78147575384954027 
		0.048300469363093478 0.00012712561792744436;
	setAttr -s 4 ".wl[95].w[0:3]"  0.17231701875892616 0.77725124252042355 
		0.050330893679713669 0.00010084504093661369;
	setAttr -s 4 ".wl[96].w[0:3]"  0.17774541489068971 0.77096962851047568 
		0.051199629416440712 8.5327182393870343e-005;
	setAttr -s 4 ".wl[97].w[0:3]"  0.1813067474868188 0.7688341596006113 
		0.049773901333143585 8.5191579426349408e-005;
	setAttr -s 4 ".wl[98].w[0:3]"  0.080418428420406793 0.79937466124517409 
		0.11994986223448381 0.00025704809993522054;
	setAttr -s 4 ".wl[99].w[0:3]"  0.081452467918383301 0.80345139260970566 
		0.11478353085787828 0.00031260861403266632;
	setAttr -s 4 ".wl[100].w[0:3]"  0.080344520076519488 0.80727418730531897 
		0.11203640798642563 0.00034488463173582527;
	setAttr -s 4 ".wl[101].w[0:3]"  0.078714278036472907 0.80912276248138015 
		0.11181707858066418 0.00034588090148276779;
	setAttr -s 4 ".wl[102].w[0:3]"  0.078083973848899743 0.80720287337910723 
		0.11439478497820074 0.00031836779379244324;
	setAttr -s 4 ".wl[103].w[0:3]"  0.076835164495919844 0.80368378528765694 
		0.11922045175280027 0.00026059846362292734;
	setAttr -s 4 ".wl[104].w[0:3]"  0.077384550902530713 0.7978877400007709 
		0.12450367827187972 0.0002240308248188947;
	setAttr -s 4 ".wl[105].w[0:3]"  0.078903293582237924 0.79608436682739292 
		0.12478945159599958 0.00022288799436948149;
	setAttr -s 4 ".wl[106].w[0:3]"  0.027186916465634193 0.74215430093055379 
		0.22991926974824636 0.00073951285556551633;
	setAttr -s 4 ".wl[107].w[0:3]"  0.028808913942206867 0.74763572360986474 
		0.22269895328199121 0.00085640916593716302;
	setAttr -s 4 ".wl[108].w[0:3]"  0.030414984821377982 0.75140007352046079 
		0.21726405580667127 0.00092088585148981722;
	setAttr -s 4 ".wl[109].w[0:3]"  0.030411877786476228 0.75342123100704006 
		0.21524468048955231 0.00092221071693130905;
	setAttr -s 4 ".wl[110].w[0:3]"  0.030166258177445084 0.75169766191334086 
		0.2172751608113567 0.0008609190978572989;
	setAttr -s 4 ".wl[111].w[0:3]"  0.028880653185100368 0.74831108611674768 
		0.2220701680497483 0.00073809264840371687;
	setAttr -s 4 ".wl[112].w[0:3]"  0.027178464629682902 0.7432521094589819 
		0.22891024606169399 0.00065917984964132927;
	setAttr -s 4 ".wl[113].w[0:3]"  0.026695841551097357 0.73946049258177671 
		0.23318576800694638 0.00065789786017955254;
	setAttr -s 4 ".wl[114].w[0:3]"  0.0073009074666920059 0.63454952283590149 
		0.35539658712062389 0.0027529825767824826;
	setAttr -s 4 ".wl[115].w[0:3]"  0.0078870897300178933 0.63851465518830897 
		0.35054189818784176 0.0030563568938312886;
	setAttr -s 4 ".wl[116].w[0:3]"  0.009033715480702819 0.64186403172346607 
		0.34591106490329676 0.003191187892534331;
	setAttr -s 4 ".wl[117].w[0:3]"  0.0095692614252679328 0.64360241832289722 
		0.34364311312666329 0.0031852071251715439;
	setAttr -s 4 ".wl[118].w[0:3]"  0.009583704431086729 0.64243719009921962 
		0.34496709768734762 0.003012007782345975;
	setAttr -s 4 ".wl[119].w[0:3]"  0.0091526126088797202 0.63865433815989603 
		0.34948089375859381 0.0027121554726304937;
	setAttr -s 4 ".wl[120].w[0:3]"  0.0080930345721016896 0.63557412530193202 
		0.35378170566701528 0.0025511344589510196;
	setAttr -s 4 ".wl[121].w[0:3]"  0.0073547008555874781 0.63326028033333703 
		0.35685020342115409 0.0025348153899214048;
	setAttr -s 4 ".wl[122].w[0:3]"  0.0017372042980031914 0.50676332686056935 
		0.48087413207823049 0.010625336763196901;
	setAttr -s 4 ".wl[123].w[0:3]"  0.0018851601109225059 0.511743805141052 
		0.47504531803578759 0.011325716712237699;
	setAttr -s 4 ".wl[124].w[0:3]"  0.0022267515956622959 0.51437315845681997 
		0.47171573797643052 0.011684351971087154;
	setAttr -s 4 ".wl[125].w[0:3]"  0.0024597616567123945 0.51554552177801294 
		0.47025361324895437 0.011741103316320334;
	setAttr -s 4 ".wl[126].w[0:3]"  0.0024919865466606519 0.51478314911579026 
		0.47117480376563403 0.011550060571914931;
	setAttr -s 4 ".wl[127].w[0:3]"  0.0023780659015335093 0.50985960668224883 
		0.47685178843224424 0.010910538983973504;
	setAttr -s 4 ".wl[128].w[0:3]"  0.0020655794841717046 0.5048163811125016 
		0.48254207388267756 0.010575965520649096;
	setAttr -s 4 ".wl[129].w[0:3]"  0.0017858706765973929 0.50344023258547088 
		0.48437368659668106 0.010400210141250886;
	setAttr -s 4 ".wl[130].w[0:3]"  0.00041887695366125624 0.37122201003920158 
		0.59327003873520423 0.035089074271932932;
	setAttr -s 4 ".wl[131].w[0:3]"  0.00047462725999768206 0.37635118152342045 
		0.58786465787894415 0.035309533337637825;
	setAttr -s 4 ".wl[132].w[0:3]"  0.00057123981864079163 0.37995966008167881 
		0.58347436982880529 0.0359947302708752;
	setAttr -s 4 ".wl[133].w[0:3]"  0.0006270938368502395 0.38120700622519699 
		0.58189245306007031 0.036273446877882365;
	setAttr -s 4 ".wl[134].w[0:3]"  0.00062984902735389175 0.38254954319500534 
		0.57981145814910784 0.037009149628533015;
	setAttr -s 4 ".wl[135].w[0:3]"  0.00058539082456747374 0.38058298678138675 
		0.58178332742458416 0.037048294969461631;
	setAttr -s 4 ".wl[136].w[0:3]"  0.00049501433635884703 0.37551501590027253 
		0.58725780002528782 0.036732169738080959;
	setAttr -s 4 ".wl[137].w[0:3]"  0.00042393897644382776 0.37113868158534885 
		0.59236315238994541 0.036074227048261923;
	setAttr -s 4 ".wl[138].w[0:3]"  0.00012753631881179753 0.24093081396086824 
		0.66464413063098748 0.094297519089332413;
	setAttr -s 4 ".wl[139].w[0:3]"  0.00015236437349548361 0.23958669592559825 
		0.66943869066583928 0.090822249035066943;
	setAttr -s 4 ".wl[140].w[0:3]"  0.00019189660938018593 0.2408108527523585 
		0.66862150481550719 0.090375745822754219;
	setAttr -s 4 ".wl[141].w[0:3]"  0.00021142731200209658 0.24112496401869632 
		0.66788502274117745 0.090778585928124211;
	setAttr -s 4 ".wl[142].w[0:3]"  0.00021067482647970832 0.24329045619756495 
		0.66334620363215446 0.093152665343800775;
	setAttr -s 4 ".wl[143].w[0:3]"  0.00018827517822140666 0.24581245294071302 
		0.65704930374724502 0.096949968133820549;
	setAttr -s 4 ".wl[144].w[0:3]"  0.00015127054189898449 0.24653634209316178 
		0.65441472332784578 0.098897664037093436;
	setAttr -s 4 ".wl[145].w[0:3]"  0.00012773928242185725 0.24480964469722044 
		0.65699002845389243 0.098072587566465308;
	setAttr -s 4 ".wl[146].w[0:3]"  5.0775344355246006e-005 0.12805907497296895 
		0.67244049558065622 0.19944965410201956;
	setAttr -s 4 ".wl[147].w[0:3]"  6.170728203885215e-005 0.1244422530025301 
		0.6846395314198247 0.19085650829560641;
	setAttr -s 4 ".wl[148].w[0:3]"  8.0133083788141491e-005 0.12215775530035719 
		0.69142209342926553 0.18634001818658916;
	setAttr -s 4 ".wl[149].w[0:3]"  8.9650534045512372e-005 0.12090401691409026 
		0.69306519069823003 0.1859411418536342;
	setAttr -s 4 ".wl[150].w[0:3]"  8.9735974037424428e-005 0.12141205605544816 
		0.68999747493142083 0.18850073303909368;
	setAttr -s 4 ".wl[151].w[0:3]"  7.9455748207045708e-005 0.12372352116289455 
		0.68002194715411179 0.19617507593478667;
	setAttr -s 4 ".wl[152].w[0:3]"  6.1178573881311859e-005 0.12658224933567519 
		0.66987183210335466 0.2034847399870888;
	setAttr -s 4 ".wl[153].w[0:3]"  5.038698035363146e-005 0.12887104747669903 
		0.66626291125079218 0.20481565429215531;
	setAttr -s 4 ".wl[154].w[0:3]"  2.0389131415487956e-005 0.049032128589689826 
		0.62160347417110362 0.32934400810779113;
	setAttr -s 4 ".wl[155].w[0:3]"  2.4740984462522644e-005 0.04846285090909061 
		0.63119334440197672 0.32031906370447005;
	setAttr -s 4 ".wl[156].w[0:3]"  3.243388066596266e-005 0.046951699691906254 
		0.64040991734061214 0.31260594908681572;
	setAttr -s 4 ".wl[157].w[0:3]"  3.6900190115686976e-005 0.045781014220701355 
		0.64360189261497758 0.31058019297420542;
	setAttr -s 4 ".wl[158].w[0:3]"  3.7289958227834125e-005 0.045443525925198978 
		0.64293673108684524 0.31158245302972781;
	setAttr -s 4 ".wl[159].w[0:3]"  3.3583597390958113e-005 0.04582215348761471 
		0.63614476944842657 0.31799949346656775;
	setAttr -s 4 ".wl[160].w[0:3]"  2.5760346064755381e-005 0.046668315504344186 
		0.62567267496526635 0.32763324918432468;
	setAttr -s 4 ".wl[161].w[0:3]"  2.0443453312776626e-005 0.047892368377060533 
		0.61954472621095602 0.33254246195867071;
	setAttr -s 4 ".wl[162].w[0:3]"  8.030019809625751e-006 0.012740938687862247 
		0.5536972910814647 0.4335537402108634;
	setAttr -s 4 ".wl[163].w[0:3]"  9.7625718059215045e-006 0.013261659638673463 
		0.55780686643314226 0.42892171135637835;
	setAttr -s 4 ".wl[164].w[0:3]"  1.2575962413119851e-005 0.013378886275113005 
		0.56345223030089941 0.42315630746157434;
	setAttr -s 4 ".wl[165].w[0:3]"  1.422418793653481e-005 0.013116928972346861 
		0.56618817005378552 0.42068067678593113;
	setAttr -s 4 ".wl[166].w[0:3]"  1.4317199369296792e-005 0.012961179034722613 
		0.56648635936707281 0.42053814439883525;
	setAttr -s 4 ".wl[167].w[0:3]"  1.2976781515338918e-005 0.012804718865317647 
		0.56427344397641177 0.42290886037675512;
	setAttr -s 4 ".wl[168].w[0:3]"  1.0208092209449543e-005 0.012596140237050446 
		0.55874973327398314 0.42864391839675697;
	setAttr -s 4 ".wl[169].w[0:3]"  8.0965818230904559e-006 0.012448605505267484 
		0.55403974393721067 0.43350355397569867;
	setAttr -s 4 ".wl[170].w[0:3]"  3.9525637663971129e-006 0.0027973415294696574 
		0.51309662002863787 0.48410208587812603;
	setAttr -s 4 ".wl[171].w[0:3]"  8.4582502897585751e-006 0.0052857503252194222 
		0.15378502011299133 0.84092077131149945;
	setAttr -s 4 ".wl[172].w[0:3]"  1.0756543502046176e-005 0.0058894184471119972 
		0.14178931713104248 0.8523105078783435;
	setAttr -s 4 ".wl[173].w[0:3]"  9.1416097127774343e-006 0.0046742199790003446 
		0.3344414234161377 0.66087521499514923;
	setAttr -s 4 ".wl[174].w[0:3]"  6.5557740007259959e-006 0.0033585172501205732 
		0.51712059697904011 0.47951432999683874;
	setAttr -s 4 ".wl[175].w[0:3]"  5.7997430331572774e-006 0.0032418660076717959 
		0.51690521240953968 0.4798471218397552;
	setAttr -s 4 ".wl[176].w[0:3]"  4.6302725755211968e-006 0.0030245810732877567 
		0.51556656624244712 0.48140422241168956;
	setAttr -s 4 ".wl[177].w[0:3]"  3.8919169660832234e-006 0.0028341114758288271 
		0.51381154042226429 0.48335045618494099;
	setAttr -s 4 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 6.4058359129270243e-005 0.50095748944129193 -0 1;
	setAttr ".pm[1]" -type "matrix" 2.2204460492503121e-016 -0.99999999999999978 0 -0
		 0.99999999999999978 2.2204460492503121e-016 -0 0 0 -0 1 -0 -0.00097061942040088645 -6.4058359129286926e-005 -0 1;
	setAttr ".pm[2]" -type "matrix" 7.2756962353592844e-005 -0.99999999735321199 0 -0
		 0.99999999735321199 7.2756962353592844e-005 -0 0 0 -0 1 -0 -0.55336151298874181 -9.3001562660758059e-005 -0 1;
	setAttr ".pm[3]" -type "matrix" 0.99999999999999978 -5.5511151231257802e-017 0 -0
		 5.5511151231257802e-017 0.99999999999999978 -0 0 0 -0 1 -0 3.1257125675037816e-005 -0.98616260151036239 -0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 4 ".ma";
	setAttr -s 4 ".dpf[0:3]"  4 4 4 4;
	setAttr -s 4 ".lw";
	setAttr -s 4 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 4 ".ifcl";
	setAttr -s 4 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "20490BB3-482F-0265-691E-E8A0F64D63CD";
createNode objectSet -n "tweakSet1";
	rename -uid "E7B4801B-4FBA-2AC7-8760-8CB05EBF3613";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "272BD425-422C-9781-768E-F3AB2362E1EF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "0DAA50B9-4F57-8C83-35B6-CC8ED35EB757";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "skinCluster1Set";
	rename -uid "9AEFC25B-4FB5-6134-C3C0-4EBD5768E829";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "195DA8A2-4328-4A02-F4D6-00B04E2E2C47";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "C760FFEE-4E8E-24F6-1BA9-78A144399864";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "94C53930-4A87-AF34-DFEB-94B9E086C8E1";
	setAttr -s 4 ".wm";
	setAttr -s 4 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.4058359129270243e-005
		 -0.50095748944129193 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.6479873021779667e-017
		 0.50192810886169281 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.55239089887022164 -1.1317699483010457e-005
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -3.6378481200756938e-005 0.99999999933830308 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.43280108363728387 1.000575820421414e-005
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.7070810572479107 0.70713250418940354 1
		 1 1 yes;
	setAttr -s 4 ".m";
	setAttr -s 4 ".p";
	setAttr ".bp" yes;
createNode geomBind -n "geomBind1";
	rename -uid "72627592-405F-E6D0-255A-6F95F72D3AD7";
	setAttr ".mi" 5;
createNode blinn -n "blinn1";
	rename -uid "7AA038A5-4B09-A148-9D8D-AFB300111C63";
	setAttr ".rfl" 1;
createNode shadingEngine -n "blinn1SG";
	rename -uid "5E6E35B9-4250-0189-2D40-59A3C373D261";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "4476C13F-45E7-3395-F7F8-17839B3D87D1";
createNode file -n "file3";
	rename -uid "211624FE-4178-628C-6353-FCB0CC1EF9A8";
	setAttr ".ftn" -type "string" "C:/Users/Chris/Desktop/moon5_enemyshadows//sourceimages/shadow_skin.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "B0A96CC3-4D6B-F323-9613-4AB97360D01C";
createNode polyCylProj -n "polyCylProj1";
	rename -uid "CBDA12F8-4F0A-763F-0D10-DB8D131E8289";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:175]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 0.38992905616760254 -2.9802322387695313e-008 ;
	setAttr ".ps" -type "double2" 180 1.78249192237854 ;
	setAttr ".r" 1.3202728629112244;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "937F1BAC-4873-F7BA-493D-F7860ACD4614";
	setAttr ".uopa" yes;
	setAttr -s 203 ".uvtk[0:202]" -type "float2" -0.2967647 0.018705273 -0.1140143
		 0.016932065 -0.1140143 0.020789566 -0.2967647 0.020819278 -0.29678199 -0.032790475
		 -0.47913653 -0.032790475 -0.66175431 -0.032790475 -0.66226804 0.020819278 0.61698747
		 0.020789566 0.61698747 0.016932065 -0.66231662 0.018705273 -0.47951508 0.025075644
		 -0.11396769 0.024087908 0.61698747 0.025075644 -0.66226804 0.022788258 -0.47951508
		 0.016932065 -0.47951508 0.020789566 0.43423709 0.020819606 0.25148657 0.020789566
		 0.25148657 0.016932065 0.43423709 0.018711502 0.43423709 0.022788258 0.25148657 0.025075644
		 0.25110683 -0.032790475 0.43423727 -0.032790475 0.068738818 0.020819278 0.068787336
		 0.018705273 0.06822446 -0.032790475 -0.11439279 -0.032790475 -0.2967644 -0.032790475
		 -0.1140143 0.025075644 -0.2967647 0.022788258 0.068738818 0.022788258 0.43423709
		 0.014807039 -0.66220963 0.014804953 -0.47946882 0.013543361 -0.2967647 0.014804953
		 -0.11406049 0.013543361 0.068680346 0.014804953 0.25144029 0.013543361 0.43423709
		 0.0087727094 -0.84495258 0.0087727094 -0.66218007 0.0087727094 -0.47945166 0.0087727094
		 -0.2967647 0.0087727094 -0.1140776 0.0087727094 0.068650693 0.0087727094 0.2514233
		 0.0087727094 -0.47945184 0.0051683867 -0.66218007 0.0051683867 -0.66218019 0.0019244936
		 -0.47945184 0.0019244936 -0.84495258 0.0051683867 0.43423709 0.0051683867 0.43423709
		 0.0019244936 0.2514233 0.0051683867 0.2514233 0.0019244936 0.068650693 0.0051683867
		 -0.1140776 0.0051683867 -0.1140776 0.0019244936 0.068650693 0.0019244936 -0.2967647
		 0.0051683867 -0.2967647 0.0019244936 -0.47945178 -0.027270546 -0.66218019 -0.027270546
		 -0.66217184 -0.029448023 -0.47944558 -0.029448023 -0.84494638 -0.029448023 0.43423709
		 -0.027270546 0.43423715 -0.029448023 0.2514233 -0.027270546 0.25141704 -0.029448023
		 0.068650723 -0.027270546 -0.1140776 -0.027270546 -0.1140838 -0.029448023 0.068642318
		 -0.029448023 -0.29676458 -0.027270546 -0.29676458 -0.029448023 -0.66214937 -0.031154683
		 -0.47942889 -0.031154683 -0.8449297 -0.031154683 0.43423709 -0.031154683 0.25140041
		 -0.031154683 -0.11410037 -0.031154683 0.068619847 -0.031154683 -0.29676458 -0.031154683
		 -0.66206658 -0.032319956 -0.47936761 -0.032319956 -0.84486824 -0.032319956 0.43423715
		 -0.032319956 0.2513389 -0.032319956 -0.1141617 -0.032319956 0.068536997 -0.032319956
		 -0.29676458 -0.032319956 -0.66218019 -0.00099500152 -0.47945184 -0.00099500152 -0.2967647
		 -0.00099500152 -0.1140776 -0.00099500152 0.068650693 -0.00099500152 0.2514233 -0.00099500152
		 0.43423709 -0.00099500152 -0.66218019 -0.0036225531 -0.47945184 -0.0036225531 -0.2967647
		 -0.0036225531 -0.1140776 -0.0036225531 0.068650693 -0.0036225531 0.2514233 -0.0036225531
		 0.43423709 -0.0036225531 -0.66218019 -0.006354562 -0.47945184 -0.006354562 -0.2967647
		 -0.006354562 -0.1140776 -0.006354562 0.068650693 -0.006354562 0.2514233 -0.006354562
		 0.43423709 -0.006354562 -0.66218019 -0.0091606295 -0.47945178 -0.0091606295 -0.29676464
		 -0.0091606295 -0.1140776 -0.0091606295 0.068650723 -0.0091606295 0.2514233 -0.0091606295
		 0.43423709 -0.0091606295 -0.66218019 -0.011801711 -0.47945178 -0.011801711 -0.29676464
		 -0.011801711 -0.1140776 -0.011801711 0.068650723 -0.011801711 0.2514233 -0.011801711
		 0.43423709 -0.011801711 -0.66218019 -0.014607779 -0.47945178 -0.014607779 -0.29676464
		 -0.014607779 -0.1140776 -0.014607779 0.068650723 -0.014607779 0.2514233 -0.014607779
		 0.43423709 -0.014607779 -0.66218019 -0.017413905 -0.47945178 -0.017413905 -0.29676464
		 -0.017413905 -0.1140776 -0.017413905 0.068650723 -0.017413905 0.2514233 -0.017413905
		 0.43423709 -0.017413905 -0.66218019 -0.020385077 -0.47945178 -0.020385077 -0.29676464
		 -0.020385077 -0.1140776 -0.020385077 0.068650723 -0.020385077 0.2514233 -0.020385077
		 0.43423709 -0.020385077 -0.66218019 -0.023191204 -0.47945178 -0.023191204 -0.29676458
		 -0.023191204 -0.1140776 -0.023191204 0.068650752 -0.023191204 0.2514233 -0.023191204
		 0.43423709 -0.023191204 -0.66218019 -0.025230875 -0.47945178 -0.025230875 -0.29676458
		 -0.025230875 -0.1140776 -0.025230875 0.068650723 -0.025230875 0.2514233 -0.025230875
		 0.43423709 -0.025230875 -0.84501588 0.020789566 -0.84501588 0.016932065 -0.84463608
		 -0.032790475 -1.027766228 -0.032790475 -1.21089661 -0.032790475 -1.75878537 -0.032790475
		 -0.84501588 0.025075644 -1.027766347 0.018711502 -0.84496963 0.013543361 -1.027766347
		 0.014807039 -1.027766347 0.0051683867 -1.027766347 0.0019244936 -1.027766347 -0.027270546
		 -1.027766347 -0.029448023 -1.027766347 -0.031154683 -1.027766347 -0.032319956 -1.027766347
		 0.0087727094 -0.84495258 0.0019244936 -1.027766347 -0.00099500152 -0.84495258 -0.00099500152
		 -1.027766347 -0.0036225531 -0.84495258 -0.0036225531 -1.027766347 -0.006354562 -0.84495258
		 -0.006354562 -1.027766347 -0.0091606295 -0.84495258 -0.0091606295 -1.027766347 -0.011801711
		 -0.84495258 -0.011801711 -1.027766347 -0.014607779 -0.84495258 -0.014607779 -1.027766347
		 -0.017413905 -0.84495258 -0.017413905 -1.027766347 -0.020385077 -0.84495258 -0.020385077
		 -1.027766347 -0.023191204 -0.84495258 -0.023191204 -1.027766347 -0.025230875 -0.84495258
		 -0.025230875 -0.84495258 -0.027270546;
createNode renderSetup -n "renderSetup";
	rename -uid "67263F39-40F4-2001-2BAC-EE933CAD2CDD";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "F4A1BC27-4DFF-3AD1-E03C-45ABCC12FF3B";
	setAttr ".version" -type "string" "1.3.0.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "2F205DDF-475F-B36B-A774-D5957A2C4371";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "9A09D0EE-498A-5BAA-0BFC-2E9670A0F69A";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "25C47D24-446C-CA0F-12B5-C784C7812E42";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "reference.di" "pPlane1.do";
connectAttr "reference.di" "pPlane2.do";
connectAttr "shadow_worm.di" "pCube1.do";
connectAttr "skinCluster1GroupId.id" "pCubeShape1.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pCubeShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pCubeShape1.iog.og[1].gco";
connectAttr "polyTweakUV1.out" "pCubeShape1.i";
connectAttr "tweak1.vl[0].vt[0]" "pCubeShape1.twl";
connectAttr "polyTweakUV1.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr "shadow_worm.di" "joint1.do";
connectAttr "joint1.s" "joint4.is";
connectAttr "joint4.s" "joint6.is";
connectAttr "joint6.s" "joint7.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pPlaneShape1.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "file2.oc" "lambert3.c";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "pPlaneShape2.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "file2.msg" "materialInfo2.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "layerManager.dli[3]" "shadow_worm.id";
connectAttr "layerManager.dli[4]" "reference.id";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint4.wm" "skinCluster1.ma[1]";
connectAttr "joint6.wm" "skinCluster1.ma[2]";
connectAttr "joint7.wm" "skinCluster1.ma[3]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint4.liw" "skinCluster1.lw[1]";
connectAttr "joint6.liw" "skinCluster1.lw[2]";
connectAttr "joint7.liw" "skinCluster1.lw[3]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint4.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint6.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint7.obcc" "skinCluster1.ifcl[3]";
connectAttr "geomBind1.scs" "skinCluster1.gb";
connectAttr "joint7.msg" "skinCluster1.ptt";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pCubeShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "polyCylProj1.out" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCubeShape1.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "joint4.msg" "bindPose1.m[1]";
connectAttr "joint6.msg" "bindPose1.m[2]";
connectAttr "joint7.msg" "bindPose1.m[3]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "joint4.bps" "bindPose1.wm[1]";
connectAttr "joint6.bps" "bindPose1.wm[2]";
connectAttr "joint7.bps" "bindPose1.wm[3]";
connectAttr "bindPose1.msg" "geomBind1.bp";
connectAttr "file3.oc" "blinn1.c";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "pCubeShape1.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo3.sg";
connectAttr "blinn1.msg" "materialInfo3.m";
connectAttr "file3.msg" "materialInfo3.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "pCubeShape1Orig.w" "polyCylProj1.ip";
connectAttr "pCubeShape1.wm" "polyCylProj1.mp";
connectAttr "skinCluster1.og[0]" "polyTweakUV1.ip";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
// End of shadows2.0005.ma
