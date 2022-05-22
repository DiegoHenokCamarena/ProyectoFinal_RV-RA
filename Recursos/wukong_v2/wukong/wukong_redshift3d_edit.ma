//Maya ASCII 2016R2 scene
//Name: wukong_redshift3d_edit.ma
//Last modified: Sat, May 05, 2018 09:22:58 AM
//Codeset: 1252
file -rdi 1 -ns "wukong_rig" -rfn "wukong_rigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/Wukong/wukong//wukong_rig.ma";
file -rdi 1 -ns "wukong_weapon" -rfn "wukong_weaponRN" -op "v=0;" -typ "mayaAscii"
		 "E:/Wukong/wukong//wukong_weapon.ma";
file -r -ns "wukong_rig" -dr 1 -rfn "wukong_rigRN" -op "v=0;" -typ "mayaAscii" "E:/Wukong/wukong//wukong_rig.ma";
file -r -ns "wukong_weapon" -dr 1 -rfn "wukong_weaponRN" -op "v=0;" -typ "mayaAscii"
		 "E:/Wukong/wukong//wukong_weapon.ma";
requires maya "2016R2";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftSubSurfaceScatter" -nodeType "RedshiftDomeLight"
		 -nodeType "RedshiftBumpMap" -nodeType "RedshiftNormalMap" -nodeType "RedshiftMaterial"
		 "redshift4maya" "2.5.40";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2017.0.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016 Extension 2";
fileInfo "cutIdentifier" "201603022110-988944-2";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "76544386-4681-0DC1-EE32-A8926BD38B93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.42421287953062 2.9857119301816013 16.494310055710727 ;
	setAttr ".r" -type "double3" 2.6616472703966911 37.799999999998214 1.2578839878126982e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B954F44A-44DE-749B-76EB-ADA4284ED3DE";
	setAttr -k off ".v" no;
	setAttr ".ff" 2;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 55;
	setAttr ".coi" 21.673620828585619;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -s -n "top";
	rename -uid "27B81314-4E87-511C-8554-63A87122BA4F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "796E3F2B-4D99-4D65-7FAF-A9BF7ACF4B14";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "8DC9CF9F-49C1-4B37-86A0-6395D5406809";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "58DDB9EB-44A7-D2C0-D1D2-A89317E1BC25";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "04D6046C-4D91-3F55-E759-918215A115B1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "3ADA6C8E-4D25-2D97-A2A5-118469982A26";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "rsDomeLight1";
	rename -uid "C872F1B6-46EE-0C34-9E78-3BAABEA26718";
	setAttr ".r" -type "double3" 0 -53.458244040101896 0 ;
createNode RedshiftDomeLight -n "rsDomeLightShape1" -p "rsDomeLight1";
	rename -uid "F6D60FB7-4D82-23A6-3D2B-E1AD174C0995";
	setAttr -k off ".v";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".viewportResolution" 1024;
	setAttr ".tex0" -type "string" "E:/Wukong/wukong//hdr.hdr";
	setAttr ".background_enable" no;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0A0E3EF2-488C-1671-52CD-D2AD79ADC2A5";
	setAttr -s 26 ".lnk";
	setAttr -s 26 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "69165A56-42EC-B680-3B94-7680DDE3CA83";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D155DF95-4690-4FE5-5E1A-78BFCFE0F040";
createNode displayLayerManager -n "layerManager";
	rename -uid "4EDF3590-4E8A-D15B-946E-16BF144F7DB3";
createNode displayLayer -n "defaultLayer";
	rename -uid "F36661B0-49B2-224F-BE7C-4FA3B9DEF410";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7622E544-4351-B6B9-A9CF-5AAECF7AE4BE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "40B55C52-421C-E5C8-7CBC-5C87305668D0";
	setAttr ".g" yes;
createNode reference -n "wukong_rigRN";
	rename -uid "E0076620-4E26-6BD1-EF40-3DBAF1B92E02";
	setAttr -s 73 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"wukong_rigRN"
		"wukong_rigRN" 0
		"wukong_rigRN" 236
		2 "|wukong_rig:Group|wukong_rig:Main|wukong_rig:MotionSystem|wukong_rig:IKSystem|wukong_rig:IKHandle|wukong_rig:IKSplineHandle_M" 
		"rotate" " -type \"double3\" 90.000000001481766 88.041732841902217 90.000000001463263"
		
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:pant|wukong_rig:pantShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tongue|wukong_rig:tongueShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailPart3|wukong_rig:tailPartShape3" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailPart4|wukong_rig:tailPartShape4" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailPart5|wukong_rig:tailPartShape5" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailPart6|wukong_rig:tailPartShape6" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailPart13|wukong_rig:tailPartShape13" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_1|wukong_rig:beard_Shape1" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_2|wukong_rig:beard_Shape2" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_3|wukong_rig:beard_Shape3" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_4|wukong_rig:beard_Shape4" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_5|wukong_rig:beard_Shape5" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_6|wukong_rig:beard_Shape6" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_7|wukong_rig:beard_Shape7" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_8|wukong_rig:beard_Shape8" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_9|wukong_rig:beard_Shape9" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_10|wukong_rig:beard_Shape10" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_11|wukong_rig:beard_Shape11" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_12|wukong_rig:beard_Shape12" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_13|wukong_rig:beard_Shape13" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_14|wukong_rig:beard_Shape14" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_15|wukong_rig:beard_Shape15" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_16|wukong_rig:beard_Shape16" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_17|wukong_rig:beard_Shape17" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_18|wukong_rig:beard_Shape18" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_19|wukong_rig:beard_Shape19" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_20|wukong_rig:beard_Shape20" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_21|wukong_rig:beard_Shape21" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_22|wukong_rig:beard_Shape22" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail6|wukong_rig:nailShape6" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail7|wukong_rig:nailShape7" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail8|wukong_rig:nailShape8" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail9|wukong_rig:nailShape9" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail10|wukong_rig:nailShape10" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail1|wukong_rig:nailShape1" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:shirt|wukong_rig:shirtShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:line_4|wukong_rig:line_Shape4" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:line_1|wukong_rig:line_Shape1" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:line_2|wukong_rig:line_Shape2" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:shirtBottom|wukong_rig:shirtBottomShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:line_3|wukong_rig:line_Shape3" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:wristCover|wukong_rig:wristCoverShape" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:wristCover|wukong_rig:wristCoverShape" 
		"uvPivot" " -type \"double2\" 0.49846499180421233 0.26322649139910936"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:wristCover|wukong_rig:wristCoverShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:browTop|wukong_rig:browTopShape" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:browTop|wukong_rig:browTopShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:ringHead|wukong_rig:ringHeadShape" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:ringHead|wukong_rig:ringHeadShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:hair6|wukong_rig:hair6Shape" 
		"instObjGroups.objectGroups" " -s 8"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:hair6|wukong_rig:hair6Shape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:upperGum|wukong_rig:upperGumShape" 
		"instObjGroups.objectGroups" " -s 8"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:upperGum|wukong_rig:upperGumShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:lowerGum|wukong_rig:lowerGumShape" 
		"instObjGroups.objectGroups" " -s 8"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:lowerGum|wukong_rig:lowerGumShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:legLower|wukong_rig:legLowerShape" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:legLower|wukong_rig:legLowerShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:feet|wukong_rig:feetShape" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:feet|wukong_rig:feetShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:shoes|wukong_rig:shoesShape" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:shoes|wukong_rig:shoesShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:hands|wukong_rig:handsShape" 
		"instObjGroups.objectGroups" " -s 4"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:hands|wukong_rig:handsShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eye_r|wukong_rig:eye_rShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eye_l|wukong_rig:eye_lShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eyeShell_left|wukong_rig:eyeShell_leftShape" 
		"instObjGroups.objectGroups" " -s 8"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eyeShell_left|wukong_rig:eyeShell_leftShape" 
		"uvPivot" " -type \"double2\" 0.5 0.5"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eyeShell_left|wukong_rig:eyeShell_leftShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eyeShell_right|wukong_rig:eyeShell_rightShape" 
		"instObjGroups.objectGroups" " -s 8"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eyeShell_right|wukong_rig:eyeShell_rightShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:black_r|wukong_rig:black_rShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:black_l|wukong_rig:black_lShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailTip|wukong_rig:tailTipShape" 
		"instObjGroups.objectGroups" " -s 6"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailTip|wukong_rig:tailTipShape" 
		"rsEnableSubdivision" " 1"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:face1|wukong_rig:faceShape1" 
		"instObjGroups.objectGroups" " -s 21"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:face1|wukong_rig:faceShape1" 
		"uvPivot" " -type \"double2\" 0.49869500612840056 0.53444500640034676"
		2 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:face1|wukong_rig:faceShape1" 
		"rsEnableSubdivision" " 1"
		2 "wukong_rig:groupParts38" "inputRemoveComponent" " -type \"componentList\" 1 \"f[0:2799]\""
		
		2 "wukong_rig:groupParts38" "groupId" " 30"
		2 "wukong_rig:groupParts202" "inputRemoveComponent" " -type \"componentList\" 1 \"f[0:2671]\""
		
		2 "wukong_rig:groupParts202" "groupId" " 174"
		2 "wukong_rig:geo" "displayType" " 0"
		3 "wukong_rig:blinn1SG.memberWireframeColor" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:browTop|wukong_rig:browTopShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:hands|wukong_rig:handsShape.instObjGroups.objectGroups[0]" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "wukong_rig:groupId360.message" "wukong_rig:blinn1SG.groupNodes" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail6|wukong_rig:nailShape6.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail8|wukong_rig:nailShape8.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail9|wukong_rig:nailShape9.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail10|wukong_rig:nailShape10.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail7|wukong_rig:nailShape7.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail2|wukong_rig:nailShape2.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail3|wukong_rig:nailShape3.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail4|wukong_rig:nailShape4.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail5|wukong_rig:nailShape5.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail1|wukong_rig:nailShape1.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailTip|wukong_rig:tailTipShape.instObjGroups.objectGroups[0]" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:feet|wukong_rig:feetShape.instObjGroups.objectGroups[0]" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:legLower|wukong_rig:legLowerShape.instObjGroups.objectGroups[0]" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:lowerGum|wukong_rig:lowerGumShape.instObjGroups.objectGroups[0]" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:ringHead|wukong_rig:ringHeadShape.instObjGroups.objectGroups[0]" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:upperGum|wukong_rig:upperGumShape.instObjGroups.objectGroups[0]" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:hair6|wukong_rig:hair6Shape.instObjGroups.objectGroups[0]" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:browTop|wukong_rig:browTopShape.instObjGroups.objectGroups[0]" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:shoes|wukong_rig:shoesShape.instObjGroups.objectGroups[0]" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:wristCover|wukong_rig:wristCoverShape.instObjGroups.objectGroups[0]" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eye_r|wukong_rig:eye_rShape.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eye_l|wukong_rig:eye_lShape.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:line_2|wukong_rig:line_Shape2.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:shirt|wukong_rig:shirtShape.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:shirtBottom|wukong_rig:shirtBottomShape.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:line_3|wukong_rig:line_Shape3.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:line_4|wukong_rig:line_Shape4.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:line_1|wukong_rig:line_Shape1.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_21|wukong_rig:beard_Shape21.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_22|wukong_rig:beard_Shape22.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_18|wukong_rig:beard_Shape18.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_19|wukong_rig:beard_Shape19.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_16|wukong_rig:beard_Shape16.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_15|wukong_rig:beard_Shape15.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_14|wukong_rig:beard_Shape14.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_13|wukong_rig:beard_Shape13.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_20|wukong_rig:beard_Shape20.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_17|wukong_rig:beard_Shape17.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_3|wukong_rig:beard_Shape3.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailPart6|wukong_rig:tailPartShape6.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailPart5|wukong_rig:tailPartShape5.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_4|wukong_rig:beard_Shape4.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_1|wukong_rig:beard_Shape1.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_2|wukong_rig:beard_Shape2.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailPart13|wukong_rig:tailPartShape13.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailPart3|wukong_rig:tailPartShape3.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:pant|wukong_rig:pantShape.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailPart4|wukong_rig:tailPartShape4.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tongue|wukong_rig:tongueShape.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_9|wukong_rig:beard_Shape9.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_8|wukong_rig:beard_Shape8.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_7|wukong_rig:beard_Shape7.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_5|wukong_rig:beard_Shape5.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_11|wukong_rig:beard_Shape11.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_10|wukong_rig:beard_Shape10.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_6|wukong_rig:beard_Shape6.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_12|wukong_rig:beard_Shape12.instObjGroups" 
		"wukong_rig:blinn1SG.dagSetMembers" "-na"
		3 "wukong_rig:groupId189.message" "wukong_rig:blinn1SG.groupNodes" "-na"
		3 "wukong_rig:blinn1SG.memberWireframeColor" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:upperGum|wukong_rig:upperGumShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wukong_rig:blinn1SG.memberWireframeColor" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:hair6|wukong_rig:hair6Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wukong_rig:groupId360.groupId" "wukong_rig:groupParts202.groupId" ""
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eyeShell_right|wukong_rig:eyeShell_rightShape.instObjGroups.objectGroups[0]" 
		"wukong_rig:blinn3SG.dagSetMembers" "-na"
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eyeShell_left|wukong_rig:eyeShell_leftShape.instObjGroups.objectGroups[0]" 
		"wukong_rig:blinn3SG.dagSetMembers" "-na"
		3 "wukong_rig:groupId189.groupId" "wukong_rig:groupParts38.groupId" ""
		3 "wukong_rig:blinn1SG.memberWireframeColor" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailTip|wukong_rig:tailTipShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wukong_rig:blinn3SG.memberWireframeColor" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eyeShell_left|wukong_rig:eyeShell_leftShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wukong_rig:clean_blinn1SG.memberWireframeColor" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:face1|wukong_rig:faceShape1.instObjGroups.objectGroups[4].objectGrpColor" 
		""
		3 "wukong_rig:blinn1SG.memberWireframeColor" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:feet|wukong_rig:feetShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wukong_rig:blinn1SG.memberWireframeColor" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:legLower|wukong_rig:legLowerShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wukong_rig:blinn1SG.memberWireframeColor" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:wristCover|wukong_rig:wristCoverShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wukong_rig:blinn3SG.memberWireframeColor" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eyeShell_right|wukong_rig:eyeShell_rightShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wukong_rig:blinn1SG.memberWireframeColor" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:shoes|wukong_rig:shoesShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wukong_rig:blinn1SG.memberWireframeColor" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:lowerGum|wukong_rig:lowerGumShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wukong_rig:groupId360.groupId" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:hands|wukong_rig:handsShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "wukong_rig:blinn1SG.memberWireframeColor" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:hands|wukong_rig:handsShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:face1|wukong_rig:faceShape1.instObjGroups.objectGroups[4]" 
		"wukong_rig:clean_blinn1SG.dagSetMembers" "-na"
		3 "wukong_rig:blinn1SG.memberWireframeColor" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:ringHead|wukong_rig:ringHeadShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "wukong_rig:groupId189.groupId" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:ringHead|wukong_rig:ringHeadShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:pant|wukong_rig:pantShape.instObjGroups" 
		"wukong_rigRN.placeHolderList[1]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tongue|wukong_rig:tongueShape.instObjGroups" 
		"wukong_rigRN.placeHolderList[2]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailPart3|wukong_rig:tailPartShape3.instObjGroups" 
		"wukong_rigRN.placeHolderList[3]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailPart4|wukong_rig:tailPartShape4.instObjGroups" 
		"wukong_rigRN.placeHolderList[4]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailPart5|wukong_rig:tailPartShape5.instObjGroups" 
		"wukong_rigRN.placeHolderList[5]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailPart6|wukong_rig:tailPartShape6.instObjGroups" 
		"wukong_rigRN.placeHolderList[6]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailPart13|wukong_rig:tailPartShape13.instObjGroups" 
		"wukong_rigRN.placeHolderList[7]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_1|wukong_rig:beard_Shape1.instObjGroups" 
		"wukong_rigRN.placeHolderList[8]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_2|wukong_rig:beard_Shape2.instObjGroups" 
		"wukong_rigRN.placeHolderList[9]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_3|wukong_rig:beard_Shape3.instObjGroups" 
		"wukong_rigRN.placeHolderList[10]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_4|wukong_rig:beard_Shape4.instObjGroups" 
		"wukong_rigRN.placeHolderList[11]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_5|wukong_rig:beard_Shape5.instObjGroups" 
		"wukong_rigRN.placeHolderList[12]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_6|wukong_rig:beard_Shape6.instObjGroups" 
		"wukong_rigRN.placeHolderList[13]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_7|wukong_rig:beard_Shape7.instObjGroups" 
		"wukong_rigRN.placeHolderList[14]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_8|wukong_rig:beard_Shape8.instObjGroups" 
		"wukong_rigRN.placeHolderList[15]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_9|wukong_rig:beard_Shape9.instObjGroups" 
		"wukong_rigRN.placeHolderList[16]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_10|wukong_rig:beard_Shape10.instObjGroups" 
		"wukong_rigRN.placeHolderList[17]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_11|wukong_rig:beard_Shape11.instObjGroups" 
		"wukong_rigRN.placeHolderList[18]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_12|wukong_rig:beard_Shape12.instObjGroups" 
		"wukong_rigRN.placeHolderList[19]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_13|wukong_rig:beard_Shape13.instObjGroups" 
		"wukong_rigRN.placeHolderList[20]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_14|wukong_rig:beard_Shape14.instObjGroups" 
		"wukong_rigRN.placeHolderList[21]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_15|wukong_rig:beard_Shape15.instObjGroups" 
		"wukong_rigRN.placeHolderList[22]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_16|wukong_rig:beard_Shape16.instObjGroups" 
		"wukong_rigRN.placeHolderList[23]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_17|wukong_rig:beard_Shape17.instObjGroups" 
		"wukong_rigRN.placeHolderList[24]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_18|wukong_rig:beard_Shape18.instObjGroups" 
		"wukong_rigRN.placeHolderList[25]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_19|wukong_rig:beard_Shape19.instObjGroups" 
		"wukong_rigRN.placeHolderList[26]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_20|wukong_rig:beard_Shape20.instObjGroups" 
		"wukong_rigRN.placeHolderList[27]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_21|wukong_rig:beard_Shape21.instObjGroups" 
		"wukong_rigRN.placeHolderList[28]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:beard_22|wukong_rig:beard_Shape22.instObjGroups" 
		"wukong_rigRN.placeHolderList[29]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail6|wukong_rig:nailShape6.instObjGroups" 
		"wukong_rigRN.placeHolderList[30]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail7|wukong_rig:nailShape7.instObjGroups" 
		"wukong_rigRN.placeHolderList[31]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail8|wukong_rig:nailShape8.instObjGroups" 
		"wukong_rigRN.placeHolderList[32]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail9|wukong_rig:nailShape9.instObjGroups" 
		"wukong_rigRN.placeHolderList[33]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail10|wukong_rig:nailShape10.instObjGroups" 
		"wukong_rigRN.placeHolderList[34]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail1|wukong_rig:nailShape1.instObjGroups" 
		"wukong_rigRN.placeHolderList[35]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail2|wukong_rig:nailShape2.instObjGroups" 
		"wukong_rigRN.placeHolderList[36]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail3|wukong_rig:nailShape3.instObjGroups" 
		"wukong_rigRN.placeHolderList[37]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail4|wukong_rig:nailShape4.instObjGroups" 
		"wukong_rigRN.placeHolderList[38]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:nail5|wukong_rig:nailShape5.instObjGroups" 
		"wukong_rigRN.placeHolderList[39]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:shirt|wukong_rig:shirtShape.instObjGroups" 
		"wukong_rigRN.placeHolderList[40]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:line_4|wukong_rig:line_Shape4.instObjGroups" 
		"wukong_rigRN.placeHolderList[41]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:line_1|wukong_rig:line_Shape1.instObjGroups" 
		"wukong_rigRN.placeHolderList[42]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:line_2|wukong_rig:line_Shape2.instObjGroups" 
		"wukong_rigRN.placeHolderList[43]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:shirtBottom|wukong_rig:shirtBottomShape.instObjGroups" 
		"wukong_rigRN.placeHolderList[44]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:line_3|wukong_rig:line_Shape3.instObjGroups" 
		"wukong_rigRN.placeHolderList[45]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:wristCover|wukong_rig:wristCoverShape.instObjGroups.objectGroups[0]" 
		"wukong_rigRN.placeHolderList[46]" "wukong_rig:blinn1SG.dsm"
		5 4 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:wristCover|wukong_rig:wristCoverShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wukong_rigRN.placeHolderList[47]" ""
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:browTop|wukong_rig:browTopShape.instObjGroups.objectGroups[0]" 
		"wukong_rigRN.placeHolderList[48]" "wukong_rig:blinn1SG.dsm"
		5 4 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:browTop|wukong_rig:browTopShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wukong_rigRN.placeHolderList[49]" ""
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:ringHead|wukong_rig:ringHeadShape.instObjGroups" 
		"wukong_rigRN.placeHolderList[50]" ""
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:hair6|wukong_rig:hair6Shape.instObjGroups.objectGroups[0]" 
		"wukong_rigRN.placeHolderList[51]" "wukong_rig:blinn1SG.dsm"
		5 4 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:hair6|wukong_rig:hair6Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wukong_rigRN.placeHolderList[52]" ""
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:upperGum|wukong_rig:upperGumShape.instObjGroups.objectGroups[0]" 
		"wukong_rigRN.placeHolderList[53]" "wukong_rig:blinn1SG.dsm"
		5 4 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:upperGum|wukong_rig:upperGumShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wukong_rigRN.placeHolderList[54]" ""
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:lowerGum|wukong_rig:lowerGumShape.instObjGroups.objectGroups[0]" 
		"wukong_rigRN.placeHolderList[55]" "wukong_rig:blinn1SG.dsm"
		5 4 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:lowerGum|wukong_rig:lowerGumShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wukong_rigRN.placeHolderList[56]" ""
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:legLower|wukong_rig:legLowerShape.instObjGroups.objectGroups[0]" 
		"wukong_rigRN.placeHolderList[57]" "wukong_rig:blinn1SG.dsm"
		5 4 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:legLower|wukong_rig:legLowerShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wukong_rigRN.placeHolderList[58]" ""
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:feet|wukong_rig:feetShape.instObjGroups.objectGroups[0]" 
		"wukong_rigRN.placeHolderList[59]" "wukong_rig:blinn1SG.dsm"
		5 4 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:feet|wukong_rig:feetShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wukong_rigRN.placeHolderList[60]" ""
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:shoes|wukong_rig:shoesShape.instObjGroups.objectGroups[0]" 
		"wukong_rigRN.placeHolderList[61]" "wukong_rig:blinn1SG.dsm"
		5 4 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:shoes|wukong_rig:shoesShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wukong_rigRN.placeHolderList[62]" ""
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:hands|wukong_rig:handsShape.instObjGroups" 
		"wukong_rigRN.placeHolderList[63]" ""
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eye_r|wukong_rig:eye_rShape.instObjGroups" 
		"wukong_rigRN.placeHolderList[64]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eye_l|wukong_rig:eye_lShape.instObjGroups" 
		"wukong_rigRN.placeHolderList[65]" "wukong_rig:blinn1SG.dsm"
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eyeShell_left|wukong_rig:eyeShell_leftShape.instObjGroups.objectGroups[0]" 
		"wukong_rigRN.placeHolderList[66]" "wukong_rig:blinn3SG.dsm"
		5 4 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eyeShell_left|wukong_rig:eyeShell_leftShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wukong_rigRN.placeHolderList[67]" ""
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eyeShell_right|wukong_rig:eyeShell_rightShape.instObjGroups.objectGroups[0]" 
		"wukong_rigRN.placeHolderList[68]" "wukong_rig:blinn3SG.dsm"
		5 4 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:eyeShell_right|wukong_rig:eyeShell_rightShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wukong_rigRN.placeHolderList[69]" ""
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailTip|wukong_rig:tailTipShape.instObjGroups.objectGroups[0]" 
		"wukong_rigRN.placeHolderList[70]" "wukong_rig:blinn1SG.dsm"
		5 4 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:tailTip|wukong_rig:tailTipShape.instObjGroups.objectGroups[0].objectGrpColor" 
		"wukong_rigRN.placeHolderList[71]" ""
		5 3 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:face1|wukong_rig:faceShape1.instObjGroups.objectGroups[4]" 
		"wukong_rigRN.placeHolderList[72]" "wukong_rig:clean_blinn1SG.dsm"
		5 4 "wukong_rigRN" "|wukong_rig:Group|wukong_rig:Geometry|wukong_rig:face1|wukong_rig:faceShape1.instObjGroups.objectGroups[4].objectGrpColor" 
		"wukong_rigRN.placeHolderList[73]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "73590D9E-482F-72F3-5B34-8491A8111CC6";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "9C5C0488-4E06-05F6-9DAC-7EA65EEF15E2";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "12CD4F92-4D6E-4E4C-9726-8DA2D57F16B9";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	rename -uid "859CAF52-49B4-D054-257B-51802E6A42C2";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F1A3E6FB-48A0-F2B9-229D-088B77FEF211";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1101\n                -height 590\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1101\n            -height 590\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n"
		+ "                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n"
		+ "            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n"
		+ "                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n"
		+ "                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1101\\n    -height 590\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1101\\n    -height 590\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "5D8B0508-49B3-890B-6162-6D9EE0CCC899";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "wukong_weaponRN";
	rename -uid "48393CDD-46DE-57E9-886B-599BC41712A9";
	setAttr ".phl[1]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"wukong_weaponRN"
		"wukong_weaponRN" 0
		"wukong_weaponRN" 6
		2 "|wukong_weapon:Group|wukong_weapon:Main|wukong_weapon:MotionSystem|wukong_weapon:IKSystem|wukong_weapon:IKHandle|wukong_weapon:IKSplineHandle_M" 
		"translate" " -type \"double3\" 0 8.9084460036541699 0"
		2 "|wukong_weapon:Group|wukong_weapon:Main|wukong_weapon:MotionSystem|wukong_weapon:IKSystem|wukong_weapon:IKHandle|wukong_weapon:IKSplineHandle_M" 
		"rotate" " -type \"double3\" 89.999999999999986 0 90.000000000000185"
		2 "|wukong_weapon:Group|wukong_weapon:Main|wukong_weapon:MotionSystem|wukong_weapon:RootSystem|wukong_weapon:RootOffsetX_M|wukong_weapon:RootExtraX_M|wukong_weapon:RootX_M" 
		"translate" " -type \"double3\" -4.1350658496772059 0 0"
		2 "wukong_weapon:geo" "displayType" " 0"
		3 "|wukong_weapon:Group|wukong_weapon:Geometry|wukong_weapon:stick|wukong_weapon:stickShape.instObjGroups" 
		"wukong_weapon:blinn2SG.dagSetMembers" "-na"
		5 3 "wukong_weaponRN" "|wukong_weapon:Group|wukong_weapon:Geometry|wukong_weapon:stick|wukong_weapon:stickShape.instObjGroups" 
		"wukong_weaponRN.placeHolderList[1]" "wukong_weapon:blinn2SG.dsm";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "B753EB50-4B2F-FF15-D32C-C4A1EABE5386";
	addAttr -s false -ci true -h true -sn "physicalSky" -ln "physicalSky" -at "message";
	setAttr ".imageFilePrefix" -type "string" "";
	setAttr ".unifiedMinSamples" 8;
	setAttr ".unifiedMaxSamples" 256;
	setAttr ".primaryGIEngine" 4;
createNode RedshiftSubSurfaceScatter -n "rs_SSS";
	rename -uid "ED41C791-4BF2-761E-A3F7-769E94D4D98B";
	setAttr ".scatter_color" -type "float3" 0.034000002 0 0 ;
	setAttr ".scatter_radius" 0.75;
	setAttr ".reflectivity" 0.0099999997764825821;
	setAttr ".refl_brdf" 0;
createNode shadingEngine -n "rsSubSurfaceScatter1SG";
	rename -uid "5C6DF5ED-410B-1E00-172F-00A682EB8AB9";
	setAttr ".ihi" 0;
	setAttr -s 15 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "0B5CF42E-478C-16F4-D73D-C494008C9D64";
createNode file -n "file1";
	rename -uid "0196AD86-4891-A2B5-0FAD-38B988B1E665";
	setAttr ".ftn" -type "string" "E:/Wukong/wukong//deffuse_2.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "EF606E54-4DE1-7460-2BC0-0F8D7D8ACDE7";
createNode file -n "file2";
	rename -uid "77B51D70-40DC-91AF-2EE1-7D955E67D166";
	setAttr ".ftn" -type "string" "E:/Wukong/wukong//normal_map.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "57CF52B5-46B5-1E7F-19DF-7EBE18E6DDB2";
createNode RedshiftBumpMap -n "rsBumpMap1";
	rename -uid "11502937-4B63-B697-20CD-69BD72988DBE";
createNode file -n "file3";
	rename -uid "20FAF9D9-4315-102D-9653-9A9D7ADA48E0";
	setAttr ".ftn" -type "string" "E:/Wukong/wukong//specular_1.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "FF0B2832-47FD-50CD-B9F3-448E4289D253";
createNode RedshiftMaterial -n "rs_Cloth";
	rename -uid "B1537956-476F-9D89-BE01-F9B2A0A3C1FC";
	setAttr ".v" 1;
	setAttr ".transl_weight" 0.28037384152412415;
	setAttr ".refl_weight" 0.017391305416822433;
	setAttr ".refl_roughness" 0.59130436182022095;
createNode shadingEngine -n "rsMaterial1SG";
	rename -uid "6B199422-4C01-CEA6-92DF-49BD284D3BC8";
	setAttr ".ihi" 0;
	setAttr -s 43 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "22B0D626-4892-7122-248F-D197172D9C04";
	setAttr -s 3 ".t";
createNode file -n "file4";
	rename -uid "A7854DF1-49AB-0674-68B1-00AD35CB49D8";
	setAttr ".ftn" -type "string" "E:/Wukong/wukong//deffuse_2.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "CC957DE1-45DF-776C-22ED-678C28AE6A92";
createNode file -n "file5";
	rename -uid "B90C9526-4745-E1AB-5D8B-A18B29054460";
	setAttr ".ftn" -type "string" "E:/Wukong/wukong//specular_1.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "4D22434D-4646-464B-DF9D-D2BE30021B41";
createNode RedshiftMaterial -n "rs_lens";
	rename -uid "13551DB3-4237-AD2A-6559-D0842501E2D4";
	setAttr ".v" 1;
	setAttr ".preset" 1;
	setAttr ".diffuse_weight" 0;
	setAttr ".refl_reflectivity" -type "float3" 0.020059001 0.020059001 0.020059001 ;
	setAttr ".refl_ior3" -type "float3" 1.33 1.33 1.33 ;
	setAttr ".refl_ior" 1.3300000429153442;
	setAttr ".refr_weight" 1;
	setAttr ".refr_abbe" 64.169998168945313;
createNode shadingEngine -n "rsMaterial2SG";
	rename -uid "88A0C733-4A17-908F-50F1-CCB47FE04FE5";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "C15AAEB0-40A4-547C-5805-E9860FB9975C";
createNode RedshiftMaterial -n "rs_weapon";
	rename -uid "4102651D-46D9-1346-D961-2796607AE969";
	setAttr ".v" 1;
	setAttr ".diffuse_weight" 0;
	setAttr ".refl_weight" 0.58260869979858398;
	setAttr ".refl_roughness" 0.57391303777694702;
	setAttr ".refl_samples" 256;
	setAttr ".refl_fresnel_mode" 1;
	setAttr ".refl_reflectivity" -type "float3" 0.53122902 0.512357 0.49279499 ;
	setAttr ".refl_edge_tint" -type "float3" 0.570795 0.54025799 0.59234202 ;
	setAttr ".refl_ior3" -type "float3" 2.9114001 2.9497001 2.5295 ;
	setAttr ".refl_k3" -type "float3" 3.0892999 2.9317999 2.737 ;
	setAttr ".refl_ior" 6.0824790000915527;
createNode shadingEngine -n "rsMaterial3SG";
	rename -uid "C75CCE45-477B-8D1D-DA11-B798E6A4D59E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "CE945951-4EEB-536F-F23E-A29D91BAA174";
createNode file -n "file6";
	rename -uid "AA753788-488B-2FA8-B646-4799ED423EB4";
	setAttr ".ftn" -type "string" "E:/Wukong/wukong//vk_deffuse.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "16D5D359-4A49-9155-C85A-D6B9562FEF01";
createNode RedshiftMaterial -n "rsHeadPiece";
	rename -uid "E348470A-42C2-BC77-7A2B-D69B0A05578A";
	setAttr ".v" 1;
	setAttr ".preset" 5;
	setAttr ".diffuse_weight" 0;
	setAttr ".refl_roughness" 0.11999999731779099;
	setAttr ".refl_samples" 256;
	setAttr ".refl_brdf" 1;
	setAttr ".refl_fresnel_mode" 1;
	setAttr ".refl_reflectivity" -type "float3" 0.94419801 0.77570599 0.37217 ;
	setAttr ".refl_edge_tint" -type "float3" 0.99778301 0.98109698 0.73447502 ;
	setAttr ".refl_ior3" -type "float3" 0.18309 0.42203 1.4324 ;
	setAttr ".refl_k3" -type "float3" 3.4240999 2.3461001 1.7915 ;
	setAttr ".refl_ior" 16.332944869995117;
createNode shadingEngine -n "rsMaterial4SG";
	rename -uid "42395120-4240-193D-8FE5-9A952D41C430";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "8B7782DD-4920-2CD4-3D96-74B5F6CB0FB8";
createNode RedshiftNormalMap -n "rsNormalMap1";
	rename -uid "7AF75383-40F5-F258-B629-59822DA1F415";
	setAttr ".tex0" -type "string" "E:/Wukong/wukong//normal_map.png";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "F690486B-41AF-16D2-D651-54BDB8832E32";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 2270.749462446382 -712.04121136338347 ;
	setAttr ".tgi[0].vh" -type "double2" 3923.2063467373514 195.84129792880731 ;
	setAttr -s 10 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 3000;
	setAttr ".tgi[0].ni[0].y" -18.571428298950195;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 2385.71435546875;
	setAttr ".tgi[0].ni[1].y" -41.428569793701172;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 2692.857177734375;
	setAttr ".tgi[0].ni[2].y" -217.14285278320312;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 3614.28564453125;
	setAttr ".tgi[0].ni[3].y" -120;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 3000;
	setAttr ".tgi[0].ni[4].y" -194.28572082519531;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 3307.142822265625;
	setAttr ".tgi[0].ni[5].y" -117.23206329345703;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 3000;
	setAttr ".tgi[0].ni[6].y" -370;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 2692.857177734375;
	setAttr ".tgi[0].ni[7].y" -392.85714721679687;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" 2692.857177734375;
	setAttr ".tgi[0].ni[8].y" -18.571428298950195;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 3000;
	setAttr ".tgi[0].ni[9].y" 188.57142639160156;
	setAttr ".tgi[0].ni[9].nvs" 2035;
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
	setAttr -s 26 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 28 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 17 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 13 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "redshift";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "iff";
	setAttr ".pff" yes;
select -ne :defaultResolution;
	setAttr ".w" 2048;
	setAttr ".h" 2048;
	setAttr ".pa" 1;
	setAttr ".dar" 1;
select -ne :defaultLightSet;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 9 ".sol";
connectAttr "wukong_rigRN.phl[1]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[2]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[3]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[4]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[5]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[6]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[7]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[8]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[9]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[10]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[11]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[12]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[13]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[14]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[15]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[16]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[17]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[18]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[19]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[20]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[21]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[22]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[23]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[24]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[25]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[26]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[27]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[28]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[29]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[30]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[31]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[32]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[33]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[34]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[35]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[36]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[37]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[38]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[39]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[40]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[41]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[42]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[43]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[44]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[45]" "rsMaterial1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[46]" "rsMaterial1SG.dsm" -na;
connectAttr "rsMaterial1SG.mwc" "wukong_rigRN.phl[47]";
connectAttr "wukong_rigRN.phl[48]" "rsMaterial1SG.dsm" -na;
connectAttr "rsMaterial1SG.mwc" "wukong_rigRN.phl[49]";
connectAttr "wukong_rigRN.phl[50]" "rsMaterial4SG.dsm" -na;
connectAttr "wukong_rigRN.phl[51]" "rsMaterial1SG.dsm" -na;
connectAttr "rsMaterial1SG.mwc" "wukong_rigRN.phl[52]";
connectAttr "wukong_rigRN.phl[53]" "rsMaterial1SG.dsm" -na;
connectAttr "rsMaterial1SG.mwc" "wukong_rigRN.phl[54]";
connectAttr "wukong_rigRN.phl[55]" "rsMaterial1SG.dsm" -na;
connectAttr "rsMaterial1SG.mwc" "wukong_rigRN.phl[56]";
connectAttr "wukong_rigRN.phl[57]" "rsMaterial1SG.dsm" -na;
connectAttr "rsMaterial1SG.mwc" "wukong_rigRN.phl[58]";
connectAttr "wukong_rigRN.phl[59]" "rsMaterial1SG.dsm" -na;
connectAttr "rsMaterial1SG.mwc" "wukong_rigRN.phl[60]";
connectAttr "wukong_rigRN.phl[61]" "rsMaterial1SG.dsm" -na;
connectAttr "rsMaterial1SG.mwc" "wukong_rigRN.phl[62]";
connectAttr "wukong_rigRN.phl[63]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[64]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[65]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "wukong_rigRN.phl[66]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "wukong_rigRN.phl[67]";
connectAttr "wukong_rigRN.phl[68]" "rsMaterial2SG.dsm" -na;
connectAttr "rsMaterial2SG.mwc" "wukong_rigRN.phl[69]";
connectAttr "wukong_rigRN.phl[70]" "rsMaterial1SG.dsm" -na;
connectAttr "rsMaterial1SG.mwc" "wukong_rigRN.phl[71]";
connectAttr "wukong_rigRN.phl[72]" "rsSubSurfaceScatter1SG.dsm" -na;
connectAttr "rsSubSurfaceScatter1SG.mwc" "wukong_rigRN.phl[73]";
connectAttr "wukong_weaponRN.phl[1]" "rsMaterial3SG.dsm" -na;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsSubSurfaceScatter1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsSubSurfaceScatter1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "rs_SSS.sub_surface_color";
connectAttr "rsBumpMap1.oc" "rs_SSS.bump_input";
connectAttr "file3.oc" "rs_SSS.refl_color";
connectAttr "rs_SSS.oc" "rsSubSurfaceScatter1SG.ss";
connectAttr "rsSubSurfaceScatter1SG.msg" "materialInfo1.sg";
connectAttr "rs_SSS.msg" "materialInfo1.m";
connectAttr "rs_SSS.msg" "materialInfo1.t" -na;
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
connectAttr "file2.oc" "rsBumpMap1.input";
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
connectAttr "file4.oc" "rs_Cloth.diffuse_color";
connectAttr "file5.oc" "rs_Cloth.refl_color";
connectAttr "rsNormalMap1.oc" "rs_Cloth.bump_input";
connectAttr "rs_Cloth.oc" "rsMaterial1SG.ss";
connectAttr "rsMaterial1SG.msg" "materialInfo2.sg";
connectAttr "rs_Cloth.msg" "materialInfo2.m";
connectAttr "file4.msg" "materialInfo2.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "place2dTexture5.c" "file5.c";
connectAttr "place2dTexture5.tf" "file5.tf";
connectAttr "place2dTexture5.rf" "file5.rf";
connectAttr "place2dTexture5.mu" "file5.mu";
connectAttr "place2dTexture5.mv" "file5.mv";
connectAttr "place2dTexture5.s" "file5.s";
connectAttr "place2dTexture5.wu" "file5.wu";
connectAttr "place2dTexture5.wv" "file5.wv";
connectAttr "place2dTexture5.re" "file5.re";
connectAttr "place2dTexture5.of" "file5.of";
connectAttr "place2dTexture5.r" "file5.ro";
connectAttr "place2dTexture5.n" "file5.n";
connectAttr "place2dTexture5.vt1" "file5.vt1";
connectAttr "place2dTexture5.vt2" "file5.vt2";
connectAttr "place2dTexture5.vt3" "file5.vt3";
connectAttr "place2dTexture5.vc1" "file5.vc1";
connectAttr "place2dTexture5.o" "file5.uv";
connectAttr "place2dTexture5.ofs" "file5.fs";
connectAttr "rs_lens.oc" "rsMaterial2SG.ss";
connectAttr "rsMaterial2SG.msg" "materialInfo3.sg";
connectAttr "rs_lens.msg" "materialInfo3.m";
connectAttr "file6.oc" "rs_weapon.diffuse_color";
connectAttr "rs_weapon.oc" "rsMaterial3SG.ss";
connectAttr "rsMaterial3SG.msg" "materialInfo4.sg";
connectAttr "rs_weapon.msg" "materialInfo4.m";
connectAttr "file6.msg" "materialInfo4.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file6.ws";
connectAttr "place2dTexture6.c" "file6.c";
connectAttr "place2dTexture6.tf" "file6.tf";
connectAttr "place2dTexture6.rf" "file6.rf";
connectAttr "place2dTexture6.mu" "file6.mu";
connectAttr "place2dTexture6.mv" "file6.mv";
connectAttr "place2dTexture6.s" "file6.s";
connectAttr "place2dTexture6.wu" "file6.wu";
connectAttr "place2dTexture6.wv" "file6.wv";
connectAttr "place2dTexture6.re" "file6.re";
connectAttr "place2dTexture6.of" "file6.of";
connectAttr "place2dTexture6.r" "file6.ro";
connectAttr "place2dTexture6.n" "file6.n";
connectAttr "place2dTexture6.vt1" "file6.vt1";
connectAttr "place2dTexture6.vt2" "file6.vt2";
connectAttr "place2dTexture6.vt3" "file6.vt3";
connectAttr "place2dTexture6.vc1" "file6.vc1";
connectAttr "place2dTexture6.o" "file6.uv";
connectAttr "place2dTexture6.ofs" "file6.fs";
connectAttr "rsHeadPiece.oc" "rsMaterial4SG.ss";
connectAttr "rsMaterial4SG.msg" "materialInfo5.sg";
connectAttr "rsHeadPiece.msg" "materialInfo5.m";
connectAttr "rsBumpMap1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "rsSubSurfaceScatter1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "rs_SSS.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "file3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "place2dTexture3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "rsNormalMap1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "rsSubSurfaceScatter1SG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial1SG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial2SG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial3SG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial4SG.pa" ":renderPartition.st" -na;
connectAttr "rs_SSS.msg" ":defaultShaderList1.s" -na;
connectAttr "rs_Cloth.msg" ":defaultShaderList1.s" -na;
connectAttr "rs_lens.msg" ":defaultShaderList1.s" -na;
connectAttr "rs_weapon.msg" ":defaultShaderList1.s" -na;
connectAttr "rsHeadPiece.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsBumpMap1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsNormalMap1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "rsDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "rsDomeLight1.iog" ":defaultLightSet.dsm" -na;
// End of wukong_redshift3d_edit.ma
