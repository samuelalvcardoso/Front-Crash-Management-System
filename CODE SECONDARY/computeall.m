function [f1,f2,c,ceq] = computeall(x)
% function to run all the process
%comment firt line and last to a single run
%define the variables for the geomtry in the 6th
%%%%%%%%%%
% x=[1.5 25 100 2000 51 15];
global xLast;
global Vector;
teste=0;

%avoid repetitions
if(xLast~=1)
for(i=1:length(Vector(:,1)))
    if(x(1)==Vector(i,1) && x(2)==Vector(i,2) && x(3)==Vector(i,3))
        f1=Vector(i,4);
        f2=Vector(i,5);
        c=[Vector(i,6) Vector(i,7) Vector(i,8) Vector(i,9)];
        ceq=[];
        teste=1;
      cd 'C:/Users/samue/Desktop/Two_structures';
    end
        
end
      
end

%define directories
%be careful with them
if(teste==0)
%xLast=5;
directory_partCATIA='"C:/Users/samue/Desktop/Two_structures/Bumper_two_double.igs"';
directory_partCATIA1='"C:\\Users\\samue\\Desktop\\Two_structures\\Bumper_two_double.CATPart"';
directory_partCATIA2='"C:\\Users\\samue\\Desktop\\Two_structures\\Bumper_two_double.igs"';

%%%%%%%%%%%%%%%
% Parameters for Hypermesh
%%%%%%%%%%%%%%%


thickness=3.6538;
RUN_TIME=55;
Velocity=13.8;
Mass=800;
DTIX_INI_name='001';
DTIX_TSTEP='0008';
DT_NODA_name='0005';
Malha='8';
Material='6061T4_SQ700';

tick=num2str(x(1));
% param=num2str(x(2));
 param1=num2str(x(2));
 param2=num2str(x(3));
% raio=num2str(9000);
raio=num2str(x(4));
altura_b=num2str(x(5));
%  altura_b=num2str(50);
largura_b=num2str(x(6));
% largura_b=num2str(25);
xLast1=num2str(xLast);

%time step definiton
DTIX_INI=0.0007;
DTIX_TSTEP=0.0007;
DT_NODA=0.0005;

%%%%%%%%%%%
% Parameters for CATIA
%%%%%%

%Comprimento_bumper_total=300;
Altura_Crash=x(2);
Largura_Crash=x(2);
Comprimento_bumper_total=x(3);
Real_Raio_Bumper=x(4);
Altura_Bumper=x(5);
% Altura_Bumper=50;
Largura_Bumper=x(6);

Espessura=2;
Distance_Between_Crashes=325;

% Largura_Bumper=25;
Front_Bumper=625;

% Real_Raio_Bumper=9000;
% Node_Rigid=Comprimento_bumper_total+50;
Node_Rigid=325;
%%%%%%%%%%%%%%%%%%%%%%
%material definition
%normal
sigmay1=0.11;
sigmau1=0.18;
uts1=0.8*0.15;

%HAZ
sigmay2=0.095;
sigmau2=0.15;
uts2=0.8*0.15;

thick2=x(1);

% c1=(Distance_Between_Crashes+Largura_Crash);
% c2=-Largura_Crash;
% c3=Comprimento_bumper_total-Largura_Bumper-15.5;
% c4=-(Distance_Between_Crashes+Largura_Crash);
% c5=Largura_Crash;
% c6=Comprimento_bumper_total-Largura_Bumper*1.2;

%define the corners for primary strcture to select HAZ elemets
c1=(325+30.1352);
c2=-30.1352;
c3=318.7249-25-15.5;
c4=-(325+30.1352);
c5=30.1352;
c6=318.7249-25*1.2;

corners=[c1 c2 c3 c4 c5 c6];

%define the corners for secondary strcture to select HAZ elemets
c1_sec=(Distance_Between_Crashes+((Largura_Crash/2)*1.2));
c2_sec=400-((Largura_Crash/2)*1.2);
c3_sec=Comprimento_bumper_total-Largura_Bumper-15;
c4_sec=-(Distance_Between_Crashes+((Largura_Crash/2)*1.2));
c5_sec=400+((Largura_Crash/2)*1.2);
c6_sec=Comprimento_bumper_total-Largura_Bumper*1.2;

corners_sec=[c1_sec c2_sec c3_sec c4_sec c5_sec c6_sec];

%%%%%%%%%%
% References
%%%%%%%%%%
CFE_ref=0.5;
SEA_ref=35000;

%%%%%%%%%
criteria_file=sprintf('"C:/Users/samue/Desktop/Two_structures/Criteria_and_Parameters/crash_%smm.criteria"',Malha);
parameter_file=sprintf('"C:/Users/samue/Desktop/Two_structures/Criteria_and_Parameters/crash_%smm.param"',Malha);

dos('cd C:/Users/samue/Desktop/Two_structures');

 foldernumber=sprintf('%s_m%s_t_%s_CB_%s_CT_%s_R_%s_AB_%s_LB_%s',Material,Malha,tick,param1,param2,raio,altura_b,largura_b);
radioss_file=sprintf('Bumper_two_double_0000.rad');
radioss_file1=sprintf('Bumper_two_double_0001.rad');
hg_file=sprintf('Bumper_two_doubleT01');
folderName=sprintf('Simulation_%s',foldernumber);

makedirectory=sprintf('mkdir C:\\Users\\samue\\Desktop\\Two_structures\\%s',folderName);

dos(makedirectory,'-echo');

directory_RADIOSS=sprintf('"C:/Users/samue/Desktop/Two_structures/Simulation_%s/%s"',foldernumber,radioss_file);
directory_RADIOSS_simulation=sprintf('"C:\\Users\\samue\\Desktop\\Two_structures\\Simulation_%s\\%s"',foldernumber,radioss_file);
directory_RADIOSS_0001=sprintf('"C:/Users/samue/Desktop/Two_structures/Simulation_%s/%s"',foldernumber,radioss_file1);

% change values and update geometry on CATIA
%%%%%%%%%%%%%%%%%%

cd 'C:\Users\samue\Desktop\Two_structures';

catiamacrotable=readtable('CATIA_macro.txt','Delimiter','\n','HeaderLines', 0, 'ReadVariableNames', false, 'Format', '%s');
catiamacrotable=table2cell(catiamacrotable);
fileID_CATIA=fopen('CATIA_macro_modified.catvbs','w');
catiamacromatrix=CATIA_MODIFY_MACRO(catiamacrotable,directory_partCATIA1,directory_partCATIA2,Comprimento_bumper_total,Altura_Bumper,Altura_Crash,Espessura,Largura_Crash,Distance_Between_Crashes,Largura_Bumper,Front_Bumper,Real_Raio_Bumper);

for(i=1:length(catiamacromatrix))
fprintf(fileID_CATIA,catiamacromatrix{i,1});
fprintf(fileID_CATIA,'\n');
end
fclose(fileID_CATIA);

dos('cd C:\Users\samue\Desktop\Two_structures');
    
status_catia=dos('"C:\Program Files\Dassault Systemes\B20\win_b64\code\bin\CNEXT.exe" -nowindow -batch -macro CATIA_macro_modified.catvbs','-echo');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% change values and run macro on hypermesh
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hypermeshmacro=readtable('hypermesh_macro_both.txt','Delimiter','\n','HeaderLines', 0, 'ReadVariableNames', false, 'Format', '%s');
hypermeshmacro=table2cell(hypermeshmacro);

%%change macro in hypermesh
hypermeshmacromatrix = HYPERMESH_MODIFY_MACRO_SOLDER(hypermeshmacro,directory_partCATIA,directory_RADIOSS,thickness,RUN_TIME,Node_Rigid,Mass,Velocity,DTIX_INI,DTIX_TSTEP,DT_NODA,directory_RADIOSS_0001,criteria_file,parameter_file,sigmay1,sigmay2,sigmau1,sigmau2,uts1,uts2,thick2,corners,corners_sec);


fileID2=fopen('hypermesh_macro_modified.tcl','w');

for(i=1:length(hypermeshmacromatrix))
fprintf(fileID2,hypermeshmacromatrix{i,1});
fprintf(fileID2,'\n');
end
fclose(fileID2);

   %%run macro in hypermesh
while 1
  status_hyper=dos('"C:\Program Files\Altair\2017\hm\bin\win64\hmopengl.exe" -h -uRadiossBlock -aRadioss2017 -s1x1 -tcl "C:\Users\samue\Desktop\Two_structures\hypermesh_macro_modified.tcl"','-echo');
  if (status_hyper==0)
      break;
   end
end

%run radioss
String_for_RADIOSS=sprintf('"C:\\Program Files\\Altair\\2017\\hwsolvers\\scripts\\radioss.bat" %s -noh3d',directory_RADIOSS_simulation);

status_radioss=dos(String_for_RADIOSS);



dos('cd C:/Users/samue/Desktop/Two_structures');

%change file to be read for the hypergraph
file_HGRAPH_session=readtable('session_filtered.txt','Delimiter','\n','HeaderLines', 0, 'ReadVariableNames', false, 'Format', '%s');
HGRAPH_session=table2cell(file_HGRAPH_session);
fileID_hg=fopen('session_modified.mvw','w');
hg_file_t=sprintf('{ PLOT_FILE_1 = "%s" }',hg_file);
HGRAPH_session{2,1}=hg_file_t;

for(i=1:length(HGRAPH_session))
fprintf(fileID_hg,HGRAPH_session{i,1});
fprintf(fileID_hg,'\n');
end

fclose(fileID_hg);
%copy session file to the simulation directory
copy_session=sprintf('copy session_modified.mvw C:\\Users\\samue\\Desktop\\Two_structures\\Simulation_%s',foldernumber);
dos(copy_session);

%write the macro for hypergraph
file_HGRAPH=fopen('hypergraph_macro_modified.tcl','w');
fprintf(file_HGRAPH,'hwi GetSessionHandle session_handle \n');
fprintf(file_HGRAPH,'session_handle GetProjectHandle project_handle \n');
fprintf(file_HGRAPH,'session_handle LoadSessionFile  "C:/Users/samue/Desktop/Two_structures/Simulation_%s/session_modified.mvw" \n',foldernumber);
fprintf(file_HGRAPH,'session_handle ExportCurves "C:/Users/samue/Desktop/Two_structures/Simulation_%s/Export%s.csv" "Excel" all \n',foldernumber,foldernumber);
fclose(file_HGRAPH);



dos('"C:\Program Files\Altair\2017\hw\bin\win64\hw.exe" -clientconfig hwplot.dat -b -tcl "C:\Users\samue\Desktop\Two_structures\hypergraph_macro_modified.tcl"');


hyper_graph_directory=sprintf('C:/Users/samue/Desktop/Two_structures/Simulation_%s',foldernumber);
cd(hyper_graph_directory);
hyper_graph_file=sprintf('Export%s.csv',foldernumber);
CURVE_RESULTS=csvread(hyper_graph_file);

j=0;
k=1;

for(i=1:length(CURVE_RESULTS(:,1)))
    if(CURVE_RESULTS(i,1)==0)
        j=j+1;
        k=1;
    end
    Resultss(j,k,:)=CURVE_RESULTS(i,:);
    k=k+1;
end

%% curves
if(length(Resultss(:,1,1))==5)
    
Force_non_filtered=Resultss(5,:,:);
ForceCurve=Resultss(2,:,:);
InternalEnergy=Resultss(3,:,:);
Mass_Final=Resultss(4,1,2);
Mass_total=Mass_Final;
Mass_Final=Mass_Final-Mass;
Force_Time=Resultss(1,:,:);
j=1;


for(i=1:length(ForceCurve))
    if(ForceCurve(1,i,2)~=0)
    Force_non_filtered(1,j,:)=Force_non_filtered(1,i,:);    
    ResultsForce(1,j,:)=ForceCurve(1,i,:);
    j=j+1;
    end
end

save('ForceCurve.mat','ResultsForce');
save('IntegralEnergy.mat','InternalEnergy');
save('MassFinal.mat','Mass_Final');
save('Force_Time.mat','Force_Time');

Mean_force=sum(ResultsForce(1,:,2))/(length(ResultsForce(1,:,2)));
Pmax=max(ResultsForce(1,:,2));

EA=max(InternalEnergy(1,:,2));

CFE=Mean_force/Pmax;
SEA=EA/Mass_Final;

Time_Force=Force_Time(1,:,1);
Force_HIC=Force_Time(1,:,2);
acc=(Force_HIC*1000)/((Mass_Final+Mass)*9.8);

acc_constraints=((ResultsForce(1,:,2))*1000)/((Mass_Final+Mass)*9.8);
acc_constraints_max=max(acc_constraints);

plot_acc_max=(80*9.8*(Mass_Final+Mass))/1000;
plot_acc_max_vector=ones(1,length(ResultsForce(1,:,1)))*plot_acc_max;
plot_acc_max_geral=(80*9.8*Mass)/1000;
plot_acc_max_geral=plot_acc_max_geral*ones(1,length(ResultsForce(1,:,1)));

fig1=figure(1)
plot(ResultsForce(1,:,1),ResultsForce(1,:,2))
xlabel('Displacement (mm)');ylabel('Force (kN)');
hold on;
plot(ResultsForce(1,:,1),plot_acc_max_geral,'--k');
hold on;

cd 'C:/Users/samue/Desktop/Two_structures';
%%HIC, MAX acc and acc 3ms
[MAX_HIC,MAX_PEAK_3MS,MAX_ACC] = Calc_HIC(Time_Force,Force_HIC,acc)

cd(hyper_graph_directory);

save('MAX_NCAP_VAR.mat','MAX_HIC','MAX_PEAK_3MS','MAX_ACC');

Distance=sqrt((((CFE-CFE_ref)/CFE_ref)^2)+(((SEA-SEA_ref)/SEA_ref))^2);

CFE_plot=abs((CFE-CFE_ref)/CFE_ref);
SEA_plot=abs((SEA-SEA_ref)/SEA_ref);

c1=MAX_HIC-700;
c2=MAX_PEAK_3MS-65;
c3=acc_constraints_max-80;
c4=EA-0.5*Mass_total*(Velocity^2);

c(1)=c1;
c(2)=c2;
c(3)=c3;
c(4)=c4;
ceq=[];
M_ref=3;

%%add rank to diverged solutions
if(ForceCurve(1,end,1)>ForceCurve(1,end-1,1))
f1=100000000;
f2=100000000;
else
% f=1/(sqrt((((CFE-CFE_ref)/(CFE_ref))^2)+((Mass_Final-M_ref)/M_ref)^2));
f1=1-CFE;
%f2=Mass_Final;
f2=-SEA;
end

file_txt_ctes=fopen('consts.txt','w');

%save in files
fprintf(file_txt_ctes,'CFE=%f \n',CFE);
fprintf(file_txt_ctes,'SEA= %f \n',SEA);
fprintf(file_txt_ctes,'MAX_HIC= %f \n',MAX_HIC);
fprintf(file_txt_ctes,'MAX_PEAK_3MS= %f \n',MAX_PEAK_3MS);
fprintf(file_txt_ctes,'MAX_ACC= %f \n',acc_constraints_max);
fprintf(file_txt_ctes,'Distance= %f \n',Distance);

fclose(file_txt_ctes);

fig2=figure(2)
plot(-SEA,1-CFE,'o');
xlabel('-SEA');ylabel('1-CFE');title('Pareto')
hold on;

if(CFE_plot<0||SEA_plot<0)
    color='r';
else
    color='b';
end

fig3=figure(3)
plot(SEA,CFE,'o','Color',color);
xlabel('SEA (J/kg)');ylabel('CFE');
hold on;

fig4=figure(4);
subplot(2,2,1)
plot(Force_non_filtered(1,:,1),Force_non_filtered(1,:,2));
xlabel('Displacement (mm)');ylabel('Force (kN)');title('Non Filtered Curve');

subplot(2,2,2)
plot(ResultsForce(1,:,1),ResultsForce(1,:,2));
xlabel('Displacement (mm)');ylabel('Force (kN)');title('Filtered Curve');
hold on;
plot(ResultsForce(1,:,1),plot_acc_max_vector,'--k');
hold off;

subplot(2,2,3)
plot(Mass_Final,CFE,'o');
xlabel('Mass (kg)');ylabel('CFE');

subplot(2,2,4)
plot(InternalEnergy(1,:,1),InternalEnergy(1,:,2));
xlabel('Displacement (mm)');ylabel('Internal Energy');

saveas(fig4,'TOTAL_PLOTS','png');
saveas(fig4,'TOTAL_PLOTS','fig');

if(f1~=100000000)
    
fig5=figure(5)
scatter3(x(1),x(2),x(3));
xlabel('Thickness (mm)');ylabel('Crash Box Height (mm)');zlabel('Crash Box Width (mm)')
hold on;

end

% figure(6)
% plot(f,f2,'o');
% xlabel('1/CFE');ylabel('1/SEA');title('Pareto');
% hold on
cd 'C:/Users/samue/Desktop/Two_structures';


Vector(xLast,1)=x(1);
Vector(xLast,2)=x(2);
Vector(xLast,3)=x(3);
Vector(xLast,4)=f1;
Vector(xLast,5)=f2;
Vector(xLast,6)=c(1);
Vector(xLast,7)=c(2);
Vector(xLast,8)=c(3);
Vector(xLast,9)=c(4);
% 



file_txt_values=fopen('Values.txt','w');
fprintf(file_txt_values,'x1=%f \n x2=%f \n x3=%f \n f1=%f \n f2=%f \n c1=%f \n c2=%f \n c3=%f \n c4=%f \n',Vector(xLast,1),Vector(xLast,2),Vector(xLast,3),Vector(xLast,4),Vector(xLast,5),Vector(xLast,6),Vector(xLast,7),Vector(xLast,8),Vector(xLast,9));
fclose(file_txt_values);

xLast=xLast+1;

save('Vector.mat','Vector');
saveas(fig1,'Force_Displacement','png');
saveas(fig1,'Force_Displacement','fig');

saveas(fig2,'Pareto','png');
saveas(fig2,'Pareto','fig');

saveas(fig3,'SEA_CFE','png');
saveas(fig3,'SEA_CFE','fig');
if(f1~=100000000)
    
saveas(fig5,'Variables_Change','png');
saveas(fig5,'Variables_Change','fig');
end
else
    f1=100000000;
    f2=100000000;
    c(1)=100000000;
    c(2)=100000000;
    c(3)=100000000;
    c(4)=100000000;
    ceq=[];
    cd 'C:/Users/samue/Desktop/Two_structures';
end
end
end

