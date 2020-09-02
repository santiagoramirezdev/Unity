//Maya ASCII 8.5 scene
//Name: 
// www.tom-crowley.co.uk
//Generated By Lime: COD In game exporter
//xModel: vehicle_aas72x_destroyed_anim
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

createNode transform -n "Tom_vehicle_aas72x_destroyed_anim";
setAttr ".ove" yes;
createNode transform -n "TomMeshn1ahBQ_0" -p "Tom_vehicle_aas72x_destroyed_anim";
setAttr ".rp" -type "double3" 0.000000 0.000000 0.000000 ;
setAttr ".sp" -type "double3" 0.000000 0.000000 0.000000 ;
createNode mesh -n "MeshShape_0" -p "TomMeshn1ahBQ_0";
setAttr -k off ".v";
setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
setAttr ".uvst[0].uvsn" -type "string" "map1";
setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2"
 0.500000 0.000000 0.000000 1.000000 1.000000 1.000000;

setAttr ".dcol" yes;
setAttr ".dcc" -type "string" "Ambient+Diffuse";
setAttr ".ccls" -type "string" "colorSet1";
setAttr ".clst[0].clsn" -type "string" "colorSet1";
setAttr -s 6 ".clst[0].clsp";
setAttr ".clst[0].clsp[0:5]"
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
;
setAttr ".covm[0]"  0 1 1;
setAttr ".cdvm[0]"  0 1 1;
setAttr -s 3 ".vt[0:2]"
	0.000000 0.599044 0.000000
	0.499999 -0.400954 0.000000
	-0.499999 -0.400954 0.000000;
setAttr -s 6 ".ed[0:5]"
	2 1 0 1 0 0 0 2 0
	2 2 0 2 2 0 2 2 0;
setAttr -s 6 ".n[0:5]" -type "float3"
	 0.000000  0.000000  0.998043  0.000000  0.000000  0.998043  0.000000  0.000000  0.998043
	 0.000000  0.000000  0.998043  0.000000  0.000000  0.998043  0.000000  0.000000  0.998043;
setAttr -s 2 ".fc[0:1]" -type "polyFaces"
	f 3 0 1 2
	mu 0 3 2 1 0
	mc 0 3 0 1 2
	f 3 3 4 5
	mu 0 3 2 2 2
	mc 0 3 3 4 5;
setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;

createNode shadingEngine -n "gfx_missing_fxSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "gfx_missing_fxMI";
createNode phong -n "gfx_missing_fx";
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode file -n "gfx_missing_fxFILE";
	setAttr ".ftn" -type "string" "..\\_images\\missing_fx.dds";
if(getAttr("gfx_missing_fxFILE.fha")) connectAttr gfx_missing_fxFILE.ot gfx_missing_fx.it;
createNode place2dTexture -n "gfx_missing_fxP2DT";

connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "gfx_missing_fxSG.msg" "lightLinker1.lnk[2].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[2].sllk";
connectAttr "gfx_missing_fxSG.msg" "lightLinker1.slnk[2].solk";
connectAttr "gfx_missing_fx.oc" "gfx_missing_fxSG.ss";
connectAttr "gfx_missing_fxSG.msg" "gfx_missing_fxMI.sg";
connectAttr "gfx_missing_fx.msg" "gfx_missing_fxMI.m";
connectAttr "gfx_missing_fxFILE.msg" "gfx_missing_fxMI.t" -na;
connectAttr "gfx_missing_fxFILE.oc" "gfx_missing_fx.c";
connectAttr "gfx_missing_fxP2DT.c" "gfx_missing_fxFILE.c";
connectAttr "gfx_missing_fxP2DT.tf" "gfx_missing_fxFILE.tf";
connectAttr "gfx_missing_fxP2DT.rf" "gfx_missing_fxFILE.rf";
connectAttr "gfx_missing_fxP2DT.mu" "gfx_missing_fxFILE.mu";
connectAttr "gfx_missing_fxP2DT.mv" "gfx_missing_fxFILE.mv";
connectAttr "gfx_missing_fxP2DT.s" "gfx_missing_fxFILE.s";
connectAttr "gfx_missing_fxP2DT.wu" "gfx_missing_fxFILE.wu";
connectAttr "gfx_missing_fxP2DT.wv" "gfx_missing_fxFILE.wv";
connectAttr "gfx_missing_fxP2DT.re" "gfx_missing_fxFILE.re";
connectAttr "gfx_missing_fxP2DT.of" "gfx_missing_fxFILE.of";
connectAttr "gfx_missing_fxP2DT.r" "gfx_missing_fxFILE.ro";
connectAttr "gfx_missing_fxP2DT.n" "gfx_missing_fxFILE.n";
connectAttr "gfx_missing_fxP2DT.vt1" "gfx_missing_fxFILE.vt1";
connectAttr "gfx_missing_fxP2DT.vt2" "gfx_missing_fxFILE.vt2";
connectAttr "gfx_missing_fxP2DT.vt3" "gfx_missing_fxFILE.vt3";
connectAttr "gfx_missing_fxP2DT.vc1" "gfx_missing_fxFILE.vc1";
connectAttr "gfx_missing_fxP2DT.o" "gfx_missing_fxFILE.uv";
connectAttr "gfx_missing_fxP2DT.ofs" "gfx_missing_fxFILE.fs";
connectAttr "gfx_missing_fxSG.pa" ":renderPartition.st" -na;
connectAttr "gfx_missing_fx.msg" ":defaultShaderList1.s" -na;
connectAttr "gfx_missing_fxP2DT.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "gfx_missing_fxFILE.msg" ":defaultTextureList1.tx" -na;

connectAttr "gfx_missing_fxSG.mwc" "MeshShape_0.iog.og[0].gco";
connectAttr "MeshShape_0.iog" "gfx_missing_fxSG.dsm" -na;


createNode transform -n "Joints";
setAttr ".ove" yes;

createNode joint -n "tag_origin" -p "Joints";
addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
setAttr ".uoc" yes;
setAttr ".ove" yes;
setAttr ".t" -type "double3"  0.000000  0.000000  0.000000 ;
setAttr ".mnrl" -type "double3" -360 -360 -360 ;
setAttr ".mxrl" -type "double3" 360 360 360 ;
setAttr ".radi"   0.50;
setAttr ".jo" -type "double3" 0.000000 -0.000000 0.000000;

