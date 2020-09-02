//Maya ASCII 8.5 scene
//Name: 
// www.tom-crowley.co.uk
//Generated By Lime: COD In game exporter
//xModel: vehicle_bmp_d_piece02
requires maya "8.5";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 8.5";
fileInfo "version" "8.5";
fileInfo "cutIdentifier" "200612162224-692032";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 48.186233840145825 37.816674066853686 41.0540421364379 ;
	setAttr ".r" -type "double3" -29.738352729603015 49.400000000000432 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".fcp" 10000;
	setAttr ".coi" 73.724849603665149;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :lightList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[0].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[0].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[1].sllk";
connectAttr ":initialParticleSE.msg" "lightLinker1.slnk[1].solk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;

createNode transform -n "Tom_vehicle_bmp_d_piece02";
setAttr ".ove" yes;
createNode transform -n "TomMesh8cVpP1_0" -p "Tom_vehicle_bmp_d_piece02";
setAttr ".rp" -type "double3" 0.000000 0.000000 0.000000 ;
setAttr ".sp" -type "double3" 0.000000 0.000000 0.000000 ;
createNode mesh -n "MeshShape_0" -p "TomMesh8cVpP1_0";
setAttr -k off ".v";
setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:28]";
setAttr ".uvst[0].uvsn" -type "string" "map1";
setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2"
 0.364990 0.073730 0.377441 0.073730 0.364990 0.035645 0.377441 0.035645
 0.390137 0.073730 0.390137 0.035645 0.402832 0.073730 0.402832 0.035645
 0.415283 0.073730 0.415283 0.035645 0.427979 0.073730 0.427979 0.035645
 0.440430 0.073730 0.440430 0.035645 0.364990 0.035645 0.377686 0.035645
 0.364990 0.073730 0.377686 0.073730 0.390381 0.035645 0.390381 0.073730
 0.402832 0.035645 0.402832 0.073730 0.415527 0.035645 0.415527 0.073730
 0.427979 0.035645 0.427979 0.073730 0.440674 0.035645 0.440674 0.073730
;

setAttr ".dcol" yes;
setAttr ".dcc" -type "string" "Ambient+Diffuse";
setAttr ".ccls" -type "string" "colorSet1";
setAttr ".clst[0].clsn" -type "string" "colorSet1";
setAttr -s 72 ".clst[0].clsp";
setAttr ".clst[0].clsp[0:71]"
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
;
setAttr ".covm[0]"  0 1 1;
setAttr ".cdvm[0]"  0 1 1;
setAttr -s 28 ".vt[0:27]"
	-27.578455 -17.180901 -14.684940
	-32.792694 -0.426507 -14.687994
	-27.548862 -17.166519 13.419674
	-32.763142 -0.412110 13.416560
	-28.931204 16.690403 -14.700872
	-28.901646 16.704807 13.403742
	-17.028597 29.583321 -14.719975
	-16.999044 29.597721 13.384575
	-0.274227 34.797596 -14.740300
	-0.244622 34.812000 13.364253
	16.842712 30.936083 -14.756353
	16.872284 30.950451 13.348261
	29.735592 19.033497 -14.763801
	29.765184 19.047873 13.340753
	-27.548862 -17.166519 13.419674
	-14.655936 -29.069153 13.412166
	-27.578455 -17.180901 -14.684940
	-14.685523 -29.083553 -14.692450
	2.460945 -32.930656 13.396112
	2.431358 -32.945049 -14.708441
	19.215353 -27.716352 13.375848
	19.185781 -27.730753 -14.728766
	31.117970 -14.823456 13.356745
	31.088388 -14.837867 -14.747931
	34.979477 2.293442 13.343866
	34.949905 2.279030 -14.760747
	29.765184 19.047873 13.340753
	29.735592 19.033497 -14.763801;
setAttr -s 72 ".ed[0:71]"
	2 1 0 1 0 0 0 2 0
	3 1 0 1 2 0 2 3 0
	3 4 0 4 1 0 1 3 0
	5 4 0 4 3 0 3 5 0
	5 6 0 6 4 0 4 5 0
	7 6 0 6 5 0 5 7 0
	7 8 0 8 6 0 6 7 0
	9 8 0 8 7 0 7 9 0
	9 10 0 10 8 0 8 9 0
	11 10 0 10 9 0 9 11 0
	11 12 0 12 10 0 10 11 0
	12 11 0 11 13 0 13 12 0
	16 15 0 15 14 0 14 16 0
	17 15 0 15 16 0 16 17 0
	17 18 0 18 15 0 15 17 0
	19 18 0 18 17 0 17 19 0
	19 20 0 20 18 0 18 19 0
	21 20 0 20 19 0 19 21 0
	21 22 0 22 20 0 20 21 0
	23 22 0 22 21 0 21 23 0
	23 24 0 24 22 0 22 23 0
	25 24 0 24 23 0 23 25 0
	25 26 0 26 24 0 24 25 0
	27 26 0 26 25 0 25 27 0;
setAttr -s 72 ".n[0:71]" -type "float3"
	-0.841487 -0.530333  0.000000 -0.996086 -0.035225  0.000000 -0.841487 -0.530333  0.000000
	-0.996086 -0.035225  0.000000 -0.996086 -0.035225  0.000000 -0.841487 -0.530333  0.000000
	-0.996086 -0.035225  0.000000 -0.880626  0.461840  0.000000 -0.996086 -0.035225  0.000000
	-0.880626  0.461840  0.000000 -0.880626  0.461840  0.000000 -0.996086 -0.035225  0.000000
	-0.880626  0.461840  0.000000 -0.530333  0.843444  0.000000 -0.880626  0.461840  0.000000
	-0.530333  0.843444  0.000000 -0.530333  0.843444  0.000000 -0.880626  0.461840  0.000000
	-0.530333  0.843444  0.000000 -0.035225  0.998043  0.000000 -0.530333  0.843444  0.000000
	-0.035225  0.998043  0.000000 -0.035225  0.998043  0.000000 -0.530333  0.843444  0.000000
	-0.035225  0.998043  0.000000  0.461840  0.882583  0.000000 -0.035225  0.998043  0.000000
	 0.461840  0.882583  0.000000  0.461840  0.882583  0.000000 -0.035225  0.998043  0.000000
	 0.461840  0.882583  0.000000  0.843444  0.532290  0.000000  0.461840  0.882583  0.000000
	 0.843444  0.532290  0.000000  0.461840  0.882583  0.000000  0.843444  0.532290  0.000000
	-0.841487 -0.530333  0.000000 -0.459883 -0.880626  0.000000 -0.841487 -0.530333  0.000000
	-0.459883 -0.880626  0.000000 -0.459883 -0.880626  0.000000 -0.841487 -0.530333  0.000000
	-0.459883 -0.880626  0.000000  0.037182 -0.996086  0.000000 -0.459883 -0.880626  0.000000
	 0.037182 -0.996086  0.000000  0.037182 -0.996086  0.000000 -0.459883 -0.880626  0.000000
	 0.037182 -0.996086  0.000000  0.532290 -0.841487  0.000000  0.037182 -0.996086  0.000000
	 0.532290 -0.841487  0.000000  0.532290 -0.841487  0.000000  0.037182 -0.996086  0.000000
	 0.532290 -0.841487  0.000000  0.882583 -0.459883  0.000000  0.532290 -0.841487  0.000000
	 0.882583 -0.459883  0.000000  0.882583 -0.459883  0.000000  0.532290 -0.841487  0.000000
	 0.882583 -0.459883  0.000000  0.998043  0.037182  0.000000  0.882583 -0.459883  0.000000
	 0.998043  0.037182  0.000000  0.998043  0.037182  0.000000  0.882583 -0.459883  0.000000
	 0.998043  0.037182  0.000000  0.843444  0.532290  0.000000  0.998043  0.037182  0.000000
	 0.843444  0.532290  0.000000  0.843444  0.532290  0.000000  0.998043  0.037182  0.000000;
setAttr -s 24 ".fc[0:23]" -type "polyFaces"
	f 3 0 1 2
	mu 0 3 2 1 0
	mc 0 3 0 1 2
	f 3 3 4 5
	mu 0 3 3 1 2
	mc 0 3 3 4 5
	f 3 6 7 8
	mu 0 3 3 4 1
	mc 0 3 6 7 8
	f 3 9 10 11
	mu 0 3 5 4 3
	mc 0 3 9 10 11
	f 3 12 13 14
	mu 0 3 5 6 4
	mc 0 3 12 13 14
	f 3 15 16 17
	mu 0 3 7 6 5
	mc 0 3 15 16 17
	f 3 18 19 20
	mu 0 3 7 8 6
	mc 0 3 18 19 20
	f 3 21 22 23
	mu 0 3 9 8 7
	mc 0 3 21 22 23
	f 3 24 25 26
	mu 0 3 9 10 8
	mc 0 3 24 25 26
	f 3 27 28 29
	mu 0 3 11 10 9
	mc 0 3 27 28 29
	f 3 30 31 32
	mu 0 3 11 12 10
	mc 0 3 30 31 32
	f 3 33 34 35
	mu 0 3 12 11 13
	mc 0 3 33 34 35
	f 3 36 37 38
	mu 0 3 16 15 14
	mc 0 3 36 37 38
	f 3 39 40 41
	mu 0 3 17 15 16
	mc 0 3 39 40 41
	f 3 42 43 44
	mu 0 3 17 18 15
	mc 0 3 42 43 44
	f 3 45 46 47
	mu 0 3 19 18 17
	mc 0 3 45 46 47
	f 3 48 49 50
	mu 0 3 19 20 18
	mc 0 3 48 49 50
	f 3 51 52 53
	mu 0 3 21 20 19
	mc 0 3 51 52 53
	f 3 54 55 56
	mu 0 3 21 22 20
	mc 0 3 54 55 56
	f 3 57 58 59
	mu 0 3 23 22 21
	mc 0 3 57 58 59
	f 3 60 61 62
	mu 0 3 23 24 22
	mc 0 3 60 61 62
	f 3 63 64 65
	mu 0 3 25 24 23
	mc 0 3 63 64 65
	f 3 66 67 68
	mu 0 3 25 26 24
	mc 0 3 66 67 68
	f 3 69 70 71
	mu 0 3 27 26 25
	mc 0 3 69 70 71;
setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;


createNode transform -n "TomMesh8cVpP1_1" -p "Tom_vehicle_bmp_d_piece02";
setAttr ".rp" -type "double3" 0.000000 0.000000 0.000000 ;
setAttr ".sp" -type "double3" 0.000000 0.000000 0.000000 ;
createNode mesh -n "MeshShape_1" -p "TomMesh8cVpP1_1";
setAttr -k off ".v";
setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:24]";
setAttr ".uvst[0].uvsn" -type "string" "map1";
setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2"
 0.417725 0.673828 0.335693 0.836426 0.447510 0.451660 0.417725 0.229492
 0.335693 0.066895 0.223755 0.007324 0.111816 0.066895 0.029907 0.229492
 0.000000 0.451660 0.029907 0.673828 0.111816 0.836426 0.223755 0.895874
 0.447510 0.451660 0.417725 0.229492 0.417725 0.673828 0.335693 0.836426
 0.223755 0.895874 0.111816 0.836426 0.029907 0.673828 0.000000 0.451660
 0.029907 0.229492 0.111816 0.066895 0.223755 0.007324 0.335693 0.066895
;

setAttr ".dcol" yes;
setAttr ".dcc" -type "string" "Ambient+Diffuse";
setAttr ".ccls" -type "string" "colorSet1";
setAttr ".clst[0].clsn" -type "string" "colorSet1";
setAttr -s 60 ".clst[0].clsp";
setAttr ".clst[0].clsp[0:59]"
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
;
setAttr ".covm[0]"  0 1 1;
setAttr ".cdvm[0]"  0 1 1;
setAttr -s 24 ".vt[0:23]"
	-32.763142 -0.412110 13.416560
	-28.901646 16.704807 13.403742
	-27.548862 -17.166519 13.419674
	-14.655936 -29.069153 13.412166
	2.460945 -32.930656 13.396112
	19.215353 -27.716352 13.375848
	31.117970 -14.823456 13.356745
	34.979477 2.293442 13.343866
	29.765184 19.047873 13.340753
	16.872284 30.950451 13.348261
	-0.244622 34.812000 13.364253
	-16.999044 29.597721 13.384575
	-17.028597 29.583321 -14.719975
	-28.931204 16.690403 -14.700872
	-0.274227 34.797596 -14.740300
	16.842712 30.936083 -14.756353
	29.735592 19.033497 -14.763801
	34.949905 2.279030 -14.760747
	31.088388 -14.837867 -14.747931
	19.185781 -27.730753 -14.728766
	2.431358 -32.945049 -14.708441
	-14.685523 -29.083553 -14.692450
	-27.578455 -17.180901 -14.684940
	-32.792694 -0.426507 -14.687994;
setAttr -s 60 ".ed[0:59]"
	2 1 0 1 0 0 0 2 0
	3 1 0 1 2 0 2 3 0
	4 1 0 1 3 0 3 4 0
	5 1 0 1 4 0 4 5 0
	6 1 0 1 5 0 5 6 0
	7 1 0 1 6 0 6 7 0
	8 1 0 1 7 0 7 8 0
	9 1 0 1 8 0 8 9 0
	10 1 0 1 9 0 9 10 0
	11 1 0 1 10 0 10 11 0
	14 13 0 13 12 0 12 14 0
	15 13 0 13 14 0 14 15 0
	16 13 0 13 15 0 15 16 0
	17 13 0 13 16 0 16 17 0
	18 13 0 13 17 0 17 18 0
	19 13 0 13 18 0 18 19 0
	20 13 0 13 19 0 19 20 0
	21 13 0 13 20 0 20 21 0
	22 13 0 13 21 0 21 22 0
	23 13 0 13 22 0 22 23 0;
setAttr -s 60 ".n[0:59]" -type "float3"
	 0.000000  0.000000  0.998043  0.000000  0.000000  0.998043  0.000000  0.000000  0.998043
	 0.000000  0.000000  0.998043  0.000000  0.000000  0.998043  0.000000  0.000000  0.998043
	 0.000000  0.000000  0.998043  0.000000  0.000000  0.998043  0.000000  0.000000  0.998043
	 0.000000  0.000000  0.998043  0.000000  0.000000  0.998043  0.000000  0.000000  0.998043
	 0.000000  0.000000  0.998043  0.000000  0.000000  0.998043  0.000000  0.000000  0.998043
	 0.000000  0.000000  0.998043  0.000000  0.000000  0.998043  0.000000  0.000000  0.998043
	 0.000000  0.000000  0.998043  0.000000  0.000000  0.998043  0.000000  0.000000  0.998043
	 0.000000  0.000000  0.998043  0.000000  0.000000  0.998043  0.000000  0.000000  0.998043
	 0.000000  0.000000  0.998043  0.000000  0.000000  0.998043  0.000000  0.000000  0.998043
	 0.000000  0.000000  0.998043  0.000000  0.000000  0.998043  0.000000  0.000000  0.998043
	 0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086
	 0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086
	 0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086
	 0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086
	 0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086
	 0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086
	 0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086
	 0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086
	 0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086
	 0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086;
setAttr -s 20 ".fc[0:19]" -type "polyFaces"
	f 3 0 1 2
	mu 0 3 2 1 0
	mc 0 3 0 1 2
	f 3 3 4 5
	mu 0 3 3 1 2
	mc 0 3 3 4 5
	f 3 6 7 8
	mu 0 3 4 1 3
	mc 0 3 6 7 8
	f 3 9 10 11
	mu 0 3 5 1 4
	mc 0 3 9 10 11
	f 3 12 13 14
	mu 0 3 6 1 5
	mc 0 3 12 13 14
	f 3 15 16 17
	mu 0 3 7 1 6
	mc 0 3 15 16 17
	f 3 18 19 20
	mu 0 3 8 1 7
	mc 0 3 18 19 20
	f 3 21 22 23
	mu 0 3 9 1 8
	mc 0 3 21 22 23
	f 3 24 25 26
	mu 0 3 10 1 9
	mc 0 3 24 25 26
	f 3 27 28 29
	mu 0 3 11 1 10
	mc 0 3 27 28 29
	f 3 30 31 32
	mu 0 3 14 13 12
	mc 0 3 30 31 32
	f 3 33 34 35
	mu 0 3 15 13 14
	mc 0 3 33 34 35
	f 3 36 37 38
	mu 0 3 16 13 15
	mc 0 3 36 37 38
	f 3 39 40 41
	mu 0 3 17 13 16
	mc 0 3 39 40 41
	f 3 42 43 44
	mu 0 3 18 13 17
	mc 0 3 42 43 44
	f 3 45 46 47
	mu 0 3 19 13 18
	mc 0 3 45 46 47
	f 3 48 49 50
	mu 0 3 20 13 19
	mc 0 3 48 49 50
	f 3 51 52 53
	mu 0 3 21 13 20
	mc 0 3 51 52 53
	f 3 54 55 56
	mu 0 3 22 13 21
	mc 0 3 54 55 56
	f 3 57 58 59
	mu 0 3 23 13 22
	mc 0 3 57 58 59;
setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;

createNode shadingEngine -n "mtl_vehicle_bmp_dstySG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "mtl_vehicle_bmp_dstyMI";
createNode phong -n "mtl_vehicle_bmp_dsty";
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode file -n "mtl_vehicle_bmp_dstyFILE";
	setAttr ".ftn" -type "string" "..\\_images\\vehicle_bmp_dsty_col.dds";
if(getAttr("mtl_vehicle_bmp_dstyFILE.fha")) connectAttr mtl_vehicle_bmp_dstyFILE.ot mtl_vehicle_bmp_dsty.it;
createNode place2dTexture -n "mtl_vehicle_bmp_dstyP2DT";

createNode shadingEngine -n "mtl_vehicle_bmp_track_dstySG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "mtl_vehicle_bmp_track_dstyMI";
createNode phong -n "mtl_vehicle_bmp_track_dsty";
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode file -n "mtl_vehicle_bmp_track_dstyFILE";
	setAttr ".ftn" -type "string" "..\\_images\\vehicle_bmp_track_dsty_col.dds";
if(getAttr("mtl_vehicle_bmp_track_dstyFILE.fha")) connectAttr mtl_vehicle_bmp_track_dstyFILE.ot mtl_vehicle_bmp_track_dsty.it;
createNode place2dTexture -n "mtl_vehicle_bmp_track_dstyP2DT";

connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "mtl_vehicle_bmp_dstySG.msg" "lightLinker1.lnk[2].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[2].sllk";
connectAttr "mtl_vehicle_bmp_dstySG.msg" "lightLinker1.slnk[2].solk";
connectAttr "mtl_vehicle_bmp_dsty.oc" "mtl_vehicle_bmp_dstySG.ss";
connectAttr "mtl_vehicle_bmp_dstySG.msg" "mtl_vehicle_bmp_dstyMI.sg";
connectAttr "mtl_vehicle_bmp_dsty.msg" "mtl_vehicle_bmp_dstyMI.m";
connectAttr "mtl_vehicle_bmp_dstyFILE.msg" "mtl_vehicle_bmp_dstyMI.t" -na;
connectAttr "mtl_vehicle_bmp_dstyFILE.oc" "mtl_vehicle_bmp_dsty.c";
connectAttr "mtl_vehicle_bmp_dstyP2DT.c" "mtl_vehicle_bmp_dstyFILE.c";
connectAttr "mtl_vehicle_bmp_dstyP2DT.tf" "mtl_vehicle_bmp_dstyFILE.tf";
connectAttr "mtl_vehicle_bmp_dstyP2DT.rf" "mtl_vehicle_bmp_dstyFILE.rf";
connectAttr "mtl_vehicle_bmp_dstyP2DT.mu" "mtl_vehicle_bmp_dstyFILE.mu";
connectAttr "mtl_vehicle_bmp_dstyP2DT.mv" "mtl_vehicle_bmp_dstyFILE.mv";
connectAttr "mtl_vehicle_bmp_dstyP2DT.s" "mtl_vehicle_bmp_dstyFILE.s";
connectAttr "mtl_vehicle_bmp_dstyP2DT.wu" "mtl_vehicle_bmp_dstyFILE.wu";
connectAttr "mtl_vehicle_bmp_dstyP2DT.wv" "mtl_vehicle_bmp_dstyFILE.wv";
connectAttr "mtl_vehicle_bmp_dstyP2DT.re" "mtl_vehicle_bmp_dstyFILE.re";
connectAttr "mtl_vehicle_bmp_dstyP2DT.of" "mtl_vehicle_bmp_dstyFILE.of";
connectAttr "mtl_vehicle_bmp_dstyP2DT.r" "mtl_vehicle_bmp_dstyFILE.ro";
connectAttr "mtl_vehicle_bmp_dstyP2DT.n" "mtl_vehicle_bmp_dstyFILE.n";
connectAttr "mtl_vehicle_bmp_dstyP2DT.vt1" "mtl_vehicle_bmp_dstyFILE.vt1";
connectAttr "mtl_vehicle_bmp_dstyP2DT.vt2" "mtl_vehicle_bmp_dstyFILE.vt2";
connectAttr "mtl_vehicle_bmp_dstyP2DT.vt3" "mtl_vehicle_bmp_dstyFILE.vt3";
connectAttr "mtl_vehicle_bmp_dstyP2DT.vc1" "mtl_vehicle_bmp_dstyFILE.vc1";
connectAttr "mtl_vehicle_bmp_dstyP2DT.o" "mtl_vehicle_bmp_dstyFILE.uv";
connectAttr "mtl_vehicle_bmp_dstyP2DT.ofs" "mtl_vehicle_bmp_dstyFILE.fs";
connectAttr "mtl_vehicle_bmp_dstySG.pa" ":renderPartition.st" -na;
connectAttr "mtl_vehicle_bmp_dsty.msg" ":defaultShaderList1.s" -na;
connectAttr "mtl_vehicle_bmp_dstyP2DT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mtl_vehicle_bmp_dstyFILE.msg" ":defaultTextureList1.tx" -na;

connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr "mtl_vehicle_bmp_track_dstySG.msg" "lightLinker1.lnk[3].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[3].sllk";
connectAttr "mtl_vehicle_bmp_track_dstySG.msg" "lightLinker1.slnk[3].solk";
connectAttr "mtl_vehicle_bmp_track_dsty.oc" "mtl_vehicle_bmp_track_dstySG.ss";
connectAttr "mtl_vehicle_bmp_track_dstySG.msg" "mtl_vehicle_bmp_track_dstyMI.sg";
connectAttr "mtl_vehicle_bmp_track_dsty.msg" "mtl_vehicle_bmp_track_dstyMI.m";
connectAttr "mtl_vehicle_bmp_track_dstyFILE.msg" "mtl_vehicle_bmp_track_dstyMI.t" -na;
connectAttr "mtl_vehicle_bmp_track_dstyFILE.oc" "mtl_vehicle_bmp_track_dsty.c";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.c" "mtl_vehicle_bmp_track_dstyFILE.c";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.tf" "mtl_vehicle_bmp_track_dstyFILE.tf";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.rf" "mtl_vehicle_bmp_track_dstyFILE.rf";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.mu" "mtl_vehicle_bmp_track_dstyFILE.mu";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.mv" "mtl_vehicle_bmp_track_dstyFILE.mv";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.s" "mtl_vehicle_bmp_track_dstyFILE.s";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.wu" "mtl_vehicle_bmp_track_dstyFILE.wu";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.wv" "mtl_vehicle_bmp_track_dstyFILE.wv";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.re" "mtl_vehicle_bmp_track_dstyFILE.re";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.of" "mtl_vehicle_bmp_track_dstyFILE.of";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.r" "mtl_vehicle_bmp_track_dstyFILE.ro";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.n" "mtl_vehicle_bmp_track_dstyFILE.n";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.vt1" "mtl_vehicle_bmp_track_dstyFILE.vt1";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.vt2" "mtl_vehicle_bmp_track_dstyFILE.vt2";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.vt3" "mtl_vehicle_bmp_track_dstyFILE.vt3";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.vc1" "mtl_vehicle_bmp_track_dstyFILE.vc1";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.o" "mtl_vehicle_bmp_track_dstyFILE.uv";
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.ofs" "mtl_vehicle_bmp_track_dstyFILE.fs";
connectAttr "mtl_vehicle_bmp_track_dstySG.pa" ":renderPartition.st" -na;
connectAttr "mtl_vehicle_bmp_track_dsty.msg" ":defaultShaderList1.s" -na;
connectAttr "mtl_vehicle_bmp_track_dstyP2DT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mtl_vehicle_bmp_track_dstyFILE.msg" ":defaultTextureList1.tx" -na;

connectAttr "mtl_vehicle_bmp_dstySG.mwc" "MeshShape_0.iog.og[0].gco";
connectAttr "MeshShape_0.iog" "mtl_vehicle_bmp_dstySG.dsm" -na;

connectAttr "mtl_vehicle_bmp_track_dstySG.mwc" "MeshShape_1.iog.og[0].gco";
connectAttr "MeshShape_1.iog" "mtl_vehicle_bmp_track_dstySG.dsm" -na;


createNode transform -n "Joints";
setAttr ".ove" yes;

createNode joint -n "wheel_lod0" -p "Joints";
addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
setAttr ".uoc" yes;
setAttr ".ove" yes;
setAttr ".t" -type "double3"  0.000000  0.000000  0.000000 ;
setAttr ".mnrl" -type "double3" -360 -360 -360 ;
setAttr ".mxrl" -type "double3" 360 360 360 ;
setAttr ".radi"   0.50;
setAttr ".jo" -type "double3" 0.000000 -0.000000 0.000000;

