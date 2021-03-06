*begin "version 2017.2.0.16  8-2-2018  11:20:47"
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
#import geometries
*geomimport "iges_altair" "C:/Users/samue/Desktop/Two_Structures/Bumper_two_double.igs" "CleanupTol=-0.01" "DoNotMergeEdges=off" "ImportBlanked=off" "ScaleFactor=1.0"
*end_batch_import 
*drawlistresetstyle 
*setsurfacenormalsdisplaytype 1
*rotateabout 0 0 0 0
*viewset 0.867457507 0.222764722 -0.444852057 0 -0.147191608 0.96903944 0.198235199 0 0.475238997 -0.106482122 0.873389634 0 -238.076042 29.9945198 -19.1608176 1 -1156.36107 -264.343001 1156.36107 664.343001
*normalsoff 
#create midsurfaces
*createmark surfaces 1 39-76
*midsurface_extract_10 surfaces 1 -1 0 1 1 0 0 20 0 0 10 0 10 -2 undefined 0 0 1
*settopologydisplaymode 0
#assign surfaces to components
*startnotehistorystate {Renamed Components from "Middle Surface" to "Secondary"}
*setvalue comps id=2 name=Secondary
*endnotehistorystate {Renamed Components from "Middle Surface" to "Secondary"}
*normalsoff 
*createmark surfaces 1 1-38
*midsurface_extract_10 surfaces 1 -1 0 1 1 0 0 20 0 0 10 0 10 -2 undefined 0 0 1
*startnotehistorystate {Renamed Components from "Middle Surface" to "Primary"}
*setvalue comps id=3 name=Primary
*endnotehistorystate {Renamed Components from "Middle Surface" to "Primary"}
*startnotehistorystate {Deleted Components "lvl10000"}
*createmark components 1
*clearmark components 1
*createmark components 1 "lvl10000"
*deletemark components 1
*endnotehistorystate {Deleted Components "lvl10000"}
*createentity comps cardimage=Part name=component1
#rename comoponents
*startnotehistorystate {Renamed Components from "component1" to "HAZ_P"}
*setvalue comps id=4 name=HAZ_P
*endnotehistorystate {Renamed Components from "component1" to "HAZ_P"}
*createentity comps cardimage=Part name=component1
*startnotehistorystate {Renamed Components from "component1" to "HAZ_S"}
*setvalue comps id=5 name=HAZ_S
*endnotehistorystate {Renamed Components from "component1" to "HAZ_S"}
*setvalue comps id=2 cardimage="Part"
*setvalue comps id=3 cardimage="Part"
*midsurface_remove_edit_bodies 
*release_temp_fixed_vertices 
*normalsoff 
*evaltclscript "../radioss/BCs/01_rad_bcs_invokeGUI.tcl" 0
*createmark loadcols 1
*clearmark loadcols 1
*createmark loadcols 1
*clearmark loadcols 1
*createmark components 1
*clearmark components 1
*createmark components 1 "Secondary" "Primary" "HAZ_P" "HAZ_S"
*clearmark components 1
*reviewclearall 
*createmark loadcols 1
*clearmark loadcols 1
#velocity and bcs definition
*collectorcreateonly loadcols "Velocity_All" "" 7
*createmark loadcols 2 "Velocity_All"
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
*createmark loadcols 1 "Velocity_All"
*clearmark loadcols 1
*attributeupdatedouble loadcols 1 747 20 1 0 0
*attributeupdatedouble loadcols 1 748 20 1 0 0
*attributeupdatedouble loadcols 1 749 20 1 0 13.800000
*attributeupdateentity loadcols 1 412 20 1 0 systems 0
*createmark components 1
*clearmark components 1
*createmark sets 1
*clearmark sets 1
*createmark components 1 "Secondary" "Primary" "HAZ_P" "HAZ_S"
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
*loadsize 1 10 0 0
*loadsize 3 10 0 0
*createmark loadcols 1
*clearmark loadcols 1
*currentcollector loadcols "Velocity_All"
*createmark loadcols 1 "Velocity_All"
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
*createmark components 1 "Secondary" "Primary" "HAZ_P" "HAZ_S"
*clearmark components 1
*plot 
*createentity groups cardimage=TYPE1 name=group1
#contact type 7 definition
*startnotehistorystate {Renamed Groups from "group1" to "SELF"}
*setvalue groups id=1 name=SELF
*endnotehistorystate {Renamed Groups from "group1" to "SELF"}
*setvalue groups id=1 cardimage="TYPE7"
*startnotehistorystate {Updated "cardimage" of Groups}
*createmark groups 1 "SELF"
*clearmark groups 1
*createmark groups 1 "SELF"
*clearmark groups 1
*endnotehistorystate {Updated "cardimage" of Groups}
*setvalue groups id=1 slaveentityids={comps 0}
*startnotehistorystate {Updated "slaveentityids" of Groups}
*createmark groups 1
*clearmark groups 1
*createmark groups 1 "SELF"
*clearmark groups 1
*createmark groups 1
*clearmark groups 1
*createmark groups 1 "SELF"
*clearmark groups 1
*endnotehistorystate {Updated "slaveentityids" of Groups}
*retainmarkselections 1
*retainmarkselections 0
*retainmarkselections 1
*retainmarkselections 0
*retainmarkselections 1
*retainmarkselections 0
*retainmarkselections 1
*retainmarkselections 0
*startnotehistorystate {Modified Grnod_id  S of group}
*setvalue groups id=1 slaveentityids={comps 2-5}
*endnotehistorystate {Modified Grnod_id  S of group}
*startnotehistorystate {Updated "slaveentityids" of Groups}
*createmark groups 1
*clearmark groups 1
*createmark groups 1 "SELF"
*clearmark groups 1
*createmark groups 1
*clearmark groups 1
*createmark groups 1 "SELF"
*clearmark groups 1
*endnotehistorystate {Updated "slaveentityids" of Groups}
*setvalue groups id=1 masterentityids={comps 0}
*retainmarkselections 1
*retainmarkselections 0
*retainmarkselections 1
*retainmarkselections 0
*retainmarkselections 1
*retainmarkselections 0
*retainmarkselections 1
*retainmarkselections 0
*startnotehistorystate {Modified Surf_id  M of group}
*setvalue groups id=1 masterentityids={comps 2-5}
*endnotehistorystate {Modified Surf_id  M of group}
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
*createentity groups cardimage=RWALL name=group1
*startnotehistorystate {Created rigidwall "group1"}
*setvalue groups id=2 geometrytype=1
*endnotehistorystate {Created rigidwall "group1"}
*mergehistorystate "" ""
#create node for rigid wall
*createnode 0 0 325.000000 0 0 0
#create rwall
*startnotehistorystate {Modified Base node of group from 0 to 1}
*setvalue groups id=2 basenode={nodes 1}
*endnotehistorystate {Modified Base node of group from 0 to 1}
*startnotehistorystate {Attached attributes to group "group1"}
*setvalue groups id=2 STATUS=0 5112=0
*setvalue groups id=2 STATUS=0 8096={sets 0}
*setvalue groups id=2 STATUS=0 5315=0
*setvalue groups id=2 STATUS=0 5=0
*setvalue groups id=2 STATUS=0 4172=0
*setvalue groups id=2 STATUS=0 4173=0
*setvalue groups id=2 STATUS=0 7036=0
*setvalue groups id=2 STATUS=0 7018=0
*endnotehistorystate {Attached attributes to group "group1"}
*mergehistorystate "" ""
*setvalue groups id=2 normal={0 0 -1}
*setvalue groups id=2 name="RWALL"
*setvalue groups id=2 slaveentityids={comps 0}
*startnotehistorystate {Updated "slaveentityids" of Groups}
*createmark groups 1
*clearmark groups 1
*createmark groups 1 "RWALL"
*clearmark groups 1
*createmark groups 1
*clearmark groups 1
*createmark groups 1 "RWALL"
*clearmark groups 1
*endnotehistorystate {Updated "slaveentityids" of Groups}
*retainmarkselections 1
*retainmarkselections 0
*retainmarkselections 1
*retainmarkselections 0
*retainmarkselections 1
*retainmarkselections 0
*retainmarkselections 1
*retainmarkselections 0
*startnotehistorystate {Modified gr_nod1  S of group}
*setvalue groups id=2 slaveentityids={comps 2-5}
*endnotehistorystate {Modified gr_nod1  S of group}
*startnotehistorystate {Updated "slaveentityids" of Groups}
*createmark groups 1
*clearmark groups 1
*createmark groups 1 "RWALL"
*clearmark groups 1
*createmark groups 1
*clearmark groups 1
*createmark groups 1 "RWALL"
*clearmark groups 1
*endnotehistorystate {Updated "slaveentityids" of Groups}
*startnotehistorystate {Modified d of group}
*endnotehistorystate {Modified d of group}
*startnotehistorystate {Modified d of group}
*setvalue groups id=2 STATUS=1 5315=40
*endnotehistorystate {Modified d of group}
*startnotehistorystate {Modified fric of group}
*endnotehistorystate {Modified fric of group}
*startnotehistorystate {Modified fric of group}
*setvalue groups id=2 STATUS=1 5=0.2
*endnotehistorystate {Modified fric of group}
#material definitons
*createentity mats cardimage=M1_ELAST name=material1
*startnotehistorystate {Renamed Materials from "material1" to "Normal"}
*setvalue mats id=1 name=Normal
*endnotehistorystate {Renamed Materials from "material1" to "Normal"}
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
*setvalue mats id=1 STATUS=1 119=69
*endnotehistorystate {Modified E of material}
*startnotehistorystate {Updated "119" of Materials}
*endnotehistorystate {Updated "119" of Materials}
*startnotehistorystate {Modified nu of material}
*endnotehistorystate {Modified nu of material}
*startnotehistorystate {Modified nu of material}
*setvalue mats id=1 STATUS=1 120=0.33
*endnotehistorystate {Modified nu of material}
*startnotehistorystate {Modified Iflag of material}
*setvalue mats id=1 STATUS=1 6002=1
*endnotehistorystate {Modified Iflag of material}
*startnotehistorystate {Attached attributes to material "Normal"}
*setvalue mats id=1 STATUS=0 6028=0
*setvalue mats id=1 STATUS=0 1510=0
*setvalue mats id=1 STATUS=0 1511=0
*endnotehistorystate {Attached attributes to material "Normal"}
*mergehistorystate "" ""
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
*setvalue mats id=1 STATUS=1 1510=0.260000
*endnotehistorystate {Modified UTS of material}
*startnotehistorystate {Modified E_UTS of material}
*endnotehistorystate {Modified E_UTS of material}
*startnotehistorystate {Modified E_UTS of material}
*setvalue mats id=1 STATUS=1 1511=0.064000
*endnotehistorystate {Modified E_UTS of material}
*createentity mats cardimage=M1_ELAST name=material1
*startnotehistorystate {Renamed Materials from "material1" to "HAZ"}
*setvalue mats id=2 name=HAZ
*endnotehistorystate {Renamed Materials from "material1" to "HAZ"}
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
*startnotehistorystate {Attached attributes to material "HAZ"}
*setvalue mats id=2 STATUS=0 6028=0
*setvalue mats id=2 STATUS=0 1510=0
*setvalue mats id=2 STATUS=0 1511=0
*endnotehistorystate {Attached attributes to material "HAZ"}
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
*setvalue mats id=2 STATUS=1 1511=0.064000
*endnotehistorystate {Modified E_UTS of material}
*createentity props cardimage=P1_SHELL name=property1
*startnotehistorystate {Modified Ishell of property}
*setvalue props id=1 STATUS=1 8028=24
*endnotehistorystate {Modified Ishell of property}
*startnotehistorystate {Modified N of property}
*setvalue props id=1 STATUS=1 427=5
*endnotehistorystate {Modified N of property}
*startnotehistorystate {Updated "427" of Properties}
*setvalue props id=1 STATUS=0 431=0.0
*endnotehistorystate {Updated "427" of Properties}
*mergehistorystate "" ""
*startnotehistorystate {Modified Thick of property}
*endnotehistorystate {Modified Thick of property}
*startnotehistorystate {Modified Thick of property}
*setvalue props id=1 STATUS=1 431=3.653800
*endnotehistorystate {Modified Thick of property}
*startnotehistorystate {Updated "431" of Properties}
*endnotehistorystate {Updated "431" of Properties}
*setvalue props id=1 name="Primary"
*createentity props cardimage=P1_SHELL name=property1
*startnotehistorystate {Renamed Properties from "property1" to "Secondary"}
*setvalue props id=2 name=Secondary
*endnotehistorystate {Renamed Properties from "property1" to "Secondary"}
#properties definitions thickness, qeph 24 and n=5
*startnotehistorystate {Modified Ishell of property}
*setvalue props id=2 STATUS=1 8028=24
*endnotehistorystate {Modified Ishell of property}
*startnotehistorystate {Modified N of property}
*setvalue props id=2 STATUS=1 427=5
*endnotehistorystate {Modified N of property}
*startnotehistorystate {Updated "427" of Properties}
*setvalue props id=2 STATUS=0 431=0.0
*endnotehistorystate {Updated "427" of Properties}
*mergehistorystate "" ""
*startnotehistorystate {Modified Thick of property}
*endnotehistorystate {Modified Thick of property}
*startnotehistorystate {Modified Thick of property}
*setvalue props id=2 STATUS=1 431=4.351533
*endnotehistorystate {Modified Thick of property}
*startnotehistorystate {Updated "431" of Properties}
*endnotehistorystate {Updated "431" of Properties}
*startnotehistorystate {Modified Prop_Id of component from 0 to 2}
*setvalue comps id=2 propertyid={props 2}
*endnotehistorystate {Modified Prop_Id of component from 0 to 2}
*startnotehistorystate {Modified Mat_Id of component from 0 to 1}
*setvalue comps id=2 materialid={mats 1}
*endnotehistorystate {Modified Mat_Id of component from 0 to 1}
*startnotehistorystate {Modified Prop_Id of component from 0 to 1}
*setvalue comps id=3 propertyid={props 1}
*endnotehistorystate {Modified Prop_Id of component from 0 to 1}
*startnotehistorystate {Modified Mat_Id of component from 0 to 1}
*setvalue comps id=3 materialid={mats 1}
*endnotehistorystate {Modified Mat_Id of component from 0 to 1}
*startnotehistorystate {Modified Prop_Id of component from 0 to 1}
*setvalue comps id=4 propertyid={props 1}
*endnotehistorystate {Modified Prop_Id of component from 0 to 1}
*startnotehistorystate {Modified Mat_Id of component from 0 to 2}
*setvalue comps id=4 materialid={mats 2}
*endnotehistorystate {Modified Mat_Id of component from 0 to 2}
*startnotehistorystate {Modified Prop_Id of component from 0 to 2}
*setvalue comps id=5 propertyid={props 2}
*endnotehistorystate {Modified Prop_Id of component from 0 to 2}
*startnotehistorystate {Modified Mat_Id of component from 0 to 2}
*setvalue comps id=5 materialid={mats 2}
*endnotehistorystate {Modified Mat_Id of component from 0 to 2}
*startnotehistorystate {Modified color of Components "Secondary"}
*createmark components 1 "Secondary"
*setvalue comps mark=1 color=19
*createmark components 1 "Secondary"
*clearmark components 1
*endnotehistorystate {Modified color of Components "Secondary"}
*createmark surfaces 1 "all"
*createstringarray 1 "breakconnectivity 0"
#mesh surfaces
*hm_batchmesh2 surfaces 1 1 1 "C:/Users/samue/Desktop/Two_Structures/Criteria_and_Parameters/crash_8mm.criteria" "C:/Users/samue/Desktop/Two_Structures/Criteria_and_Parameters/crash_8mm.param"
#create rigid bodies selecting the nodes on xy plane
*createmark nodes 2 "on plane" 0 0 0 0 0 1 5 1 0
*rigidlinkinodecalandcreate 2 0 1 456
*startnotehistorystate {Modified MASS of element}
*createmark elems 2 "by box" -1000 -1000 2 1000 1000 -5 0 inside 0 1 0
*setvalue elems mark=2 STATUS=1 167=900.000000
*endnotehistorystate {Modified MASS of element}
*createentity sets cardimage=GRSHEL name=set1
*setvalue sets id=3 cardimage="GRNOD"
*startnotehistorystate {Updated "cardimage" of Sets}
*endnotehistorystate {Updated "cardimage" of Sets}
#select the master node
*createmark nodes 2 "by box" -1000 -1000 2 1000 1000 -5 0 inside 0 1 0
*entitysetupdate "set1" nodes 2
#velocity to master node
*createentity loadcols cardimage=INIVEL_Collector name=loadcol1
*startnotehistorystate {Modified Vz of loadcol}
*endnotehistorystate {Modified Vz of loadcol}
*startnotehistorystate {Modified Vz of loadcol}
*setvalue loadcols id=2 STATUS=1 749=13.800000
*endnotehistorystate {Modified Vz of loadcol}
*setvalue loadcols id=2 name="Velocity_Rigid"
*startnotehistorystate {Modified Grnod_id of loadcol from 0 to 3}
*setvalue loadcols id=2 STATUS=1 8056={sets 3}
*endnotehistorystate {Modified Grnod_id of loadcol from 0 to 3}
*createentity loadcols cardimage=INIVEL_Collector name=loadcol1
*setvalue loadcols id=3 cardimage="BCS_Collector"
*setvalue loadcols id=3 name="BCS_Rigid"
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
#Primary box
*createmark elements 2 "by box" 355.135200 -30.135200 278.224900 -355.135200 30.135200 288.724900 0 inside 0 1 0
*movemark elements 2 "HAZ_P"
#Secondary box
*createmark elements 2 "by box" 366.406446 358.593554 223.874697 -366.406446 441.406446 231.757407 0 inside 0 1 0
*movemark elements 2 "HAZ_S"
#OutputBlocks
*createmark elems 2 "on plane" 0 0 0 0 0 1 1 1 0
*outputblockscreate "RIGID" elements 2
*startnotehistorystate {Attached attributes to outputblock "RIGID"}
*attributeupdateint outputblocks 1 4674 20 2 0 1
*attributeupdateint outputblocks 1 8087 20 0 0 8
*attributeupdateint outputblocks 1 7950 20 2 0 0
*attributeupdateint outputblocks 1 7045 20 0 0 1
*createstringarray 1 "DEF"
*attributeupdatestringarray outputblocks 1 7044 20 2 0 1 1
*attributeupdateint outputblocks 1 7951 20 2 0 1
*endnotehistorystate {Attached attributes to outputblock "RIGID"}
*startnotehistorystate {Modified Var of "RIGID"}
*setvalue outputblocks id=1 STATUS=2 7044={DEF} ROW=0
*endnotehistorystate {Modified Var of "RIGID"}
# ## outputblocks
*createmark nodes 2 "by box" -100 100 -10 100 300 10 0 inside 0 1 0
*outputblockscreate "NODEDISPLACEMNET" nodes 2
*startnotehistorystate {Modified NUM_VARIABLES of outputblock}
*setvalue outputblocks id=2 STATUS=1 7045=1
*endnotehistorystate {Modified NUM_VARIABLES of outputblock}
*startnotehistorystate {Attached attributes to outputblock "NODEDISPLACEMNET"}
*setvalue outputblocks id=2 STATUS=2 4674=1
*setvalue outputblocks id=2 STATUS=2 7950=0
*startnotehistorystate {Updated string array}
*setvalue outputblocks id=2 STATUS=2 7044={} ROW=0
*endnotehistorystate {Updated string array}
*setvalue outputblocks id=2 STATUS=2 7042={systs 0}
*startnotehistorystate {Updated string array}
*setvalue outputblocks id=2 STATUS=2 7043={} ROW=0
*endnotehistorystate {Updated string array}
*setvalue outputblocks id=2 STATUS=2 7951=1
*endnotehistorystate {Attached attributes to outputblock "NODEDISPLACEMNET"}
*mergehistorystate "" ""
*startnotehistorystate {Modified Var of outputblock}
*setvalue outputblocks id=2 STATUS=2 7044={DEF} ROW=0
*endnotehistorystate {Modified Var of outputblock}
#Engine Cards
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
*setvalue cards id=9 STATUS=2 7109=0.000700
*endnotehistorystate {Modified tIni of card}
*startnotehistorystate {Modified tMax of card}
*setvalue cards id=9 STATUS=2 7110=0.000700
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
*setvalue cards id=10 STATUS=2 8120=0.000450
*endnotehistorystate {Modified Tmin of card}
*startnotehistorystate {Created "VERS"}
*createentity cards name=ENG_VERS
*createmark cards 1
*clearmark cards 1
*endnotehistorystate {Created "VERS"}
*createentity mats cardimage=M1_ELAST name=material1
#material for haz
*startnotehistorystate {Renamed Materials from "material1" to "AL6082_T6"}
*setvalue mats id=3 name=AL6082_T6
*endnotehistorystate {Renamed Materials from "material1" to "AL6082_T6"}
*setvalue mats id=3 cardimage="M2_PLAS_JOHNS_ZERIL"
*startnotehistorystate {Modified Rho_Initial of material}
*endnotehistorystate {Modified Rho_Initial of material}
*startnotehistorystate {Modified Rho_Initial of material}
*setvalue mats id=3 STATUS=1 118=2.7e-006
*endnotehistorystate {Modified Rho_Initial of material}
*startnotehistorystate {Updated "118" of Materials}
*endnotehistorystate {Updated "118" of Materials}
*startnotehistorystate {Modified E of material}
*endnotehistorystate {Modified E of material}
*startnotehistorystate {Modified E of material}
*setvalue mats id=3 STATUS=1 119=69
*endnotehistorystate {Modified E of material}
*startnotehistorystate {Updated "119" of Materials}
*endnotehistorystate {Updated "119" of Materials}
*startnotehistorystate {Modified nu of material}
*endnotehistorystate {Modified nu of material}
*startnotehistorystate {Modified nu of material}
*setvalue mats id=3 STATUS=1 120=0.33
*endnotehistorystate {Modified nu of material}
*startnotehistorystate {Modified Iflag of material}
*setvalue mats id=3 STATUS=1 6002=1
*endnotehistorystate {Modified Iflag of material}
*startnotehistorystate {Attached attributes to material "AL6082_T6"}
*setvalue mats id=3 STATUS=0 6028=0
*setvalue mats id=3 STATUS=0 1510=0
*setvalue mats id=3 STATUS=0 1511=0
*endnotehistorystate {Attached attributes to material "AL6082_T6"}
*mergehistorystate "" ""
*startnotehistorystate {Modified SIGMA_Y of material}
*endnotehistorystate {Modified SIGMA_Y of material}
*startnotehistorystate {Modified SIGMA_Y of material}
*setvalue mats id=3 STATUS=1 6028=0.25
*endnotehistorystate {Modified SIGMA_Y of material}
*startnotehistorystate {Updated "6028" of Materials}
*endnotehistorystate {Updated "6028" of Materials}
*startnotehistorystate {Modified UTS of material}
*endnotehistorystate {Modified UTS of material}
*startnotehistorystate {Modified UTS of material}
*setvalue mats id=3 STATUS=1 1510=0.29
*endnotehistorystate {Modified UTS of material}
*startnotehistorystate {Modified E_UTS of material}
*endnotehistorystate {Modified E_UTS of material}
*startnotehistorystate {Modified E_UTS of material}
*setvalue mats id=3 STATUS=1 1511=0.064
*endnotehistorystate {Modified E_UTS of material}
*createentity mats cardimage=M1_ELAST name=material1
*startnotehistorystate {Renamed Materials from "material1" to "AL6082_T6_HAZ"}
*setvalue mats id=4 name=AL6082_T6_HAZ
*endnotehistorystate {Renamed Materials from "material1" to "AL6082_T6_HAZ"}
*setvalue mats id=4 cardimage="M2_PLAS_JOHNS_ZERIL"
*startnotehistorystate {Modified Rho_Initial of material}
*endnotehistorystate {Modified Rho_Initial of material}
*startnotehistorystate {Modified Rho_Initial of material}
*setvalue mats id=4 STATUS=1 118=2.7e-006
*endnotehistorystate {Modified Rho_Initial of material}
*startnotehistorystate {Updated "118" of Materials}
*endnotehistorystate {Updated "118" of Materials}
*startnotehistorystate {Modified E of material}
*endnotehistorystate {Modified E of material}
*startnotehistorystate {Modified E of material}
*setvalue mats id=4 STATUS=1 119=69
*endnotehistorystate {Modified E of material}
*startnotehistorystate {Updated "119" of Materials}
*endnotehistorystate {Updated "119" of Materials}
*startnotehistorystate {Modified nu of material}
*endnotehistorystate {Modified nu of material}
*startnotehistorystate {Modified nu of material}
*setvalue mats id=4 STATUS=1 120=0.33
*endnotehistorystate {Modified nu of material}
*startnotehistorystate {Modified Iflag of material}
*setvalue mats id=4 STATUS=1 6002=1
*endnotehistorystate {Modified Iflag of material}
*startnotehistorystate {Attached attributes to material "AL6082_T6_HAZ"}
*setvalue mats id=4 STATUS=0 6028=0
*setvalue mats id=4 STATUS=0 1510=0
*setvalue mats id=4 STATUS=0 1511=0
*endnotehistorystate {Attached attributes to material "AL6082_T6_HAZ"}
*mergehistorystate "" ""
*startnotehistorystate {Modified SIGMA_Y of material}
*endnotehistorystate {Modified SIGMA_Y of material}
*startnotehistorystate {Modified SIGMA_Y of material}
*setvalue mats id=4 STATUS=1 6028=0.125
*endnotehistorystate {Modified SIGMA_Y of material}
*startnotehistorystate {Updated "6028" of Materials}
*endnotehistorystate {Updated "6028" of Materials}
*startnotehistorystate {Modified UTS of material}
*endnotehistorystate {Modified UTS of material}
*startnotehistorystate {Modified UTS of material}
*setvalue mats id=4 STATUS=1 1510=0.185
*endnotehistorystate {Modified UTS of material}
*startnotehistorystate {Modified E_UTS of material}
*endnotehistorystate {Modified E_UTS of material}
*startnotehistorystate {Modified E_UTS of material}
*setvalue mats id=4 STATUS=1 1511=0.064
*endnotehistorystate {Modified E_UTS of material}
*startnotehistorystate {Modified Mat_Id of component from 1 to 3}
*setvalue comps id=3 materialid={mats 3}
*endnotehistorystate {Modified Mat_Id of component from 1 to 3}
*startnotehistorystate {Modified Mat_Id of component from 2 to 4}
*setvalue comps id=4 materialid={mats 4}
*endnotehistorystate {Modified Mat_Id of component from 2 to 4}
*startnotehistorystate {Created "SPMD"}
*createentity cards name=Spmd
*createmark cards 1
*clearmark cards 1
*endnotehistorystate {Created "SPMD"}
*startnotehistorystate {Modified Nspmd of card}
*endnotehistorystate {Modified Nspmd of card}
*startnotehistorystate {Modified Nspmd of card}
*setvalue cards id=12 STATUS=1 2129=8
*endnotehistorystate {Modified Nspmd of card}
*startnotehistorystate {Modified Dkword of card}
*endnotehistorystate {Modified Dkword of card}
*startnotehistorystate {Modified Dkword of card}
*setvalue cards id=12 STATUS=1 4174=4000
*endnotehistorystate {Modified Dkword of card}
*startnotehistorystate {Modified Nspmd of card}
*endnotehistorystate {Modified Nspmd of card}
*startnotehistorystate {Modified Nspmd of card}
*setvalue cards id=12 STATUS=1 2129=1
*endnotehistorystate {Modified Nspmd of card}
*startnotehistorystate {Modified Nthread of card}
*endnotehistorystate {Modified Nthread of card}
*startnotehistorystate {Modified Nthread of card}
*setvalue cards id=12 STATUS=1 4774=8
*endnotehistorystate {Modified Nthread of card}
*settopologydisplaymode 0
*createstringarray 1 "CONNECTORS_SKIP"
#export setup and run
hm_answernext yes
*feoutputwithdata "C:/Program Files/Altair/2017/templates/feoutput/radioss/radioss2017.blk" "C:/Users/samue/Desktop/Two_Structures/Simulation_6061T6_H_8mm_tick_4.3515_DimC_41.4064_ComprimentoT_274.4611_raio_2285.6934_alturab_63.1096_largura_b_35.5864/Bumper_two_double_0000.rad" 1 0 1 1 1
*attributeupdatestring cards 5 6161 20 1 0 "Bumper_two_double"
*setcurrentinclude 0 ""
*createstringarray 1 "DEF"
hm_answernext yes
*feoutputwithdata "C:/Program Files/Altair/2017/templates/feoutput/radioss/enginecard2017blk" "C:/Users/samue/Desktop/Two_Structures/Simulation_6061T6_H_8mm_tick_4.3515_DimC_41.4064_ComprimentoT_274.4611_raio_2285.6934_alturab_63.1096_largura_b_35.5864/Bumper_two_double_0001.rad" 0 0 2 1 1
*createstringarray 1 "CONNECTORS_SKIP"
hm_answernext yes
*feoutputwithdata "C:/Program Files/Altair/2017/templates/feoutput/radioss/radioss2017.blk" "C:/Users/samue/Desktop/Two_Structures/Simulation_6061T6_H_8mm_tick_4.3515_DimC_41.4064_ComprimentoT_274.4611_raio_2285.6934_alturab_63.1096_largura_b_35.5864/Bumper_two_double_0000.rad" 1 0 1 1 1
*attributeupdatestring cards 5 6161 20 1 0 "Bumper_two_double"
*setcurrentinclude 0 ""
*createstringarray 1 "DEF"
hm_answernext yes
*feoutputwithdata "C:/Program Files/Altair/2017/templates/feoutput/radioss/enginecard2017blk" "C:/Users/samue/Desktop/Two_Structures/Simulation_6061T6_H_8mm_tick_4.3515_DimC_41.4064_ComprimentoT_274.4611_raio_2285.6934_alturab_63.1096_largura_b_35.5864/Bumper_two_double_0001.rad" 0 0 2 1 1
*quit 1;
