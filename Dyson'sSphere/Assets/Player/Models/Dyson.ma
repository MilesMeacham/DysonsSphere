//Maya ASCII 2015 scene
//Name: DysonAnimations.022.ma
//Last modified: Wed, Mar 02, 2016 11:54:19 PM
//Codeset: UTF-8
file -rdi 1 -ns "Player_With_Controls" -rfn "Player_With_ControlsRN" -op "v=0;"
		 "C:/Users/Tom/Documents/GameDesign/JuniorProjectGemBots/CharacterDesign/DysonCharacter//scenes/Player_With_Controls.ma";
file -rdi 1 -ns "Player_With_Controls1" -dr 1 -rfn "Player_With_ControlsRN1"
		 -op "v=0;" "C:/Users/Tom/Documents/GameDesign/JuniorProjectGemBots/CharacterDesign/DysonCharacter//scenes/Player_With_Controls.ma";
file -r -ns "Player_With_Controls" -dr 1 -rfn "Player_With_ControlsRN" -op "v=0;"
		 "C:/Users/Tom/Documents/GameDesign/JuniorProjectGemBots/CharacterDesign/DysonCharacter//scenes/Player_With_Controls.ma";
file -r -ns "Player_With_Controls1" -dr 1 -rfn "Player_With_ControlsRN1" -op "v=0;"
		 "C:/Users/Tom/Documents/GameDesign/JuniorProjectGemBots/CharacterDesign/DysonCharacter//scenes/Player_With_Controls.ma";
requires maya "2015";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9.5";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 72.313986274751301 4.7594390858242974 -7.9442420834110123 ;
	setAttr ".r" -type "double3" 6.2616472732044981 -263.79999999968641 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 71.353434826575622;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 2.8384505312778128 11.773407102674856 6.6675151102960815 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 72.527781826732806;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.6908201197119288 16.451441660575767 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 84.098933676297435;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 104.48411352279848 9.9278075578617972 4.392075896707559 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0 -1.4210854715202004e-14 ;
	setAttr ".rpt" -type "double3" -1.4210854715202007e-14 0 1.4210854715202089e-14 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000002;
	setAttr ".ow" 120.03999534620571;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 18 ".lnk";
	setAttr -s 18 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "Player_With_ControlsRN";
	setAttr -s 72 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Player_With_ControlsRN"
		"Player_With_ControlsRN" 0
		"Player_With_ControlsRN" 150
		2 "|Player_With_Controls:Root_Control" "translate" " -type \"double3\" 0 9.16 0"
		
		2 "|Player_With_Controls:Root_Control" "translateX" " -av"
		2 "|Player_With_Controls:Root_Control" "translateY" " -av"
		2 "|Player_With_Controls:Root_Control" "translateZ" " -av"
		2 "|Player_With_Controls:Root_Control" "rotate" " -type \"double3\" 8.93487429775307618 0 0"
		
		2 "|Player_With_Controls:Root_Control" "rotateX" " -av"
		2 "|Player_With_Controls:Root_Control" "rotateY" " -av"
		2 "|Player_With_Controls:Root_Control" "rotateZ" " -av"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control" 
		"rotateX" " -av 0"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control" 
		"rotateY" " -av 1.72532869039118353"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control" 
		"rotateY" " -av 0"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control" 
		"rotateZ" " -av 0"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control" 
		"L_Ankle_Control" " -av -k 1 -3.8"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control" 
		"L_Lower_Foot_Control" " -av -k 1 0"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control" 
		"L_IK_FK_Switch" " -av -k 1 10"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control" 
		"View_L_IK_Controls" " -av -k 1 1"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control" 
		"View_L_FK_Controls" " -av -k 1 0"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control|Player_With_Controls:G_L_Ball_Control|Player_With_Controls:L_FK_Hip_Control" 
		"rotateX" " -av -16.85099268748812662"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control|Player_With_Controls:G_L_Ball_Control|Player_With_Controls:L_IK_Leg_Control" 
		"translateY" " -av 1.42256152975873418"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control|Player_With_Controls:G_L_Ball_Control|Player_With_Controls:L_IK_Leg_Control" 
		"translateZ" " -av 3.59580171425613626"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control" 
		"rotateY" " -av 0"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control" 
		"rotateZ" " -av 0"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control" 
		"R_Ankle_Control" " -av -k 1 37.39563438739902068"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control" 
		"R_Lower_Foot_Control" " -av -k 1 0"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control" 
		"R_IK_FK_Switch" " -av -k 1 10"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control" 
		"View_R_IK_Controls" " -av -k 1 1"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control" 
		"View_R_FK_Controls" " -av -k 1 0"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control|Player_With_Controls:G_R_Ball_Control|Player_With_Controls:R_FK_Hip_Control" 
		"rotateX" " -av -15.14983216250002229"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control|Player_With_Controls:G_R_Ball_Control|Player_With_Controls:R_FK_Hip_Control|Player_With_Controls:G_R_FK_Hip_Control|Player_With_Controls:R_FK_Knee_Control" 
		"rotate" " -type \"double3\" 37.13527630915855582 -1.43018421918169159 7.2098191230474038"
		
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control|Player_With_Controls:G_R_Ball_Control|Player_With_Controls:R_FK_Hip_Control|Player_With_Controls:G_R_FK_Hip_Control|Player_With_Controls:R_FK_Knee_Control" 
		"rotateY" " -av -k 0"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control|Player_With_Controls:G_R_Ball_Control|Player_With_Controls:R_FK_Hip_Control|Player_With_Controls:G_R_FK_Hip_Control|Player_With_Controls:R_FK_Knee_Control" 
		"rotateZ" " -av -k 0"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control|Player_With_Controls:G_R_Ball_Control|Player_With_Controls:R_FK_Hip_Control|Player_With_Controls:G_R_FK_Hip_Control|Player_With_Controls:R_FK_Knee_Control" 
		"rotateX" " -av"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control|Player_With_Controls:G_R_Ball_Control|Player_With_Controls:R_IK_Leg_Control" 
		"translateY" " -av 0.60208297010639555"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control|Player_With_Controls:G_R_Ball_Control|Player_With_Controls:R_IK_Leg_Control" 
		"translateZ" " -av -1.60168325136740597"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control" 
		"translateY" " -av -0.48985924442426981"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control" 
		"rotateY" " -av 14.9989048555221558"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control" 
		"rotateX" " -av 23.42298418154832262"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control" 
		"rotateZ" " -av -8.51501501406920092"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control" 
		"visibility" " -av 1"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control" 
		"translateX" " -av"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control" 
		"translateY" " -av"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control" 
		"translateZ" " -av"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control" 
		"rotate" " -type \"double3\" 0.10949131982103526 -0.41523425530796776 0.16063405128265557"
		
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control" 
		"rotateX" " -av"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control" 
		"rotateY" " -av"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control" 
		"rotateZ" " -av"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control" 
		"scaleX" " -av"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control" 
		"scaleY" " -av"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control" 
		"scaleZ" " -av"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control|Player_With_Controls:G_R_Ball_Shoulder_Control|Player_With_Controls:R_Elbow_Control" 
		"rotateX" " -av -102.67349285069617792"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control|Player_With_Controls:G_R_Ball_Shoulder_Control|Player_With_Controls:R_Elbow_Control|Player_With_Controls:G_R_Elbow_Control|Player_With_Controls:R_Wrist_Control" 
		"rotateY" " -av -0.023656725490055111"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control|Player_With_Controls:G_R_Ball_Shoulder_Control|Player_With_Controls:R_Elbow_Control|Player_With_Controls:G_R_Elbow_Control|Player_With_Controls:R_Wrist_Control" 
		"rotateZ" " -av 3.07401896183523027"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control|Player_With_Controls:G_R_Ball_Shoulder_Control|Player_With_Controls:R_Elbow_Control|Player_With_Controls:G_R_Elbow_Control|Player_With_Controls:R_Wrist_Control|Player_With_Controls:G_R_Wrist_Control|Player_With_Controls:R_Drill_Control" 
		"rotateY" " -av -351.34679540882763149"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control" 
		"rotateX" " -av -22.32762093729597552"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control" 
		"rotateZ" " -av 9.20549129059820359"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control" 
		"rotate" " -type \"double3\" 0.27950183754041769 0.34986719816610384 0.79275862058140856"
		
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control" 
		"rotateX" " -av"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control" 
		"rotateY" " -av"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control" 
		"rotateZ" " -av"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control" 
		"rotateX" " -av -44.34876916908751099"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control|Player_With_Controls:G_L_Elbow_Control|Player_With_Controls:L_Wrist_Control" 
		"rotateY" " -av -47.40495253938568965"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control|Player_With_Controls:G_L_Elbow_Control|Player_With_Controls:L_Wrist_Control" 
		"rotateZ" " -av -16.69545417160203371"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control|Player_With_Controls:G_L_Elbow_Control|Player_With_Controls:L_Wrist_Control" 
		"Upper_Fingers" " -av -k 1 26.42974362925096088"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control|Player_With_Controls:G_L_Elbow_Control|Player_With_Controls:L_Wrist_Control" 
		"Lower_Fingers" " -av -k 1 28.03386013408528399"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control|Player_With_Controls:G_L_Elbow_Control|Player_With_Controls:L_Wrist_Control" 
		"Upper_Thumb_x" " -av -k 1 25.5"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control|Player_With_Controls:G_L_Elbow_Control|Player_With_Controls:L_Wrist_Control" 
		"Upper_Thumb_Y" " -av -k 1 -29.70000000000000284"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control|Player_With_Controls:G_L_Elbow_Control|Player_With_Controls:L_Wrist_Control" 
		"Upper_Thumb_Z" " -av -k 1 -19.8"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control|Player_With_Controls:G_L_Elbow_Control|Player_With_Controls:L_Wrist_Control" 
		"Lower_Thumb" " -av -k 1 8.24634791176031534"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:Head_Control" 
		"rotateX" " -av 0"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:Head_Control" 
		"rotateY" " -av -16.16300427155660913"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:Head_Control" 
		"L_Ear" " -av -k 1 1.17638880146866764"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:Head_Control" 
		"R_Ear" " -av -k 1 1.17638880146866764"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:Head_Control" 
		"L_Upper_Lid" " -av -k 1 2.25"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:Head_Control" 
		"L_Lower_Lid" " -av -k 1 2.25"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:Head_Control" 
		"R_Upper_Lid" " -av -k 1 2.25"
		2 "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:Head_Control" 
		"R_Lower_Lid" " -av -k 1 2.25"
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control.translateX" 
		"Player_With_ControlsRN.placeHolderList[1]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control.translateY" 
		"Player_With_ControlsRN.placeHolderList[2]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control.translateZ" 
		"Player_With_ControlsRN.placeHolderList[3]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control.rotateX" 
		"Player_With_ControlsRN.placeHolderList[4]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control.rotateY" 
		"Player_With_ControlsRN.placeHolderList[5]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control.rotateZ" 
		"Player_With_ControlsRN.placeHolderList[6]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control.rotateX" 
		"Player_With_ControlsRN.placeHolderList[7]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control.rotateY" 
		"Player_With_ControlsRN.placeHolderList[8]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control.rotateY" 
		"Player_With_ControlsRN.placeHolderList[9]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control.rotateZ" 
		"Player_With_ControlsRN.placeHolderList[10]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control.L_Ankle_Control" 
		"Player_With_ControlsRN.placeHolderList[11]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control.L_Lower_Foot_Control" 
		"Player_With_ControlsRN.placeHolderList[12]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control.L_IK_FK_Switch" 
		"Player_With_ControlsRN.placeHolderList[13]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control.View_L_IK_Controls" 
		"Player_With_ControlsRN.placeHolderList[14]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control.View_L_FK_Controls" 
		"Player_With_ControlsRN.placeHolderList[15]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control|Player_With_Controls:G_L_Ball_Control|Player_With_Controls:L_FK_Hip_Control.rotateX" 
		"Player_With_ControlsRN.placeHolderList[16]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control|Player_With_Controls:G_L_Ball_Control|Player_With_Controls:L_FK_Hip_Control|Player_With_Controls:G_L_FK_Hip_Control|Player_With_Controls:L_FK_Knee_Control.rotateX" 
		"Player_With_ControlsRN.placeHolderList[17]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control|Player_With_Controls:G_L_Ball_Control|Player_With_Controls:L_IK_Leg_Control.translateY" 
		"Player_With_ControlsRN.placeHolderList[18]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:L_Ball_Control|Player_With_Controls:G_L_Ball_Control|Player_With_Controls:L_IK_Leg_Control.translateZ" 
		"Player_With_ControlsRN.placeHolderList[19]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control.rotateY" 
		"Player_With_ControlsRN.placeHolderList[20]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control.rotateZ" 
		"Player_With_ControlsRN.placeHolderList[21]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control.R_Ankle_Control" 
		"Player_With_ControlsRN.placeHolderList[22]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control.R_Lower_Foot_Control" 
		"Player_With_ControlsRN.placeHolderList[23]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control.R_IK_FK_Switch" 
		"Player_With_ControlsRN.placeHolderList[24]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control.View_R_IK_Controls" 
		"Player_With_ControlsRN.placeHolderList[25]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control.View_R_FK_Controls" 
		"Player_With_ControlsRN.placeHolderList[26]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control|Player_With_Controls:G_R_Ball_Control|Player_With_Controls:R_FK_Hip_Control.rotateX" 
		"Player_With_ControlsRN.placeHolderList[27]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control|Player_With_Controls:G_R_Ball_Control|Player_With_Controls:R_FK_Hip_Control|Player_With_Controls:G_R_FK_Hip_Control|Player_With_Controls:R_FK_Knee_Control.rotateY" 
		"Player_With_ControlsRN.placeHolderList[28]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control|Player_With_Controls:G_R_Ball_Control|Player_With_Controls:R_FK_Hip_Control|Player_With_Controls:G_R_FK_Hip_Control|Player_With_Controls:R_FK_Knee_Control.rotateZ" 
		"Player_With_ControlsRN.placeHolderList[29]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control|Player_With_Controls:G_R_Ball_Control|Player_With_Controls:R_FK_Hip_Control|Player_With_Controls:G_R_FK_Hip_Control|Player_With_Controls:R_FK_Knee_Control.rotateX" 
		"Player_With_ControlsRN.placeHolderList[30]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control|Player_With_Controls:G_R_Ball_Control|Player_With_Controls:R_IK_Leg_Control.translateY" 
		"Player_With_ControlsRN.placeHolderList[31]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Pelvis_Control|Player_With_Controls:G_Pelvis_Control|Player_With_Controls:R_Ball_Control|Player_With_Controls:G_R_Ball_Control|Player_With_Controls:R_IK_Leg_Control.translateZ" 
		"Player_With_ControlsRN.placeHolderList[32]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control.translateY" 
		"Player_With_ControlsRN.placeHolderList[33]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control.rotateY" 
		"Player_With_ControlsRN.placeHolderList[34]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control.rotateX" 
		"Player_With_ControlsRN.placeHolderList[35]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control.rotateZ" 
		"Player_With_ControlsRN.placeHolderList[36]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control.visibility" 
		"Player_With_ControlsRN.placeHolderList[37]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control.translateX" 
		"Player_With_ControlsRN.placeHolderList[38]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control.translateY" 
		"Player_With_ControlsRN.placeHolderList[39]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control.translateZ" 
		"Player_With_ControlsRN.placeHolderList[40]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control.rotateX" 
		"Player_With_ControlsRN.placeHolderList[41]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control.rotateY" 
		"Player_With_ControlsRN.placeHolderList[42]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control.rotateZ" 
		"Player_With_ControlsRN.placeHolderList[43]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control.scaleX" 
		"Player_With_ControlsRN.placeHolderList[44]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control.scaleY" 
		"Player_With_ControlsRN.placeHolderList[45]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control.scaleZ" 
		"Player_With_ControlsRN.placeHolderList[46]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control|Player_With_Controls:G_R_Ball_Shoulder_Control|Player_With_Controls:R_Elbow_Control.rotateX" 
		"Player_With_ControlsRN.placeHolderList[47]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control|Player_With_Controls:G_R_Ball_Shoulder_Control|Player_With_Controls:R_Elbow_Control|Player_With_Controls:G_R_Elbow_Control|Player_With_Controls:R_Wrist_Control.rotateY" 
		"Player_With_ControlsRN.placeHolderList[48]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control|Player_With_Controls:G_R_Ball_Shoulder_Control|Player_With_Controls:R_Elbow_Control|Player_With_Controls:G_R_Elbow_Control|Player_With_Controls:R_Wrist_Control.rotateZ" 
		"Player_With_ControlsRN.placeHolderList[49]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:R_Shoulder_Pad_Control|Player_With_Controls:G_R_Shoulder_Pad_Control|Player_With_Controls:R_Ball_Shoulder_Control|Player_With_Controls:G_R_Ball_Shoulder_Control|Player_With_Controls:R_Elbow_Control|Player_With_Controls:G_R_Elbow_Control|Player_With_Controls:R_Wrist_Control|Player_With_Controls:G_R_Wrist_Control|Player_With_Controls:R_Drill_Control.rotateY" 
		"Player_With_ControlsRN.placeHolderList[50]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control.rotateX" 
		"Player_With_ControlsRN.placeHolderList[51]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control.rotateZ" 
		"Player_With_ControlsRN.placeHolderList[52]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control.rotateX" 
		"Player_With_ControlsRN.placeHolderList[53]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control.rotateY" 
		"Player_With_ControlsRN.placeHolderList[54]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control.rotateZ" 
		"Player_With_ControlsRN.placeHolderList[55]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control.rotateX" 
		"Player_With_ControlsRN.placeHolderList[56]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control|Player_With_Controls:G_L_Elbow_Control|Player_With_Controls:L_Wrist_Control.rotateY" 
		"Player_With_ControlsRN.placeHolderList[57]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control|Player_With_Controls:G_L_Elbow_Control|Player_With_Controls:L_Wrist_Control.rotateZ" 
		"Player_With_ControlsRN.placeHolderList[58]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control|Player_With_Controls:G_L_Elbow_Control|Player_With_Controls:L_Wrist_Control.Upper_Fingers" 
		"Player_With_ControlsRN.placeHolderList[59]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control|Player_With_Controls:G_L_Elbow_Control|Player_With_Controls:L_Wrist_Control.Lower_Fingers" 
		"Player_With_ControlsRN.placeHolderList[60]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control|Player_With_Controls:G_L_Elbow_Control|Player_With_Controls:L_Wrist_Control.Upper_Thumb_x" 
		"Player_With_ControlsRN.placeHolderList[61]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control|Player_With_Controls:G_L_Elbow_Control|Player_With_Controls:L_Wrist_Control.Upper_Thumb_Y" 
		"Player_With_ControlsRN.placeHolderList[62]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control|Player_With_Controls:G_L_Elbow_Control|Player_With_Controls:L_Wrist_Control.Upper_Thumb_Z" 
		"Player_With_ControlsRN.placeHolderList[63]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:L_Shoulder_Pad_Control|Player_With_Controls:G_L_Shoulder_Pad_Control|Player_With_Controls:L_Ball_Shoulder_Control|Player_With_Controls:G_L_Ball_Shoulder_Control|Player_With_Controls:L_Elbow_Control|Player_With_Controls:G_L_Elbow_Control|Player_With_Controls:L_Wrist_Control.Lower_Thumb" 
		"Player_With_ControlsRN.placeHolderList[64]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:Head_Control.rotateX" 
		"Player_With_ControlsRN.placeHolderList[65]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:Head_Control.rotateY" 
		"Player_With_ControlsRN.placeHolderList[66]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:Head_Control.L_Ear" 
		"Player_With_ControlsRN.placeHolderList[67]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:Head_Control.R_Ear" 
		"Player_With_ControlsRN.placeHolderList[68]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:Head_Control.L_Upper_Lid" 
		"Player_With_ControlsRN.placeHolderList[69]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:Head_Control.L_Lower_Lid" 
		"Player_With_ControlsRN.placeHolderList[70]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:Head_Control.R_Upper_Lid" 
		"Player_With_ControlsRN.placeHolderList[71]" ""
		5 4 "Player_With_ControlsRN" "|Player_With_Controls:Root_Control|Player_With_Controls:G_Root_Control|Player_With_Controls:Chest_Control|Player_With_Controls:G_Chest_Control|Player_With_Controls:Head_Control.R_Lower_Lid" 
		"Player_With_ControlsRN.placeHolderList[72]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n"
		+ "                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n"
		+ "                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n"
		+ "                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 693 -ast 1 -aet 693 ";
	setAttr ".st" 6;
createNode reference -n "Player_With_ControlsRN1";
	setAttr -s 5 ".phl";
	setAttr ".ed" -type "dataReferenceEdits" 
		"Player_With_ControlsRN1"
		"Player_With_ControlsRN1" 17
		2 "|Player_With_Controls1:Root_Control" "translate" " -type \"double3\" 0 10.168 0"
		
		2 "|Player_With_Controls1:Root_Control|Player_With_Controls1:G_Root_Control|Player_With_Controls1:Pelvis_Control" 
		"rotateX" " 0"
		2 "|Player_With_Controls1:Root_Control|Player_With_Controls1:G_Root_Control|Player_With_Controls1:Pelvis_Control" 
		"rotateY" " 0"
		2 "|Player_With_Controls1:Root_Control|Player_With_Controls1:G_Root_Control|Player_With_Controls1:Pelvis_Control|Player_With_Controls1:G_Pelvis_Control|Player_With_Controls1:L_Ball_Control" 
		"L_Ankle_Control" " -k 1 0"
		2 "|Player_With_Controls1:Root_Control|Player_With_Controls1:G_Root_Control|Player_With_Controls1:Chest_Control" 
		"translateY" " 0"
		2 "|Player_With_Controls1:Root_Control|Player_With_Controls1:G_Root_Control|Player_With_Controls1:Chest_Control|Player_With_Controls1:G_Chest_Control|Player_With_Controls1:L_Shoulder_Pad_Control" 
		"rotateZ" " 8.305"
		2 "Player_With_Controls1:Rig" "visibility" " 0"
		3 "Player_With_Controls1:Player.drawInfo" "|Player_With_Controls1:LowerTorso.drawOverride" 
		""
		3 "Player_With_Controls1:Root_Rig.drawInfo" "|Player_With_Controls1:Root_Joint.drawOverride" 
		""
		3 "Player_With_Controls1:IK_Rig.drawInfo" "|Player_With_Controls1:R_IK_Handle.drawOverride" 
		""
		3 "Player_With_Controls1:IK_Rig.drawInfo" "|Player_With_Controls1:L_IK_Handle.drawOverride" 
		""
		3 "Player_With_Controls1:Controls.drawInfo" "|Player_With_Controls1:Root_Control.drawOverride" 
		""
		5 4 "Player_With_ControlsRN1" "|Player_With_Controls1:LowerTorso.drawOverride" 
		"Player_With_ControlsRN1.placeHolderList[1]" ""
		5 4 "Player_With_ControlsRN1" "|Player_With_Controls1:Root_Joint.drawOverride" 
		"Player_With_ControlsRN1.placeHolderList[2]" ""
		5 4 "Player_With_ControlsRN1" "|Player_With_Controls1:R_IK_Handle.drawOverride" 
		"Player_With_ControlsRN1.placeHolderList[3]" ""
		5 4 "Player_With_ControlsRN1" "|Player_With_Controls1:L_IK_Handle.drawOverride" 
		"Player_With_ControlsRN1.placeHolderList[4]" ""
		5 4 "Player_With_ControlsRN1" "|Player_With_Controls1:Root_Control.drawOverride" 
		"Player_With_ControlsRN1.placeHolderList[5]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode displayLayer -n "LocusRef";
	setAttr ".v" no;
	setAttr ".do" 1;
createNode animCurveTL -n "Root_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  96 0 192 0 201 0 202 0 214 0 226 0 238 0
		 250 0 260 0 332 0 356 0 365 0 366 0 390 0 414 0 423 0 429 0 432 0 448 0 457 0 458 0
		 460 0 472 0 482 0 492 0 511 0 575 0 585 0 586 0 587 0 588 0 589 0 598 0 599 0 601 0
		 604 0 605 0 606 0 608 0 609 0 613 0 616 0 618 0 623 0 632 0 633 0 668 0 669 0 670 0
		 671 0 672 0 673 0 674 0 693 0;
	setAttr -s 54 ".kit[14:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[13:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[14:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[14:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[13:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[13:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Root_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 112 ".ktv[0:111]"  1 9.16 96 9.16 192 9.16 201 9.16 202 4.7950022135283916
		 208 5.0290415339978551 214 4.5902158712802681 220 4.8965023089632957 226 4.7364918300289318
		 232 4.9257575007130248 238 4.6194710630300015 244 4.9550126924627547 250 4.7657470217786582
		 260 4.7072366382791984 332 4.7364918300289283 356 4.707 365 4.707 366 9.0911560424864426
		 367 9.1983292161959813 368 9.3846701222388962 369 9.4783498146941465 370 9.6380051322408153
		 371 9.7416168075143226 372 9.9613463316134325 373 9.7183211381181991 378 9.0824747499846534
		 379 9.284735359088053 380 9.4019518596343961 381 9.6636513622109987 382 9.7535377412836048
		 383 9.8440716984391994 384 9.9433392866135595 385 9.9061373258743064 386 9.7316736808984743
		 388 9.3072063024611911 389 9.1937820387414391 390 9.0911560424864426 391 9.1983292161959813
		 392 9.3846701222388962 393 9.4783498146941465 394 9.6380051322408153 395 9.7416168075143226
		 396 9.9613463316134325 397 9.7183211381181991 402 9.0824747499846534 403 9.284735359088053
		 404 9.4019518596343961 405 9.6636513622109987 406 9.7535377412836048 407 9.8440716984391994
		 408 9.9433392866135595 409 9.9061373258743064 410 9.7316736808984743 412 9.3072063024611911
		 413 9.1937820387414391 414 9.0911560424864426 423 9.0911560424864426 424 9.817318196083086
		 429 9.817318196083086 432 9.9455460212416806 448 9.817318196083086 457 9.817318196083086
		 458 9.3615150885561746 459 7.4030821379508565 460 5.7602174528607053 461 6.1199180980110972
		 462 7.6991685118670254 463 11.123481207257051 464 11.525789512750224 467 11.371538087733013
		 472 11.413714528752092 482 11.537351402198603 492 11.537351402198603 511 9.8283551419302597
		 575 9.8283551419302597 585 9.8283551419302597 586 7.6182346154630016 587 6.8116676405462506
		 588 7.8388004791077863 589 9.3615150885561746 598 9.3615150885561746 599 11.537351402198603
		 600 10.579882233674846 601 10.083047134229409 602 10.25836409397677 604 13.677906499418608
		 605 13.410201613525141 606 12.82582583141429 607 12.152508499178145 608 11.70654468342633
		 609 11.541659025077662 610 11.499434112470261 611 11.607435170576876 612 11.507826035712453
		 613 11.413714528752092 616 11.413714528752092 618 11.489350784760191 623 11.537351402198603
		 632 11.537351402198603 633 9.16 638 7.6158543930941391 645 0.90569172117307062 648 1.4045265660370827
		 651 0.94406363231645685 668 0.94406363231645685 669 9.16 670 8.7645931727141164 671 8.4760516813153881
		 672 8.451056966618129 673 8.3690650326211973 674 8.3500052228866206 693 9.16;
	setAttr -s 112 ".kit[55:111]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 112 ".kot[36:111]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 112 ".kix[55:111]"  1 1 1 1 1 1 1 0.03449719026684761 0.023133262991905212 
		1 0.04293924942612648 0.016652235761284828 0.034503493458032608 1 1 0.96656274795532227 
		1 1 1 1 1 0.027613794431090355 1 0.032663755118846893 1 1 1 0.05720645934343338 1 
		0.078976549208164215 1 0.097336158156394958 0.066112898290157318 0.074247613549232483 
		0.13517102599143982 0.37327370047569275 1 1 0.39515656232833862 1 1 0.92069637775421143 
		1 1 0.06362200528383255 0.060463603585958481 1 1 1 1 1 0.12094803154468536 0.48571571707725525 
		0.61449283361434937 0.63622981309890747 1 1;
	setAttr -s 112 ".kiy[55:111]"  0 0 0 0 0 0 0 -0.99940478801727295 -0.99973243474960327 
		0 0.99907767772674561 0.99986135959625244 0.99940454959869385 0 0 0.25643035769462585 
		0 0 0 0 0 -0.99961864948272705 0 0.99946635961532593 0 0 0 -0.99836236238479614 0 
		0.99687653779983521 0 -0.99525153636932373 -0.99781215190887451 -0.99723982810974121 
		-0.99082225561141968 -0.92772126197814941 0 0 -0.91861379146575928 0 0 0.39027950167655945 
		0 0 -0.99797403812408447 -0.99817043542861938 0 0 0 0 0 -0.99265885353088379 -0.87411677837371826 
		-0.78892242908477783 -0.77149969339370728 0 0;
	setAttr -s 112 ".kox[36:111]"  0.12851923704147339 0.27312326431274414 
		0.28523632884025574 0.31246945261955261 0.301780104637146 0.24957217276096344 1 0.2736017107963562 
		1 0.25239956378936768 0.21479403972625732 0.2306281179189682 0.41931968927383423 
		0.40201616287231445 1 0.36633634567260742 0.2043030858039856 0.22635701298713684 
		0.35987317562103271 1 1 1 1 1 1 1 0.034497197717428207 0.023133262991905212 1 0.042939253151416779 
		0.016652235761284828 0.034503493458032608 1 1 0.96656268835067749 1 1 1 1 1 0.027613794431090355 
		1 0.032663755118846893 1 1 1 0.05720645934343338 1 0.078976549208164215 1 0.097336165606975555 
		0.066112898290157318 0.074247613549232483 0.13517102599143982 0.37327370047569275 
		1 1 0.39515656232833862 1 1 0.92069637775421143 1 1 0.063622012734413147 0.060463603585958481 
		1 1 1 1 1 0.12094803154468536 0.48571577668190002 0.61449283361434937 0.6362297534942627 
		1 1;
	setAttr -s 112 ".koy[36:111]"  0.99170702695846558 0.96197903156280518 
		0.95845723152160645 0.94992786645889282 0.95337760448455811 0.96835619211196899 0 
		-0.96184307336807251 0 0.96762317419052124 0.97665929794311523 0.97304195165634155 
		0.90783864259719849 0.91563254594802856 0 -0.93048250675201416 -0.97890764474868774 
		-0.97404438257217407 -0.93300122022628784 0 0 0 0 0 0 0 -0.99940484762191772 -0.99973243474960327 
		0 0.99907767772674561 0.99986135959625244 0.99940454959869385 0 0 0.25643035769462585 
		0 0 0 0 0 -0.99961864948272705 0 0.99946635961532593 0 0 0 -0.99836236238479614 0 
		0.99687647819519043 0 -0.99525153636932373 -0.99781215190887451 -0.99723982810974121 
		-0.99082225561141968 -0.92772126197814941 0 0 -0.91861379146575928 0 0 0.39027953147888184 
		0 0 -0.99797409772872925 -0.99817037582397461 0 0 0 0 0 -0.99265885353088379 -0.87411683797836304 
		-0.78892242908477783 -0.7714996337890625 0 0;
createNode animCurveTL -n "Root_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  96 0 192 0 201 0 202 0 214 0 226 0 238 0
		 250 0 260 0 332 0 356 0 365 0 366 0 390 0 414 0 423 0 429 0 432 -1.8806747689926935
		 448 0 457 0 458 -2.373208982089329 459 -2.6182686048219526 460 -2.8891239781956992
		 461 -2.7860120597777138 462 -1.4447466541258982 463 -0.64691033289801725 464 -0.73609067466276201
		 472 -3.1986729758595396 482 -3.1986729758595396 492 -3.1986729758595396 511 -1.4447466541258982
		 575 -1.4447466541258982 585 -1.4447466541258982 586 -2.7860120597777138 587 -2.8891239781956992
		 588 -2.6182686048219526 589 -2.373208982089329 598 -2.373208982089329 599 -3.1986729758595396
		 601 -2.8891239781956992 604 -0.64691033289801725 605 -0.73609067466276201 606 -1.0467298402528116
		 608 -1.8287857009501298 609 -2.2349136698291847 613 -3.1986729758595396 616 -3.1986729758595396
		 618 -3.1986729758595396 623 -3.1986729758595396 632 -3.1986729758595396 633 0 645 0.0257017054333879
		 657 0.018413828738857774 668 0.018413828738857774 669 0 670 0.0059047658076258058
		 671 0.010828101985791812 672 0.014858799173006722 673 0.018086342487494231 674 0.020600069981684642
		 693 0;
	setAttr -s 61 ".kit[14:60]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 61 ".kot[13:60]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 61 ".kix[14:60]"  1 1 1 1 1 1 0.056583885103464127 0.15945617854595184 
		1 0.13349565863609314 0.038927040994167328 1 0.15388891100883484 1 1 1 1 1 1 0.13349568843841553 
		1 0.15945617854595184 1 1 1 0.089375793933868408 1 0.20404398441314697 0.11365479975938797 
		0.10462519526481628 0.15035097301006317 1 1 1 1 1 0.98831760883331299 1 1 1 1 0.99166375398635864 
		0.99427700042724609 0.99622821807861328 0.9976351261138916 1 1;
	setAttr -s 61 ".kiy[14:60]"  0 0 0 0 0 0 -0.9983978271484375 -0.98720502853393555 
		0 0.99104934930801392 0.99924212694168091 0 -0.98808813095092773 0 0 0 0 0 0 -0.99104940891265869 
		0 0.98720502853393555 0 0 0 0.99599796533584595 0 -0.9789617657661438 -0.99352025985717773 
		-0.99451172351837158 -0.9886326789855957 0 0 0 0 0 0.15240867435932159 0 0 0 0 0.12885305285453796 
		0.10683265328407288 0.086771689355373383 0.068731799721717834 0 0;
	setAttr -s 61 ".kox[13:60]"  1 1 1 1 1 1 1 0.056583881378173828 0.15945617854595184 
		1 0.13349568843841553 0.038927040994167328 1 0.15388891100883484 1 1 1 1 1 1 0.13349565863609314 
		1 0.15945617854595184 1 1 1 0.089375793933868408 1 0.20404398441314697 0.11365480720996857 
		0.10462519526481628 0.15035097301006317 1 1 1 1 1 0.98831754922866821 1 1 1 1 0.99166375398635864 
		0.99427700042724609 0.99622821807861328 0.9976351261138916 1 1;
	setAttr -s 61 ".koy[13:60]"  0 0 0 0 0 0 0 -0.9983978271484375 -0.98720502853393555 
		0 0.99104940891265869 0.99924212694168091 0 -0.98808819055557251 0 0 0 0 0 0 -0.99104934930801392 
		0 0.98720502853393555 0 0 0 0.99599796533584595 0 -0.97896170616149902 -0.99352031946182251 
		-0.99451166391372681 -0.98863273859024048 0 0 0 0 0 0.15240868926048279 0 0 0 0 0.12885305285453796 
		0.10683266073465347 0.086771689355373383 0.068731792271137238 0 0;
createNode animCurveTL -n "R_Ball_Shoulder_Control_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  96 0 192 0 201 0 202 0 214 0 226 0 238 0
		 250 0 260 0 332 0 356 0 365 0 366 0 390 0 414 0 423 0 429 0 432 0 448 0 457 0 458 0
		 460 0 482 0 492 0 511 0 575 0 585 0 586 0 587 0 588 0 589 0 598 0 599 0 601 0 603 0
		 604 0 605 0 606 0 608 0 609 0 613 0 616 0 618 0 623 0 632 0 633 0 668 0 669 0 670 0
		 671 0 672 0 673 0 674 0 693 0;
	setAttr -s 54 ".kit[14:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[13:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[14:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[14:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[13:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[13:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_Ball_Shoulder_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  96 0 192 0 201 0 202 0 214 0 226 0 238 0
		 250 0 260 0 332 0 356 0 365 0 366 0 390 0 414 0 423 0 429 0 432 0 448 0 457 0 458 0
		 460 0 482 0 492 0 511 0 575 0 585 0 586 0 587 0 588 0 589 0 598 0 599 0 601 0 603 0
		 604 0 605 0 606 0 608 0 609 0 613 0 616 0 618 0 623 0 632 0 633 0 668 0 669 0 670 0
		 671 0 672 0 673 0 674 0 693 0;
	setAttr -s 54 ".kit[14:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[13:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[14:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[14:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[13:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[13:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_Ball_Shoulder_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  96 0 192 0 201 0 202 0 214 0 226 0 238 0
		 250 0 260 0 332 0 356 0 365 0 366 0 390 0 414 0 423 0 429 0 432 0 448 0 457 0 458 0
		 460 0 482 0 492 0 511 0 575 0 585 0 586 0 587 0 588 0 589 0 598 0 599 0 601 0 603 0
		 604 0 605 0 606 0 608 0 609 0 613 0 616 0 618 0 623 0 632 0 633 0 668 0 669 0 670 0
		 671 0 672 0 673 0 674 0 693 0;
	setAttr -s 54 ".kit[14:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[13:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[14:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[14:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[13:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[13:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Root_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 65 ".ktv[0:64]"  1 8.9348742977530762 96 8.9348742977530762
		 192 8.9348742977530762 201 8.9348742977530762 202 77.312986663857941 214 77.312986663857941
		 226 77.312986663857941 238 77.312986663857941 250 77.312986663857941 260 77.312986663857941
		 332 77.312986663857941 356 77.312986663857941 365 77.312986663857941 366 24.176737549676965
		 390 24.176737549676965 414 24.176737549676965 423 24.176737549676965 424 96.580419746363077
		 429 96.580419746363077 432 256.61472774999692 448 96.580419746363077 457 96.580419746363077
		 458 30.898294149762254 460 41.711391092880405 463 8.0955928249073992 465 10.921303440412682
		 467 15.343082763065656 472 22.288388577347455 482 20.830027479609541 492 20.830027479609541
		 511 16.810571812418228 575 16.810571812418228 585 16.810571812418228 586 32.995728187594139
		 587 41.711391092880405 588 36.304842621321328 589 30.898294149762254 598 30.898294149762254
		 599 20.830027479609541 601 41.711391092880405 603 17.916994633210468 604 8.0955928249073992
		 605 9.0555181616124774 606 10.921303440412682 608 15.343082763065656 609 17.10464995726247
		 613 22.288388577347455 616 22.288388577347455 618 21.559208028478494 623 20.830027479609541
		 632 20.830027479609541 633 8.9348742977530762 638 19.927188623331507 645 16.469386392089437
		 654 -69.67735593390131 656 -67.63799783976981 657 -69.67735593390131 668 -69.67735593390131
		 669 8.9348742977530762 670 10.07803634314147 671 12.804197923931634 672 16.057864997152951
		 673 18.783929965768639 674 19.927188623331507 693 8.9348742977530762;
	setAttr -s 65 ".kit[15:64]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 65 ".kot[14:64]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 65 ".kix[15:64]"  1 1 1 1 1 1 1 1 1 1 0.79656511545181274 
		0.82684719562530518 1 1 1 1 1 1 0.18831737339496613 1 0.40392991900444031 1 1 1 1 
		0.2083769291639328 1 0.86058640480041504 0.75149208307266235 0.75692719221115112 
		0.86433559656143188 1 1 0.99621379375457764 1 1 1 1 0.84961926937103271 1 1 1 1 0.5713157057762146 
		0.77691829204559326 0.62396341562271118 0.62396091222763062 0.77691829204559326 1 
		1;
	setAttr -s 65 ".kiy[15:64]"  0 0 0 0 0 0 0 0 0 0 0.6045527458190918 
		0.56242668628692627 0 0 0 0 0 0 0.98210817575454712 0 -0.91478991508483887 0 0 0 
		0 -0.97804856300354004 0 0.5093044638633728 0.65974211692810059 0.65349918603897095 
		0.50291550159454346 0 0 -0.086937330663204193 0 0 0 0 -0.527396559715271 0 0 0 0 
		0.82073032855987549 0.62960141897201538 0.78145354986190796 0.7814556360244751 0.62960141897201538 
		0 0;
	setAttr -s 65 ".kox[14:64]"  1 1 1 1 1 1 1 1 1 1 1 0.79656511545181274 
		0.82684719562530518 1 1 1 1 1 1 0.18831738829612732 1 0.40392991900444031 1 1 1 1 
		0.2083769291639328 1 0.86058646440505981 0.75149208307266235 0.7569272518157959 0.86433559656143188 
		1 1 0.99621373414993286 1 1 1 1 0.84961926937103271 1 1 1 1 0.5713157057762146 0.77691829204559326 
		0.62396341562271118 0.62396091222763062 0.77691829204559326 1 1;
	setAttr -s 65 ".koy[14:64]"  0 0 0 0 0 0 0 0 0 0 0 0.6045527458190918 
		0.56242668628692627 0 0 0 0 0 0 0.98210823535919189 0 -0.91478991508483887 0 0 0 
		0 -0.97804856300354004 0 0.5093044638633728 0.65974211692810059 0.65349924564361572 
		0.50291550159454346 0 0 -0.086937330663204193 0 0 0 0 -0.52739650011062622 0 0 0 
		0 0.82073032855987549 0.62960141897201538 0.78145354986190796 0.7814556360244751 
		0.62960141897201538 0 0;
createNode animCurveTA -n "Root_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 58 ".ktv[0:57]"  1 0 96 0 192 0 201 0 202 0 214 0 226 0 238 0
		 250 0 260 0 332 0 356 0 365 0 366 0 390 0 414 0 423 0 424 83.115664589260987 429 83.115664589260987
		 432 86.598264572683789 448 83.115664589260987 457 83.115664589260987 458 0 460 0
		 472 0 482 0 492 0 511 0 575 0 585 0 586 0 587 0 588 0 589 0 598 0 599 0 601 0 604 0
		 605 0 606 0 608 0 609 0 613 0 616 0 618 0 623 0 632 0 633 0 638 -7.8410019259218071
		 654 0 668 0 669 0 670 -0.81543663454687709 671 -2.7600533523939519 672 -5.080948573527853
		 673 -7.0254963762926534 674 -7.8410019259218071 693 0;
	setAttr -s 58 ".kit[15:57]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 58 ".kot[14:57]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 58 ".kix[15:57]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.86575925350189209 0.74575138092041016 0.74574917554855347 
		0.86575925350189209 1 1;
	setAttr -s 58 ".kiy[15:57]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.50046062469482422 -0.66622436046600342 -0.66622686386108398 
		-0.50046062469482422 0 0;
	setAttr -s 58 ".kox[14:57]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.86575931310653687 0.74575132131576538 0.74574917554855347 
		0.86575931310653687 1 1;
	setAttr -s 58 ".koy[14:57]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.50046068429946899 -0.66622436046600342 -0.66622686386108398 
		-0.50046068429946899 0 0;
createNode animCurveTA -n "Root_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  96 0 192 0 201 0 202 0 214 0 226 0 238 0
		 250 0 260 0 332 0 356 0 365 0 366 0 390 0 414 0 423 0 424 89.999999999999474 429 89.999999999999474
		 432 250.1040779644635 448 89.999999999999474 457 89.999999999999474 458 0 460 0 472 0
		 482 0 492 0 511 0 575 0 585 0 586 0 587 0 588 0 589 0 598 0 599 0 601 0 604 0 605 0
		 606 0 608 0 609 0 613 0 616 0 618 0 623 0 632 0 633 0 638 -2.8314404286723089 668 -2.8314404286723089
		 669 0 670 -0.29445985039789146 671 -0.99667449658763252 672 -1.8347659320846759 673 -2.5369556925580325
		 674 -2.8314404286723089 693 0;
	setAttr -s 56 ".kit[14:55]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 56 ".kot[13:55]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 56 ".kix[14:55]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.97890055179595947 0.95170360803604126 0.95170307159423828 
		0.97890055179595947 1 1;
	setAttr -s 56 ".kiy[14:55]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.20433710515499115 -0.30701816082000732 -0.30702003836631775 
		-0.20433710515499115 0 0;
	setAttr -s 56 ".kox[13:55]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.97890055179595947 0.95170360803604126 0.95170307159423828 
		0.97890055179595947 1 1;
	setAttr -s 56 ".koy[13:55]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.20433709025382996 -0.30701816082000732 -0.30702003836631775 
		-0.20433709025382996 0 0;
createNode animCurveTA -n "Pelvis_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 59 ".ktv[0:58]"  96 0 192 0 201 0 202 0 214 0 226 0 238 0
		 250 0 260 0 332 0 356 0 365 0 366 0 390 0 414 0 423 0 429 0 432 0 448 0 457 0 458 0
		 460 0 472 0 482 0 492 0 511 0 575 0 585 0 586 0 587 0 588 0 589 0 598 0 599 0 601 0
		 603 0 604 0 605 0 606 0 608 0 609 0 613 0 616 0 618 0 623 0 632 0 633 0 645 -1.2466907377055549
		 654 86.12231677101866 656 83.563647338408913 657 86.12231677101866 668 86.12231677101866
		 669 0 670 -0.024529068040099182 671 -0.092348783097335976 672 -0.19479542776649295
		 673 -0.32321400351927154 674 -0.46895426755697961 693 0;
	setAttr -s 59 ".kit[14:58]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 59 ".kot[13:58]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 59 ".kix[14:58]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99952530860900879 0.9998130202293396 0.99936485290527344 
		0.9988330602645874 0.99835562705993652 1 1;
	setAttr -s 59 ".kiy[14:58]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.030809974297881126 -0.019337719306349754 -0.03563757985830307 
		-0.048296611756086349 -0.057324834167957306 0 0;
	setAttr -s 59 ".kox[13:58]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99952530860900879 0.9998130202293396 0.99936479330062866 
		0.9988330602645874 0.99835562705993652 1 1;
	setAttr -s 59 ".koy[13:58]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.030809974297881126 -0.019337719306349754 
		-0.03563757985830307 -0.048296611756086349 -0.057324837893247604 0 0;
createNode animCurveTA -n "Pelvis_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 64 ".ktv[0:63]"  1 1.7320225760613543 24 0 96 1.7320225760613543
		 144 0.41008075391299387 192 1.7320225760613543 201 1.7320225760613543 202 1.1648883359314857
		 208 12.047241176096179 214 1.1648883359314857 220 -8.8387152938163549 226 1.1648883359314857
		 232 10.135651530107836 238 1.1648883359314857 244 -9.8929001596768842 250 1.1648883359314857
		 260 1.1648883359314857 332 1.1648883359314857 356 1.1648883359314857 365 1.1648883359314857
		 366 0 390 0 414 0 423 0 424 17.05562824674449 429 17.05562824674449 432 17.05562824674449
		 448 17.05562824674449 457 17.05562824674449 458 0 460 0 472 0 482 0 492 0 511 0 575 0
		 585 0 586 0 587 0 588 0 589 0 598 0 599 0 601 0 603 0 604 0 605 0 606 0 608 0 609 0
		 613 0 616 0 618 0 623 0 632 0 633 1.7320225760613543 654 1.7320225760613543 668 1.7320225760613543
		 669 1.7320225760613543 670 1.7320225760613543 671 1.7320225760613543 672 1.7320225760613543
		 673 1.7320225760613543 674 1.7320225760613543 693 1.7320225760613543;
	setAttr -s 64 ".kit[21:63]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 64 ".kot[20:63]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 64 ".kix[21:63]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 64 ".kiy[21:63]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 64 ".kox[20:63]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 64 ".koy[20:63]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_Ball_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  96 0 192 0 201 0 202 0 214 0 226 0 238 0
		 250 0 260 0 288 -0.68383457903277078 356 0 365 0 366 0 390 0 414 0 423 0 424 10.385101657073216
		 429 10.385101657073216 432 10.287244357647486 448 10.385101657073216 457 10.385101657073216
		 458 0 460 0 472 0 482 0 492 0 511 0 575 0 585 0 586 0 587 0 588 0 589 0 598 0 599 0
		 601 0 603 0 604 0 605 0 606 0 608 0 609 0 613 0 616 0 618 0 623 0 632 0 633 0 668 0
		 669 0 693 0;
	setAttr -s 51 ".kit[14:50]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 51 ".kot[13:50]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 51 ".kix[14:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".kiy[14:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 51 ".kox[13:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".koy[13:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_Ball_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  96 0 192 0 201 0 202 0 214 0 226 0 238 0
		 250 0 260 0 288 2.5770066919351766 356 0 365 0 366 0 390 0 414 0 423 0 424 -3.5512004866779723
		 429 -3.5512004866779723 432 0.15706040947224728 448 -3.5512004866779723 457 -3.5512004866779723
		 458 0 460 0 472 0 482 0 492 0 511 0 575 0 585 0 586 0 587 0 588 0 589 0 598 0 599 0
		 601 0 603 0 604 0 605 0 606 0 608 0 609 0 613 0 616 0 618 0 623 0 632 0 633 0 668 0
		 669 0 693 0;
	setAttr -s 51 ".kit[14:50]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 51 ".kot[13:50]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 51 ".kix[14:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".kiy[14:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 51 ".kox[13:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".koy[13:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_Ball_Control_L_Ankle_Control";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 96 ".ktv[0:95]"  1 -3.8 24 -3.6999999999999997 60 -3.75 68 7.7360768214116025
		 72 -3.770370369873389 96 -3.8 175 -3.8 185 -0.29999999999999893 192 -3.8 201 -3.8
		 202 -38.400000000000006 214 -38.400000000000006 226 -38.400000000000006 238 -38.400000000000006
		 250 -38.400000000000006 260 -38.400000000000006 304 -38.400000000000006 313 -49.900000000000006
		 338 -38.400000000000006 356 -38.400000000000006 365 -38.400000000000006 366 -20.600000000000005
		 367 -4.6804484111589524 368 -7.008491058985804 374 10.511741763585405 378 -8.0000000000000018
		 379 -24.749519344834422 380 -22.298185618434449 381 -20.04221149552259 382 6.6037576422840436
		 383 15.959590297938533 384 9.35 385 11.712731744688329 386 14.775724381656195 387 15.764252694161849
		 388 16.530865781082898 389 9.5647955018497051 390 -20.600000000000005 391 -4.6804484111589524
		 392 -7.008491058985804 398 10.511741763585405 402 -8.0000000000000018 403 -24.749519344834422
		 404 -23.098185618434449 405 -20.54221149552259 406 6.6037576422840436 407 16.159590297938532
		 408 9.35 409 11.712731744688329 410 14.775724381656195 411 15.764252694161849 412 16.530865781082898
		 413 9.5647955018497051 414 -20.600000000000005 423 -20.600000000000005 424 4.3000000000000007
		 429 4.3000000000000007 432 9.7000000000000011 448 4.3000000000000007 457 4.3000000000000007
		 458 32 460 -20.600000000000005 463 -34.800000000000004 472 -20.600000000000005 482 -20.600000000000005
		 492 -20.600000000000005 511 -34.087453965174575 575 -34.087453965174575 585 -34.087453965174575
		 586 -30.219488278631772 587 -20.600000000000005 588 9.0399695228330295 589 32 598 32
		 599 -20.600000000000005 601 -20.600000000000005 603 -34.087453965174575 604 -34.800000000000004
		 605 -34.313003016380016 606 -33.007931137540211 608 -28.87839231551057 609 -26.521500684545074
		 613 -20.600000000000005 616 -20.600000000000005 618 -20.600000000000005 623 -20.600000000000005
		 632 -20.600000000000005 633 -3.8 634 -0.93054576456714955 636 -14.544808132784587
		 639 -34.15776710134989 645 -26.8 668 -26.8 669 -3.8 674 -39.6 693 -3.8;
	setAttr -s 96 ".kit[53:95]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 96 ".kot[37:95]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 96 ".kix[53:95]"  1 1 1 1 1 1 1 1 0.0031187282875180244 1 
		1 1 1 1 1 1 0.0061785103753209114 0.0021226422395557165 0.0015842578141018748 1 1 
		1 1 0.01948791928589344 1 0.046451348811388016 0.022994646802544594 0.019267423078417778 
		0.025157799944281578 1 1 1 1 1 0.0048401234671473503 1 0.0062698554247617722 1 1 
		1 1 1 1;
	setAttr -s 96 ".kiy[53:95]"  0 0 0 0 0 0 0 0 -0.99999517202377319 0 
		0 0 0 0 0 0 0.99998092651367188 0.99999779462814331 0.99999874830245972 0 0 0 0 -0.99981009960174561 
		0 0.99892055988311768 0.99973559379577637 0.99981433153152466 0.99968349933624268 
		0 0 0 0 0 0.99998825788497925 0 -0.99998033046722412 0 0 0 0 0 0;
	setAttr -s 96 ".kox[37:95]"  0.0024713766761124134 1 1 1 0.0059081390500068665 
		1 0.01980307325720787 0.0054337293840944767 0.0022705630399286747 1 1 0.015357238240540028 
		0.020564215257763863 0.047425404191017151 1 0.0022443258203566074 1 1 1 1 1 1 1 1 
		0.0031187282875180244 1 1 1 1 1 1 1 0.0061785108409821987 0.0021226422395557165 0.0015842578141018748 
		1 1 1 1 0.01948791928589344 1 0.046451348811388016 0.022994646802544594 0.019267421215772629 
		0.025157798081636429 1 1 1 1 1 0.0048401234671473503 1 0.0062698558904230595 1 1 
		1 1 1 1;
	setAttr -s 96 ".koy[37:95]"  0.99999696016311646 0 0 0 -0.99998253583908081 
		0 0.99980384111404419 0.99998527765274048 0.99999737739562988 0 0 0.99988210201263428 
		0.99978852272033691 0.9988747239112854 0 -0.99999755620956421 0 0 0 0 0 0 0 0 -0.99999517202377319 
		0 0 0 0 0 0 0 0.99998092651367188 0.99999779462814331 0.99999874830245972 0 0 0 0 
		-0.99981009960174561 0 0.99892055988311768 0.99973559379577637 0.99981433153152466 
		0.9996834397315979 0 0 0 0 0 0.99998825788497925 0 -0.9999803900718689 0 0 0 0 0 
		0;
createNode animCurveTU -n "L_Ball_Control_L_Lower_Foot_Control";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 87 ".ktv[0:86]"  1 0 60 0 68 11.5 72 0 96 0 175 0 185 40.9
		 192 0 201 0 202 -8.1 214 -8.1 226 -8.1 238 -8.1 250 -8.1 260 -8.1 304 -8.1 313 -19.6
		 338 -8.1 356 -8.1 365 -8.1 366 61.7 367 32.62528822876078 368 20.039653275222765
		 369 8.9402856264878121 370 4.1227337591073159 374 44.347842284806674 378 13.4 379 12.798181661848789
		 380 0.82354822826282881 384 1.5499999999999972 386 4.3700135750899047 387 9.6943359506180027
		 388 13.269863041388918 389 23.567408187807658 390 61.7 391 32.62528822876078 392 20.039653275222765
		 393 8.9402856264878121 394 4.1227337591073159 398 44.347842284806674 402 13.4 403 12.798181661848789
		 404 0.82354822826282881 408 1.5499999999999972 410 4.3700135750899047 411 9.6943359506180027
		 412 13.269863041388918 413 23.567408187807658 414 61.7 423 61.7 424 0.60000000000000053
		 429 0.60000000000000053 432 0.60000000000000053 448 0.60000000000000053 457 0.60000000000000053
		 458 0 459 38.050000000000004 460 61.7 463 33.400000000000006 472 61.7 482 61.7 492 61.7
		 511 40.736845116111184 575 40.736845116111184 585 40.736845116111184 586 54.362579116718564
		 587 61.7 588 38.050000000000004 589 0 598 0 599 61.7 601 61.7 603 40.736845116111184
		 604 33.400000000000006 605 34.370564411017298 606 36.971517521662825 608 45.201513906412046
		 609 49.898699339955954 613 61.7 616 61.7 618 61.7 623 61.7 632 61.7 633 0 668 0 669 0
		 693 0;
	setAttr -s 87 ".kit[48:86]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 87 ".kot[34:86]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 87 ".kix[48:86]"  1 1 1 1 1 1 1 1 0.0013505994575098157 1 
		1 1 1 1 1 1 1 0.0039752274751663208 1 0.0013505994575098157 1 1 1 1 0.0044169179163873196 
		1 0.023326581344008446 0.01154023315757513 0.0096690962091088295 0.012626337818801403 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 87 ".kiy[48:86]"  0 0 0 0 0 0 0 0 0.99999904632568359 0 0 
		0 0 0 0 0 0 0.99999207258224487 0 -0.99999904632568359 0 0 0 0 -0.99999016523361206 
		0 0.99972790479660034 0.99993342161178589 0.99995332956314087 0.9999203085899353 
		0 0 0 0 0 0 0 0 0;
	setAttr -s 87 ".kox[34:86]"  1 0.002000314649194479 0.003518406068906188 
		0.0052353669889271259 1 1 0.023071713745594025 0.023071711882948875 1 0.076252274215221405 
		0.015346283093094826 0.0093629006296396255 0.0060067777521908283 0.0017207023920491338 
		1 1 1 1 1 1 1 1 0.0013505994575098157 1 1 1 1 1 1 1 1 0.0039752274751663208 1 0.0013505994575098157 
		1 1 1 1 0.0044169179163873196 1 0.023326581344008446 0.01154023315757513 0.0096690962091088295 
		0.012626337818801403 1 1 1 1 1 1 1 1 1;
	setAttr -s 87 ".koy[34:86]"  0 -0.99999797344207764 -0.99999380111694336 
		-0.99998629093170166 0 0 -0.99973380565643311 -0.99973380565643311 0 0.99708855152130127 
		0.99988222122192383 0.99995619058609009 0.99998193979263306 0.99999856948852539 0 
		0 0 0 0 0 0 0 0.99999904632568359 0 0 0 0 0 0 0 0 0.99999207258224487 0 -0.99999904632568359 
		0 0 0 0 -0.99999016523361206 0 0.99972790479660034 0.99993342161178589 0.99995332956314087 
		0.9999203085899353 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_Ball_Control_L_IK_FK_Switch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 10 96 10 192 10 201 10 202 10 214 10 226 10
		 238 10 250 10 260 10 356 10 365 10 366 10 390 10 414 10 423 10 424 0 429 0 432 0
		 448 0 457 0 458 10 460 10 472 10 482 10 492 10 511 10 575 10 585 10 586 10 587 10
		 588 10 589 10 598 10 599 10 601 10 603 10 604 10 605 10 606 10 608 10 609 10 613 10
		 616 10 618 10 623 10 632 10 633 10 668 10 669 10 693 10;
	setAttr -s 51 ".kit[14:50]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 51 ".kot[13:50]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 51 ".kix[14:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".kiy[14:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 51 ".kox[13:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".koy[13:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_Ball_Control_View_L_IK_Controls";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 1 96 1 192 1 201 1 202 1 214 1 226 1 238 1
		 250 1 260 1 356 1 365 1 366 1 390 1 414 1 423 1 424 0 429 0 432 0 448 0 457 0 458 1
		 460 1 472 1 482 1 492 1 511 1 575 1 585 1 586 1 587 1 588 1 589 1 598 1 599 1 601 1
		 603 1 604 1 605 1 606 1 608 1 609 1 613 1 616 1 618 1 623 1 632 1 633 1 668 1 669 1
		 693 1;
	setAttr -s 51 ".kit[0:50]"  9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 1 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 51 ".kix[14:50]"  1 0.38461491465568542 0.24253563582897186 
		1 1 1 0.38461637496948242 0.12403473258018494 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".kiy[14:50]"  0 -0.92307716608047485 -0.97014254331588745 
		0 0 0 0.92307651042938232 0.99227786064147949 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_Ball_Control_View_L_FK_Controls";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  1 0 96 0 192 0 201 0 202 0 214 0 226 0 238 0
		 250 0 260 0 356 0 365 0 366 0 390 0 414 0 423 0 424 1 429 1 432 1 448 1 457 1 458 0
		 460 0 472 0 482 0 492 0 511 0 575 0 585 0 586 0 587 0 588 0 589 0 598 0 599 0 601 0
		 603 0 604 0 605 0 606 0 608 0 609 0 613 0 616 0 618 0 623 0 632 0 633 0 668 0 669 0
		 693 0;
	setAttr -s 51 ".kit[0:50]"  9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 1 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 51 ".kix[14:50]"  1 0.38461491465568542 0.24253563582897186 
		1 1 1 0.38461637496948242 0.12403473258018494 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".kiy[14:50]"  0 0.92307716608047485 0.97014254331588745 
		0 0 0 -0.92307651042938232 -0.99227786064147949 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_IK_Leg_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 109 ".ktv[0:108]"  1 1.4225615297587342 24 1.4225615297587342
		 96 1.4225615297587342 192 1.4225615297587342 201 1.4225615297587342 202 1.1053824604447824
		 208 2.4424928544613462 214 3.1193779435359952 226 1.1053824604447824 238 3.1193779435359952
		 250 1.1053824604447824 260 1.1053824604447824 332 1.1053824604447824 356 1.1053824604447824
		 365 1.1053824604447824 366 -0.1075053563524018 367 0.65016793619587276 368 1.0555566406340082
		 369 1.3651865652877671 372 2.1826294342046255 373 2.4719609342105917 374 2.773641949720894
		 375 3.3602737006085759 376 3.838024305916496 377 4.2325631053628667 378 3.7717356631028611
		 379 2.4873521297789547 380 2.5232751072450017 381 1.9075974406843306 382 1.2178446384524979
		 383 0.51610404968001933 384 -0.88473489929015703 385 0.0071547743402111327 386 -0.047064621087812467
		 387 -0.40887698864225797 388 -0.061810936965090935 389 -0.29470584546292872 390 -0.1075053563524018
		 391 0.65016793619587276 392 1.0555566406340082 393 1.3651865652877671 396 3.3080894492653088
		 397 2.4719609342105917 398 2.773641949720894 399 3.179933641626207 400 3.631921381365216
		 401 4.2325631053628658 402 3.7717356631028611 403 2.4873521297789547 404 2.5232751072450017
		 405 1.9075974406843306 406 1.2178446384524979 407 0.51610404968001933 408 -0.88473489929015703
		 409 0.0071547743402111327 410 -0.047064621087812467 411 -0.40887698864225797 412 -0.061810936965090935
		 413 -0.29470584546292872 414 -0.1075053563524018 423 -0.1075053563524018 458 0.7699754514414584
		 459 3.8636663464843948 460 5.2592704387420719 461 4.4878658285423159 462 1.581247395149056
		 463 -0.21165431968988957 465 -1.1849196796344248 467 0.2381247630900831 472 4.1449417167899449
		 482 3.1203313186806554 492 3.1203313186806554 497 3.8031920690840724 500 4.6629608167926859
		 511 5.198650473193176 550 4.3096591437122687 575 5.198650473193176 585 5.198650473193176
		 586 4.4878658285423159 587 5.2592704387420719 588 3.8636663464843948 589 0.7699754514414584
		 598 0.7699754514414584 599 3.1203313186806554 601 5.920790380295589 603 1.581247395149056
		 604 -0.24043669346679034 605 -0.44700329537881828 608 -0.1120356200933139 609 0.16804491470820226
		 610 0.27255571875467843 611 0.76528149335961448 612 2.241362130531626 613 3.1476483084821152
		 616 4.1449417167899449 618 3.6326365177353002 623 3.1203313186806554 632 3.1203313186806554
		 633 1.4225615297587342 634 1.874961352803634 635 2.6096441012149092 636 4.3614249239264407
		 639 6.6543723367953485 645 11.637883954961501 648 11.284948780405729 668 11.284948780405729
		 669 1.4225615297587342 674 5.9252915807495956 693 1.4225615297587342;
	setAttr -s 109 ".kit[59:108]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 109 ".kot[37:108]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 109 ".kix[59:108]"  1 1 0.48459282517433167 0.018559196963906288 
		1 0.022651458159089088 0.017729250714182854 0.045142818242311478 1 0.054641250520944595 
		1 1 1 0.21120716631412506 0.38568049669265747 1 1 1 1 1 1 0.018559196963906288 1 
		1 0.024260861799120903 1 0.020283989608287811 0.067087419331073761 1 0.2615477442741394 
		0.21176289021968842 0.13819380104541779 0.042289286851882935 0.034957308322191238 
		0.087220348417758942 1 0.27378556132316589 1 1 1 0.070028312504291534 0.033496249467134476 
		0.041170805692672729 0.051467753946781158 1 1 1 1 1 1;
	setAttr -s 109 ".kiy[59:108]"  0 0 0.87473982572555542 0.99982774257659912 
		0 -0.99974346160888672 -0.99984288215637207 -0.99898058176040649 0 0.99850606918334961 
		0 0 0 0.97744131088256836 0.92263245582580566 0 0 0 0 0 0 -0.99982774257659912 0 
		0 0.99970561265945435 0 -0.99979424476623535 -0.99774706363677979 0 0.96519052982330322 
		0.97732102870941162 0.99040520191192627 0.99910539388656616 0.99938881397247314 0.99618905782699585 
		0 -0.96179080009460449 0 0 0 0.99754506349563599 0.9994388222694397 0.99915212392807007 
		0.99867463111877441 0 0 0 0 0 0;
	setAttr -s 109 ".kox[37:108]"  1 0.071467287838459015 0.11576438695192337 
		0.07378879189491272 1 1 0.11690082401037216 0.09663756936788559 0.078920498490333557 
		1 0.047694653272628784 1 1 0.063705265522003174 0.059781044721603394 0.039603061974048615 
		1 1 0.24815580248832703 1 1 1 1 1 0.48459288477897644 0.018559196963906288 1 0.022651458159089088 
		0.017729250714182854 0.045142810791730881 1 0.054641250520944595 1 1 1 0.21120716631412506 
		0.38568046689033508 1 1 1 1 1 1 0.018559196963906288 1 1 0.024260859936475754 1 0.020283991470932961 
		0.067087426781654358 1 0.2615477442741394 0.21176289021968842 0.13819381594657898 
		0.042289290577173233 0.034957308322191238 0.087220348417758942 1 0.27378553152084351 
		1 1 1 0.070028305053710938 0.033496253192424774 0.041170805692672729 0.051467753946781158 
		1 1 1 1 1 1;
	setAttr -s 109 ".koy[37:108]"  0 0.99744296073913574 0.99327671527862549 
		0.99727386236190796 0 0 0.99314355850219727 0.995319664478302 0.99688088893890381 
		0 -0.99886202812194824 0 0 -0.99796873331069946 -0.9982115626335144 -0.99921548366546631 
		0 0 -0.96872013807296753 0 0 0 0 0 0.87473982572555542 0.99982774257659912 0 -0.99974340200424194 
		-0.99984288215637207 -0.99898052215576172 0 0.99850606918334961 0 0 0 0.97744137048721313 
		0.92263233661651611 0 0 0 0 0 0 -0.99982774257659912 0 0 0.99970561265945435 0 -0.99979418516159058 
		-0.99774706363677979 0 0.96519052982330322 0.97732102870941162 0.99040520191192627 
		0.99910545349121094 0.99938881397247314 0.99618905782699585 0 -0.96179074048995972 
		0 0 0 0.99754494428634644 0.99943888187408447 0.99915212392807007 0.99867463111877441 
		0 0 0 0 0 0;
createNode animCurveTL -n "L_IK_Leg_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 108 ".ktv[0:107]"  1 3.5958017142561363 24 3.5958017142561363
		 96 3.5958017142561363 192 3.5958017142561363 201 3.5958017142561363 202 1.8643478100578137
		 208 2.107317006687524 214 2.3176479395897389 226 1.8643478100578137 238 2.3176479395897389
		 250 1.8643478100578137 260 1.8643478100578137 332 1.8643478100578137 356 1.8643478100578137
		 365 1.8643478100578137 366 -2.1747269040960719 367 -2.3395004928027947 368 -1.8505060643861007
		 369 -1.4510117815400847 372 1.9404275889774532 373 2.9356389066397788 374 4.1581380759230591
		 375 5.4143079654433386 376 6.3010249869505079 377 6.9262594970901254 378 6.7569524506342047
		 379 7.5724334088988101 380 5.7617100473929481 381 5.3659791918645734 382 3.7230707561218979
		 383 2.3423987511997448 384 2.07776596001897 385 1.2573249652546159 386 0.36211281618272873
		 387 -0.64240855855527357 388 -1.1781047784398182 389 -1.8159179179994072 390 -2.1747269040960719
		 391 -2.3395004928027947 392 -1.8505060643861007 393 -1.4510117815400847 396 1.9404275889774532
		 397 2.9356389066397788 398 4.1581380759230591 399 5.495268009832313 400 6.3935507519664796
		 401 6.9262594970901237 402 6.7569524506342047 403 7.5724334088988101 404 5.7617100473929481
		 405 5.3659791918645734 406 3.7230707561218979 407 2.3423987511997448 408 2.07776596001897
		 409 1.2573249652546159 410 0.36211281618272873 411 -0.64240855855527357 412 -1.1781047784398182
		 413 -1.8159179179994072 414 -2.1747269040960719 423 -2.1747269040960719 458 1.9043566574992477
		 459 2.4365324438137161 460 2.7343720733738777 461 2.9536926153663301 462 1.5004737520267095
		 463 -1.08563419145479 465 0.4747926390111411 472 3.0849952100217295 482 3.4251964201209204
		 492 3.4251964201209204 497 2.8944610109320474 500 2.2885112007568518 511 1.3090592896597351
		 550 1.5776405888610907 575 1.3090592896597351 585 1.3090592896597351 586 2.9536926153663301
		 587 2.7343720733738777 588 2.4365324438137161 589 1.9043566574992477 598 1.9043566574992477
		 599 3.4251964201209204 601 2.8943306076031776 603 1.5004737520267095 604 -2.2754446292931281
		 605 -4.687275022308194 608 -0.24688337551648504 609 1.1699330721911292 610 1.378812723429319
		 611 1.6056860839325946 612 2.385845047755486 613 2.8601790103054228 616 3.0849952100217295
		 618 3.3826712666357159 623 3.4251964201209204 632 3.4251964201209204 633 3.5958017142561363
		 634 3.7237436025950292 635 4.7672811274364406 636 4.9822785277395569 639 6.3307083770830133
		 645 6.7833753579026332 648 6.8076760904933451 668 6.8076760904933451 669 3.5958017142561363
		 674 5.9790369526859326 693 3.5958017142561363;
	setAttr -s 108 ".kit[59:107]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 108 ".kot[37:107]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 108 ".kix[59:107]"  1 1 0.30933612585067749 0.09989599883556366 
		0.15908552706241608 1 0.020625796169042587 1 0.089553214609622955 0.37797087430953979 
		1 1 0.28140074014663696 0.34530749917030334 1 1 1 1 1 0.15908552706241608 0.09989599883556366 
		1 1 1 0.086269401013851166 0.024171935394406319 0.013466354459524155 1 0.028443345800042152 
		0.066344797611236572 0.18783722817897797 0.082470133900642395 0.066280819475650787 
		0.23188610374927521 0.37037444114685059 0.85280746221542358 1 1 0.26884856820106506 
		0.10792055726051331 0.066070377826690674 0.10600239038467407 0.20383520424365997 
		0.86382240056991577 1 1 1 1 1;
	setAttr -s 108 ".kiy[59:107]"  0 0 0.95095276832580566 0.99499785900115967 
		0.98726481199264526 0 -0.99978721141815186 0 0.99598205089569092 0.92581748962402344 
		0 0 -0.9595903754234314 -0.93848955631256104 0 0 0 0 0 -0.98726481199264526 -0.99499785900115967 
		0 0 0 -0.99627178907394409 -0.99970781803131104 -0.99990940093994141 0 0.99959540367126465 
		0.99779677391052246 0.98220014572143555 0.99659347534179688 0.99780100584030151 0.97274291515350342 
		0.92888247966766357 0.52222543954849243 0 0 0.96318244934082031 0.9941595196723938 
		0.99781501293182373 0.9943658709526062 0.97900521755218506 0.50379639863967896 0 
		0 0 0 0;
	setAttr -s 108 ".kox[37:107]"  0.083993524312973022 1 0.093383081257343292 
		0.043921943753957748 0.037966523319482803 0.037550076842308044 0.032539807260036469 
		0.037252284586429596 0.058136630803346634 1 1 1 0.037741366773843765 0.040842209011316299 
		0.027550892904400826 0.052410699427127838 0.07657303661108017 0.048515539616346359 
		0.043823994696140289 0.054025068879127502 0.070834241807460785 0.08332563191652298 
		1 1 0.30933615565299988 0.09989599883556366 0.15908552706241608 1 0.020625796169042587 
		1 0.089553214609622955 0.37797087430953979 1 1 0.28140074014663696 0.34530749917030334 
		1 1 1 1 1 0.15908552706241608 0.09989599883556366 1 1 1 0.086269401013851166 0.024171935394406319 
		0.01346635352820158 1 0.028443345800042152 0.066344797611236572 0.18783722817897797 
		0.082470141351222992 0.066280819475650787 0.23188608884811401 0.37037447094917297 
		0.85280746221542358 1 1 0.26884856820106506 0.1079205647110939 0.066070377826690674 
		0.10600238293409348 0.20383520424365997 0.86382240056991577 1 1 1 1 1;
	setAttr -s 108 ".koy[37:107]"  -0.99646627902984619 0 0.99563020467758179 
		0.99903494119644165 0.99927908182144165 0.99929475784301758 0.99947047233581543 0.99930596351623535 
		0.99830865859985352 0 0 0 -0.99928754568099976 -0.99916565418243408 -0.99962049722671509 
		-0.99862563610076904 -0.99706399440765381 -0.99882245063781738 -0.99903929233551025 
		-0.99853962659835815 -0.99748814105987549 -0.99652242660522461 0 0 0.95095276832580566 
		0.99499785900115967 0.98726481199264526 0 -0.99978721141815186 0 0.99598205089569092 
		0.92581743001937866 0 0 -0.9595903754234314 -0.93848961591720581 0 0 0 0 0 -0.98726481199264526 
		-0.99499785900115967 0 0 0 -0.99627184867858887 -0.99970781803131104 -0.99990928173065186 
		0 0.99959540367126465 0.99779677391052246 0.98220014572143555 0.99659353494644165 
		0.99780100584030151 0.97274291515350342 0.92888253927230835 0.52222543954849243 0 
		0 0.96318244934082031 0.9941595196723938 0.99781495332717896 0.9943658709526062 0.97900521755218506 
		0.50379639863967896 0 0 0 0 0;
createNode animCurveTA -n "R_Ball_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 53 ".ktv[0:52]"  48 0 96 0 192 0 201 0 202 0 214 0 226 0
		 238 0 250 0 260 0 332 0 356 0 365 0 366 0 390 0 414 0 423 0 424 -20.253521655602658
		 429 -20.253521655602658 432 -20.181923710982804 448 -20.253521655602658 457 -20.253521655602658
		 458 0 460 0 472 0 482 0 492 0 511 0 575 0 585 0 586 0 587 0 588 0 589 0 598 0 599 0
		 601 0 603 0 604 0 605 0 606 0 608 0 609 0 613 0 616 0 618 0 623 0 632 0 633 0 668 0
		 669 0 672 0 693 0;
	setAttr -s 53 ".kit[15:52]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 53 ".kot[14:52]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 53 ".kix[15:52]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 53 ".kiy[15:52]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 53 ".kox[14:52]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 53 ".koy[14:52]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_Ball_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 53 ".ktv[0:52]"  48 0 96 0 192 0 201 0 202 0 214 0 226 0
		 238 0 250 0 260 0 332 0 356 0 365 0 366 0 390 0 414 0 423 0 424 -16.528261316241217
		 429 -16.528261316241217 432 -6.4102996384614306 448 -16.528261316241217 457 -16.528261316241217
		 458 0 460 0 472 0 482 0 492 0 511 0 575 0 585 0 586 0 587 0 588 0 589 0 598 0 599 0
		 601 0 603 0 604 0 605 0 606 0 608 0 609 0 613 0 616 0 618 0 623 0 632 0 633 0 668 0
		 669 0 672 0 693 0;
	setAttr -s 53 ".kit[15:52]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 53 ".kot[14:52]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 53 ".kix[15:52]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 53 ".kiy[15:52]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 53 ".kox[14:52]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 53 ".koy[14:52]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_Ball_Control_R_Ankle_Control";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 99 ".ktv[0:98]"  1 34 24 34 48 34 72 33.699999999999996 96 37.4
		 192 34 201 34 202 -33.1 214 -33.1 226 -33.1 238 -33.1 250 -33.1 260 -33.1 282 -33.1
		 294 -42.2 306 -33.1 332 -33.1 340 -33.1 345 -43.1 356 -33.1 365 -33.1 366 -15.2 367 -15.489856345936712
		 368 -16.154239334689215 369 -3.993186257794934 370 10.148469451153897 371 18.624875401570893
		 372 17.124875401570893 373 22.424875401570894 374 20.624875401570893 375 18.624875401570893
		 376 18.624875401570893 377 14.582111356029721 378 -7.3000000000000007 379 -9.5834393374206908
		 387 24.560097171243182 389 -8.4517356067988985 390 -19 391 -16.489856345936712 392 -13.854239334689218
		 393 -2.3931862577949357 394 10.648469451153897 395 13.85658083129918 396 13.85658083129918
		 397 18.231278167860918 398 19.866355890377001 399 18.146977294890277 400 17.563684316682043
		 401 15.68211135602972 402 2.9000000000000008 403 -9.5834393374206908 411 24.560097171243182
		 413 -11.206881952379387 414 -15.2 423 -15.2 424 23.900000000000002 429 23.900000000000002
		 432 8.4 448 23.900000000000002 457 23.900000000000002 458 -25.7 459 -2.8582834913071595
		 460 -5.3999999999999986 461 -5.4820795882730415 462 -23.448551404917442 463 -52.79541462362134
		 472 -7.2646663034697845 482 -7.2646663034697845 492 -7.2646663034697845 511 -23.448551404917442
		 575 -23.448551404917442 585 -23.448551404917442 586 -5.4820795882730415 587 -5.3999999999999986
		 588 -2.8582834913071595 589 -25.7 598 -25.7 599 -7.2646663034697845 601 -20.9 603 -23.448551404917442
		 604 -52.79541462362134 605 -51.233912011376653 606 -47.049341641294795 608 -33.808426656497119
		 609 -26.251311186964621 613 -7.2646663034697845 616 -7.2646663034697845 618 -7.2646663034697845
		 623 -7.2646663034697845 632 -7.2646663034697845 633 34 634 44.68903161312744 635 57.161638985009766
		 636 29.6827575594072 645 -48.600000000000009 668 -48.600000000000009 669 34 672 48.482757559407197
		 693 34;
	setAttr -s 99 ".kit[37:98]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 99 ".kot[37:98]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 99 ".kix[37:98]"  0.0014868149301037192 0.0047071664594113827 
		0.0059115034528076649 0.0034009129740297794 0.0051282504573464394 1 1 0.013865072280168533 
		1 0.036165621131658554 0.033789418637752533 0.0073815556243062019 0.0032982304692268372 
		1 1 0.0034781321883201599 1 1 1 1 1 1 1 1 1 0.16684570908546448 0.16684569418430328 
		0.0017612779047340155 1 1 1 1 1 1 1 0.16684570908546448 0.16684569418430328 1 1 1 
		1 0.010898874141275883 0.010898874141275883 1 0.014501244761049747 0.0071732173673808575 
		0.006010076031088829 0.007848384790122509 1 1 1 1 1 0.0016039657639339566 0.0035979072563350201 
		1 0.0039396402426064014 1 1 0.002876972546800971 1 1;
	setAttr -s 99 ".kiy[37:98]"  -0.99999886751174927 -0.99998891353607178 
		0.99998253583908081 0.99999421834945679 0.99998682737350464 0 0 0.99990391731262207 
		0 -0.99934583902359009 -0.99942892789840698 -0.99997282028198242 -0.99999457597732544 
		0 0 -0.99999392032623291 0 0 0 0 0 0 0 0 0 -0.98598301410675049 -0.98598301410675049 
		-0.99999845027923584 0 0 0 0 0 0 0 0.98598301410675049 0.98598301410675049 0 0 0 
		0 -0.99994063377380371 -0.99994063377380371 0 0.99989485740661621 0.99997431039810181 
		0.99998199939727783 0.99996918439865112 0 0 0 0 0 0.99999868869781494 0.99999350309371948 
		0 -0.9999922513961792 0 0 0.99999582767486572 0 0;
	setAttr -s 99 ".kox[37:98]"  0.06672167032957077 0.0047071706503629684 
		0.0059115034528076649 0.0034009129740297794 0.0051282504573464394 1 1 0.013865071348845959 
		1 0.036165621131658554 0.033789414912462234 0.0073815551586449146 0.0032982304692268372 
		1 1 0.0034781324211508036 1 1 1 1 1 1 1 1 1 0.16684569418430328 0.16684570908546448 
		0.0017612779047340155 1 1 1 1 1 1 1 0.16684569418430328 0.16684570908546448 1 1 1 
		1 0.010898874141275883 0.010898874141275883 1 0.014501243829727173 0.0071732169017195702 
		0.0060100764967501163 0.007848384790122509 1 1 1 1 1 0.0016039657639339566 0.0035979074891656637 
		1 0.0039396397769451141 1 1 0.002876972546800971 1 1;
	setAttr -s 99 ".koy[37:98]"  -0.99777168035507202 -0.99998891353607178 
		0.99998253583908081 0.99999421834945679 0.99998682737350464 0 0 0.99990385770797729 
		0 -0.99934583902359009 -0.99942898750305176 -0.99997282028198242 -0.99999457597732544 
		0 0 -0.99999392032623291 0 0 0 0 0 0 0 0 0 -0.98598301410675049 -0.98598301410675049 
		-0.99999845027923584 0 0 0 0 0 0 0 0.98598301410675049 0.98598301410675049 0 0 0 
		0 -0.99994063377380371 -0.99994063377380371 0 0.99989485740661621 0.99997431039810181 
		0.99998199939727783 0.99996918439865112 0 0 0 0 0 0.99999868869781494 0.99999356269836426 
		0 -0.9999922513961792 0 0 0.9999958872795105 0 0;
createNode animCurveTU -n "R_Ball_Control_R_Lower_Foot_Control";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 83 ".ktv[0:82]"  1 0 48 0 72 37.7 96 0 192 0 201 0 202 -12.5
		 214 -12.5 226 -12.5 238 -12.5 250 -12.5 260 -12.5 282 -12.5 294 -21.599999999999998
		 306 -12.5 332 -12.5 340 -12.5 345 -22.5 356 -12.5 365 -12.5 366 20.9 368 -0.27728290041747883
		 372 2.0875000745207331 374 6.0904641718376729 375 7.5749679646919521 376 9.9081398775248761
		 377 18.678795372237545 378 47.199999999999996 379 42.919327508957572 380 35.595222649040494
		 381 9.6623168023988306 390 20.9 392 -0.27728290041747883 396 2.0875000745207331 398 7.8403431064623694
		 399 9.8818685301911842 400 12.158260942900187 401 18.178795372237545 402 34.9 403 42.919327508957572
		 404 35.595222649040494 405 9.6623168023988306 414 20.9 423 20.9 424 -3.6999999999999993
		 429 -3.6999999999999993 432 4.9 448 -3.6999999999999993 457 -3.6999999999999993 458 -0.20000000000000284
		 459 0.09996858201953529 460 0.49999999999999645 461 0.40616994487596081 462 14.511811705607652
		 472 2.2212445304870956 482 2.2212445304870956 492 2.2212445304870956 511 14.511811705607652
		 575 14.511811705607652 585 14.511811705607652 586 0.40616994487596081 587 0.49999999999999645
		 588 0.09996858201953529 589 -0.20000000000000284 598 -0.20000000000000284 599 2.2212445304870956
		 601 36.5 603 14.511811705607652 604 14.167684939066312 605 13.233571114775362 606 11.857042106787002
		 608 8.3664859216692911 609 6.5475079727265273 613 2.2212445304870956 616 2.2212445304870956
		 618 2.2212445304870956 623 2.2212445304870956 632 2.2212445304870956 633 0 668 0
		 669 0 672 0.70000000000000073 693 0;
	setAttr -s 83 ".kit[42:82]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 83 ".kot[31:82]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 83 ".kix[42:82]"  1 1 1 1 1 1 1 0.04625089094042778 0.11821111291646957 
		1 1 1 1 1 1 1 1 1 1 1 0.11821111291646957 1 1 0.0057363412342965603 1 0.040326360613107681 
		0.065056167542934418 0.036041844636201859 0.025674255564808846 0.023536032065749168 
		0.03388189896941185 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 83 ".kiy[42:82]"  0 0 0 0 0 0 0 0.99892985820770264 0.9929884672164917 
		0 0 0 0 0 0 0 0 0 0 0 -0.9929884672164917 0 0 0.99998360872268677 0 -0.99918663501739502 
		-0.99788165092468262 -0.99935030937194824 -0.99967032670974731 -0.99972295761108398 
		-0.99942582845687866 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 83 ".kox[31:82]"  1 1 0.030782587826251984 0.016035158187150955 
		0.01929553784430027 0.010043449699878693 0.0036643375642597675 0.0033682212233543396 
		1 0.0025057487655431032 1 1 1 1 1 1 1 1 0.04625089094042778 0.11821111291646957 1 
		1 1 1 1 1 1 1 1 1 1 0.11821111291646957 1 1 0.005736340768635273 1 0.040326356887817383 
		0.065056160092353821 0.03604184091091156 0.025674259290099144 0.023536033928394318 
		0.03388189896941185 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 83 ".koy[31:82]"  0 0 0.99952608346939087 0.99987143278121948 
		0.99981385469436646 0.99994951486587524 0.99999326467514038 0.99999427795410156 0 
		-0.99999690055847168 0 0 0 0 0 0 0 0 0.99892985820770264 0.9929884672164917 0 0 0 
		0 0 0 0 0 0 0 0 -0.9929884672164917 0 0 0.99998354911804199 0 -0.99918657541275024 
		-0.99788159132003784 -0.99935024976730347 -0.99967038631439209 -0.99972295761108398 
		-0.99942582845687866 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_Ball_Control_R_IK_FK_Switch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 53 ".ktv[0:52]"  48 10 96 10 192 10 201 10 202 10 214 10
		 226 10 238 10 250 10 260 10 332 10 356 10 365 10 366 10 390 10 414 10 423 10 424 0
		 429 0 432 0 448 0 457 0 458 10 460 10 472 10 482 10 492 10 511 10 575 10 585 10 586 10
		 587 10 588 10 589 10 598 10 599 10 601 10 603 10 604 10 605 10 606 10 608 10 609 10
		 613 10 616 10 618 10 623 10 632 10 633 10 668 10 669 10 672 10 693 10;
	setAttr -s 53 ".kit[15:52]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 53 ".kot[14:52]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 53 ".kix[15:52]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 53 ".kiy[15:52]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 53 ".kox[14:52]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 53 ".koy[14:52]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_Ball_Control_View_R_IK_Controls";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 53 ".ktv[0:52]"  48 1 96 1 192 1 201 1 202 1 214 1 226 1
		 238 1 250 1 260 1 332 1 356 1 365 1 366 1 390 1 414 1 423 1 424 0 429 0 432 0 448 0
		 457 0 458 1 460 1 472 1 482 1 492 1 511 1 575 1 585 1 586 1 587 1 588 1 589 1 598 1
		 599 1 601 1 603 1 604 1 605 1 606 1 608 1 609 1 613 1 616 1 618 1 623 1 632 1 633 1
		 668 1 669 1 672 1 693 1;
	setAttr -s 53 ".kit[0:52]"  9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 53 ".kix[15:52]"  1 0.38461491465568542 0.24253563582897186 
		1 1 1 0.38461637496948242 0.12403473258018494 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 53 ".kiy[15:52]"  0 -0.92307716608047485 -0.97014254331588745 
		0 0 0 0.92307651042938232 0.99227786064147949 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_Ball_Control_View_R_FK_Controls";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 53 ".ktv[0:52]"  48 0 96 0 192 0 201 0 202 0 214 0 226 0
		 238 0 250 0 260 0 332 0 356 0 365 0 366 0 390 0 414 0 423 0 424 1 429 1 432 1 448 1
		 457 1 458 0 460 0 472 0 482 0 492 0 511 0 575 0 585 0 586 0 587 0 588 0 589 0 598 0
		 599 0 601 0 603 0 604 0 605 0 606 0 608 0 609 0 613 0 616 0 618 0 623 0 632 0 633 0
		 668 0 669 0 672 0 693 0;
	setAttr -s 53 ".kit[0:52]"  9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 53 ".kix[15:52]"  1 0.38461491465568542 0.24253563582897186 
		1 1 1 0.38461637496948242 0.12403473258018494 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 53 ".kiy[15:52]"  0 0.92307716608047485 0.97014254331588745 
		0 0 0 -0.92307651042938232 -0.99227786064147949 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_IK_Leg_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 105 ".ktv[0:104]"  1 0.48771276828038512 24 0.48771276828038512
		 72 0.48771276828038512 96 0.61300229985494614 107 0.48771276828038512 192 0.48771276828038512
		 201 0.48771276828038512 202 2.8996313105663138 214 1.5072133885629901 226 2.8996313105663138
		 238 1.5072133885629901 250 2.8996313105663138 260 2.8996313105663138 332 2.8996313105663138
		 356 2.8996313105663138 365 2.8996313105663138 366 3.6832367431322566 367 3.1664963936323258
		 368 2.666525256914591 369 2.022436319207785 370 1.3413580713969291 371 0.71977978233323081
		 372 0.25881814014147836 373 0.1060176389549384 374 0.018844712255104153 375 -0.025368365796398541
		 376 -0.01779243589908576 377 -0.042065192341202644 378 -0.018980560847041084 379 0.38123500772589147
		 380 0.75743299297959465 383 2.3782720136068498 384 2.8036093671218709 385 3.3370737767667422
		 386 3.3500246424626594 387 3.379969600586016 388 3.703970287105788 389 3.7890271498360177
		 390 3.6400453816019325 391 3.0062700704807557 392 2.4224505820154816 393 1.9864674403275346
		 394 1.3413580713969291 395 0.88407679028168928 396 0.30100698209824783 397 0.069385189157433427
		 398 0.018844712255104153 399 -0.025368365796400172 400 -0.025368365796400172 401 -0.029854375742037361
		 402 0.10312760514464511 403 0.38123500772589147 404 0.75743299297959465 407 2.2220219831716115
		 408 2.7645468595130596 409 3.150003682500579 410 2.9765270509205592 411 3.1858581529383092
		 412 3.346054402615271 413 4.1292632468284181 414 3.6832367431322566 423 3.6832367431322566
		 458 3.1514207428807151 459 5.231255012055378 460 6.7906815742652213 461 5.1923982454386017
		 462 1.6873839168241334 463 0.11699330507171532 465 -0.76161082816581738 467 1.9383450392011476
		 472 6.216894524815606 482 5.9320979517011416 492 5.9320979517011416 511 1.6873839168241334
		 536 2.4493764849506232 575 1.6873839168241334 585 1.6873839168241334 586 5.1923982454386017
		 587 6.7906815742652213 588 5.231255012055378 589 3.1514207428807151 598 3.1514207428807151
		 599 5.9320979517011416 601 6.7906815742652213 603 1.6873839168241334 604 0.060020803842215316
		 605 -0.044592796619629636 608 0.049680849391983625 609 1.4881028756609516 613 4.9770310904713204
		 616 6.216894524815606 618 6.0744962382583738 623 5.9320979517011416 632 5.9320979517011416
		 633 0.48771276828038512 634 0.9319993308814073 635 1.4115484640996852 636 2.9833429774794022
		 639 6.6345694887990767 645 12.742520628559969 648 11.820026806695433 668 11.820026806695433
		 669 0.48771276828038512 670 0.83919045180114615 693 0.48771276828038512;
	setAttr -s 105 ".kit[60:104]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 105 ".kot[38:104]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 105 ".kix[60:104]"  1 1 1 0.022892072796821594 1 0.016327258199453354 
		0.016416586935520172 0.050974994897842407 1 0.041758459061384201 1 1 1 1 1 1 1 0.016327258199453354 
		1 0.022892072796821594 1 1 0.034327391535043716 1 0.018568525090813637 0.13161282241344452 
		1 0.40425208210945129 0.042243011295795441 0.061561774462461472 1 0.71548455953598022 
		1 1 1 0.089839555323123932 0.040590610355138779 0.03189365565776825 0.038397032767534256 
		1 1 1 1 1 1;
	setAttr -s 105 ".kiy[60:104]"  0 0 0 0.99973797798156738 0 -0.99986666440963745 
		-0.99986517429351807 -0.99869996309280396 0 0.99912774562835693 0 0 0 0 0 0 0 0.99986666440963745 
		0 -0.99973797798156738 0 0 0.99941062927246094 0 -0.99982756376266479 -0.99130117893218994 
		0 0.91464757919311523 0.99910736083984375 0.99810326099395752 0 -0.69862860441207886 
		0 0 0 0.99595624208450317 0.99917584657669067 0.99949127435684204 0.99926257133483887 
		0 0 0 0 0 0;
	setAttr -s 105 ".kox[38:104]"  1 0.06828172504901886 0.081444308161735535 
		0.076853372156620026 0.075378797948360443 0.079846024513244629 0.10175570845603943 
		0.28324565291404724 0.66040825843811035 1 1 1 0.19866959750652313 0.12634192407131195 
		0.090172819793224335 0.082752853631973267 0.089439362287521362 1 1 0.21998557448387146 
		0.087990559637546539 1 1 1 1 0.022892072796821594 1 0.016327258199453354 0.016416586935520172 
		0.050974991172552109 1 0.041758459061384201 1 1 1 1 1 1 1 0.016327258199453354 1 
		0.022892072796821594 1 1 0.034327387809753418 1 0.018568525090813637 0.13161282241344452 
		1 0.40425205230712891 0.042243007570505142 0.06156177818775177 1 0.71548455953598022 
		1 1 1 0.089839547872543335 0.040590614080429077 0.03189365565776825 0.038397032767534256 
		1 1 1 1 1 1;
	setAttr -s 105 ".koy[38:104]"  0 -0.99766606092453003 -0.99667787551879883 
		-0.99704247713088989 -0.99715501070022583 -0.9968072772026062 -0.99480944871902466 
		-0.95904743671417236 -0.75090664625167847 0 0 0 0.98006653785705566 0.99198681116104126 
		0.9959261417388916 0.9965701699256897 0.99599230289459229 0 0 0.97550308704376221 
		0.99612134695053101 0 0 0 0 0.99973797798156738 0 -0.99986666440963745 -0.99986517429351807 
		-0.99869990348815918 0 0.99912774562835693 0 0 0 0 0 0 0 0.99986666440963745 0 -0.99973797798156738 
		0 0 0.99941062927246094 0 -0.99982756376266479 -0.99130117893218994 0 0.91464763879776001 
		0.99910736083984375 0.99810332059860229 0 -0.69862854480743408 0 0 0 0.99595624208450317 
		0.99917590618133545 0.99949127435684204 0.99926257133483887 0 0 0 0 0 0;
createNode animCurveTL -n "R_IK_Leg_Control_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 105 ".ktv[0:104]"  1 -2.3288065718896043 24 -2.3288065718896043
		 72 -2.3288065718896043 96 -1.532262203070915 107 -2.3288065718896043 192 -2.3288065718896043
		 201 -2.3288065718896043 202 2.1225959757159298 214 1.6632921427881908 226 2.1225959757159298
		 238 1.6632921427881908 250 2.1225959757159298 260 2.1225959757159298 332 2.1225959757159298
		 356 2.1225959757159298 365 2.1225959757159298 366 6.618561818483621 367 6.2226656864691368
		 368 5.7326933041246813 369 4.8729798324241775 370 3.6009364532835528 371 2.4136903643888941
		 372 1.6805872020727146 373 0.83520949406247824 374 0.10726997613468184 375 -0.56554501751893538
		 376 -1.1813485593559414 377 -1.7467183879740207 378 -2.2656688876264601 379 -1.9141063191471748
		 380 -1.3922913644589732 383 1.0568550708993594 384 1.7055936503194158 385 2.3010541411716559
		 386 3.3824089377319639 387 4.5210582358117151 388 5.9616073582297453 389 6.5567168981889434
		 390 6.5784225754472985 391 6.061305570392614 392 5.4937294543881396 393 4.7620422706476484
		 394 3.6009364532835528 395 2.9465672555627598 396 1.9126612449500631 397 0.75361000622857544
		 398 0.10726997613468184 399 -0.5655450175189346 400 -1.1715210931594224 401 -1.563268528260811
		 402 -2.0113293131001315 403 -2.1094188571912218 404 -1.5485413948942106 407 1.0568550708993594
		 408 1.9009061883634637 409 2.7698042324773708 410 3.665627249781497 411 4.7238112733670583
		 412 5.7995539172110808 413 6.8511581612980512 414 6.618561818483621 423 6.618561818483621
		 458 6.5810091090223883 459 5.9740405460876058 460 5.7290212213183755 461 5.9413303444004919
		 462 4.5869949364623146 463 3.3669237999408224 465 1.7153092345185659 467 1.6993753185638834
		 472 3.148296593158304 482 3.4021426699557837 492 3.4021426699557837 511 4.5869949364623146
		 536 4.3567823942897244 575 4.5869949364623146 585 4.5869949364623146 586 5.9413303444004919
		 587 5.7290212213183755 588 5.9740405460876058 589 6.5810091090223883 598 6.5810091090223883
		 599 3.4021426699557837 601 5.7290212213183755 603 4.5869949364623146 604 0.0040031966206680453
		 605 -1.9582666624161356 608 0.27744987501736063 609 1.6963041799982987 613 3.6565081382633555
		 616 3.148296593158304 618 3.3704119093356009 623 3.4021426699557837 632 3.4021426699557837
		 633 -2.3288065718896043 634 -2.9460386261709557 635 -1.825629487377483 636 1.7229527894801158
		 639 4.7635399048411866 645 7.104411791042919 648 7.0970389104209133 668 7.0970389104209133
		 669 -2.3288065718896043 670 -2.6330047660737232 693 -2.3288065718896043;
	setAttr -s 105 ".kit[60:104]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 105 ".kot[38:104]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 105 ".kix[60:104]"  1 1 0.99702936410903931 0.097344450652599335 
		1 1 0.032352477312088013 0.043487261980772018 0.8674243688583374 1 0.47999122738838196 
		1 1 1 1 1 1 1 1 0.097344450652599335 1 1 1 1 0.024316232651472092 0.012730922549962997 
		1 0.045557461678981781 0.061537042260169983 1 1 0.90955054759979248 1 1 0.022495854645967484 
		1 0.017845544964075089 0.02528584748506546 0.069515131413936615 1 1 1 0.045609161257743835 
		1 1;
	setAttr -s 105 ".kiy[60:104]"  0 0 -0.077021770179271698 -0.99525070190429688 
		0 0 -0.99947649240493774 -0.999053955078125 -0.49756902456283569 0 0.8772733211517334 
		0 0 0 0 0 0 0 0 0.99525070190429688 0 0 0 0 -0.99970436096191406 -0.99991899728775024 
		0 0.9989616870880127 0.99810487031936646 0 0 0.41559323668479919 0 0 -0.99974691867828369 
		0 0.99984073638916016 0.99968022108078003 0.997580885887146 0 0 0 -0.99895942211151123 
		0 0;
	setAttr -s 105 ".kox[38:104]"  1 0.076601497828960419 0.064007878303527832 
		0.043983370065689087 0.045853737741708755 0.049300394952297211 0.037972453981637955 
		0.046109303832054138 0.063046559691429138 0.065026804804801941 0.083234280347824097 
		0.098744809627532959 0.15083511173725128 1 0.052565727382898331 0.048260435461997986 
		0.048590835183858871 0.047169610857963562 0.042608998715877533 0.03902130201458931 
		0.039142701774835587 1 1 1 0.99702942371368408 0.097344450652599335 1 1 0.032352477312088013 
		0.04348725825548172 0.8674243688583374 1 0.47999122738838196 1 1 1 1 1 1 1 1 0.097344450652599335 
		1 1 1 1 0.024316232651472092 0.012730921618640423 1 0.045557461678981781 0.061537038534879684 
		1 1 0.90955054759979248 1 1 0.022495854645967484 1 0.017845543101429939 0.02528584748506546 
		0.069515131413936615 1 1 1 0.045609161257743835 1 1;
	setAttr -s 105 ".koy[38:104]"  0 -0.99706184864044189 -0.99794942140579224 
		-0.99903225898742676 -0.99894815683364868 -0.99878400564193726 -0.99927884340286255 
		-0.99893635511398315 -0.99801057577133179 -0.99788355827331543 -0.99652999639511108 
		-0.9951128363609314 -0.98855888843536377 0 0.99861741065979004 0.99883484840393066 
		0.99881881475448608 0.99888688325881958 0.99909180402755737 0.99923837184906006 0.9992336630821228 
		0 0 0 -0.077021777629852295 -0.99525070190429688 0 0 -0.99947649240493774 -0.999053955078125 
		-0.49756902456283569 0 0.8772733211517334 0 0 0 0 0 0 0 0 0.99525070190429688 0 0 
		0 0 -0.99970430135726929 -0.99991893768310547 0 0.9989616870880127 0.99810481071472168 
		0 0 0.41559326648712158 0 0 -0.99974691867828369 0 0.99984067678451538 0.99968022108078003 
		0.997580885887146 0 0 0 -0.99895942211151123 0 0;
createNode animCurveTL -n "Chest_Control_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 58 ".ktv[0:57]"  1 0 24 -0.31044037239331068 48 0.05 96 -0.49969116721890217
		 120 0 144 -0.39479794860335571 192 0 201 0 202 -0.49969116721890217 214 -0.49969116721890217
		 226 -0.49969116721890217 238 -0.49969116721890217 250 -0.49969116721890217 260 -0.49969116721890217
		 344 -0.49963483271897696 356 -0.49969116721890217 365 -0.49969116721890217 366 0
		 378 0 390 0 402 0 414 0 423 0 429 0 432 0 448 0 457 0 458 0 460 0 472 0 482 0 492 0
		 511 0 575 0 585 0 586 0 587 0 588 0 589 0 598 0 599 0 601 0 604 0 609 0 613 0 616 0
		 618 0 623 0 632 0 633 0 668 0 669 0 670 0 671 0 672 0 673 0 674 0 693 0;
	setAttr -s 58 ".kit[21:57]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 58 ".kot[19:57]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 58 ".kix[21:57]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 58 ".kiy[21:57]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 58 ".kox[19:57]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 58 ".koy[19:57]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Chest_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 70 ".ktv[0:69]"  1 14.998904855522156 8 14.998904855522156
		 24 91.247889440657019 96 14.998904855522156 100 14.998904855522156 115 -86.108812455017954
		 120 -86.108812455017954 124 -86.108812455017954 192 14.998904855522156 201 14.998904855522156
		 202 -2.3509484191057757 208 -7.8111827095978725 214 -2.3509484191057757 220 6.7615617134829593
		 226 -2.3509484191057757 232 -6.5515570031385337 238 -2.3509484191057757 244 9.6466393049033208
		 250 -2.3509484191057757 260 -2.3509484191057757 296 -2.4807929969163438 309 7.4198557721489102
		 320 -3.0737234745385815 356 -2.3509484191057757 365 -2.3509484191057757 366 -29.958147547846437
		 378 35.083987513439929 390 -29.958147547846437 402 35.083987513439929 414 -29.958147547846437
		 423 -29.958147547846437 424 0 429 0 432 -29.494742897727566 448 0 457 0 458 -29.958147547846437
		 460 -29.958147547846437 472 -0.65555840092953022 482 -0.65555840092953022 492 -0.65555840092953022
		 511 -27.787554338580048 522 -19.796074635107349 536 -10.634541394563195 575 -27.787554338580048
		 585 -27.787554338580048 586 -29.381557818725248 587 -29.958147547846437 588 -29.958147547846437
		 589 -29.958147547846437 598 -29.958147547846437 599 -0.65555840092953022 601 -29.958147547846437
		 604 -25.379617993640672 609 -8.2524762773598024 613 -0.65555840092953022 616 -0.65555840092953022
		 618 -0.65555840092953022 623 -0.65555840092953022 632 -0.65555840092953022 633 14.998904855522156
		 645 -2.8008187493221941 668 -2.8008187493221941 669 14.998904855522156 670 14.648689185995535
		 671 13.680387949395488 672 12.217698042265226 673 10.384191876707195 674 8.3033739645258908
		 693 14.998904855522156;
	setAttr -s 70 ".kit[29:69]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 70 ".kot[27:69]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 70 ".kix[29:69]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0.96109455823898315 
		1 1 1 0.91034621000289917 1 1 1 1 1 1 0.66058182716369629 0.65594810247421265 1 1 
		1 1 1 1 1 1 1 0.96392202377319336 0.89114487171173096 0.82293999195098877 0.77334064245223999 
		1 1;
	setAttr -s 70 ".kiy[29:69]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0.27621966600418091 
		0 0 0 -0.41384750604629517 0 0 0 0 0 0 0.75075399875640869 0.7548060417175293 0 0 
		0 0 0 0 0 0 0 -0.26618459820747375 -0.45371901988983154 -0.56812834739685059 -0.63399076461791992 
		0 0;
	setAttr -s 70 ".kox[27:69]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.96109455823898315 
		1 1 1 0.91034621000289917 1 1 1 1 1 1 0.66058182716369629 0.65594810247421265 1 1 
		1 1 1 1 1 1 1 0.96392208337783813 0.89114481210708618 0.82293999195098877 0.77334064245223999 
		1 1;
	setAttr -s 70 ".koy[27:69]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.27621966600418091 
		0 0 0 -0.41384750604629517 0 0 0 0 0 0 0.75075399875640869 0.7548060417175293 0 0 
		0 0 0 0 0 0 0 -0.26618459820747375 -0.45371896028518677 -0.56812834739685059 -0.63399076461791992 
		0 0;
createNode animCurveTA -n "R_Shoulder_Pad_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 63 ".ktv[0:62]"  1 23.112793461788154 30 23.265811559364746
		 96 23.112793461788154 120 38.877722261071462 192 23.112793461788154 201 23.112793461788154
		 202 -56.316464672307468 214 -109.38508662834943 226 -56.316464672307468 238 -109.38508662834943
		 250 -56.316464672307468 260 -56.316464672307468 284 -56.316464672307468 327 -56.316464672307468
		 356 -56.316464672307468 365 -56.316464672307468 366 -5.0200843659934229 378 -4.8739997769160235
		 390 -5.0200843659934229 402 -3.2497395884904225 414 -5.0200843659934229 423 -5.0200843659934229
		 424 -4.9584917420223418 429 -4.9584917420223418 432 -4.9584917420223418 448 -4.9584917420223418
		 457 -4.9584917420223418 458 -5.0200843659934229 460 -5.0200843659934229 468 -4.9756233273069581
		 475 -4.9426636615966935 482 -4.9366356807719463 492 -4.9366356807719463 511 -5.0150727969896005
		 575 -5.0150727969896005 585 -5.0150727969896005 586 -5.0187383834551857 587 -5.0200843659934229
		 588 -5.0200843659934229 589 -5.0200843659934229 598 -5.0200843659934229 599 -4.9366356807719463
		 601 -73.962913267476793 605 -98.573508644400093 613 -80.2287287140106 617 -72.082455975670712
		 623 -4.9366356807719463 632 -4.9366356807719463 633 23.112793461788154 639 -79.353187905725221
		 645 -108.82927350868309 648 -67.635738869949094 652 -46.253041039894519 654 -11.689542077228465
		 656 -13.510171470249507 668 -13.510171470249507 669 23.112793461788154 670 17.050003219759876
		 671 1.4339906869102605 672 -19.873818112440688 673 -43.014099678886978 674 -64.127866057767648
		 693 23.112793461788154;
	setAttr -s 63 ".kit[20:62]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 63 ".kot[18:62]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 63 ".kix[20:62]"  1 1 1 1 1 1 1 1 1 0.99999767541885376 0.99999940395355225 
		1 1 1 1 1 0.99999946355819702 1 1 1 1 1 0.15121428668498993 1 0.73420476913452148 
		0.36394825577735901 1 1 1 0.21218091249465942 1 0.25801199674606323 0.24803033471107483 
		1 1 1 1 0.21509155631065369 0.12824401259422302 0.10680469870567322 0.10727006196975708 
		1 1;
	setAttr -s 63 ".kiy[20:62]"  0 0 0 0 0 0 0 0 0 0.0021619889885187149 
		0.0010821352479979396 0 0 0 0 0 -0.0010496119502931833 0 0 0 0 0 -0.98850101232528687 
		0 0.67892807722091675 0.93141913414001465 0 0 0 -0.97723037004470825 0 0.96614170074462891 
		0.96875226497650146 0 0 0 0 -0.97659385204315186 -0.99174267053604126 -0.99428004026412964 
		-0.99422991275787354 0 0;
	setAttr -s 63 ".kox[18:62]"  0.99999427795410156 1 1 1 1 1 1 1 1 1 1 
		0.99999767541885376 0.99999940395355225 1 1 1 1 1 0.99999946355819702 1 1 1 1 1 0.15121430158615112 
		1 0.73420476913452148 0.36394825577735901 1 1 1 0.21218091249465942 1 0.25801199674606323 
		0.24803033471107483 1 1 1 1 0.21509158611297607 0.12824401259422302 0.10680469870567322 
		0.10727006196975708 1 1;
	setAttr -s 63 ".koy[18:62]"  0.0033897904213517904 0 0 0 0 0 0 0 0 0 
		0 0.0021619887556880713 0.0010821352479979396 0 0 0 0 0 -0.0010496120667085052 0 
		0 0 0 0 -0.98850107192993164 0 0.67892813682556152 0.93141913414001465 0 0 0 -0.97723037004470825 
		0 0.96614176034927368 0.96875226497650146 0 0 0 0 -0.97659391164779663 -0.99174267053604126 
		-0.99428004026412964 -0.99422985315322876 0 0;
createNode animCurveTA -n "R_Shoulder_Pad_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 58 ".ktv[0:57]"  30 -23.695702957834499 96 -8.3051296122539462
		 120 -20.126911900802021 192 -23.696 201 -23.696 202 3.1718334681111426 214 3.1718334681111426
		 226 3.1718334681111426 238 3.1718334681111426 250 3.1718334681111426 260 3.1718334681111426
		 284 3.1718334681111426 327 3.1718334681111426 356 3.1718334681111426 365 3.1718334681111426
		 366 -23.035602944846463 378 -18.145249739856116 390 -23.035602944846463 402 -19.517997148091307
		 414 -23.035602944846463 423 -23.035602944846463 424 -44.381971734504859 429 -44.381971734504859
		 432 -44.381971734504859 448 -44.381971734504859 457 -44.381971734504859 458 -23.035602944846463
		 460 -23.035602944846463 468 -24.924017924654642 475 -57.165642640650127 482 -50.241001955968336
		 492 -50.241001955968336 511 -23.065109956361457 575 -23.065109956361457 585 -23.065109956361457
		 586 -23.039291578040697 587 -23.035602944846463 588 -23.035602944846463 589 -23.035602944846463
		 598 -23.035602944846463 599 -50.241001955968336 601 -23.035602944846463 605 -23.271658925279844
		 613 -1.3712715236682431 617 3.0009778903488229 623 -50.241001955968336 632 -50.241001955968336
		 633 -23.696 645 -4.1207816945964089 654 -2.5982930898539216 668 -2.5982930898539216
		 669 -23.696 670 -20.368589303636945 671 -17.459533934935937 672 -14.93607241955889
		 673 -12.765035730911661 674 -10.913319375036387 693 -23.696;
	setAttr -s 58 ".kit[19:57]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 58 ".kot[17:57]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 58 ".kix[19:57]"  1 1 1 1 1 1 1 1 1 0.95871073007583618 1 
		1 1 1 1 1 0.99998927116394043 1 1 1 1 1 1 1 0.73699945211410522 1 1 1 0.55828624963760376 
		0.97814297676086426 1 1 1 0.60790169239044189 0.66016572713851929 0.71306103467941284 
		0.76475602388381958 1 1;
	setAttr -s 58 ".kiy[19:57]"  0 0 0 0 0 0 0 0 0 -0.28438326716423035 
		0 0 0 0 0 0 0.0046350820921361446 0 0 0 0 0 0 0 0.67589342594146729 0 0 0 0.82964843511581421 
		0.20793315768241882 0 0 0 0.79401230812072754 0.75112003087997437 0.70110189914703369 
		0.64431989192962646 0 0;
	setAttr -s 58 ".kox[17:57]"  0.80726420879364014 1 1 1 1 1 1 1 1 1 1 
		0.95871067047119141 1 1 1 1 1 1 0.99998927116394043 1 1 1 1 1 1 1 0.73699945211410522 
		1 1 1 0.55828624963760376 0.97814303636550903 1 1 1 0.60790169239044189 0.66016566753387451 
		0.71306103467941284 0.76475602388381958 1 1;
	setAttr -s 58 ".koy[17:57]"  -0.59019017219543457 0 0 0 0 0 0 0 0 0 
		0 -0.28438326716423035 0 0 0 0 0 0 0.0046350820921361446 0 0 0 0 0 0 0 0.67589336633682251 
		0 0 0 0.82964837551116943 0.20793315768241882 0 0 0 0.79401224851608276 0.75111997127532959 
		0.70110189914703369 0.64431995153427124 0 0;
createNode animCurveTU -n "R_Ball_Shoulder_Control_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  96 1 192 1 201 1 202 1 214 1 226 1 238 1
		 250 1 260 1 332 1 356 1 365 1 366 1 390 1 414 1 423 1 429 1 432 1 448 1 457 1 458 1
		 460 1 482 1 492 1 511 1 575 1 585 1 586 1 587 1 588 1 589 1 598 1 599 1 601 1 603 1
		 604 1 605 1 606 1 608 1 609 1 613 1 616 1 618 1 623 1 632 1 633 1 668 1 669 1 670 1
		 671 1 672 1 673 1 674 1 693 1;
	setAttr -s 54 ".kit[0:53]"  9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 1 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 54 ".kix[14:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[14:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_Ball_Shoulder_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 62 ".ktv[0:61]"  96 0 120 5.5647147098816472 192 0 201 0
		 202 0 214 0 226 0 238 0 250 0 260 0 332 0 356 0 365 0 366 0 378 10.336827060770753
		 390 0 402 10.336827060770753 414 0 423 0 424 2.0268872565854101 429 2.0268872565854101
		 432 66.190052003200165 448 2.0268872565854101 457 2.0268872565854101 458 0 460 0
		 475 -7.0055627338312423 477 -7.0055627338312423 482 -7.0055627338312423 492 -7.0055627338312423
		 511 -0.34042339681220063 575 -0.34042339681220063 585 -0.34042339681220063 586 -0.089261379675576694
		 587 0 588 0 589 0 598 0 599 -7.0055627338312423 601 0 603 -0.34042339681220063 604 -0.72857852431844905
		 605 -1.2288443199604238 606 -1.8162665069771875 608 -3.1530434450645117 609 -3.8525512151637442
		 613 -6.2769842095127908 616 -6.2769842095127908 618 -7.0055627338312423 623 -7.0055627338312423
		 632 -7.0055627338312423 633 0 645 0.068786830114232131 654 0.0097462158009615652
		 668 0.0097462158009615652 669 0 670 0.015803235540418088 671 0.028979819428644388
		 672 0.039767386700419162 673 0.048405431064114629 674 0.055133052628193138 693 0;
	setAttr -s 62 ".kit[17:61]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 62 ".kot[15:61]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 62 ".kix[17:61]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99746793508529663 
		1 1 1 1 1 1 0.99486541748046875 0.98312610387802124 0.97502094507217407 0.9657517671585083 
		0.96187770366668701 0.96741783618927002 1 1 1 1 1 0.99997407197952271 1 1 1 1 0.9999815821647644 
		0.99998742341995239 0.99999165534973145 0.99999481439590454 1 1;
	setAttr -s 62 ".kiy[17:61]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.071117036044597626 
		0 0 0 0 0 0 -0.10120641440153122 -0.18292930722236633 -0.22211278975009918 -0.25946745276451111 
		-0.27348008751869202 -0.25318509340286255 0 0 0 0 0 0.0072031533345580101 0 0 0 0 
		0.0060693607665598392 0.0050189383327960968 0.0040685189887881279 0.0032181362621486187 
		0 0;
	setAttr -s 62 ".kox[15:61]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99746799468994141 
		1 1 1 1 1 1 0.99486541748046875 0.98312604427337646 0.97502094507217407 0.96575188636779785 
		0.96187764406204224 0.96741789579391479 1 1 1 1 1 0.99997413158416748 1 1 1 1 0.9999815821647644 
		0.99998736381530762 0.99999165534973145 0.99999481439590454 1 1;
	setAttr -s 62 ".koy[15:61]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.071117036044597626 
		0 0 0 0 0 0 -0.10120642185211182 -0.18292930722236633 -0.22211280465126038 -0.2594674825668335 
		-0.27348008751869202 -0.25318509340286255 0 0 0 0 0 0.0072031538002192974 0 0 0 0 
		0.0060693612322211266 0.0050189383327960968 0.0040685189887881279 0.0032181364949792624 
		0 0;
createNode animCurveTA -n "R_Ball_Shoulder_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 62 ".ktv[0:61]"  96 0 120 -21.1035922512926 192 0 201 0 202 0
		 214 0 226 0 238 0 250 0 260 0 332 0 356 0 365 0 366 21.251250064792835 378 -31.102569225463274
		 390 21.251250064792835 402 -31.102569225463274 414 21.251250064792835 423 21.251250064792835
		 424 12.7779255537036 429 12.7779255537036 432 12.7779255537036 448 12.7779255537036
		 457 12.7779255537036 458 21.251250064792835 460 21.251250064792835 475 20.113989229516644
		 477 20.113989229516644 482 20.113989229516644 492 20.113989229516644 511 21.195986810245621
		 575 21.195986810245621 585 21.195986810245621 586 21.236759655518856 587 21.251250064792835
		 588 21.251250064792835 589 21.251250064792835 598 21.251250064792835 599 20.113989229516644
		 601 21.251250064792835 603 21.195986810245621 604 21.132974937924114 605 21.051763375309104
		 606 20.956403120544657 608 20.739394992154701 609 20.625839119324741 613 20.232264356385365
		 616 20.232264356385365 618 20.113989229516644 623 20.113989229516644 632 20.113989229516644
		 633 0 645 -0.14153520829231464 654 -0.15706318815882972 668 -0.15706318815882972
		 669 0 670 -0.032121228491489864 671 -0.058190838619225832 672 -0.078913546410378274
		 673 -0.094997754067463983 674 -0.1071510144355783 693 0;
	setAttr -s 62 ".kit[17:61]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 62 ".kot[15:61]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 62 ".kix[17:61]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99993306398391724 
		1 1 1 1 1 1 0.99986368417739868 0.99954414367675781 0.99931687116622925 0.99905019998550415 
		0.99893659353256226 0.99909865856170654 1 1 1 1 1 0.99989014863967896 0.99999773502349854 
		1 1 1 0.99992573261260986 0.99995201826095581 0.99997031688690186 0.99998247623443604 
		1 1;
	setAttr -s 62 ".kiy[17:61]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.011573445983231068 
		0 0 0 0 0 0 -0.016512071713805199 -0.030192086473107338 -0.036955572664737701 -0.043573427945375443 
		-0.046106357127428055 -0.042447242885828018 0 0 0 0 0 -0.014819903299212456 -0.0021681101061403751 
		0 0 0 -0.012186462990939617 -0.0097996145486831665 -0.0077087110839784145 -0.0059138927608728409 
		0 0;
	setAttr -s 62 ".kox[15:61]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99993306398391724 
		1 1 1 1 1 1 0.99986368417739868 0.99954414367675781 0.99931693077087402 0.99905025959014893 
		0.99893653392791748 0.99909871816635132 1 1 1 1 1 0.99989020824432373 0.99999767541885376 
		1 1 1 0.99992573261260986 0.99995201826095581 0.99997031688690186 0.99998247623443604 
		1 1;
	setAttr -s 62 ".koy[15:61]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.011573445051908493 
		0 0 0 0 0 0 -0.016512071713805199 -0.030192086473107338 -0.036955572664737701 -0.043573427945375443 
		-0.046106357127428055 -0.042447242885828018 0 0 0 0 0 -0.014819905161857605 -0.0021681101061403751 
		0 0 0 -0.012186462059617043 -0.0097996154800057411 -0.0077087110839784145 -0.0059138922952115536 
		0 0;
createNode animCurveTA -n "R_Ball_Shoulder_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 62 ".ktv[0:61]"  96 0 120 8.1639592028074652 192 0 201 0
		 202 0 214 0 226 0 238 0 250 0 260 0 332 0 356 0 365 0 366 0 378 -19.447473769814689
		 390 0 402 -19.447473769814689 414 0 423 0 424 -50.415877401276028 429 -50.415877401276028
		 432 -50.415877401276028 448 -50.415877401276028 457 -50.415877401276028 458 0 460 0
		 475 -19.663520306602162 477 -19.663520306602162 482 -19.663520306602162 492 -19.663520306602162
		 511 -0.95551529982494121 575 -0.95551529982494121 585 -0.95551529982494121 586 -0.2505427498878649
		 587 0 588 0 589 0 598 0 599 -19.663520306602162 601 0 603 -0.95551529982494121 604 -2.0450061118866247
		 605 -3.4491740574250618 606 -5.097976379495746 608 -8.8501004366451514 609 -10.813509482366445
		 613 -17.618514194715534 616 -17.618514194715534 618 -19.663520306602162 623 -19.663520306602162
		 632 -19.663520306602162 633 0 645 -25.920021047223706 654 -3.5508170517213435 668 -3.5508170517213435
		 669 0 670 -0.50998530801495034 671 -1.9200290249800416 672 -4.0500032886287043 673 -6.7199615113813529
		 674 -9.7500559823146329 693 0;
	setAttr -s 62 ".kit[17:61]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 62 ".kot[15:61]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 62 ".kix[17:61]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.98055785894393921 
		1 1 1 1 1 1 0.96156901121139526 0.88639295101165771 0.84249788522720337 0.79842144250869751 
		0.78161591291427612 0.80592352151870728 1 1 1 1 1 1 1 1 1 1 0.9277946949005127 0.8032984733581543 
		0.70523160696029663 0.64213806390762329 1 1;
	setAttr -s 62 ".kiy[17:61]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.19623033702373505 
		0 0 0 0 0 0 -0.2745632529258728 -0.46293351054191589 -0.53869962692260742 -0.60209888219833374 
		-0.62375998497009277 -0.59201967716217041 0 0 0 0 0 0 0 0 0 0 -0.3730911910533905 
		-0.5955767035484314 -0.70897698402404785 -0.76658898591995239 0 0;
	setAttr -s 62 ".kox[15:61]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.98055779933929443 
		1 1 1 1 1 1 0.96156901121139526 0.88639301061630249 0.84249788522720337 0.79842150211334229 
		0.78161591291427612 0.80592352151870728 1 1 1 1 1 1 1 1 1 1 0.92779475450515747 0.8032984733581543 
		0.70523160696029663 0.64213812351226807 1 1;
	setAttr -s 62 ".koy[15:61]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.19623033702373505 
		0 0 0 0 0 0 -0.27456328272819519 -0.46293351054191589 -0.53869962692260742 -0.60209894180297852 
		-0.62375998497009277 -0.59201961755752563 0 0 0 0 0 0 0 0 0 0 -0.3730911910533905 
		-0.5955767035484314 -0.70897698402404785 -0.76658904552459717 0 0;
createNode animCurveTU -n "R_Ball_Shoulder_Control_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  96 1 192 1 201 1 202 1 214 1 226 1 238 1
		 250 1 260 1 332 1 356 1 365 1 366 1 390 1 414 1 423 1 429 1 432 1 448 1 457 1 458 1
		 460 1 482 1 492 1 511 1 575 1 585 1 586 1 587 1 588 1 589 1 598 1 599 1 601 1 603 1
		 604 1 605 1 606 1 608 1 609 1 613 1 616 1 618 1 623 1 632 1 633 1 668 1 669 1 670 1
		 671 1 672 1 673 1 674 1 693 1;
	setAttr -s 54 ".kit[14:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[13:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[14:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[14:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[13:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[13:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_Ball_Shoulder_Control_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  96 1 192 1 201 1 202 1 214 1 226 1 238 1
		 250 1 260 1 332 1 356 1 365 1 366 1 390 1 414 1 423 1 429 1 432 1 448 1 457 1 458 1
		 460 1 482 1 492 1 511 1 575 1 585 1 586 1 587 1 588 1 589 1 598 1 599 1 601 1 603 1
		 604 1 605 1 606 1 608 1 609 1 613 1 616 1 618 1 623 1 632 1 633 1 668 1 669 1 670 1
		 671 1 672 1 673 1 674 1 693 1;
	setAttr -s 54 ".kit[14:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[13:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[14:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[14:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[13:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[13:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_Ball_Shoulder_Control_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  96 1 192 1 201 1 202 1 214 1 226 1 238 1
		 250 1 260 1 332 1 356 1 365 1 366 1 390 1 414 1 423 1 429 1 432 1 448 1 457 1 458 1
		 460 1 482 1 492 1 511 1 575 1 585 1 586 1 587 1 588 1 589 1 598 1 599 1 601 1 603 1
		 604 1 605 1 606 1 608 1 609 1 613 1 616 1 618 1 623 1 632 1 633 1 668 1 669 1 670 1
		 671 1 672 1 673 1 674 1 693 1;
	setAttr -s 54 ".kit[14:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[13:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[14:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[14:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[13:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[13:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_Elbow_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 67 ".ktv[0:66]"  1 -48.834119171963714 42 -89.982808926879912
		 96 -102.74271168327515 192 -48.834119171963714 201 -48.834119171963714 202 -95.816167262114533
		 204 -81.170371315686126 208 -56.287760029709382 214 -38.739083730668632 217 -49.130595327996033
		 220 -70.459378180764475 226 -95.816167262114533 232 -77.36868361505519 238 -38.928728288410696
		 244 -71.087052944250289 247 -88.227153533367513 250 -95.816167262114533 260 -95.816167262114533
		 285 -102.47468261098344 309 -108.02531344094078 356 -95.816167262114533 365 -95.816167262114533
		 366 -94.43884786075435 390 -94.43884786075435 414 -94.43884786075435 423 -94.43884786075435
		 424 0 429 0 432 -69.259776634355049 448 0 457 0 458 -94.43884786075435 460 -94.43884786075435
		 468 -63.299662307216842 475 -69.529775293658204 477 -69.529775293658204 482 -69.529775293658204
		 492 -69.529775293658204 511 -89.573300004931582 575 -89.573300004931582 585 -89.573300004931582
		 586 -93.100762899165417 587 -94.43884786075435 588 -94.43884786075435 589 -94.43884786075435
		 598 -94.43884786075435 599 -69.529775293658204 608 -64.637630337929423 609 -63.299662307216842
		 613 -67.077681455233758 616 -67.077681455233758 618 -69.529775293658204 623 -69.529775293658204
		 632 -69.529775293658204 633 -48.834119171963714 639 -4.5125764221954974 645 -22.306305030803621
		 648 -38.463382799156761 654 -1.8883329963921096 668 -1.8883329963921096 669 -48.834119171963714
		 670 -39.101062002824889 671 -29.087028416451528 672 -19.707204253516696 673 -11.875364747327428
		 674 -6.5055685832158785 693 -48.834119171963714;
	setAttr -s 67 ".kit[24:66]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 67 ".kot[23:66]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 67 ".kix[24:66]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.70041090250015259 
		1 1 1 1 0.82574504613876343 0.96759426593780518 1 1 1 1 1 1 0.24893657863140106 1 
		0.53476321697235107 1 1 1 1 0.23501938581466675 0.23905739188194275 0.26730901002883911 
		0.34011247754096985 1 1;
	setAttr -s 67 ".kiy[24:66]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.71373987197875977 
		0 0 0 0 0.56404358148574829 0.25250992178916931 0 0 0 0 0 0 0.96851980686187744 0 
		-0.8450019359588623 0 0 0 0 0.97199064493179321 0.97100549936294556 0.96361088752746582 
		0.94038474559783936 0 0;
	setAttr -s 67 ".kox[23:66]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.70041090250015259 
		1 1 1 1 0.82574498653411865 0.96759426593780518 1 1 1 1 1 1 0.24893660843372345 1 
		0.53476321697235107 1 1 1 1 0.23501938581466675 0.23905737698078156 0.26730901002883911 
		0.34011244773864746 1 1;
	setAttr -s 67 ".koy[23:66]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.71373987197875977 
		0 0 0 0 0.56404358148574829 0.2525099515914917 0 0 0 0 0 0 0.96851986646652222 0 
		-0.8450019359588623 0 0 0 0 0.97199070453643799 0.97100543975830078 0.96361088752746582 
		0.94038474559783936 0 0;
createNode animCurveTA -n "R_Wrist_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 58 ".ktv[0:57]"  96 0 120 -1.2023138321586915 192 0 201 0
		 202 88.920230917005341 214 88.920230917005341 226 88.920230917005341 238 88.920230917005341
		 250 88.920230917005341 260 88.920230917005341 332 88.920230917005341 356 88.920230917005341
		 365 88.920230917005341 366 0 378 -24.037886601880377 390 0 402 -24.037886601880377
		 414 0 423 0 429 0 432 0 448 0 457 0 458 0 460 0 472 0 482 0 492 0 511 0 575 0 585 0
		 586 0 587 0 588 0 589 0 598 0 599 0 601 0 603 0 604 0 605 0 606 0 608 0 609 0 613 0
		 616 0 618 0 623 0 632 0 633 0 668 0 669 0 670 0 671 0 672 0 673 0 674 0 693 0;
	setAttr -s 58 ".kit[17:57]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 58 ".kot[15:57]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 58 ".kix[17:57]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 58 ".kiy[17:57]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 58 ".kox[15:57]"  0.36919459700584412 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 58 ".koy[15:57]"  -0.9293520450592041 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_Wrist_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 60 ".ktv[0:59]"  1 3.139788262021185 96 3.139788262021185
		 120 -0.20282732432495806 192 3.139788262021185 201 3.139788262021185 202 0 214 0
		 226 0 238 0 250 0 260 0 332 0 356 0 365 0 366 0 378 -7.8175003380759822 390 0 402 -7.8175003380759822
		 414 0 423 0 424 -1.1477366974244043 429 -1.1477366974244043 432 -4.6061136998481995
		 448 -1.1477366974244043 457 -1.1477366974244043 458 0 460 0 472 0 482 0 492 0 511 0
		 575 0 585 0 586 0 587 0 588 0 589 0 598 0 599 0 601 0 603 0 604 0 605 0 606 0 608 0
		 609 0 613 0 616 0 618 0 623 0 632 0 633 3.139788262021185 668 3.139788262021185 669 3.139788262021185
		 670 3.139788262021185 671 3.139788262021185 672 3.139788262021185 673 3.139788262021185
		 674 3.139788262021185 693 3.139788262021185;
	setAttr -s 60 ".kit[18:59]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 60 ".kot[16:59]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 60 ".kix[18:59]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 60 ".kiy[18:59]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 60 ".kox[16:59]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 60 ".koy[16:59]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_Drill_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 58 ".ktv[0:57]"  48 0 72 -351.34679540882763 120 -351.34679540882763
		 166 360 192 0 201 0 202 0 214 0 226 0 238 0 250 0 260 0 332 0 356 0 365 0 366 0 390 0
		 414 0 423 0 429 720 436 0 448 0 457 0 458 0 460 0 472 0 482 0 492 0 511 0 575 0 585 0
		 586 0 587 0 588 0 589 0 598 0 599 0 601 0 603 0 604 0 605 0 606 0 608 0 609 0 613 0
		 616 0 618 0 623 0 632 0 633 0 668 0 669 0 670 0 671 0 672 0 673 0 674 0 693 0;
	setAttr -s 58 ".kit[17:57]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 58 ".kot[16:57]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 58 ".kix[17:57]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 58 ".kiy[17:57]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 58 ".kox[16:57]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 58 ".koy[16:57]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_Shoulder_Pad_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 81 ".ktv[0:80]"  1 -20.470366798317485 24 28.622291959751159
		 96 -20.470366798317485 120 -47.307334538217908 192 -20.470366798317485 201 -20.470366798317485
		 202 -110.8093957736906 214 -51.555759054735191 226 -110.8093957736906 238 -51.555759054735191
		 250 -110.8093957736906 260 -110.8093957736906 296 -118.11330754742571 309 -114.63381215621814
		 332 -110.8093957736906 356 -110.8093957736906 365 -110.8093957736906 366 -49.60862700414701
		 367 -44 368 -33 370 -5 372 9.7608986950456469 378 35.520803121921737 384 -6.9723454127194815
		 386 -31 387 -42.229910173991136 388 -49.519102459053443 390 -49.60862700414701 391 -47.179731622477426
		 392 -39.537004712042062 393 -26 396 9.7875825907543845 402 35.465461147881854 408 -7.0316631999726829
		 410 -29.999999999999996 411 -39.846136327692811 412 -48.262392519990101 413 -50.595490130058558
		 414 -49.60862700414701 423 -49.60862700414701 424 0 429 0 432 0 448 0 457 0 458 -49.60862700414701
		 460 -13.586419388465519 468 -15.148654079120103 475 -16.74125655054544 482 -16.704372163148559
		 492 -16.704372163148559 511 33.72883735881863 575 -13.751649241699294 585 -13.751649241699294
		 586 -13.630545039782147 587 -13.586419388465519 588 -31.597523196306266 589 -49.60862700414701
		 598 -49.60862700414701 599 -16.704372163148559 601 -13.586419388465519 603 -13.751649241699294
		 604 -113.91072571046087 618 -53.131647389163874 623 -16.704372163148559 632 -16.704372163148559
		 633 -20.470366798317485 639 -106.48394156016033 645 -97.326415976698286 648 -84.150210662466421
		 652 -88.49100867153679 654 -16.645568001495857 656 -21.500564549013543 668 -21.500564549013543
		 669 -20.470366798317485 670 -34.687430242298312 671 -52.8132794523667 672 -71.950771165029025
		 673 -89.205294345803637 674 -101.68189316916637 693 -20.470366798317485;
	setAttr -s 81 ".kit[21:80]"  9 9 9 16 18 18 16 18 
		18 16 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 81 ".kot[21:80]"  9 9 9 16 18 18 16 18 
		18 16 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 81 ".kix[38:80]"  1 1 1 1 1 1 1 1 1 0.99614167213439941 1 
		1 1 1 1 1 0.9994017481803894 1 0.13139615952968597 1 1 0.45463642477989197 1 0.99465423822402954 
		1 0.4228568971157074 1 1 0.206737220287323 1 0.69329613447189331 1 1 1 1 1 1 0.14604407548904419 
		0.12709447741508484 0.13008363544940948 0.15856377780437469 1 1;
	setAttr -s 81 ".kiy[38:80]"  0 0 0 0 0 0 0 0 0 -0.087759755551815033 
		0 0 0 0 0 0 0.034584693610668182 0 -0.99132996797561646 0 0 0.89067703485488892 0 
		-0.10326121002435684 0 0.9061964750289917 0 0 -0.97839647531509399 0 0.72065287828445435 
		0 0 0 0 0 0 -0.98927807807922363 -0.99189060926437378 -0.99150300025939941 -0.98734873533248901 
		0 0;
createNode animCurveTA -n "L_Shoulder_Pad_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 65 ".ktv[0:64]"  1 9.2054912905982036 24 10.114237923344325
		 96 9.2054912905982036 192 9.2054912905982036 201 9.2054912905982036 202 6.3600524906302667
		 214 6.3600524906302667 226 6.3600524906302667 238 6.3600524906302667 250 6.3600524906302667
		 260 6.3600524906302667 296 6.3600524906302667 309 12.211483991206403 332 6.3600524906302667
		 356 6.3600524906302667 365 6.3600524906302667 366 18.826640281510119 369 5.0669198412742453
		 372 13.403968535034675 378 45.458769376880113 384 11.844562843301521 386 3.0295519119519168
		 390 18.826640281510119 393 6.2493214037001819 396 12.992045821984441 402 43.650003097253943
		 408 13.826462082590167 410 2.5767640095044997 414 18.826640281510119 423 18.826640281510119
		 424 2.8975077544554102 429 2.8975077544554102 432 20.284281791934436 448 2.8975077544554102
		 457 2.8975077544554102 458 18.826640281510119 460 18.826640281510119 468 1.3151279208443702
		 475 37.271511731806804 482 27.605646371838816 492 27.605646371838816 511 41.695428405778117
		 575 16.090438293434307 585 16.090438293434307 586 18.074151385992948 587 18.826640281510119
		 588 18.826640281510119 589 18.826640281510119 598 18.826640281510119 599 27.605646371838816
		 601 18.826640281510119 603 16.090438293434307 604 23.119532885393085 618 35.355235822041216
		 623 27.605646371838816 632 27.605646371838816 633 9.2054912905982036 668 9.2054912905982036
		 669 9.2054912905982036 670 9.2054912905982036 671 9.2054912905982036 672 9.2054912905982036
		 673 9.2054912905982036 674 9.2054912905982036 693 9.2054912905982036;
	setAttr -s 65 ".kit[28:64]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 65 ".kot[22:64]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 65 ".kix[28:64]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.86763107776641846 
		1 1 1 1 1 0.63833832740783691 1 0.8806501030921936 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 65 ".kiy[28:64]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49720850586891174 
		0 0 0 0 0 -0.76975584030151367 0 0.47376739978790283 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 65 ".kox[22:64]"  1 1 0.49813178181648254 1 0.42163628339767456 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.86763107776641846 1 1 1 1 1 0.63833838701248169 
		1 0.88065004348754883 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 65 ".koy[22:64]"  0 0 0.86710137128829956 0 -0.90676498413085938 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49720853567123413 0 0 0 0 0 -0.76975584030151367 
		0 0.47376736998558044 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_Ball_Shoulder_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 53 ".ktv[0:52]"  96 0 120 14.205217266011093 192 0 201 0
		 202 0 214 0 226 0 238 0 250 0 260 0 296 0 310 -2.7420540636841575 332 0 356 0 365 0
		 366 14.044264749838261 378 -1.0459243004523389 390 14.044264749838261 402 -1.0459243004523389
		 414 14.044264749838261 423 14.044264749838261 429 14.044264749838261 432 14.044264749838261
		 448 14.044264749838261 457 14.044264749838261 458 14.044264749838261 460 14.044264749838261
		 472 14.044264749838261 482 14.044264749838261 492 14.044264749838261 511 25.019176497935732
		 575 14.044264749838261 585 14.044264749838261 586 14.044264749838261 587 14.044264749838261
		 588 14.044264749838261 589 14.044264749838261 598 14.044264749838261 599 14.044264749838261
		 601 14.044264749838261 603 14.044264749838261 604 8.7906136443550142 623 14.044264749838261
		 632 14.044264749838261 633 0 668 0 669 0 670 0 671 0 672 0 673 0 674 0 693 0;
	setAttr -s 53 ".kit[19:52]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 53 ".kot[17:52]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 53 ".kix[19:52]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 53 ".kiy[19:52]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 53 ".kox[17:52]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 53 ".koy[17:52]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_Ball_Shoulder_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 52 ".ktv[0:51]"  96 0 120 17.781420000436952 192 0 201 0
		 202 0 214 0 226 0 238 0 250 0 260 0 296 0 332 0 356 0 365 0 366 19.547828418117895
		 378 -28.915522087275743 390 19.547828418117895 402 -28.915522087275743 414 19.547828418117895
		 423 19.547828418117895 429 19.547828418117895 432 19.547828418117895 448 19.547828418117895
		 457 19.547828418117895 458 19.547828418117895 460 19.547828418117895 472 19.547828418117895
		 482 19.547828418117895 492 19.547828418117895 511 29.061455687620867 575 19.547828418117895
		 585 19.547828418117895 586 19.547828418117895 587 19.547828418117895 588 19.547828418117895
		 589 19.547828418117895 598 19.547828418117895 599 19.547828418117895 601 19.547828418117895
		 603 19.547828418117895 604 -1.4538267479649412 623 19.547828418117895 632 19.547828418117895
		 633 0 668 0 669 0 670 0 671 0 672 0 673 0 674 0 693 0;
	setAttr -s 52 ".kit[18:51]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 52 ".kot[16:51]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 52 ".kix[18:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".kiy[18:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 52 ".kox[16:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".koy[16:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_Ball_Shoulder_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  96 0 120 40.290641893306713 192 0 201 0
		 202 0 214 0 226 0 238 0 250 0 260 0 296 0 310 -5.7835114072054834 318 5.2815467108980316
		 332 0 356 0 365 0 366 29.149892645960399 378 -9.1926369972080568 390 29.149892645960399
		 402 -9.1926369972080568 414 29.149892645960399 423 29.149892645960399 429 29.149892645960399
		 432 29.149892645960399 448 29.149892645960399 457 29.149892645960399 458 29.149892645960399
		 460 29.149892645960399 472 29.149892645960399 482 29.149892645960399 492 29.149892645960399
		 511 68.967153995526743 575 29.149892645960399 585 29.149892645960399 586 29.149892645960399
		 587 29.149892645960399 588 29.149892645960399 589 29.149892645960399 598 29.149892645960399
		 599 29.149892645960399 601 29.149892645960399 603 29.149892645960399 604 43.732007378511611
		 623 29.149892645960399 632 29.149892645960399 633 0 668 0 669 0 670 0 671 0 672 0
		 673 0 674 0 693 0;
	setAttr -s 54 ".kit[20:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[18:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[20:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[20:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[18:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[18:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_Elbow_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 74 ".ktv[0:73]"  1 -12.596599209411652 24 -88.162788699872991
		 48 -47.470145244582724 96 -43.738467791412674 120 -74.756022967103803 168 -40.186950380257393
		 192 -12.596599209411652 201 -12.596599209411652 202 -19.101301621773548 205 -33.010951842256901
		 208 -56.974983998215492 214 -83.804889918159233 217 -71.090610564421226 221 -52.233083332481577
		 226 -19.101301621773548 229 -32.969369446468704 232 -59.000588772469854 235 -77.891883208614374
		 238 -83.804889918159233 244 -61.351590251116498 250 -19.101301621773548 260 -19.101301621773548
		 283 -9.6951757385698407 309 -4.0668133491900678 332 -19.101301621773548 356 -19.101301621773548
		 365 -19.101301621773548 366 -34.792246693713828 378 -68.89186541604046 390 -34.792246693713828
		 402 -90.117674175468281 414 -34.792246693713828 423 -34.792246693713828 429 -34.792246693713828
		 432 -18.727504431743164 448 -34.792246693713828 457 -34.792246693713828 458 -34.792246693713828
		 460 -115.9311204436364 472 -60.21831067105412 482 -60.21831067105412 492 -60.21831067105412
		 511 -111.80418661006965 575 -111.80418661006965 585 -111.80418661006965 586 -114.83485438556579
		 587 -115.9311204436364 588 -75.361683568675119 589 -34.792246693713828 598 -34.792246693713828
		 599 -60.21831067105412 601 -115.9311204436364 603 -111.80418661006965 604 -47.756921285948678
		 616 -60.21831067105412 618 -60.21831067105412 623 -60.21831067105412 632 -60.21831067105412
		 633 -12.596599209411652 639 -3.6327030408065859 645 -36.019783196740285 648 -52.581655280431768
		 652 -32.057406657077863 654 -25.075400626939189 656 -22.108175543519891 658 -11.904864094066111
		 668 -11.904864094066111 669 -12.596599209411652 670 -8.8201903514272217 671 -6.2886417601497504
		 672 -4.7531899599915688 673 -3.9647067336659401 674 -43.827550193687934 693 -12.596599209411652;
	setAttr -s 74 ".kit[31:73]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 74 ".kot[29:73]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 74 ".kix[31:73]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.75656092166900635 
		1 0.05874287337064743 1 1 0.087926216423511505 1 0.35982173681259155 1 1 1 1 1 0.47012081742286682 
		1 0.40192943811416626 1 0.46187788248062134 0.69246041774749756 0.58699256181716919 
		1 1 1 0.6035306453704834 0.7612687349319458 0.89914846420288086 1 1 1;
	setAttr -s 74 ".kiy[31:73]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.65392321348190308 
		0 0.99827319383621216 0 0 -0.99612700939178467 0 0.93302106857299805 0 0 0 0 0 0.8826020359992981 
		0 -0.91567069292068481 0 0.886943519115448 0.72145587205886841 0.80959224700927734 
		0 0 0 0.79733967781066895 0.64843654632568359 0.43764364719390869 0 0 0;
	setAttr -s 74 ".kox[29:73]"  0.40044593811035156 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 0.75656098127365112 1 0.05874287337064743 1 1 0.087926216423511505 1 0.35982173681259155 
		1 1 1 1 1 0.47012084722518921 1 0.40192943811416626 1 0.46187788248062134 0.69246041774749756 
		0.58699256181716919 1 1 1 0.60353070497512817 0.7612687349319458 0.89914846420288086 
		1 1 1;
	setAttr -s 74 ".koy[29:73]"  -0.91632038354873657 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 -0.65392321348190308 0 0.99827319383621216 0 0 -0.99612700939178467 0 
		0.93302106857299805 0 0 0 0 0 0.88260209560394287 0 -0.91567069292068481 0 0.886943519115448 
		0.72145587205886841 0.80959224700927734 0 0 0 0.79733973741531372 0.64843654632568359 
		0.43764364719390869 0 0 0;
createNode animCurveTA -n "L_Wrist_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 60 ".ktv[0:59]"  1 -48.631839234581179 24 -41.172552398986454
		 72 -35.311839787746131 96 -48.631839234581179 120 13.722641935904727 192 -48.631839234581179
		 201 -48.631839234581179 202 -85.38792022854922 214 -85.38792022854922 226 -85.38792022854922
		 238 -85.38792022854922 250 -85.38792022854922 260 -85.38792022854922 332 -85.38792022854922
		 356 -85.38792022854922 365 -85.38792022854922 366 -15.028256719896616 390 -15.028256719896616
		 414 -15.028256719896616 423 -15.028256719896616 429 -15.028256719896616 432 -15.028256719896616
		 448 -15.028256719896616 457 -15.028256719896616 458 -15.028256719896616 460 -15.028256719896616
		 472 -15.028256719896616 482 -15.028256719896616 492 -15.028256719896616 511 -15.028256719896616
		 575 -15.028256719896616 585 -15.028256719896616 586 -15.028256719896616 587 -15.028256719896616
		 588 -15.028256719896616 589 -15.028256719896616 598 -15.028256719896616 599 -15.028256719896616
		 601 -15.028256719896616 603 -15.028256719896616 604 -15.028256719896616 605 -15.028256719896616
		 606 -15.028256719896616 608 -15.028256719896616 609 -15.028256719896616 613 -15.028256719896616
		 616 -15.028256719896616 618 -15.028256719896616 623 -15.028256719896616 632 -15.028256719896616
		 633 -48.631839234581179 652 -65.735507574784521 668 -65.735507574784521 669 -48.631839234581179
		 670 -51.044461683839621 671 -53.219911439714636 672 -55.170204980273049 673 -56.907662398531812
		 674 -58.444564815009258 693 -48.631839234581179;
	setAttr -s 60 ".kit[18:59]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 60 ".kot[17:59]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 60 ".kix[18:59]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 0.68553167581558228 1 1 1 0.72105717658996582 0.75665426254272461 
		0.79142081737518311 0.82470542192459106 1 1;
	setAttr -s 60 ".kiy[18:59]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 -0.72804278135299683 0 0 0 -0.69287550449371338 -0.65381515026092529 
		-0.61127173900604248 -0.56556242704391479 0 0;
	setAttr -s 60 ".kox[17:59]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 0.68553173542022705 1 1 1 0.72105717658996582 0.75665426254272461 
		0.79142081737518311 0.82470548152923584 1 1;
	setAttr -s 60 ".koy[17:59]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 -0.72804278135299683 0 0 0 -0.69287550449371338 -0.65381515026092529 
		-0.61127173900604248 -0.56556242704391479 0 0;
createNode animCurveTA -n "L_Wrist_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 59 ".ktv[0:58]"  1 -16.287604454460112 24 -24.748588061066883
		 96 -16.287604454460112 120 -37.01588980265354 192 -16.287604454460112 201 -16.287604454460112
		 202 0 214 0 226 0 238 0 250 0 260 0 332 0 356 0 365 0 366 0 390 0 414 0 423 0 429 0
		 432 0 448 0 457 0 458 0 460 0 472 0 482 0 492 0 511 0 575 0 585 0 586 0 587 0 588 0
		 589 0 598 0 599 0 601 0 603 0 604 0 605 0 606 0 608 0 609 0 613 0 616 0 618 0 623 0
		 632 0 633 -16.287604454460112 652 -26.128667280561718 668 -26.128667280561718 669 -16.287604454460112
		 670 -17.539033139913162 671 -18.683535824861011 672 -19.725504099339197 673 -20.66948896480881
		 674 -21.520023480953768 693 -16.287604454460112;
	setAttr -s 59 ".kit[17:58]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 59 ".kot[16:58]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 59 ".kix[17:58]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 0.87723690271377563 1 1 1 0.89378315210342407 0.90920370817184448 
		0.92331379652023315 0.93607032299041748 1 1;
	setAttr -s 59 ".kiy[17:58]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 -0.48005768656730652 0 0 0 -0.44849938154220581 -0.4163515567779541 
		-0.38404625654220581 -0.35181304812431335 0 0;
	setAttr -s 59 ".kox[16:58]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 0.87723690271377563 1 1 1 0.89378315210342407 0.90920370817184448 
		0.92331379652023315 0.93607032299041748 1 1;
	setAttr -s 59 ".koy[16:58]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 -0.48005768656730652 0 0 0 -0.44849938154220581 -0.4163515567779541 
		-0.38404625654220581 -0.35181304812431335 0 0;
createNode animCurveTU -n "L_Wrist_Control_Upper_Fingers";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 71 ".ktv[0:70]"  1 26.900000000000002 24 26.900000000000002
		 48 6.5 96 26.900000000000002 120 3 168 59.803703703703704 192 26.900000000000002
		 201 26.900000000000002 202 -38.7 205 -28.150000000000002 208 -21.600000000000005
		 211 -34.137500009564533 214 -32.1 220 -22.100000000000005 226 -38.7 232 -22.500000000000007
		 235 -26.06250006732823 238 -32.1 244 -3.5637499731325448 250 -38.7 260 -38.7 309 -50.1
		 332 -38.7 356 -38.7 365 -38.7 366 79.4 390 79.4 414 79.4 423 79.4 429 79.4 432 49.7
		 448 79.4 457 79.4 458 79.4 460 79.4 472 79.4 482 79.4 492 79.4 511 79.4 575 79.4
		 585 79.4 586 79.4 587 79.4 588 79.4 589 79.4 598 79.4 599 79.4 601 79.4 603 79.4
		 604 79.4 605 79.4 606 79.4 608 79.4 609 79.4 613 79.4 616 79.4 618 79.4 623 79.4
		 632 79.4 633 26.900000000000002 645 5.5 652 24 658 12.2 668 12.2 669 26.900000000000002
		 670 21.983517908492388 671 17.88420296317349 672 14.528125479275996 673 11.840777527735769
		 674 9.7477736307929419 693 26.900000000000002;
	setAttr -s 71 ".kit[27:70]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 71 ".kot[26:70]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 71 ".kix[27:70]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 0.007787926122546196 1 1 1 1 1 0.0092427115887403488 0.01117697823792696 
		0.013787568546831608 0.017429953441023827 1 1;
	setAttr -s 71 ".kiy[27:70]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 -0.9999697208404541 0 0 0 0 0 -0.99995726346969604 -0.99993753433227539 
		-0.99990499019622803 -0.9998481273651123 0 0;
	setAttr -s 71 ".kox[26:70]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 0.0077879265882074833 1 1 1 1 1 0.0092427106574177742 0.011176979169249535 
		0.013787568546831608 0.017429953441023827 1 1;
	setAttr -s 71 ".koy[26:70]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 -0.9999697208404541 0 0 0 0 0 -0.99995726346969604 -0.99993759393692017 
		-0.99990499019622803 -0.9998481273651123 0 0;
createNode animCurveTU -n "L_Wrist_Control_Lower_Fingers";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 69 ".ktv[0:68]"  1 27.200000000000003 24 27.200000000000003
		 48 12.600000000000001 96 27.200000000000003 168 60.7 192 27.200000000000003 201 27.200000000000003
		 202 -2.8999999999999995 203 -0.59005704827443051 205 -6.5187501098588285 208 -12.350000000000001
		 211 0.52500000000000036 214 -2.9999999999999991 220 16.187500003865807 226 -8.1 232 -2.9374999119295939
		 238 -2.9999999999999991 244 12.15 250 -2.9 260 -2.9 332 -2.9 356 -2.9 365 -2.9 366 79.4
		 390 79.4 414 79.4 423 79.4 429 79.4 432 49.7 448 79.4 457 79.4 458 79.4 460 79.4
		 472 79.4 482 79.4 492 79.4 511 79.4 575 79.4 585 79.4 586 79.4 587 79.4 588 79.4
		 589 79.4 598 79.4 599 79.4 601 79.4 603 79.4 604 79.4 605 79.4 606 79.4 608 79.4
		 609 79.4 613 79.4 616 79.4 618 79.4 623 79.4 632 79.4 633 27.200000000000003 645 5.8000000000000007
		 652 24.3 658 12.5 668 12.5 669 27.200000000000003 670 22.283517908492385 671 18.18420296317349
		 672 14.828125479275997 673 12.14077752773577 674 10.047773630792943 693 27.200000000000003;
	setAttr -s 69 ".kit[25:68]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 69 ".kot[24:68]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 69 ".kix[25:68]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 0.007787926122546196 1 1 1 1 1 0.0092427115887403488 0.01117697823792696 
		0.013787568546831608 0.017429953441023827 1 1;
	setAttr -s 69 ".kiy[25:68]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 -0.9999697208404541 0 0 0 0 0 -0.99995726346969604 -0.99993753433227539 
		-0.99990499019622803 -0.9998481273651123 0 0;
	setAttr -s 69 ".kox[24:68]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 0.0077879265882074833 1 1 1 1 1 0.0092427106574177742 0.011176979169249535 
		0.013787568546831608 0.017429953441023827 1 1;
	setAttr -s 69 ".koy[24:68]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 -0.9999697208404541 0 0 0 0 0 -0.99995726346969604 -0.99993759393692017 
		-0.99990499019622803 -0.9998481273651123 0 0;
createNode animCurveTU -n "L_Wrist_Control_Upper_Thumb_x";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 57 ".ktv[0:56]"  1 25.5 24 25.5 96 25.5 192 25.5 201 25.5
		 202 0 214 0 226 0 238 0 250 0 260 0 332 0 356 0 365 0 366 -0.89999999999999947 390 -0.89999999999999947
		 414 -0.89999999999999947 423 -0.89999999999999947 429 -0.89999999999999947 432 -0.89999999999999947
		 448 -0.89999999999999947 457 -0.89999999999999947 458 -0.89999999999999947 460 -0.89999999999999947
		 472 -0.89999999999999947 482 -0.89999999999999947 492 -0.89999999999999947 511 -0.89999999999999947
		 575 -0.89999999999999947 585 -0.89999999999999947 586 -0.89999999999999947 587 -0.89999999999999947
		 588 -0.89999999999999947 589 -0.89999999999999947 598 -0.89999999999999947 599 -0.89999999999999947
		 601 -0.89999999999999947 603 -0.89999999999999947 604 -0.89999999999999947 605 -0.89999999999999947
		 606 -0.89999999999999947 608 -0.89999999999999947 609 -0.89999999999999947 613 -0.89999999999999947
		 616 -0.89999999999999947 618 -0.89999999999999947 623 -0.89999999999999947 632 -0.89999999999999947
		 633 25.5 668 25.5 669 25.5 670 25.5 671 25.5 672 25.5 673 25.5 674 25.5 693 25.5;
	setAttr -s 57 ".kit[16:56]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 57 ".kot[15:56]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 57 ".kix[16:56]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 57 ".kiy[16:56]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 57 ".kox[15:56]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 57 ".koy[15:56]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_Wrist_Control_Upper_Thumb_Y";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 58 ".ktv[0:57]"  1 -29.700000000000003 24 -29.700000000000003
		 48 -38.900000000000006 96 -29.700000000000003 192 -29.700000000000003 201 -29.700000000000003
		 202 25.900000000000002 214 25.900000000000002 226 25.900000000000002 238 25.900000000000002
		 250 25.900000000000002 260 25.900000000000002 332 25.900000000000002 356 25.900000000000002
		 365 25.900000000000002 366 -10.5 390 -10.5 414 -10.5 423 -10.5 429 -10.5 432 -10.5
		 448 -10.5 457 -10.5 458 -10.5 460 -10.5 472 -10.5 482 -10.5 492 -10.5 511 -10.5 575 -10.5
		 585 -10.5 586 -10.5 587 -10.5 588 -10.5 589 -10.5 598 -10.5 599 -10.5 601 -10.5 603 -10.5
		 604 -10.5 605 -10.5 606 -10.5 608 -10.5 609 -10.5 613 -10.5 616 -10.5 618 -10.5 623 -10.5
		 632 -10.5 633 -29.700000000000003 668 -29.700000000000003 669 -29.700000000000003
		 670 -29.700000000000003 671 -29.700000000000003 672 -29.700000000000003 673 -29.700000000000003
		 674 -29.700000000000003 693 -29.700000000000003;
	setAttr -s 58 ".kit[17:57]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 58 ".kot[16:57]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 58 ".kix[17:57]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 58 ".kiy[17:57]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 58 ".kox[16:57]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 58 ".koy[16:57]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_Wrist_Control_Upper_Thumb_Z";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 58 ".ktv[0:57]"  1 -19.8 24 -19.8 96 -19.8 192 -19.8 201 -19.8
		 202 0 214 0 226 0 238 0 250 0 260 0 332 0 356 0 365 0 366 -28.5 390 -28.5 414 -28.5
		 423 -28.5 429 -28.5 432 -13.2 448 -28.5 457 -28.5 458 -28.5 460 -28.5 472 -28.5 482 -28.5
		 492 -28.5 511 -28.5 575 -28.5 585 -28.5 586 -28.5 587 -28.5 588 -28.5 589 -28.5 598 -28.5
		 599 -28.5 601 -28.5 603 -28.5 604 -28.5 605 -28.5 606 -28.5 608 -28.5 609 -28.5 613 -28.5
		 616 -28.5 618 -28.5 623 -28.5 632 -28.5 633 -19.8 645 12.899999999999999 668 12.899999999999999
		 669 -19.8 670 -16.480684939408761 671 -12.954640651629902 672 -9.3165800921241946
		 673 -5.6607324097564771 674 -2.0813234963851492 693 -19.8;
	setAttr -s 58 ".kit[16:57]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 58 ".kot[15:57]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 58 ".kix[16:57]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 0.013082601130008698 1 1 1 0.012172888964414597 0.011631365865468979 
		0.011424140073359013 0.011516998521983624 1 1;
	setAttr -s 58 ".kiy[16:57]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0.99991440773010254 0 0 0 0.99992597103118896 0.99993228912353516 
		0.99993473291397095 0.99993371963500977 0 0;
	setAttr -s 58 ".kox[15:57]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 0.013082601130008698 1 1 1 0.012172888033092022 0.011631366796791553 
		0.011424140073359013 0.011516998521983624 1 1;
	setAttr -s 58 ".koy[15:57]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0.99991446733474731 0 0 0 0.99992591142654419 0.99993240833282471 
		0.99993473291397095 0.99993366003036499 0 0;
createNode animCurveTU -n "L_Wrist_Control_Lower_Thumb";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 59 ".ktv[0:58]"  1 8.2000000000000028 24 8.2000000000000028
		 96 8.2000000000000028 168 28.600000000000005 192 8.2000000000000028 201 8.2000000000000028
		 202 0 214 0 226 0 238 0 250 0 260 0 332 0 356 0 365 0 366 42.6 390 42.6 414 42.6
		 423 42.6 429 42.6 432 42.6 448 42.6 457 42.6 458 42.6 460 42.6 472 42.6 482 42.6
		 492 42.6 511 42.6 575 42.6 585 42.6 586 42.6 587 42.6 588 42.6 589 42.6 598 42.6
		 599 42.6 601 42.6 603 42.6 604 42.6 605 42.6 606 42.6 608 42.6 609 42.6 613 42.6
		 616 42.6 618 42.6 623 42.6 632 42.6 633 8.2000000000000028 645 -4.3999999999999986
		 668 -4.3999999999999986 669 8.2000000000000028 670 5.3052488279960146 671 2.8916334641515196
		 672 0.91562521388154039 673 -0.6666450789974725 674 -1.8989744731706057 693 8.2000000000000028;
	setAttr -s 59 ".kit[17:58]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 59 ".kot[16:58]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 59 ".kix[17:58]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 0.013226356357336044 1 1 1 0.015696674585342407 0.018980886787176132 
		0.023412786424160004 0.029594782739877701 1 1;
	setAttr -s 59 ".kiy[17:58]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 -0.99991250038146973 0 0 0 -0.99987679719924927 -0.99981981515884399 
		-0.9997258186340332 -0.99956196546554565 0 0;
	setAttr -s 59 ".kox[16:58]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 0.013226356357336044 1 1 1 0.015696674585342407 0.018980888649821281 
		0.023412786424160004 0.02959478460252285 1 1;
	setAttr -s 59 ".koy[16:58]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99991250038146973 0 0 0 -0.99987679719924927 -0.99981981515884399 
		-0.9997258186340332 -0.99956202507019043 0 0;
createNode animCurveTA -n "Head_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 66 ".ktv[0:65]"  1 0 72 -18.766252869058121 96 0 120 0 144 0.23381901815683317
		 168 -7.7280112105736771 192 0 201 0 202 -69.655198363128306 214 -69.655198363128306
		 226 -79.521547539384343 238 -69.655198363128306 250 -69.655198363128306 260 -69.655198363128306
		 272 -95.631635055853494 284 -96.24434282985284 356 -69.655198363128306 365 -69.655198363128306
		 366 -19.593079323329402 378 -15.299488683621277 390 -19.593079323329402 395 -22.776750216054182
		 402 -19.898038687563062 407 -18.916128692183221 414 -19.593079323329402 423 -19.593079323329402
		 424 12.29215648574214 429 12.29215648574214 432 16.487969446476338 448 12.29215648574214
		 457 12.29215648574214 458 -26.170531934949185 460 16.317997495933867 463 -7.765566418832341
		 465 -5.9565477358216841 468 -15.993493998573896 472 -27.801895217043278 482 -23.607331412355798
		 492 -23.607331412355798 496 -13.487392313559216 511 -1.5218428044647061 575 -1.5218428044647061
		 585 -1.5218428044647061 586 10.073783898334964 587 16.317997495933867 588 -4.9262672195076602
		 589 -12.662013379848787 598 -12.662013379848787 599 -25.14736353659486 601 -70.689814956075082
		 605 -42.702397390696461 617 -46.339981864077757 623 -24.11268132248469 632 -24.11268132248469
		 633 0 638 14.695044453395298 654 0 656 -5.8149592212445222 668 -5.8149592212445222
		 669 0 670 5.6676982233343223 671 9.8296283440105316 672 12.626996378783755 673 14.20160786819479
		 674 14.695044453395298 693 0;
	setAttr -s 66 ".kit[24:65]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 66 ".kot[20:65]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 66 ".kix[24:65]"  1 1 1 1 1 1 1 1 1 1 1 0.60758697986602783 
		1 1 1 0.89908778667449951 1 1 1 0.25854188203811646 1 0.16256257891654968 1 1 0.12249365448951721 
		1 1 1 1 1 0.34626638889312744 1 0.90247517824172974 1 1 0.38393938541412354 0.43692570924758911 
		0.56573742628097534 0.73751682043075562 0.91762447357177734 1 1;
	setAttr -s 66 ".kiy[24:65]"  0 0 0 0 0 0 0 0 0 0 0 -0.79425311088562012 
		0 0 0 0.43776845932006836 0 0 0 0.96600008010864258 0 -0.98669832944869995 0 0 -0.99246925115585327 
		0 0 0 0 0 0.93813621997833252 0 -0.43074187636375427 0 0 0.92335838079452515 0.8994976282119751 
		0.8245854377746582 0.67532879114151001 0.39744853973388672 0 0;
	setAttr -s 66 ".kox[20:65]"  0.91204988956451416 1 0.99104154109954834 
		1 1 1 1 1 1 1 1 1 1 1 1 0.60758703947067261 1 1 1 0.89908772706985474 1 1 1 0.25854185223579407 
		1 0.16256257891654968 1 1 0.12249365448951721 1 1 1 1 1 0.34626641869544983 1 0.90247511863708496 
		1 1 0.38393938541412354 0.43692570924758911 0.56573742628097534 0.73751682043075562 
		0.91762447357177734 1 1;
	setAttr -s 66 ".koy[20:65]"  0.41007930040359497 0 0.13355386257171631 
		0 0 0 0 0 0 0 0 0 0 0 0 -0.79425317049026489 0 0 0 0.43776842951774597 0 0 0 0.96600008010864258 
		0 -0.98669832944869995 0 0 -0.99246925115585327 0 0 0 0 0 0.93813621997833252 0 -0.43074187636375427 
		0 0 0.92335838079452515 0.89949756860733032 0.82458537817001343 0.67532879114151001 
		0.39744856953620911 0 0;
createNode animCurveTA -n "Head_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 63 ".ktv[0:62]"  1 -16.163004271556609 96 -16.163004271556609
		 120 -16.163004271556609 144 -2.1389907823926384 168 12.691865745099742 192 -16.163004271556609
		 201 -16.163004271556609 202 0 214 0 226 0 232 0 234 0 238 30.192029317018797 242 -34.583985088607612
		 244 -34.583985088607612 250 0 260 0 320 0 333 -36.843185609560926 348 -36.843185609560926
		 356 0 365 0 366 26.887497305651706 378 -23.365247994521475 390 26.887497305651706
		 395 15.831601463294069 402 -18.365372247515914 407 1.8701201718159453 414 26.887497305651706
		 423 26.887497305651706 424 -53.497810776832353 429 -53.497810776832353 432 -27.211905412005237
		 448 -53.497810776832353 457 -53.497810776832353 458 26.887497305651706 460 26.887497305651706
		 472 0.077936671417160042 482 -0.026735702414275871 492 -0.026735702414275871 511 24.910298307730347
		 575 24.910298307730347 585 24.910298307730347 586 26.362362001109584 587 26.887497305651706
		 588 26.887497305651706 589 26.887497305651706 598 26.887497305651706 599 -0.026735702414275871
		 601 27.032352473008782 617 9.0505409477183711 623 -0.026735702414275871 632 -0.026735702414275871
		 633 -16.163004271556609 654 -16.163004271556609 668 -16.163004271556609 669 -16.163004271556609
		 670 -16.163004271556609 671 -16.163004271556609 672 -16.163004271556609 673 -16.163004271556609
		 674 -16.163004271556609 693 -16.163004271556609;
	setAttr -s 63 ".kit[28:62]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 63 ".kot[24:62]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 63 ".kix[28:62]"  1 1 1 1 1 1 1 1 1 0.99991357326507568 1 
		1 1 1 1 0.92391645908355713 1 1 1 1 1 1 0.88895589113235474 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 63 ".kiy[28:62]"  0 0 0 0 0 0 0 0 0 -0.013152341358363628 
		0 0 0 0 0 0.38259419798851013 0 0 0 0 0 0 -0.45799285173416138 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 63 ".kox[24:62]"  1 0.53488868474960327 1 0.53488868474960327 
		1 1 1 1 1 1 1 1 1 0.99991345405578613 1 1 1 1 1 0.9239165186882019 1 1 1 1 1 1 0.88895589113235474 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 63 ".koy[24:62]"  0 -0.84492254257202148 0 0.84492254257202148 
		0 0 0 0 0 0 0 0 0 -0.013152339495718479 0 0 0 0 0 0.38259422779083252 0 0 0 0 0 0 
		-0.45799282193183899 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_L_Ear";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 66 ".ktv[0:65]"  84 0 96 1.2000000000000002 120 0 126 2.8000000000000003
		 132 0 180 0 186 1 192 0 201 0 202 -2.1 214 -2.1 217 -1.771875 220 -1.771875 223 0.52812500000000018
		 226 -1.771875 232 -1.771875 238 -1.771875 250 -2.1 260 -2.1 272 -2.1 284 1.4000000000000001
		 296 1.4000000000000001 307 -1.6560000000000001 314 -1.6560000000000001 356 -2.1 365 0
		 366 0 390 0 414 0 423 0 429 0 432 0 448 0 457 0 458 0 460 0 472 0 482 0 492 0 506 1
		 511 1 575 0 585 0 586 0 587 0 588 0 589 0 598 0 599 0 601 -1.4000000000000001 605 -2.2440013234515064
		 623 0 632 0 633 0 639 1.9000000000000001 642 1.9000000000000001 649 -1.0999999999999999
		 657 -1.0999999999999999 668 -1.0999999999999999 669 0 670 0.14073671414042588 671 0.49259903520470716
		 672 0.95 673 1.4074009647952928 674 1.759263285859574 693 0;
	setAttr -s 66 ".kit[28:65]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 66 ".kot[27:65]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 66 ".kix[28:65]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 0.11072313040494919 1 1 1 1 1 1 1 1 1 0.098208464682102203 0.16680197417736053 
		0.10243342816829681 0.090717405080795288 0.10243343561887741 1 1;
	setAttr -s 66 ".kiy[28:65]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 -0.99385136365890503 0 0 0 0 0 0 0 0 0 0.99516588449478149 0.98599040508270264 
		0.994739830493927 0.99587666988372803 0.994739830493927 0 0;
	setAttr -s 66 ".kox[27:65]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 0.11072311550378799 1 1 1 1 1 1 1 1 1 0.098208464682102203 0.16680198907852173 
		0.10243343561887741 0.090717405080795288 0.10243342816829681 1 1;
	setAttr -s 66 ".koy[27:65]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 -0.99385130405426025 0 0 0 0 0 0 0 0 0 0.99516588449478149 0.98599040508270264 
		0.994739830493927 0.99587666988372803 0.994739830493927 0 0;
createNode animCurveTU -n "Head_Control_R_Ear";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 66 ".ktv[0:65]"  84 0 96 1.2000000000000002 120 0 126 2.8000000000000003
		 132 0 180 0 186 1 192 0 201 0 202 -2.1 214 -2.1 217 -1.771875 220 -1.771875 223 0.52812500000000018
		 226 -1.771875 232 -1.771875 238 -1.771875 250 -2.1 260 -2.1 272 -2.1 284 1.4000000000000001
		 296 1.4000000000000001 307 -1.6560000000000001 314 -1.6560000000000001 356 -2.1 365 0
		 366 0 390 0 414 0 423 0 429 0 432 0 448 0 457 0 458 0 460 0 472 0 482 0 492 0 506 1
		 511 1 575 0 585 0 586 0 587 0 588 0 589 0 598 0 599 0 601 -1.4000000000000001 605 -2.2440013234515064
		 623 0 632 0 633 0 639 1.9000000000000001 642 1.9000000000000001 649 -1.0999999999999999
		 657 -1.0999999999999999 668 -1.0999999999999999 669 0 670 0.14073671414042588 671 0.49259903520470716
		 672 0.95 673 1.4074009647952928 674 1.759263285859574 693 0;
	setAttr -s 66 ".kit[28:65]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 66 ".kot[27:65]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 66 ".kix[28:65]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 0.11072313040494919 1 1 1 1 1 1 1 1 1 0.098208464682102203 0.16680197417736053 
		0.10243342816829681 0.090717405080795288 0.10243343561887741 1 1;
	setAttr -s 66 ".kiy[28:65]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 -0.99385136365890503 0 0 0 0 0 0 0 0 0 0.99516588449478149 0.98599040508270264 
		0.994739830493927 0.99587666988372803 0.994739830493927 0 0;
	setAttr -s 66 ".kox[27:65]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 0.11072311550378799 1 1 1 1 1 1 1 1 1 0.098208464682102203 0.16680198907852173 
		0.10243343561887741 0.090717405080795288 0.10243342816829681 1 1;
	setAttr -s 66 ".koy[27:65]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 -0.99385130405426025 0 0 0 0 0 0 0 0 0 0.99516588449478149 0.98599040508270264 
		0.994739830493927 0.99587666988372803 0.994739830493927 0 0;
createNode animCurveTU -n "Head_Control_L_Upper_Lid";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 69 ".ktv[0:68]"  36 2.25 39 0 42 2.25 96 2.25 120 2.25 192 2.25
		 201 2.25 202 2.25 214 2.25 217 0 220 2.25 226 2.25 238 2.25 250 2.25 260 2.25 307 2.25
		 314 0 320 2.25 356 2.25 365 2.25 366 2.25 390 2.25 401 2.25 404 0 407 2.25 414 2.25
		 423 2.25 424 1 429 1 432 0 435 1 448 1 457 1 458 2.25 460 0 463 2.5 472 2.25 482 2.25
		 492 2.25 511 1.8518688059972455 513 0 517 1.8518688059972455 537 1.8518688059972455
		 540 0 543 1.8518688059972455 563 1.8518688059972455 565 0 569 1.8518688059972455
		 575 1.8518688059972455 585 1.8518688059972455 586 0.64818205682698249 587 0 588 1.1249999999999998
		 589 2.25 598 2.25 599 2.25 601 0 623 2.25 632 2.25 633 2.25 638 0 668 0 669 2.25
		 670 2.0160079100777955 671 1.4579940673963911 672 0.79200593260360908 673 0.23401186532037199
		 674 0 693 2.25;
	setAttr -s 69 ".kit[25:68]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 69 ".kot[21:68]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 69 ".kix[25:68]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.55247753858566284 
		1 1 1 1 1 1 1 1 1 1 0.044954437762498856 1 0.037011098116636276 1 1 1 1 1 1 1 1 1 
		1 0.10464122146368027 0.06792595237493515 0.067925490438938141 0.10464122146368027 
		1 1;
	setAttr -s 69 ".kiy[25:68]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.83352780342102051 
		0 0 0 0 0 0 0 0 0 0 -0.9989890456199646 0 0.99931490421295166 0 0 0 0 0 0 0 0 0 0 
		-0.9945099949836731 -0.99769037961959839 -0.99769037961959839 -0.9945099949836731 
		0 0;
	setAttr -s 69 ".kox[21:68]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.55247753858566284 
		1 1 1 1 1 1 1 1 1 1 0.044954437762498856 1 0.037011098116636276 1 1 1 1 1 1 1 1 1 
		1 0.10464122146368027 0.06792595237493515 0.067925490438938141 0.10464122146368027 
		1 1;
	setAttr -s 69 ".koy[21:68]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.83352780342102051 
		0 0 0 0 0 0 0 0 0 0 -0.9989890456199646 0 0.99931490421295166 0 0 0 0 0 0 0 0 0 0 
		-0.99451005458831787 -0.99769037961959839 -0.99769037961959839 -0.99451005458831787 
		0 0;
createNode animCurveTU -n "Head_Control_L_Lower_Lid";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 69 ".ktv[0:68]"  36 2.25 39 0 42 2.25 96 2.25 120 2.25 192 2.25
		 201 2.25 202 2.25 214 2.25 217 0 220 2.25 226 2.25 238 2.25 250 2.25 260 2.25 307 2.25
		 314 0 320 2.25 356 2.25 365 2.25 366 2.25 390 2.25 401 2.25 404 0 407 2.25 414 2.25
		 423 2.25 424 1 429 1 432 0 435 1 448 1 457 1 458 2.25 460 0 463 2.5 472 2.25 482 2.25
		 492 2.25 511 1.8518688059972455 513 0 517 1.8518688059972455 537 1.8518688059972455
		 540 0 543 1.8518688059972455 563 1.8518688059972455 565 0 569 1.8518688059972455
		 575 1.8518688059972455 585 1.8518688059972455 586 0.64818205682698249 587 0 588 1.1249999999999998
		 589 2.25 598 2.25 599 2.25 601 0 623 2.25 632 2.25 633 2.25 638 0 668 0 669 2.25
		 670 2.0160079100777955 671 1.4579940673963911 672 0.79200593260360908 673 0.23401186532037199
		 674 0 693 2.25;
	setAttr -s 69 ".kit[25:68]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 69 ".kot[21:68]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 69 ".kix[25:68]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.55247753858566284 
		1 1 1 1 1 1 1 1 1 1 0.044954437762498856 1 0.037011098116636276 1 1 1 1 1 1 1 1 1 
		1 0.10464122146368027 0.06792595237493515 0.067925490438938141 0.10464122146368027 
		1 1;
	setAttr -s 69 ".kiy[25:68]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.83352780342102051 
		0 0 0 0 0 0 0 0 0 0 -0.9989890456199646 0 0.99931490421295166 0 0 0 0 0 0 0 0 0 0 
		-0.9945099949836731 -0.99769037961959839 -0.99769037961959839 -0.9945099949836731 
		0 0;
	setAttr -s 69 ".kox[21:68]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.55247753858566284 
		1 1 1 1 1 1 1 1 1 1 0.044954437762498856 1 0.037011098116636276 1 1 1 1 1 1 1 1 1 
		1 0.10464122146368027 0.06792595237493515 0.067925490438938141 0.10464122146368027 
		1 1;
	setAttr -s 69 ".koy[21:68]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.83352780342102051 
		0 0 0 0 0 0 0 0 0 0 -0.9989890456199646 0 0.99931490421295166 0 0 0 0 0 0 0 0 0 0 
		-0.99451005458831787 -0.99769037961959839 -0.99769037961959839 -0.99451005458831787 
		0 0;
createNode animCurveTU -n "Head_Control_R_Upper_Lid";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 69 ".ktv[0:68]"  36 2.25 39 0 42 2.25 96 2.25 120 2.25 192 2.25
		 201 2.25 202 2.25 214 2.25 217 0 220 2.25 226 2.25 238 2.25 250 2.25 260 2.25 307 2.25
		 314 0 320 2.25 356 2.25 365 2.25 366 2.25 390 2.25 401 2.25 404 0 407 2.25 414 2.25
		 423 2.25 424 1 429 1 432 0 435 1 448 1 457 1 458 2.25 460 0 463 2.5 472 2.25 482 2.25
		 492 2.25 511 1.8518688059972455 513 0 517 1.8518688059972455 537 1.8518688059972455
		 540 0 543 1.8518688059972455 563 1.8518688059972455 565 0 569 1.8518688059972455
		 575 1.8518688059972455 585 1.8518688059972455 586 0.64818205682698249 587 0 588 1.1249999999999998
		 589 2.25 598 2.25 599 2.25 601 0 623 2.25 632 2.25 633 2.25 638 0 668 0 669 2.25
		 670 2.0160079100777955 671 1.4579940673963911 672 0.79200593260360908 673 0.23401186532037199
		 674 0 693 2.25;
	setAttr -s 69 ".kit[25:68]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 69 ".kot[21:68]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 69 ".kix[25:68]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.55247753858566284 
		1 1 1 1 1 1 1 1 1 1 0.044954437762498856 1 0.037011098116636276 1 1 1 1 1 1 1 1 1 
		1 0.10464122146368027 0.06792595237493515 0.067925490438938141 0.10464122146368027 
		1 1;
	setAttr -s 69 ".kiy[25:68]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.83352780342102051 
		0 0 0 0 0 0 0 0 0 0 -0.9989890456199646 0 0.99931490421295166 0 0 0 0 0 0 0 0 0 0 
		-0.9945099949836731 -0.99769037961959839 -0.99769037961959839 -0.9945099949836731 
		0 0;
	setAttr -s 69 ".kox[21:68]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.55247753858566284 
		1 1 1 1 1 1 1 1 1 1 0.044954437762498856 1 0.037011098116636276 1 1 1 1 1 1 1 1 1 
		1 0.10464122146368027 0.06792595237493515 0.067925490438938141 0.10464122146368027 
		1 1;
	setAttr -s 69 ".koy[21:68]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.83352780342102051 
		0 0 0 0 0 0 0 0 0 0 -0.9989890456199646 0 0.99931490421295166 0 0 0 0 0 0 0 0 0 0 
		-0.99451005458831787 -0.99769037961959839 -0.99769037961959839 -0.99451005458831787 
		0 0;
createNode animCurveTU -n "Head_Control_R_Lower_Lid";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 69 ".ktv[0:68]"  36 2.25 39 0 42 2.25 96 2.25 120 2.25 192 2.25
		 201 2.25 202 2.25 214 2.25 217 0 220 2.25 226 2.25 238 2.25 250 2.25 260 2.25 307 2.25
		 314 0 320 2.25 356 2.25 365 2.25 366 2.25 390 2.25 401 2.25 404 0 407 2.25 414 2.25
		 423 2.25 424 1 429 1 432 0 435 1 448 1 457 1 458 2.25 460 0 463 2.5 472 2.25 482 2.25
		 492 2.25 511 1.8518688059972455 513 0 517 1.8518688059972455 537 1.8518688059972455
		 540 0 543 1.8518688059972455 563 1.8518688059972455 565 0 569 1.8518688059972455
		 575 1.8518688059972455 585 1.8518688059972455 586 0.64818205682698249 587 0 588 1.1249999999999998
		 589 2.25 598 2.25 599 2.25 601 0 623 2.25 632 2.25 633 2.25 638 0 668 0 669 2.25
		 670 2.0160079100777955 671 1.4579940673963911 672 0.79200593260360908 673 0.23401186532037199
		 674 0 693 2.25;
	setAttr -s 69 ".kit[25:68]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 69 ".kot[21:68]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 69 ".kix[25:68]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.55247753858566284 
		1 1 1 1 1 1 1 1 1 1 0.044954437762498856 1 0.037011098116636276 1 1 1 1 1 1 1 1 1 
		1 0.10464122146368027 0.06792595237493515 0.067925490438938141 0.10464122146368027 
		1 1;
	setAttr -s 69 ".kiy[25:68]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.83352780342102051 
		0 0 0 0 0 0 0 0 0 0 -0.9989890456199646 0 0.99931490421295166 0 0 0 0 0 0 0 0 0 0 
		-0.9945099949836731 -0.99769037961959839 -0.99769037961959839 -0.9945099949836731 
		0 0;
	setAttr -s 69 ".kox[21:68]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.55247753858566284 
		1 1 1 1 1 1 1 1 1 1 0.044954437762498856 1 0.037011098116636276 1 1 1 1 1 1 1 1 1 
		1 0.10464122146368027 0.06792595237493515 0.067925490438938141 0.10464122146368027 
		1 1;
	setAttr -s 69 ".koy[21:68]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.83352780342102051 
		0 0 0 0 0 0 0 0 0 0 -0.9989890456199646 0 0.99931490421295166 0 0 0 0 0 0 0 0 0 0 
		-0.99451005458831787 -0.99769037961959839 -0.99769037961959839 -0.99451005458831787 
		0 0;
createNode animCurveTA -n "L_FK_Hip_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  429 -16.850992687488127 432 -16.850992687488127
		 448 -16.850992687488127 457 -16.850992687488127;
createNode animCurveTA -n "L_FK_Knee_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  429 23.114571060743902 432 23.114571060743902
		 448 23.114571060743902 457 23.114571060743902;
createNode animCurveTA -n "R_FK_Hip_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  429 -15.149832162500022 432 -7.8052691438667976
		 448 -15.149832162500022 457 -15.149832162500022;
createNode animCurveTA -n "R_FK_Knee_Control_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  429 37.135276309158556 432 16.76925107662862
		 448 37.135276309158556 457 37.135276309158556;
createNode animCurveTA -n "R_FK_Knee_Control_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  429 -1.4301842191816916 432 -1.4301842191816916
		 448 -1.4301842191816916 457 -1.4301842191816916;
createNode animCurveTA -n "R_FK_Knee_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  429 7.2098191230474038 432 7.2098191230474038
		 448 7.2098191230474038 457 7.2098191230474038;
createNode reference -n "_UNKNOWN_REF_NODE_";
	setAttr ".ed" -type "dataReferenceEdits" 
		"_UNKNOWN_REF_NODE_"
		"_UNKNOWN_REF_NODE_" 2
		2 ":defaultColorMgtGlobals" "ovt" " 0"
		2 ":defaultColorMgtGlobals" "povt" " 0";
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
select -ne :time1;
	setAttr ".o" 98;
	setAttr ".unw" 98;
select -ne :renderPartition;
	setAttr -s 10 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 6 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :ikSystem;
connectAttr "Root_Control_translateX.o" "Player_With_ControlsRN.phl[1]";
connectAttr "Root_Control_translateY.o" "Player_With_ControlsRN.phl[2]";
connectAttr "Root_Control_translateZ.o" "Player_With_ControlsRN.phl[3]";
connectAttr "Root_Control_rotateX.o" "Player_With_ControlsRN.phl[4]";
connectAttr "Root_Control_rotateY.o" "Player_With_ControlsRN.phl[5]";
connectAttr "Root_Control_rotateZ.o" "Player_With_ControlsRN.phl[6]";
connectAttr "Pelvis_Control_rotateX.o" "Player_With_ControlsRN.phl[7]";
connectAttr "Pelvis_Control_rotateY.o" "Player_With_ControlsRN.phl[8]";
connectAttr "L_Ball_Control_rotateY.o" "Player_With_ControlsRN.phl[9]";
connectAttr "L_Ball_Control_rotateZ.o" "Player_With_ControlsRN.phl[10]";
connectAttr "L_Ball_Control_L_Ankle_Control.o" "Player_With_ControlsRN.phl[11]";
connectAttr "L_Ball_Control_L_Lower_Foot_Control.o" "Player_With_ControlsRN.phl[12]"
		;
connectAttr "L_Ball_Control_L_IK_FK_Switch.o" "Player_With_ControlsRN.phl[13]";
connectAttr "L_Ball_Control_View_L_IK_Controls.o" "Player_With_ControlsRN.phl[14]"
		;
connectAttr "L_Ball_Control_View_L_FK_Controls.o" "Player_With_ControlsRN.phl[15]"
		;
connectAttr "L_FK_Hip_Control_rotateX.o" "Player_With_ControlsRN.phl[16]";
connectAttr "L_FK_Knee_Control_rotateX.o" "Player_With_ControlsRN.phl[17]";
connectAttr "L_IK_Leg_Control_translateY.o" "Player_With_ControlsRN.phl[18]";
connectAttr "L_IK_Leg_Control_translateZ.o" "Player_With_ControlsRN.phl[19]";
connectAttr "R_Ball_Control_rotateY.o" "Player_With_ControlsRN.phl[20]";
connectAttr "R_Ball_Control_rotateZ.o" "Player_With_ControlsRN.phl[21]";
connectAttr "R_Ball_Control_R_Ankle_Control.o" "Player_With_ControlsRN.phl[22]";
connectAttr "R_Ball_Control_R_Lower_Foot_Control.o" "Player_With_ControlsRN.phl[23]"
		;
connectAttr "R_Ball_Control_R_IK_FK_Switch.o" "Player_With_ControlsRN.phl[24]";
connectAttr "R_Ball_Control_View_R_IK_Controls.o" "Player_With_ControlsRN.phl[25]"
		;
connectAttr "R_Ball_Control_View_R_FK_Controls.o" "Player_With_ControlsRN.phl[26]"
		;
connectAttr "R_FK_Hip_Control_rotateX.o" "Player_With_ControlsRN.phl[27]";
connectAttr "R_FK_Knee_Control_rotateY.o" "Player_With_ControlsRN.phl[28]";
connectAttr "R_FK_Knee_Control_rotateZ.o" "Player_With_ControlsRN.phl[29]";
connectAttr "R_FK_Knee_Control_rotateX.o" "Player_With_ControlsRN.phl[30]";
connectAttr "R_IK_Leg_Control_translateY.o" "Player_With_ControlsRN.phl[31]";
connectAttr "R_IK_Leg_Control_translateZ.o" "Player_With_ControlsRN.phl[32]";
connectAttr "Chest_Control_translateY.o" "Player_With_ControlsRN.phl[33]";
connectAttr "Chest_Control_rotateY.o" "Player_With_ControlsRN.phl[34]";
connectAttr "R_Shoulder_Pad_Control_rotateX.o" "Player_With_ControlsRN.phl[35]";
connectAttr "R_Shoulder_Pad_Control_rotateZ.o" "Player_With_ControlsRN.phl[36]";
connectAttr "R_Ball_Shoulder_Control_visibility.o" "Player_With_ControlsRN.phl[37]"
		;
connectAttr "R_Ball_Shoulder_Control_translateX.o" "Player_With_ControlsRN.phl[38]"
		;
connectAttr "R_Ball_Shoulder_Control_translateY.o" "Player_With_ControlsRN.phl[39]"
		;
connectAttr "R_Ball_Shoulder_Control_translateZ.o" "Player_With_ControlsRN.phl[40]"
		;
connectAttr "R_Ball_Shoulder_Control_rotateX.o" "Player_With_ControlsRN.phl[41]"
		;
connectAttr "R_Ball_Shoulder_Control_rotateY.o" "Player_With_ControlsRN.phl[42]"
		;
connectAttr "R_Ball_Shoulder_Control_rotateZ.o" "Player_With_ControlsRN.phl[43]"
		;
connectAttr "R_Ball_Shoulder_Control_scaleX.o" "Player_With_ControlsRN.phl[44]";
connectAttr "R_Ball_Shoulder_Control_scaleY.o" "Player_With_ControlsRN.phl[45]";
connectAttr "R_Ball_Shoulder_Control_scaleZ.o" "Player_With_ControlsRN.phl[46]";
connectAttr "R_Elbow_Control_rotateX.o" "Player_With_ControlsRN.phl[47]";
connectAttr "R_Wrist_Control_rotateY.o" "Player_With_ControlsRN.phl[48]";
connectAttr "R_Wrist_Control_rotateZ.o" "Player_With_ControlsRN.phl[49]";
connectAttr "R_Drill_Control_rotateY.o" "Player_With_ControlsRN.phl[50]";
connectAttr "L_Shoulder_Pad_Control_rotateX.o" "Player_With_ControlsRN.phl[51]";
connectAttr "L_Shoulder_Pad_Control_rotateZ.o" "Player_With_ControlsRN.phl[52]";
connectAttr "L_Ball_Shoulder_Control_rotateX.o" "Player_With_ControlsRN.phl[53]"
		;
connectAttr "L_Ball_Shoulder_Control_rotateY.o" "Player_With_ControlsRN.phl[54]"
		;
connectAttr "L_Ball_Shoulder_Control_rotateZ.o" "Player_With_ControlsRN.phl[55]"
		;
connectAttr "L_Elbow_Control_rotateX.o" "Player_With_ControlsRN.phl[56]";
connectAttr "L_Wrist_Control_rotateY.o" "Player_With_ControlsRN.phl[57]";
connectAttr "L_Wrist_Control_rotateZ.o" "Player_With_ControlsRN.phl[58]";
connectAttr "L_Wrist_Control_Upper_Fingers.o" "Player_With_ControlsRN.phl[59]";
connectAttr "L_Wrist_Control_Lower_Fingers.o" "Player_With_ControlsRN.phl[60]";
connectAttr "L_Wrist_Control_Upper_Thumb_x.o" "Player_With_ControlsRN.phl[61]";
connectAttr "L_Wrist_Control_Upper_Thumb_Y.o" "Player_With_ControlsRN.phl[62]";
connectAttr "L_Wrist_Control_Upper_Thumb_Z.o" "Player_With_ControlsRN.phl[63]";
connectAttr "L_Wrist_Control_Lower_Thumb.o" "Player_With_ControlsRN.phl[64]";
connectAttr "Head_Control_rotateX.o" "Player_With_ControlsRN.phl[65]";
connectAttr "Head_Control_rotateY.o" "Player_With_ControlsRN.phl[66]";
connectAttr "Head_Control_L_Ear.o" "Player_With_ControlsRN.phl[67]";
connectAttr "Head_Control_R_Ear.o" "Player_With_ControlsRN.phl[68]";
connectAttr "Head_Control_L_Upper_Lid.o" "Player_With_ControlsRN.phl[69]";
connectAttr "Head_Control_L_Lower_Lid.o" "Player_With_ControlsRN.phl[70]";
connectAttr "Head_Control_R_Upper_Lid.o" "Player_With_ControlsRN.phl[71]";
connectAttr "Head_Control_R_Lower_Lid.o" "Player_With_ControlsRN.phl[72]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "_UNKNOWN_REF_NODE_.ur" "Player_With_ControlsRN.ur";
connectAttr "LocusRef.di" "Player_With_ControlsRN1.phl[1]";
connectAttr "LocusRef.di" "Player_With_ControlsRN1.phl[2]";
connectAttr "LocusRef.di" "Player_With_ControlsRN1.phl[3]";
connectAttr "LocusRef.di" "Player_With_ControlsRN1.phl[4]";
connectAttr "LocusRef.di" "Player_With_ControlsRN1.phl[5]";
connectAttr "_UNKNOWN_REF_NODE_.ur" "Player_With_ControlsRN1.ur";
connectAttr "sharedReferenceNode.sr" "Player_With_ControlsRN1.sr";
connectAttr "layerManager.dli[1]" "LocusRef.id";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"Player_With_ControlsRN\" \"\" \"C:/Users/Tom/Documents/GameDesign/JuniorProjectGemBots/CharacterDesign/DysonCharacter//scenes/Player_With_Controls.ma\" 3882299420 \"/Users/milesmeacham/Documents/School/2016 Spring/DysonNonGitHub/DysonCharacter 2/scenes/Player_With_Controls.ma\" \"FileRef\"\n1\n\"Player_With_ControlsRN1\" \"\" \"C:/Users/Tom/Documents/GameDesign/JuniorProjectGemBots/CharacterDesign/DysonCharacter//scenes/Player_With_Controls.ma\" 3882299420 \"/Users/milesmeacham/Documents/School/2016 Spring/DysonNonGitHub/DysonCharacter 2/scenes/Player_With_Controls.ma\" \"FileRef\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of DysonAnimations.022.ma
