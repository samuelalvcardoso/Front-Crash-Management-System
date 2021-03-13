function [hypermesh_macro] = HYPERMESH_MODIFY_MACRO_SOLDER(hypermesh_macro,directory_partCATIA,directory_RADIOSS,thickness,run_time,Comprimento_bumper_total,Mass,Velocity,DTIX_INI,DTIX_TSTEP,DT_NODA,directory_RADIOSS_0001,criteria_file,parameter_file,sigmay1,sigmay2,sigmau1,sigmau2,uts1,uts2,thick2,corners)
%FUNCTION TO MODIFY THE MACRO FROM HYPERMESH_MODIFY_MACRO_SOLDER

Directory_PART=sprintf('*geomimport "iges_altair" %s "CleanupTol=-0.01" "DoNotMergeEdges=off" "ImportBlanked=off" "ScaleFactor=1.0"',directory_partCATIA);
hypermesh_macro{22,1}=Directory_PART;

Thickness=sprintf('*setvalue props id=1 STATUS=1 431=%f',thickness);
hypermesh_macro{93,1}=Thickness;

%Mesh=sprintf('*hm_batchmesh2 surfaces 1 1 1 %s %s',criteria_file,parameter_file);
%hypermesh_macro{527,1}=Mesh;

RUN=sprintf('*setvalue cards id=5 STATUS=2 6164=%f',run_time);
hypermesh_macro{510,1}=RUN;

Directory_RADIOSS_file=sprintf('*feoutputwithdata "C:/Program Files/Altair/2017/templates/feoutput/radioss/radioss2017.blk" %s 1 0 1 1 1',directory_RADIOSS);
hypermesh_macro{745,1}=Directory_RADIOSS_file;

Directory_RADIOSS_file_0001=sprintf('*feoutputwithdata "C:/Program Files/Altair/2017/templates/feoutput/radioss/enginecard2017blk" %s 0 0 2 1 1',directory_RADIOSS_0001);
hypermesh_macro{750,1}=Directory_RADIOSS_file_0001;

Directory_RADIOSS_file2=sprintf('*feoutputwithdata "C:/Program Files/Altair/2017/templates/feoutput/radioss/radioss2017.blk" %s 1 0 1 1 1',directory_RADIOSS);
hypermesh_macro{753,1}=Directory_RADIOSS_file2;

Directory_RADIOSS_file3=sprintf('*feoutputwithdata "C:/Program Files/Altair/2017/templates/feoutput/radioss/enginecard2017blk" %s 0 0 2 1 1',directory_RADIOSS_0001);
hypermesh_macro{758,1}=Directory_RADIOSS_file3;

Node_rigid_wall=sprintf('*createnode 0 1 %f 0 0 0',Comprimento_bumper_total);
hypermesh_macro{177,1}=Node_rigid_wall;

Mass_rigid=sprintf('*setvalue elems mark=2 STATUS=1 167=%f',Mass);
hypermesh_macro{343,1}=Mass_rigid;

Velocity0=sprintf('*attributeupdatedouble loadcols 2 749 20 1 0 %f',Velocity);
hypermesh_macro{373,1}=Velocity0;

Velocity1=sprintf('*loadsize 1 %f 0 0',Velocity);
hypermesh_macro{399,1}=Velocity1;

Velocity2=sprintf('*loadsize 1 %f 0 0',Velocity);
hypermesh_macro{400,1}=Velocity2;

Velocity3=sprintf('*attributeupdatedouble loadcols 1 749 20 1 0 %f',Velocity);
hypermesh_macro{270,1}=Velocity3;

Velocity4=sprintf('*loadsize 1 %f 0 0',Velocity);
hypermesh_macro{296,1}=Velocity4;

Velocity5=sprintf('*loadsize 1 %f 0 0',Velocity);
hypermesh_macro{297,1}=Velocity5;

Run_ini=sprintf('*setvalue cards id=9 STATUS=2 7109=%f',DTIX_INI);
hypermesh_macro{549,1}=Run_ini;

Run_step=sprintf('*setvalue cards id=9 STATUS=2 7110=%f',DTIX_TSTEP);
hypermesh_macro{552,1}=Run_step;

Run_dt_noda=sprintf('*setvalue cards id=10 STATUS=2 8120=%f',DT_NODA);
hypermesh_macro{568,1}=Run_dt_noda;

parameters=sprintf('*hm_batchmesh2 surfaces 1 1 1 %s %s',criteria_file,parameter_file);
hypermesh_macro{336,1}=parameters;

sigma_m_y1=sprintf('*setvalue mats id=1 STATUS=1 6028=%f',sigmay1);
hypermesh_macro{75,1}=sigma_m_y1;

sigma_m_u1=sprintf('*setvalue mats id=1 STATUS=1 1510=%f',sigmau1);
hypermesh_macro{702,1}=sigma_m_u1;

uts_m_1=sprintf('*setvalue mats id=1 STATUS=1 1511=%f',uts1);
hypermesh_macro{707,1}=uts_m_1;

sigma_m_y2=sprintf('*setvalue mats id=2 STATUS=1 6028=%f',sigmay2);
hypermesh_macro{664,1}=sigma_m_y2;

sigma_m_u2=sprintf('*setvalue mats id=2 STATUS=1 1510=%f',sigmau2);
hypermesh_macro{712,1}=sigma_m_u2;

uts_m_2=sprintf('*setvalue mats id=2 STATUS=1 1511=%f',uts2);
hypermesh_macro{717,1}=uts_m_2;

Thickness2=sprintf('*setvalue props id=2 STATUS=1 431=%f',thick2);
hypermesh_macro{682,1}=Thickness2;

corners_m=sprintf('*createmark elements 1 "by box" %f %f %f %f %f %f 0 inside 0 1 0',corners(1),corners(2),corners(3),corners(4),corners(5),corners(6));
hypermesh_macro{692,1}=corners_m;

end

