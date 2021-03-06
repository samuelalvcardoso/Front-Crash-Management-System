*begin "version 2017.2.0.16  5-18-2018  15:50:47"
*templatefileset "C:/Program Files/Altair/2017/templates/feoutput/radioss/radioss2017.blk"
*menufilterset "*"
*menufilterdisable 
*createmark collections 1
*clearmark collections 1
*createmark collections 2
*clearmark collections 2
*createmark controllers 1
*clearmark controllers 1
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*ME_CoreBehaviorAdjust "allowable_actions_policy=TC_lite"
*loaddefaultattributevaluesfromxml 
*start_batch_import 3
*setgeomrefinelevel 1
# #####
#import geometry
# #####
*geomimport "iges_altair" "C:/Users/samue/Desktop/Estrutura_menos_rigida/Bumper_two.igs" "CleanupTol=-0.01" "DoNotMergeEdges=off" "ImportBlanked=off" "ScaleFactor=1.0"
*end_batch_import 
*rotateabout 0 0 0 0
*viewset 0.998617014 0.033412922 0.0405910778 0 -0.034557132 0.999015391 0.027821795 0 -0.039621504 -0.029186029 0.998788422 0 2.17918272 1.6052316 0.0666367842 1 -40.7 -24.2 40.7 24.2
*drawlistresetstyle 
*setsurfacenormalsdisplaytype 1
*normalsoff 
# ###
create midsurfaces
# ###
*createmark surfaces 1 "all"
*midsurface_extract_10 surfaces 1 -1 0 1 1 0 0 20 0 0 10 0 10 -2 undefined 0 0 1
*midsurface_remove_edit_bodies 
*release_temp_fixed_vertices 
*normalsoff 
# ###
#Delete first component to only have the midsurfaces to mesh
# ###
*startnotehistorystate {Deleted Components "lvl10000"}
*createmark components 1
*clearmark components 1
*createmark components 1 "lvl10000"
*deletemark components 1
*endnotehistorystate {Deleted Components "lvl10000"}
*createentity mats cardimage=M1_ELAST name=material1
*createentity mats cardimage=M1_ELAST name=material2
*startnotehistorystate {Deleted Materials "material2"}
*createmark materials 1 "material2"
*clearmark materials 1
*createmark materials 1 "material2"
*deletemark materials 1
# ##
#Material definition
# ####
*endnotehistorystate {Deleted Materials "material2"}
*setvalue mats id=1 cardimage="M1_ELAST"
*setvalue mats id=1 cardimage="M2_PLAS_JOHNS_ZERIL"
*startnotehistorystate {Modified Rho_Initial of material}
*endnotehistorystate {Modified Rho_Initial of material}
*startnotehistorystate {Modified Rho_Initial of material}
*setvalue mats id=1 STATUS=1 118=2.7e-006
*endnotehistorystate {Modified Rho_Initial of material}
*startnotehistorystate {Updated "118" of Materials}
*endnotehistorystate {Updated "118" of Materials}
*startnotehistorystate {Modified E of material}
*endnotehistorystate {Modified E of material}
*startnotehistorystate {Modified E of material}
*endnotehistorystate {Modified E of material}
*startnotehistorystate {Modified E of material}
*setvalue mats id=1 STATUS=1 119=69
*endnotehistorystate {Modified E of material}
*startnotehistorystate {Updated "119" of Materials}
*endnotehistorystate {Updated "119" of Materials}
*startnotehistorystate {Modified Iflag of material}
*setvalue mats id=1 STATUS=1 6002=0
*endnotehistorystate {Modified Iflag of material}
*startnotehistorystate {Modified Iflag of material}
*setvalue mats id=1 STATUS=1 6002=1
*endnotehistorystate {Modified Iflag of material}
*startnotehistorystate {Modified SIGMA_Y of material}
*endnotehistorystate {Modified SIGMA_Y of material}
*startnotehistorystate {Modified SIGMA_Y of material}
*setvalue mats id=1 STATUS=1 6028=0.240000
*endnotehistorystate {Modified SIGMA_Y of material}
*startnotehistorystate {Updated "6028" of Materials}
*endnotehistorystate {Updated "6028" of Materials}
*startnotehistorystate {Modified UTS of material}
*endnotehistorystate {Modified UTS of material}
*startnotehistorystate {Modified UTS of material}
*setvalue mats id=1 STATUS=1 1510=0.290000
*endnotehistorystate {Modified UTS of material}
*startnotehistorystate {Modified E_UTS of material}
*endnotehistorystate {Modified E_UTS of material}
*startnotehistorystate {Modified E_UTS of material}
*setvalue mats id=1 STATUS=1 1510=0.100000
*endnotehistorystate {Modified E_UTS of material}
*createentity props cardimage=P1_SHELL name=property1
*startnotehistorystate {Modified Thick of property}
*endnotehistorystate {Modified Thick of property}
*startnotehistorystate {Modified Thick of property}
*setvalue props id=1 STATUS=1 431=4.000000
*endnotehistorystate {Modified Thick of property}
*startnotehistorystate {Updated "431" of Properties}
*endnotehistorystate {Updated "431" of Properties}
*startnotehistorystate {Modified N of property}
*setvalue props id=1 STATUS=1 427=5
*endnotehistorystate {Modified N of property}
*startnotehistorystate {Updated "427" of Properties}
*endnotehistorystate {Updated "427" of Properties}
*startnotehistorystate {Modified Ishell of property}
*setvalue props id=1 STATUS=1 8028=24
*endnotehistorystate {Modified Ishell of property}
*createentity groups cardimage=TYPE1 name=group1
# ##
#define contact cart TYPE 7
# ##
*setvalue groups id=1 cardimage="TYPE7"
*startnotehistorystate {Updated "cardimage" of Groups}
*createmark groups 1 "group1"
*clearmark groups 1
*createmark groups 1 "group1"
*clearmark groups 1
*endnotehistorystate {Updated "cardimage" of Groups}
*setvalue groups id=1 slaveentityids={comps 0}
*startnotehistorystate {Updated "slaveentityids" of Groups}
*createmark groups 1
*clearmark groups 1
*createmark groups 1 "group1"
*clearmark groups 1
*createmark groups 1
*clearmark groups 1
*createmark groups 1 "group1"
*clearmark groups 1
*endnotehistorystate {Updated "slaveentityids" of Groups}
*setvalue comps id=2 cardimage="Part"
*startnotehistorystate {Modified Prop_Id of component from 0 to 1}
*setvalue comps id=2 propertyid={props 1}
*endnotehistorystate {Modified Prop_Id of component from 0 to 1}
*startnotehistorystate {Modified Mat_Id of component from 0 to 1}
*setvalue comps id=2 materialid={mats 1}
*endnotehistorystate {Modified Mat_Id of component from 0 to 1}
*setvalue groups id=1 masterentityids={comps 0}
*retainmarkselections 1
*retainmarkselections 0
*startnotehistorystate {Modified Surf_id  M of group}
*setvalue groups id=1 masterentityids={comps 2}
*endnotehistorystate {Modified Surf_id  M of group}
*retainmarkselections 1
*retainmarkselections 0
*startnotehistorystate {Modified Surf_id  M of group}
*setvalue groups id=1 masterentityids={comps 2}
*endnotehistorystate {Modified Surf_id  M of group}
*retainmarkselections 1
*retainmarkselections 0
*startnotehistorystate {Modified Grnod_id  S of group}
*setvalue groups id=1 slaveentityids={comps 2}
*endnotehistorystate {Modified Grnod_id  S of group}
*startnotehistorystate {Updated "slaveentityids" of Groups}
*createmark groups 1
*clearmark groups 1
*createmark groups 1 "group1"
*clearmark groups 1
*createmark groups 1
*clearmark groups 1
*createmark groups 1 "group1"
*clearmark groups 1
*endnotehistorystate {Updated "slaveentityids" of Groups}
*startnotehistorystate {Modified Stfac of group}
*endnotehistorystate {Modified Stfac of group}
*startnotehistorystate {Modified Stfac of group}
*setvalue groups id=1 STATUS=1 4027=1
*endnotehistorystate {Modified Stfac of group}
*startnotehistorystate {Modified Fric of group}
*endnotehistorystate {Modified Fric of group}
*startnotehistorystate {Modified Fric of group}
*setvalue groups id=1 STATUS=1 5=0.2
*endnotehistorystate {Modified Fric of group}
*startnotehistorystate {Modified Gapmin of group}
*endnotehistorystate {Modified Gapmin of group}
*startnotehistorystate {Modified Gapmin of group}
*setvalue groups id=1 STATUS=1 5153=0.9
*endnotehistorystate {Modified Gapmin of group}
*createnode 0 0 60 0 0 0
*rotateabout 0 0 0 0
*viewset 0.802892142 -0.392363923 0.448792557 0 0.181807787 0.878153464 0.442484376 0 -0.567723644 -0.273673247 0.776397332 0 31.2248004 15.0520286 12.2981467 1 -40.7 -24.2 40.7 24.2
*rotateabout 0 0 0 0
*viewset 0.677473455 -0.5679499 0.46739986 0 0.422485612 0.820631469 0.384798518 0 -0.602109314 -0.0632210657 0.795906697 0 22.6721279 -9.86165836 11.2251316 1 -115.116984 -68.4479364 115.116984 68.4479364
# ###
# create node for rigid wall before meshing to associate id 1
# ###
*createnode 0 1 350.000000 0 0 0
#*createnode 0 0 0 0 0 0
# ####
#Rigid wall
#  #####
*createentity groups cardimage=RWALL name=group2
*startnotehistorystate {Created rigidwall "group2"}
*setvalue groups id=2 geometrytype=1
*endnotehistorystate {Created rigidwall "group2"}
*mergehistorystate "" ""
*startnotehistorystate {Modified Base node of group from 0 to 2}
*setvalue groups id=2 basenode={nodes 2}
*endnotehistorystate {Modified Base node of group from 0 to 2}
*startnotehistorystate {Attached attributes to group "group2"}
*setvalue groups id=2 STATUS=0 5112=0
*setvalue groups id=2 STATUS=0 8096={sets 0}
*setvalue groups id=2 STATUS=0 5315=0
*setvalue groups id=2 STATUS=0 5=0
*setvalue groups id=2 STATUS=0 4172=0
*setvalue groups id=2 STATUS=0 4173=0
*setvalue groups id=2 STATUS=0 7036=0
*setvalue groups id=2 STATUS=0 7018=0
*endnotehistorystate {Attached attributes to group "group2"}
*mergehistorystate "" ""
*setvalue groups id=2 normal={0 0 -1}
*setvalue groups id=2 slaveentityids={comps 0}
*startnotehistorystate {Updated "slaveentityids" of Groups}
*createmark groups 1 "group2"
*clearmark groups 1
*createmark groups 1 "group2"
*clearmark groups 1
*createmark groups 1
*clearmark groups 1
*createmark groups 1 "group2"
*clearmark groups 1
*endnotehistorystate {Updated "slaveentityids" of Groups}
*retainmarkselections 1
*retainmarkselections 0
*startnotehistorystate {Modified gr_nod1  S of group}
*setvalue groups id=2 slaveentityids={comps 2}
*endnotehistorystate {Modified gr_nod1  S of group}
*startnotehistorystate {Updated "slaveentityids" of Groups}
*createmark groups 1
*clearmark groups 1
*createmark groups 1 "group2"
*clearmark groups 1
*createmark groups 1
*clearmark groups 1
*createmark groups 1 "group2"
*clearmark groups 1
*endnotehistorystate {Updated "slaveentityids" of Groups}
*startnotehistorystate {Modified fric of group}
*endnotehistorystate {Modified fric of group}
*startnotehistorystate {Modified fric of group}
*setvalue groups id=2 STATUS=1 5=0.2
*endnotehistorystate {Modified fric of group}
# ####
#boundary conditions - velocity - bcs
# ###
*evaltclscript "../radioss/BCs/01_rad_bcs_invokeGUI.tcl" 0
*createmark loadcols 1
*clearmark loadcols 1
*createmark loadcols 1
*clearmark loadcols 1
*createmark components 1
*clearmark components 1
*createmark components 1 "Middle Surface"
*clearmark components 1
*reviewclearall 
*createmark loadcols 1
*clearmark loadcols 1
*reviewclearall 
*createmark loadcols 1
*clearmark loadcols 1
*collectorcreateonly loadcols "velo" "" 7
*createmark loadcols 2 "velo"
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/radioss/radioss2017.blk" "INIVEL_Collector"
*createmark loadcols 1
*clearmark loadcols 1
*attributeupdateint loadcols 1 963 20 2 0 0
*attributeupdateint loadcols 1 7951 20 2 0 1
*attributeupdateint loadcols 1 7950 20 2 0 0
*attributeupdatestring loadcols 1 988 20 0 0 "TRA"
*attributeupdatedouble loadcols 1 747 20 0 0 0
*attributeupdatedouble loadcols 1 748 20 0 0 0
*attributeupdatedouble loadcols 1 749 20 0 0 0
*attributeupdateentity loadcols 1 412 20 0 0 systems 0
*attributeupdateentity loadcols 1 8056 20 0 0 sets 0
*reviewclearall 
*createmark loadcols 1
*clearmark loadcols 1
*createmark loads 1
*clearmark loads 1
*createmark loads 1
*clearmark loads 1
*createmark loadcols 1 "velo"
*clearmark loadcols 1
*attributeupdatedouble loadcols 1 747 20 1 0 0
*attributeupdatedouble loadcols 1 748 20 1 0 0
*attributeupdatedouble loadcols 1 749 20 1 0 13.800000
*attributeupdateentity loadcols 1 412 20 1 0 systems 0
*createmark components 1
*clearmark components 1
*createmark sets 1
*clearmark sets 1
*createmark components 1 "Middle Surface"
*entitysetcreate "grnodcomp" components 1
*createmark components 2
*clearmark components 2
*createmark sets 2 "grnodcomp"
*dictionaryload sets 2 "C:/Program Files/Altair/2017/templates/feoutput/radioss/radioss2017.blk" "GRNOD"
*createmark sets 2 "grnodcomp"
*clearmark sets 2
*createmark sets 1 "grnodcomp"
*clearmark sets 1
*attributeupdateentity loadcols 1 8056 20 1 0 sets 1
*createmark loadcols 1
*clearmark loadcols 1
*createmark sets 1
*clearmark sets 1
*formulasetreview "grnodcomp" 1
*createmark loads 1
*clearmark loads 1
*createmark loads 1
*clearmark loads 1
*loadsize 1 13.800000 0 0
*loadsize 1 13.800000 0 0
*createmark loadcols 1
*clearmark loadcols 1
*currentcollector loadcols "velo"
*createmark loadcols 1 "velo"
*clearmark loadcols 1
*createmark loadcols 1
*clearmark loadcols 1
*createmark loadcols 1 "all"
*clearmark loadcols 1
*reviewclearall 
*createmark elements 1
*clearmark elements 1
*createmark properties 1
*clearmark properties 1
*createmark nodes 1
*clearmark nodes 1
*createmark components 1 "Middle Surface"
*clearmark components 1
*plot 
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
*settopologydisplaymode 0
# #############
#create mesh
# #####
*createmark surfaces 1 "all"
*createstringarray 1 "breakconnectivity 0"
*hm_batchmesh2 surfaces 1 1 1 "C:/Users/samue/Desktop/Estrutura_menos_rigida/Criteria_and_Parameters/crash_8mm.criteria" "C:/Users/samue/Desktop/Estrutura_menos_rigida/Criteria_and_Parameters/crash_8mm.param"
*removetempcleanupfile 
# ################
#Rigid body
# #######
*createmark nodes 2 "on plane" 0 0 0 0 0 1 5 1 0
*rigidlinkinodecalandcreate 2 0 1 456
*startnotehistorystate {Modified MASS of element}
*createmark elems 2 "on plane" 0 0 0 0 0 1 0.01 0 0
*setvalue elems mark=2 STATUS=1 167=600.000000
*endnotehistorystate {Modified MASS of element}
# ###
#velocity for rigid body
# ####
*createmark loadcols 1
*clearmark loadcols 1
*collectorcreateonly loadcols "velr" "" 7
*createmark loadcols 2 "velr"
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/radioss/radioss2017.blk" "INIVEL_Collector"
*createmark loadcols 1
*clearmark loadcols 1
*attributeupdateint loadcols 2 963 20 2 0 0
*attributeupdateint loadcols 2 7951 20 2 0 1
*attributeupdateint loadcols 2 7950 20 2 0 0
*attributeupdatestring loadcols 2 988 20 0 0 "TRA"
*attributeupdatedouble loadcols 2 747 20 0 0 0
*attributeupdatedouble loadcols 2 748 20 0 0 0
*attributeupdatedouble loadcols 2 749 20 0 0 0
*attributeupdateentity loadcols 2 412 20 0 0 systems 0
*attributeupdateentity loadcols 2 8056 20 0 0 sets 0
*reviewclearall 
*createmark loadcols 1
*clearmark loadcols 1
*createmark loads 1
*clearmark loads 1
*createmark loads 1
*clearmark loads 1
*createmark loadcols 1 "velr"
*clearmark loadcols 1
*attributeupdatedouble loadcols 2 747 20 1 0 0
*attributeupdatedouble loadcols 2 748 20 1 0 0
*attributeupdatedouble loadcols 2 749 20 1 0 13.800000
*attributeupdateentity loadcols 2 412 20 1 0 systems 0
*createmark nodes 1
*clearmark nodes 1
*createmark sets 1
*clearmark sets 1
*createmark nodes 1 "on plane" 0 0 0 0 0 1 0.01 1 0
*entitysetcreate "grnodnode" nodes 1
*createmark nodes 1 "on plane" 0 0 0 0 0 1 0.01 1 0
*clearmark nodes 1
*createmark sets 2 "grnodnode"
*dictionaryload sets 2 "C:/Program Files/Altair/2017/templates/feoutput/radioss/radioss2017.blk" "GRNOD"
*createmark sets 2 "grnodnode"
*clearmark sets 2
*createmark sets 1 "grnodnode"
*clearmark sets 1
*attributeupdateentity loadcols 2 8056 20 1 0 sets 3
*createmark loadcols 1
*clearmark loadcols 1
*createmark sets 1
*clearmark sets 1
*formulasetreview "grnodnode" 1
*createmark loads 1
*clearmark loads 1
*createmark loads 1
*clearmark loads 1
*loadsize 1 13.800000 0 0
*loadsize 1 13.800000 0 0
*createmark loadcols 1
*clearmark loadcols 1
*currentcollector loadcols "velr"
*createmark nodes 1 "on plane" 0 0 0 0 0 1 0.01 1 0
#*loadcreateonentity_curve nodes 1 8 2 0 0 10 0 0 10 0 0 0 0 0
*createmark loads 2 "all"
*createmark loads 1
*markdifference loads 2 loads 1
*createmark loads 2 1
*loadsupdatecurve 2 8 2 1 0 0 10 0 0 0 1 10 1 0 1 0 0 0 0 0 0 0 0
*displaycollectorwithfilter loadcols "off" "velr" 1 0
*currentcollector loadcols "velr"
*loadsize 1 10 0 0
*loadsize 3 10 0 0
*createmark loadcols 1 "velr"
*clearmark loadcols 1
*createmark sets 1 "grnodnode"
*clearmark sets 1
*formulasetreview "grnodnode" 1
*createmark loads 1
*clearmark loads 1
*createmark loads 1 1
*clearmark loads 1
*createmark loadcols 1
*clearmark loadcols 1
*createmark loadcols 1
*clearmark loadcols 1
*createmark loadcols 1 "all"
*clearmark loadcols 1
# ####
# BC
# ####
*settopologydisplaymode 0
*settopologydisplaymode 0
*createentity loadcols cardimage=INIVEL_Collector name=loadcol1
*setvalue loadcols id=3 cardimage="BCS_Collector"
*startnotehistorystate {Modified Translation_Vx of loadcol}
*setvalue loadcols id=3 STATUS=2 7007=1
*endnotehistorystate {Modified Translation_Vx of loadcol}
*startnotehistorystate {Modified Translation_Vy of loadcol}
*setvalue loadcols id=3 STATUS=2 7008=1
*endnotehistorystate {Modified Translation_Vy of loadcol}
*startnotehistorystate {Modified Rotation_Wx of loadcol}
*setvalue loadcols id=3 STATUS=2 7010=1
*endnotehistorystate {Modified Rotation_Wx of loadcol}
*startnotehistorystate {Modified Rotation_Wy of loadcol}
*setvalue loadcols id=3 STATUS=2 7011=1
*endnotehistorystate {Modified Rotation_Wy of loadcol}
*startnotehistorystate {Modified Rotation_Wz of loadcol}
*setvalue loadcols id=3 STATUS=2 7012=1
*endnotehistorystate {Modified Rotation_Wz of loadcol}
*startnotehistorystate {Modified Grnod_id of loadcol from 0 to 3}
*setvalue loadcols id=3 STATUS=1 8056={sets 3}
*endnotehistorystate {Modified Grnod_id of loadcol from 0 to 3}
# ####
#CONTROL CARDS
# ####
*startnotehistorystate {Created "ANIM/DT"}
*createentity cards name=ENG_ANIM_DT
*createmark cards 1
*clearmark cards 1
*endnotehistorystate {Created "ANIM/DT"}
*startnotehistorystate {Modified Tfreq of card}
*setvalue cards id=1 STATUS=2 7103=1
*endnotehistorystate {Modified Tfreq of card}
*startnotehistorystate {Created "ANIM/ELEM"}
*createentity cards name=ENG_ANIM_ELEM
*createmark cards 1
*clearmark cards 1
*endnotehistorystate {Created "ANIM/ELEM"}
*startnotehistorystate {Modified EPSP of card}
*setvalue cards id=2 STATUS=2 4880=1
*endnotehistorystate {Modified EPSP of card}
*startnotehistorystate {Modified VONM of card}
*setvalue cards id=2 STATUS=2 4883=1
*endnotehistorystate {Modified VONM of card}
*startnotehistorystate {Modified HOURG of card}
*setvalue cards id=2 STATUS=2 7418=1
*endnotehistorystate {Modified HOURG of card}
*startnotehistorystate {Created "ANIM/NODA"}
*createentity cards name=ENG_ANIM_NODA
*createmark cards 1
*clearmark cards 1
*endnotehistorystate {Created "ANIM/NODA"}
*startnotehistorystate {Modified DMAS of card}
*setvalue cards id=3 STATUS=2 4884=1
*endnotehistorystate {Modified DMAS of card}
*startnotehistorystate {Created "ANIM/VECT"}
*createentity cards name=ENG_ANIM_VECT
*createmark cards 1
*clearmark cards 1
*endnotehistorystate {Created "ANIM/VECT"}
*startnotehistorystate {Modified DISP of card}
*setvalue cards id=4 STATUS=2 4872=1
*endnotehistorystate {Modified DISP of card}
*startnotehistorystate {Modified CONT of card}
*setvalue cards id=4 STATUS=2 4870=1
*endnotehistorystate {Modified CONT of card}
*startnotehistorystate {Modified DISP of card}
*setvalue cards id=4 STATUS=2 4872=0
*endnotehistorystate {Modified DISP of card}
*startnotehistorystate {Modified FOPT of card}
*setvalue cards id=4 STATUS=2 7434=1
*endnotehistorystate {Modified FOPT of card}
*startnotehistorystate {Modified DISP of card}
*setvalue cards id=4 STATUS=2 4872=1
*endnotehistorystate {Modified DISP of card}
*startnotehistorystate {Created "RUN"}
*createentity cards name=ENG_RUN
*createmark cards 1
*clearmark cards 1
*endnotehistorystate {Created "RUN"}
*startnotehistorystate {Modified Tstop of card}
*setvalue cards id=5 STATUS=2 6164=55.000000
*endnotehistorystate {Modified Tstop of card}
*startnotehistorystate {Created "PRINT"}
*createentity cards name=ENG_PRINT
*createmark cards 1
*clearmark cards 1
*endnotehistorystate {Created "PRINT"}
*startnotehistorystate {Modified N_print of card}
*endnotehistorystate {Modified N_print of card}
*startnotehistorystate {Modified N_print of card}
*setvalue cards id=6 STATUS=2 4902=-100
*endnotehistorystate {Modified N_print of card}
*startnotehistorystate {Modified SLIDE of group}
*setvalue groups id=2 STATUS=1 5112=2
*endnotehistorystate {Modified SLIDE of group}
*startnotehistorystate {Modified d of group}
*endnotehistorystate {Modified d of group}
*startnotehistorystate {Modified d of group}
*setvalue groups id=2 STATUS=1 5315=40
*endnotehistorystate {Modified d of group}
*startnotehistorystate {Created "TFILE"}
*createentity cards name=ENG_TFILE
*createmark cards 1
*clearmark cards 1
*endnotehistorystate {Created "TFILE"}
*startnotehistorystate {Modified Time_frequency of card}
*setvalue cards id=7 STATUS=2 7225=0.05
*endnotehistorystate {Modified Time_frequency of card}
*startnotehistorystate {Created "PARITH"}
*createentity cards name=ENG_PARITH
*createmark cards 1
*clearmark cards 1
*endnotehistorystate {Created "PARITH"}
*startnotehistorystate {Created "DTIX"}
*createentity cards name=ENG_DTIX
*createmark cards 1
*clearmark cards 1
*endnotehistorystate {Created "DTIX"}
*startnotehistorystate {Modified tIni of card}
*setvalue cards id=9 STATUS=2 7109=0.000800
*endnotehistorystate {Modified tIni of card}
*startnotehistorystate {Modified tMax of card}
*setvalue cards id=9 STATUS=2 7110=0.000800
*endnotehistorystate {Modified tMax of card}
*startnotehistorystate {Created "DT/NODA"}
*createentity cards name=ENG_DT_NODA
*createmark cards 1
*clearmark cards 1
*endnotehistorystate {Created "DT/NODA"}
*startnotehistorystate {Modified CST_0 of card}
*setvalue cards id=10 STATUS=2 7469=1
*endnotehistorystate {Modified CST_0 of card}
*startnotehistorystate {Attached attributes to card}
*setvalue cards id=10 STATUS=2 4052=0
*setvalue cards id=10 STATUS=2 8120=0
*endnotehistorystate {Attached attributes to card}
*mergehistorystate "" ""
*startnotehistorystate {Modified Tmin of card}
*setvalue cards id=10 STATUS=2 8120=0.000300
*endnotehistorystate {Modified Tmin of card}
# ##
#OUTPUT BLOCKS
# ##
*createmark groups 1 "group2"
*outputblockscreate "wall" groups 1
*startnotehistorystate {Attached attributes to outputblock "wall"}
*attributeupdateint outputblocks 1 4674 20 2 0 1
*attributeupdateint outputblocks 1 7046 20 2 0 1
*attributeupdateint outputblocks 1 7950 20 2 0 0
*attributeupdateint outputblocks 1 7045 20 0 0 1
*createstringarray 1 "DEF"
*attributeupdatestringarray outputblocks 1 7044 20 2 0 1 1
*attributeupdateint outputblocks 1 7951 20 2 0 1
*endnotehistorystate {Attached attributes to outputblock "wall"}
*startnotehistorystate {Modified Keyword of outputblock}
*setvalue outputblocks id=1 STATUS=2 7046=2
*endnotehistorystate {Modified Keyword of outputblock}
# ##
*createmark elems 2 "on plane" 0 0 0 0 0 1 0.01 1 0
*outputblockscreate "RIGID" elements 2
*startnotehistorystate {Attached attributes to outputblock "RIGID"}
*attributeupdateint outputblocks 2 4674 20 2 0 1
*attributeupdateint outputblocks 2 8087 20 0 0 8
*attributeupdateint outputblocks 2 7950 20 2 0 0
*attributeupdateint outputblocks 2 7045 20 0 0 1
*createstringarray 1 "DEF"
*attributeupdatestringarray outputblocks 2 7044 20 2 0 1 1
*attributeupdateint outputblocks 2 7951 20 2 0 1
*endnotehistorystate {Attached attributes to outputblock "RIGID"}
# ##
*createmark nodes 2 "by box" -10 -10 -10 10 10 10 0 inside 0 1 0
*outputblockscreate "NODEDISPLACEMNET" nodes 2
*startnotehistorystate {Modified NUM_VARIABLES of outputblock}
*setvalue outputblocks id=3 STATUS=1 7045=1
*endnotehistorystate {Modified NUM_VARIABLES of outputblock}
*startnotehistorystate {Attached attributes to outputblock "NODEDISPLACEMNET"}
*setvalue outputblocks id=3 STATUS=2 4674=1
*setvalue outputblocks id=3 STATUS=2 7950=0
*startnotehistorystate {Updated string array}
*setvalue outputblocks id=3 STATUS=2 7044={} ROW=0
*endnotehistorystate {Updated string array}
*setvalue outputblocks id=3 STATUS=2 7042={systs 0}
*startnotehistorystate {Updated string array}
*setvalue outputblocks id=3 STATUS=2 7043={} ROW=0
*endnotehistorystate {Updated string array}
*setvalue outputblocks id=3 STATUS=2 7951=1
*endnotehistorystate {Attached attributes to outputblock "NODEDISPLACEMNET"}
*mergehistorystate "" ""
*startnotehistorystate {Modified Var of outputblock}
*setvalue outputblocks id=3 STATUS=2 7044={DEF} ROW=0
*endnotehistorystate {Modified Var of outputblock}
# ##
#HAZ DEFINITION
# ###
*createentity comps cardimage=Part name=component1
*startnotehistorystate {Renamed Components from "component1" to "aux"}
*setvalue comps id=3 name=aux
*endnotehistorystate {Renamed Components from "component1" to "aux"}
*createentity mats cardimage=M1_ELAST name=material2
*setvalue mats id=2 cardimage="M2_PLAS_JOHNS_ZERIL"
*startnotehistorystate {Modified Rho_Initial of material}
*endnotehistorystate {Modified Rho_Initial of material}
*startnotehistorystate {Modified Rho_Initial of material}
*setvalue mats id=2 STATUS=1 118=2.7e-006
*endnotehistorystate {Modified Rho_Initial of material}
*startnotehistorystate {Updated "118" of Materials}
*endnotehistorystate {Updated "118" of Materials}
*startnotehistorystate {Modified E of material}
*endnotehistorystate {Modified E of material}
*startnotehistorystate {Modified E of material}
*setvalue mats id=2 STATUS=1 119=0.33
*endnotehistorystate {Modified E of material}
*startnotehistorystate {Updated "119" of Materials}
*endnotehistorystate {Updated "119" of Materials}
*startnotehistorystate {Modified E of material}
*endnotehistorystate {Modified E of material}
*startnotehistorystate {Modified E of material}
*setvalue mats id=2 STATUS=1 119=69
*endnotehistorystate {Modified E of material}
*startnotehistorystate {Updated "119" of Materials}
*endnotehistorystate {Updated "119" of Materials}
*startnotehistorystate {Modified nu of material}
*endnotehistorystate {Modified nu of material}
*startnotehistorystate {Modified nu of material}
*setvalue mats id=2 STATUS=1 120=0.33
*endnotehistorystate {Modified nu of material}
*startnotehistorystate {Modified Iflag of material}
*setvalue mats id=2 STATUS=1 6002=1
*endnotehistorystate {Modified Iflag of material}
*startnotehistorystate {Attached attributes to material "material2"}
*setvalue mats id=2 STATUS=0 6028=0
*setvalue mats id=2 STATUS=0 1510=0
*setvalue mats id=2 STATUS=0 1511=0
*endnotehistorystate {Attached attributes to material "material2"}
*mergehistorystate "" ""
*startnotehistorystate {Modified SIGMA_Y of material}
*endnotehistorystate {Modified SIGMA_Y of material}
*startnotehistorystate {Modified SIGMA_Y of material}
*setvalue mats id=2 STATUS=1 6028=0.115000
*endnotehistorystate {Modified SIGMA_Y of material}
*startnotehistorystate {Updated "6028" of Materials}
*endnotehistorystate {Updated "6028" of Materials}
*startnotehistorystate {Modified UTS of material}
*endnotehistorystate {Modified UTS of material}
*startnotehistorystate {Modified UTS of material}
*setvalue mats id=2 STATUS=1 1510=0.175000
*endnotehistorystate {Modified UTS of material}
*startnotehistorystate {Modified E_UTS of material}
*endnotehistorystate {Modified E_UTS of material}
*startnotehistorystate {Modified E_UTS of material}
*setvalue mats id=2 STATUS=1 1510=0.100000
*endnotehistorystate {Modified E_UTS of material}
*createentity props cardimage=P1_SHELL name=property2
*startnotehistorystate {Modified Thick of property}
*endnotehistorystate {Modified Thick of property}
*startnotehistorystate {Modified Thick of property}
*setvalue props id=2 STATUS=1 431=4.000000
*endnotehistorystate {Modified Thick of property}
*startnotehistorystate {Updated "431" of Properties}
*endnotehistorystate {Updated "431" of Properties}
*startnotehistorystate {Modified Prop_Id of component from 0 to 2}
*setvalue comps id=3 propertyid={props 2}
*endnotehistorystate {Modified Prop_Id of component from 0 to 2}
*startnotehistorystate {Modified Mat_Id of component from 0 to 2}
*setvalue comps id=3 materialid={mats 2}
*endnotehistorystate {Modified Mat_Id of component from 0 to 2}
# ###
#elements to assign HAZ properties
# ###
*createmark elements 1 "by box" 370.000000 -45.000000 309.000000 -370.000000 45.000000 320.000000 0 inside 0 1 0
*movemark elements 1 "aux"
*startnotehistorystate {Modified nu of material}
*endnotehistorystate {Modified nu of material}
*startnotehistorystate {Modified nu of material}
*setvalue mats id=1 STATUS=1 120=0.33
*endnotehistorystate {Modified nu of material}
*startnotehistorystate {Modified UTS of material}
*endnotehistorystate {Modified UTS of material}
*startnotehistorystate {Modified UTS of material}
*setvalue mats id=1 STATUS=1 1510=0.29
*endnotehistorystate {Modified UTS of material}
*startnotehistorystate {Modified E_UTS of material}
*endnotehistorystate {Modified E_UTS of material}
*startnotehistorystate {Modified E_UTS of material}
*setvalue mats id=1 STATUS=1 1511=0.1
*endnotehistorystate {Modified E_UTS of material}
*startnotehistorystate {Modified UTS of material}
*endnotehistorystate {Modified UTS of material}
*startnotehistorystate {Modified UTS of material}
*setvalue mats id=2 STATUS=1 1510=0.175
*endnotehistorystate {Modified UTS of material}
*startnotehistorystate {Modified E_UTS of material}
*endnotehistorystate {Modified E_UTS of material}
*startnotehistorystate {Modified E_UTS of material}
*setvalue mats id=2 STATUS=1 1511=0.1
*endnotehistorystate {Modified E_UTS of material}
*startnotehistorystate {Modified Ishell of property}
*setvalue props id=2 STATUS=1 8028=24
*endnotehistorystate {Modified Ishell of property}
*startnotehistorystate {Modified N of property}
*setvalue props id=2 STATUS=1 427=5
*endnotehistorystate {Modified N of property}
*startnotehistorystate {Updated "427" of Properties}
*endnotehistorystate {Updated "427" of Properties}
# ##
#exporting and run setup
##
*setcurrentinclude 0 ""
*cardcreate "HEADER_CARD"
*attributeupdateint cards 7 233 20 1 1 1
*setcurrentinclude 0 ""
*retainmarkselections 0
*setcurrentinclude 0 ""
*cardcreate "ENG_RADIOSS_HEADER"
*setcurrentinclude 0 ""
*cardcreate "ENG_END_HEADER"
*attributeupdateint cards 8 4678 20 1 1 1
*attributeupdateint cards 9 4678 20 1 1 1
*attributeupdatestring cards 5 6161 20 1 0 "tt"
*setcurrentinclude 0 ""
*cardcreate "ENG_VERS"
*setcurrentinclude 0 ""
*createstringarray 1 "CONNECTORS_SKIP"
hm_answernext yes
*feoutputwithdata "C:/Program Files/Altair/2017/templates/feoutput/radioss/radioss2017.blk" "C:/Users/samue/Desktop/Estrutura_menos_rigida/Simulation_6061T6_8mm_tick_4_DimC_90_ComprimentoT_350_raio_9000_alturab_50_largura_b_25/Bumper_two_0000.rad" 1 0 1 1 1
*attributeupdatestring cards 5 6161 20 1 0 "Bumper_two"
*setcurrentinclude 0 ""
*createstringarray 1 "DEF"
hm_answernext yes
*feoutputwithdata "C:/Program Files/Altair/2017/templates/feoutput/radioss/enginecard2017blk" "C:/Users/samue/Desktop/Estrutura_menos_rigida/Simulation_6061T6_8mm_tick_4_DimC_90_ComprimentoT_350_raio_9000_alturab_50_largura_b_25/Bumper_two_0001.rad" 0 0 2 1 1
*createstringarray 1 "CONNECTORS_SKIP"
hm_answernext yes
*feoutputwithdata "C:/Program Files/Altair/2017/templates/feoutput/radioss/radioss2017.blk" "C:/Users/samue/Desktop/Estrutura_menos_rigida/Simulation_6061T6_8mm_tick_4_DimC_90_ComprimentoT_350_raio_9000_alturab_50_largura_b_25/Bumper_two_0000.rad" 1 0 1 1 1
*attributeupdatestring cards 5 6161 20 1 0 "Bumper_two"
*setcurrentinclude 0 ""
*createstringarray 1 "DEF"
hm_answernext yes
*feoutputwithdata "C:/Program Files/Altair/2017/templates/feoutput/radioss/enginecard2017blk" "C:/Users/samue/Desktop/Estrutura_menos_rigida/Simulation_6061T6_8mm_tick_4_DimC_90_ComprimentoT_350_raio_9000_alturab_50_largura_b_25/Bumper_two_0001.rad" 0 0 2 1 1
#*quit 1;
