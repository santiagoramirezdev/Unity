//Maya ASCII 8.5 scene
//Name: 
// www.tom-crowley.co.uk
//Generated By Lime: COD In game exporter
//xModel: vehicle_btr80_machine_gun_snow
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
	setAttr -s 1 ".lnk";
	setAttr -s 1 ".slnk";
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

createNode transform -n "Tom_vehicle_btr80_machine_gun_snow";
setAttr ".ove" yes;
createNode transform -n "TomMeshFF4AHR_0" -p "Tom_vehicle_btr80_machine_gun_snow";
setAttr ".rp" -type "double3" 0.000000 0.000000 0.000000 ;
setAttr ".sp" -type "double3" 0.000000 0.000000 0.000000 ;
createNode mesh -n "MeshShape_0" -p "TomMeshFF4AHR_0";
setAttr -k off ".v";
setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:76]";
setAttr ".uvst[0].uvsn" -type "string" "map1";
setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2"
 0.018677 0.361816 0.044464 0.361816 0.018677 0.358398 0.044464 0.358398
 0.018677 0.362305 0.044464 0.362305 0.018677 0.378906 0.044464 0.378906
 0.018677 0.378906 0.044464 0.378906 0.018677 0.382324 0.044464 0.382324
 0.018677 0.382324 0.044464 0.382324 0.018677 0.378418 0.044464 0.378418
 0.018677 0.378418 0.044464 0.378418 0.018677 0.361816 0.044464 0.361816
 0.062439 0.261719 0.071350 0.259766 0.062439 0.261719 0.071350 0.259766
 0.071411 0.241699 0.127319 0.241699 0.071411 0.248535 0.127319 0.248535
 0.071411 0.248535 0.127319 0.248535 0.071411 0.241699 0.127319 0.241699
 0.018677 0.350586 0.044464 0.350586 0.018677 0.358398 0.044464 0.358398
 0.018677 0.362305 0.044464 0.362305 0.127197 0.259766 0.071350 0.259766
 0.127197 0.253906 0.071350 0.253906 0.062439 0.261719 0.062439 0.253906
 0.071350 0.248047 0.062439 0.242676 0.127197 0.248047 0.127197 0.253906
 0.062439 0.261719 0.071350 0.259766 0.062439 0.253906 0.071350 0.253906
 0.127197 0.259766 0.127197 0.253906 0.062439 0.242676 0.071350 0.248047
 0.127197 0.253906 0.127197 0.248047 0.062439 0.242676 0.062439 0.242676
 0.071350 0.248047 0.251465 0.087402 0.248413 0.098145 0.245361 0.087402
 0.254639 0.098145 0.251465 0.108398 0.245361 0.108398 0.242310 0.098145
 0.229736 0.398926 0.231812 0.411133 0.226929 0.402832 0.233765 0.399414
 0.236694 0.402832 0.236572 0.419922 0.231689 0.423340 0.226929 0.419922
;

setAttr ".dcol" yes;
setAttr ".dcc" -type "string" "Ambient+Diffuse";
setAttr ".ccls" -type "string" "colorSet1";
setAttr ".clst[0].clsn" -type "string" "colorSet1";
setAttr -s 156 ".clst[0].clsp";
setAttr ".clst[0].clsp[0:155]"
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
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
;
setAttr ".covm[0]"  0 1 1;
setAttr ".cdvm[0]"  0 1 1;
setAttr -s 76 ".vt[0:75]"
	19.844603 2.998014 -2.681897
	0.000000 2.998014 -2.681897
	19.844603 1.198064 -3.837481
	0.000000 1.198064 -3.837481
	19.844603 -3.122576 -2.629891
	0.000000 -3.122562 -2.629891
	19.844603 -3.112300 2.682091
	0.000000 -3.112275 2.682091
	19.844603 -3.112300 2.682091
	0.000000 -3.112275 2.682091
	19.844603 -0.044723 3.831220
	0.000000 -0.044723 3.831220
	19.844603 -0.044723 3.831220
	0.000000 -0.044723 3.831220
	19.844603 3.008295 2.630066
	0.000000 3.008295 2.630066
	19.844603 3.008295 2.630066
	0.000000 3.008295 2.630066
	19.844603 2.998014 -2.681897
	0.000000 2.998014 -2.681897
	72.545746 -1.544416 2.576067
	65.300842 -0.831652 1.341509
	72.545746 1.430175 2.576061
	65.300842 0.717406 1.341506
	65.300842 0.717410 -1.341547
	20.039242 0.717410 -1.341547
	65.300842 -0.831648 -1.341544
	20.039242 -0.831648 -1.341544
	65.300842 -0.831652 1.341509
	20.039242 -0.831652 1.341509
	65.300842 0.717406 1.341506
	20.039242 0.717406 1.341506
	19.844603 1.198064 -3.837481
	0.000000 1.198064 -3.837481
	19.844603 -1.337169 -3.824628
	0.000000 -1.337169 -3.824628
	19.844603 -3.122576 -2.629891
	0.000000 -3.122562 -2.629891
	20.039242 -0.831652 1.341509
	65.300842 -0.831652 1.341509
	20.039242 -1.606181 -0.000016
	65.300842 -1.606181 -0.000016
	72.545746 -1.544416 2.576067
	72.545746 -3.031714 -0.000013
	65.300842 -0.831648 -1.341544
	72.545746 -1.544422 -2.576099
	20.039242 -0.831648 -1.341544
	20.039242 -1.606181 -0.000016
	72.545746 1.430175 2.576061
	65.300842 0.717406 1.341506
	72.545746 2.917477 0.000014
	65.300842 1.491939 -0.000022
	20.039242 0.717406 1.341506
	20.039242 1.491939 -0.000022
	72.545746 1.430179 -2.576105
	65.300842 0.717410 -1.341547
	20.039242 1.491939 -0.000022
	20.039242 0.717410 -1.341547
	72.545746 1.430179 -2.576105
	72.545746 -1.544422 -2.576099
	65.300842 -0.831648 -1.341544
	72.545746 -1.544422 -2.576099
	71.226372 -0.057123 -0.000019
	72.545746 1.430179 -2.576105
	72.545746 -3.031714 -0.000013
	72.545746 -1.544416 2.576067
	72.545746 1.430175 2.576061
	72.545746 2.917477 0.000014
	19.844603 1.198064 -3.837481
	22.919027 -0.057138 0.000078
	19.844603 2.998014 -2.681897
	19.844603 -1.337169 -3.824628
	19.844603 -3.122576 -2.629891
	19.844603 -3.112300 2.682091
	19.844603 -0.044723 3.831220
	19.844603 3.008295 2.630066;
setAttr -s 156 ".ed[0:155]"
	2 1 0 1 0 0 0 2 0
	3 1 0 1 2 0 2 3 0
	6 5 0 5 4 0 4 6 0
	7 5 0 5 6 0 6 7 0
	10 9 0 9 8 0 8 10 0
	11 9 0 9 10 0 10 11 0
	14 13 0 13 12 0 12 14 0
	15 13 0 13 14 0 14 15 0
	18 17 0 17 16 0 16 18 0
	19 17 0 17 18 0 18 19 0
	22 21 0 21 20 0 20 22 0
	23 21 0 21 22 0 22 23 0
	26 25 0 25 24 0 24 26 0
	27 25 0 25 26 0 26 27 0
	30 29 0 29 28 0 28 30 0
	31 29 0 29 30 0 30 31 0
	34 33 0 33 32 0 32 34 0
	34 35 0 35 33 0 33 34 0
	36 35 0 35 34 0 34 36 0
	37 35 0 35 36 0 36 37 0
	40 39 0 39 38 0 38 40 0
	41 39 0 39 40 0 40 41 0
	41 42 0 42 39 0 39 41 0
	41 43 0 43 42 0 42 41 0
	41 44 0 44 43 0 43 41 0
	43 44 0 44 45 0 45 43 0
	46 44 0 44 41 0 41 46 0
	47 46 0 46 41 0 41 47 0
	50 49 0 49 48 0 48 50 0
	51 49 0 49 50 0 50 51 0
	51 52 0 52 49 0 49 51 0
	51 53 0 53 52 0 52 51 0
	54 51 0 51 50 0 50 54 0
	55 51 0 51 54 0 54 55 0
	55 56 0 56 51 0 51 55 0
	55 57 0 57 56 0 56 55 0
	59 55 0 55 58 0 58 59 0
	60 55 0 55 59 0 59 60 0
	63 62 0 62 61 0 61 63 0
	62 64 0 64 61 0 61 62 0
	62 65 0 65 64 0 64 62 0
	62 66 0 66 65 0 65 62 0
	62 67 0 67 66 0 66 62 0
	67 62 0 62 63 0 63 67 0
	70 69 0 69 68 0 68 70 0
	69 71 0 71 68 0 68 69 0
	69 72 0 72 71 0 71 69 0
	69 73 0 73 72 0 72 69 0
	69 74 0 74 73 0 73 69 0
	69 75 0 75 74 0 74 69 0
	75 69 0 69 70 0 70 75 0
	75 75 0 75 75 0 75 75 0;
setAttr -s 156 ".n[0:155]" -type "float3"
	 0.000000  0.275930 -0.956947  0.000000  0.538160 -0.837573  0.000000  0.538160 -0.837573
	 0.000000  0.275930 -0.956947  0.000000  0.538160 -0.837573  0.000000  0.275930 -0.956947
	 0.000000 -0.996086  0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086  0.000000
	 0.000000 -0.996086  0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086  0.000000
	 0.000000  0.005871  0.998043  0.000000 -0.346380  0.933464  0.000000 -0.346380  0.933464
	 0.000000  0.005871  0.998043  0.000000 -0.346380  0.933464  0.000000  0.005871  0.998043
	 0.000000  0.363992  0.927593  0.000000  0.005871  0.998043  0.000000  0.005871  0.998043
	 0.000000  0.363992  0.927593  0.000000  0.005871  0.998043  0.000000  0.363992  0.927593
	 0.000000  0.998043  0.000000  0.000000  0.998043  0.000000  0.000000  0.998043  0.000000
	 0.000000  0.998043  0.000000  0.000000  0.998043  0.000000  0.000000  0.998043  0.000000
	-0.187867  0.487280  0.847358 -0.091977 -0.493151  0.859100 -0.187867 -0.485323  0.847358
	-0.091977  0.495108  0.859100 -0.091977 -0.493151  0.859100 -0.187867  0.487280  0.847358
	-0.091977 -0.493151 -0.857143  0.000000  0.000000 -0.996086 -0.091977  0.495108 -0.857143
	 0.000000  0.000000 -0.996086  0.000000  0.000000 -0.996086 -0.091977 -0.493151 -0.857143
	-0.091977  0.495108  0.859100  0.000000  0.000000  0.998043 -0.091977 -0.493151  0.859100
	 0.000000  0.000000  0.998043  0.000000  0.000000  0.998043 -0.091977  0.495108  0.859100
	 0.000000 -0.287671 -0.953033  0.000000  0.275930 -0.956947  0.000000  0.275930 -0.956947
	 0.000000 -0.287671 -0.953033  0.000000 -0.287671 -0.953033  0.000000  0.275930 -0.956947
	 0.000000 -0.551859 -0.827789  0.000000 -0.287671 -0.953033  0.000000 -0.287671 -0.953033
	 0.000000 -0.551859 -0.827789  0.000000 -0.287671 -0.953033  0.000000 -0.551859 -0.827789
	 0.000000 -0.861057  0.497065 -0.091977 -0.493151  0.859100  0.000000 -0.861057  0.497065
	-0.091977 -0.992172  0.000000 -0.091977 -0.493151  0.859100  0.000000 -0.861057  0.497065
	-0.091977 -0.992172  0.000000 -0.187867 -0.485323  0.847358 -0.091977 -0.493151  0.859100
	-0.091977 -0.992172  0.000000 -0.187867 -0.976517  0.000000 -0.187867 -0.485323  0.847358
	-0.091977 -0.992172  0.000000 -0.091977 -0.493151 -0.857143 -0.187867 -0.976517  0.000000
	-0.187867 -0.976517  0.000000 -0.091977 -0.493151 -0.857143 -0.187867 -0.485323 -0.845401
	 0.000000 -0.861057 -0.495108 -0.091977 -0.493151 -0.857143 -0.091977 -0.992172  0.000000
	 0.000000 -0.861057 -0.495108  0.000000 -0.861057 -0.495108 -0.091977 -0.992172  0.000000
	-0.187867  0.978474  0.000000 -0.091977  0.495108  0.859100 -0.187867  0.487280  0.847358
	-0.091977  0.994129  0.000000 -0.091977  0.495108  0.859100 -0.187867  0.978474  0.000000
	-0.091977  0.994129  0.000000  0.000000  0.863014  0.497065 -0.091977  0.495108  0.859100
	-0.091977  0.994129  0.000000  0.000000  0.863014  0.497065  0.000000  0.863014  0.497065
	-0.187867  0.487280 -0.845401 -0.091977  0.994129  0.000000 -0.187867  0.978474  0.000000
	-0.091977  0.495108 -0.857143 -0.091977  0.994129  0.000000 -0.187867  0.487280 -0.845401
	-0.091977  0.495108 -0.857143  0.000000  0.863014 -0.495108 -0.091977  0.994129  0.000000
	-0.091977  0.495108 -0.857143  0.000000  0.863014 -0.495108  0.000000  0.863014 -0.495108
	-0.187867 -0.485323 -0.845401 -0.091977  0.495108 -0.857143 -0.187867  0.487280 -0.845401
	-0.091977 -0.493151 -0.857143 -0.091977  0.495108 -0.857143 -0.187867 -0.485323 -0.845401
	 0.911937 -0.197652  0.348337  0.998043  0.000000  0.000000  0.911937  0.199609  0.348337
	 0.998043  0.000000  0.000000  0.911937  0.403131  0.000000  0.911937  0.199609  0.348337
	 0.998043  0.000000  0.000000  0.911937  0.199609 -0.346380  0.911937  0.403131  0.000000
	 0.998043  0.000000  0.000000  0.911937 -0.197652 -0.346380  0.911937  0.199609 -0.346380
	 0.998043  0.000000  0.000000  0.911937 -0.401174  0.000000  0.911937 -0.197652 -0.346380
	 0.911937 -0.401174  0.000000  0.998043  0.000000  0.000000  0.911937 -0.197652  0.348337
	 0.784736  0.547945 -0.270059  0.994129  0.000000 -0.078278  0.792564  0.164384 -0.577299
	 0.994129  0.000000 -0.078278  0.792564 -0.172211 -0.575342  0.792564  0.164384 -0.577299
	 0.994129  0.000000 -0.078278  0.784736 -0.551859 -0.266145  0.792564 -0.172211 -0.575342
	 0.994129  0.000000 -0.078278  0.792564 -0.504892  0.328767  0.784736 -0.551859 -0.266145
	 0.994129  0.000000 -0.078278  0.776908  0.001957  0.624266  0.792564 -0.504892  0.328767
	 0.994129  0.000000 -0.078278  0.790607  0.510763  0.324853  0.776908  0.001957  0.624266
	 0.790607  0.510763  0.324853  0.994129  0.000000 -0.078278  0.784736  0.547945 -0.270059
	 0.790607  0.510763  0.324853  0.790607  0.510763  0.324853  0.790607  0.510763  0.324853;
setAttr -s 52 ".fc[0:51]" -type "polyFaces"
	f 3 0 1 2
	mu 0 3 2 1 0
	mc 0 3 0 1 2
	f 3 3 4 5
	mu 0 3 3 1 2
	mc 0 3 3 4 5
	f 3 6 7 8
	mu 0 3 6 5 4
	mc 0 3 6 7 8
	f 3 9 10 11
	mu 0 3 7 5 6
	mc 0 3 9 10 11
	f 3 12 13 14
	mu 0 3 10 9 8
	mc 0 3 12 13 14
	f 3 15 16 17
	mu 0 3 11 9 10
	mc 0 3 15 16 17
	f 3 18 19 20
	mu 0 3 14 13 12
	mc 0 3 18 19 20
	f 3 21 22 23
	mu 0 3 15 13 14
	mc 0 3 21 22 23
	f 3 24 25 26
	mu 0 3 18 17 16
	mc 0 3 24 25 26
	f 3 27 28 29
	mu 0 3 19 17 18
	mc 0 3 27 28 29
	f 3 30 31 32
	mu 0 3 22 21 20
	mc 0 3 30 31 32
	f 3 33 34 35
	mu 0 3 23 21 22
	mc 0 3 33 34 35
	f 3 36 37 38
	mu 0 3 26 25 24
	mc 0 3 36 37 38
	f 3 39 40 41
	mu 0 3 27 25 26
	mc 0 3 39 40 41
	f 3 42 43 44
	mu 0 3 30 29 28
	mc 0 3 42 43 44
	f 3 45 46 47
	mu 0 3 31 29 30
	mc 0 3 45 46 47
	f 3 48 49 50
	mu 0 3 34 33 32
	mc 0 3 48 49 50
	f 3 51 52 53
	mu 0 3 34 35 33
	mc 0 3 51 52 53
	f 3 54 55 56
	mu 0 3 36 35 34
	mc 0 3 54 55 56
	f 3 57 58 59
	mu 0 3 37 35 36
	mc 0 3 57 58 59
	f 3 60 61 62
	mu 0 3 40 39 38
	mc 0 3 60 61 62
	f 3 63 64 65
	mu 0 3 41 39 40
	mc 0 3 63 64 65
	f 3 66 67 68
	mu 0 3 41 42 39
	mc 0 3 66 67 68
	f 3 69 70 71
	mu 0 3 41 43 42
	mc 0 3 69 70 71
	f 3 72 73 74
	mu 0 3 41 44 43
	mc 0 3 72 73 74
	f 3 75 76 77
	mu 0 3 43 44 45
	mc 0 3 75 76 77
	f 3 78 79 80
	mu 0 3 46 44 41
	mc 0 3 78 79 80
	f 3 81 82 83
	mu 0 3 47 46 41
	mc 0 3 81 82 83
	f 3 84 85 86
	mu 0 3 50 49 48
	mc 0 3 84 85 86
	f 3 87 88 89
	mu 0 3 51 49 50
	mc 0 3 87 88 89
	f 3 90 91 92
	mu 0 3 51 52 49
	mc 0 3 90 91 92
	f 3 93 94 95
	mu 0 3 51 53 52
	mc 0 3 93 94 95
	f 3 96 97 98
	mu 0 3 54 51 50
	mc 0 3 96 97 98
	f 3 99 100 101
	mu 0 3 55 51 54
	mc 0 3 99 100 101
	f 3 102 103 104
	mu 0 3 55 56 51
	mc 0 3 102 103 104
	f 3 105 106 107
	mu 0 3 55 57 56
	mc 0 3 105 106 107
	f 3 108 109 110
	mu 0 3 59 55 58
	mc 0 3 108 109 110
	f 3 111 112 113
	mu 0 3 60 55 59
	mc 0 3 111 112 113
	f 3 114 115 116
	mu 0 3 63 62 61
	mc 0 3 114 115 116
	f 3 117 118 119
	mu 0 3 62 64 61
	mc 0 3 117 118 119
	f 3 120 121 122
	mu 0 3 62 65 64
	mc 0 3 120 121 122
	f 3 123 124 125
	mu 0 3 62 66 65
	mc 0 3 123 124 125
	f 3 126 127 128
	mu 0 3 62 67 66
	mc 0 3 126 127 128
	f 3 129 130 131
	mu 0 3 67 62 63
	mc 0 3 129 130 131
	f 3 132 133 134
	mu 0 3 70 69 68
	mc 0 3 132 133 134
	f 3 135 136 137
	mu 0 3 69 71 68
	mc 0 3 135 136 137
	f 3 138 139 140
	mu 0 3 69 72 71
	mc 0 3 138 139 140
	f 3 141 142 143
	mu 0 3 69 73 72
	mc 0 3 141 142 143
	f 3 144 145 146
	mu 0 3 69 74 73
	mc 0 3 144 145 146
	f 3 147 148 149
	mu 0 3 69 75 74
	mc 0 3 147 148 149
	f 3 150 151 152
	mu 0 3 75 69 70
	mc 0 3 150 151 152
	f 3 153 154 155
	mu 0 3 75 75 75
	mc 0 3 153 154 155;
setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;

createNode shadingEngine -n "mtl_vehicle_btr80_snowSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "mtl_vehicle_btr80_snowMI";
createNode phong -n "mtl_vehicle_btr80_snow";
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode file -n "mtl_vehicle_btr80_snowFILE";
	setAttr ".ftn" -type "string" "..\\_images\\vehicle_btr80_snow_col.dds";
if(getAttr("mtl_vehicle_btr80_snowFILE.fha")) connectAttr mtl_vehicle_btr80_snowFILE.ot mtl_vehicle_btr80_snow.it;
createNode place2dTexture -n "mtl_vehicle_btr80_snowP2DT";

connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "mtl_vehicle_btr80_snowSG.msg" "lightLinker1.lnk[2].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[2].sllk";
connectAttr "mtl_vehicle_btr80_snowSG.msg" "lightLinker1.slnk[2].solk";
connectAttr "mtl_vehicle_btr80_snow.oc" "mtl_vehicle_btr80_snowSG.ss";
connectAttr "mtl_vehicle_btr80_snowSG.msg" "mtl_vehicle_btr80_snowMI.sg";
connectAttr "mtl_vehicle_btr80_snow.msg" "mtl_vehicle_btr80_snowMI.m";
connectAttr "mtl_vehicle_btr80_snowFILE.msg" "mtl_vehicle_btr80_snowMI.t" -na;
connectAttr "mtl_vehicle_btr80_snowFILE.oc" "mtl_vehicle_btr80_snow.c";
connectAttr "mtl_vehicle_btr80_snowP2DT.c" "mtl_vehicle_btr80_snowFILE.c";
connectAttr "mtl_vehicle_btr80_snowP2DT.tf" "mtl_vehicle_btr80_snowFILE.tf";
connectAttr "mtl_vehicle_btr80_snowP2DT.rf" "mtl_vehicle_btr80_snowFILE.rf";
connectAttr "mtl_vehicle_btr80_snowP2DT.mu" "mtl_vehicle_btr80_snowFILE.mu";
connectAttr "mtl_vehicle_btr80_snowP2DT.mv" "mtl_vehicle_btr80_snowFILE.mv";
connectAttr "mtl_vehicle_btr80_snowP2DT.s" "mtl_vehicle_btr80_snowFILE.s";
connectAttr "mtl_vehicle_btr80_snowP2DT.wu" "mtl_vehicle_btr80_snowFILE.wu";
connectAttr "mtl_vehicle_btr80_snowP2DT.wv" "mtl_vehicle_btr80_snowFILE.wv";
connectAttr "mtl_vehicle_btr80_snowP2DT.re" "mtl_vehicle_btr80_snowFILE.re";
connectAttr "mtl_vehicle_btr80_snowP2DT.of" "mtl_vehicle_btr80_snowFILE.of";
connectAttr "mtl_vehicle_btr80_snowP2DT.r" "mtl_vehicle_btr80_snowFILE.ro";
connectAttr "mtl_vehicle_btr80_snowP2DT.n" "mtl_vehicle_btr80_snowFILE.n";
connectAttr "mtl_vehicle_btr80_snowP2DT.vt1" "mtl_vehicle_btr80_snowFILE.vt1";
connectAttr "mtl_vehicle_btr80_snowP2DT.vt2" "mtl_vehicle_btr80_snowFILE.vt2";
connectAttr "mtl_vehicle_btr80_snowP2DT.vt3" "mtl_vehicle_btr80_snowFILE.vt3";
connectAttr "mtl_vehicle_btr80_snowP2DT.vc1" "mtl_vehicle_btr80_snowFILE.vc1";
connectAttr "mtl_vehicle_btr80_snowP2DT.o" "mtl_vehicle_btr80_snowFILE.uv";
connectAttr "mtl_vehicle_btr80_snowP2DT.ofs" "mtl_vehicle_btr80_snowFILE.fs";
connectAttr "mtl_vehicle_btr80_snowSG.pa" ":renderPartition.st" -na;
connectAttr "mtl_vehicle_btr80_snow.msg" ":defaultShaderList1.s" -na;
connectAttr "mtl_vehicle_btr80_snowP2DT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mtl_vehicle_btr80_snowFILE.msg" ":defaultTextureList1.tx" -na;

connectAttr "mtl_vehicle_btr80_snowSG.mwc" "MeshShape_0.iog.og[0].gco";
connectAttr "MeshShape_0.iog" "mtl_vehicle_btr80_snowSG.dsm" -na;


createNode transform -n "Joints";
setAttr ".ove" yes;

createNode joint -n "tag_dummy" -p "Joints";
addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
setAttr ".uoc" yes;
setAttr ".ove" yes;
setAttr ".t" -type "double3"  0.000000  0.000000  0.000000 ;
setAttr ".mnrl" -type "double3" -360 -360 -360 ;
setAttr ".mxrl" -type "double3" 360 360 360 ;
setAttr ".radi"   0.50;
setAttr ".jo" -type "double3" 0.000000 -0.000000 0.000000;

createNode joint -n "tag_pivot" -p "Joints";
addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
setAttr ".uoc" yes;
setAttr ".ove" yes;
setAttr ".t" -type "double3"  0.000000  0.000000  0.000000 ;
setAttr ".mnrl" -type "double3" -360 -360 -360 ;
setAttr ".mxrl" -type "double3" 360 360 360 ;
setAttr ".radi"   0.50;
setAttr ".jo" -type "double3" 0.000000 -0.000000 0.000000;

createNode joint -n "bi_base" -p "tag_pivot";
addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
setAttr ".uoc" yes;
setAttr ".ove" yes;
setAttr ".t" -type "double3"  0.000000  0.000000  0.000000 ;
setAttr ".mnrl" -type "double3" -360 -360 -360 ;
setAttr ".mxrl" -type "double3" 360 360 360 ;
setAttr ".radi"   0.50;
setAttr ".jo" -type "double3" 0.000000 -0.000000 0.000000;

createNode joint -n "tag_aim" -p "tag_dummy";
addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
setAttr ".uoc" yes;
setAttr ".ove" yes;
setAttr ".t" -type "double3"  0.000000  0.000000  0.000000 ;
setAttr ".mnrl" -type "double3" -360 -360 -360 ;
setAttr ".mxrl" -type "double3" 360 360 360 ;
setAttr ".radi"   0.50;
setAttr ".jo" -type "double3" 0.000000 -0.000000 0.000000;

createNode joint -n "bi_l" -p "bi_base";
addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
setAttr ".uoc" yes;
setAttr ".ove" yes;
setAttr ".t" -type "double3"  0.000000 30.480001  0.000000 ;
setAttr ".mnrl" -type "double3" -360 -360 -360 ;
setAttr ".mxrl" -type "double3" 360 360 360 ;
setAttr ".radi"   0.50;
setAttr ".jo" -type "double3" 0.000000 -0.000000 0.000000;

createNode joint -n "bi_r" -p "bi_base";
addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
setAttr ".uoc" yes;
setAttr ".ove" yes;
setAttr ".t" -type "double3"  0.000000 -30.480000  0.000000 ;
setAttr ".mnrl" -type "double3" -360 -360 -360 ;
setAttr ".mxrl" -type "double3" 360 360 360 ;
setAttr ".radi"   0.50;
setAttr ".jo" -type "double3" 0.000000 -0.000000 0.000000;

createNode joint -n "mg01" -p "bi_base";
addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
setAttr ".uoc" yes;
setAttr ".ove" yes;
setAttr ".t" -type "double3"  0.000000  0.000000  0.000000 ;
setAttr ".mnrl" -type "double3" -360 -360 -360 ;
setAttr ".mxrl" -type "double3" 360 360 360 ;
setAttr ".radi"   0.50;
setAttr ".jo" -type "double3" 0.000000 -0.000000 0.000000;

createNode joint -n "tag_butt" -p "tag_aim";
addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
setAttr ".uoc" yes;
setAttr ".ove" yes;
setAttr ".t" -type "double3" -30.480000 15.240000 -0.000019 ;
setAttr ".mnrl" -type "double3" -360 -360 -360 ;
setAttr ".mxrl" -type "double3" 360 360 360 ;
setAttr ".radi"   0.50;
setAttr ".jo" -type "double3" 0.000000 -0.000000 0.000000;

createNode joint -n "tag_player" -p "tag_aim";
addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
setAttr ".uoc" yes;
setAttr ".ove" yes;
setAttr ".t" -type "double3" -45.719994  0.000000  0.000000 ;
setAttr ".mnrl" -type "double3" -360 -360 -360 ;
setAttr ".mxrl" -type "double3" 360 360 360 ;
setAttr ".radi"   0.50;
setAttr ".jo" -type "double3" 0.000000 -0.000000 0.000000;

createNode joint -n "tag_weapon" -p "tag_aim";
addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
setAttr ".uoc" yes;
setAttr ".ove" yes;
setAttr ".t" -type "double3" -30.480000 -15.240000  0.000000 ;
setAttr ".mnrl" -type "double3" -360 -360 -360 ;
setAttr ".mxrl" -type "double3" 360 360 360 ;
setAttr ".radi"   0.50;
setAttr ".jo" -type "double3" 0.000000 -0.000000 0.000000;

createNode joint -n "tag_flash" -p "mg01";
addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
setAttr ".uoc" yes;
setAttr ".ove" yes;
setAttr ".t" -type "double3" 74.044899  0.000000  0.000000 ;
setAttr ".mnrl" -type "double3" -360 -360 -360 ;
setAttr ".mxrl" -type "double3" 360 360 360 ;
setAttr ".radi"   0.50;
setAttr ".jo" -type "double3" 0.000000 -0.000000 0.000000;

