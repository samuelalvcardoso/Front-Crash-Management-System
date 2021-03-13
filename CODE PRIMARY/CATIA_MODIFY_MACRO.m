function[catiamacrotable] = CATIA_MODIFY_MACRO(catiamacrotable,directory_part_CATIAopen,directory_part_CATIAsave,Comprimento_bumper_total,Altura_Bumper,Altura_Crash,Espessura,Largura_Crash,Distance_Between_Crashes,Largura_Bumper,Front_Bumper,Real_Raio_Bumper);
%FUNCTION TO MODIFY CATIA MACRO WITH THE PARAMETERS

directory_open=sprintf('Set partDocument1 = documents1.Open(%s)',directory_part_CATIAopen);
catiamacrotable{7,1}=directory_open;

directory_save=sprintf('partDocument1.ExportData %s, "igs"',directory_part_CATIAsave);
catiamacrotable{117,1}=directory_save;

Comprimento_bumper_total=sprintf('length3.Value = %f',Comprimento_bumper_total);
catiamacrotable{27,1}=Comprimento_bumper_total;

Altura_Bumper=sprintf('length8.Value = %f',Altura_Bumper );
catiamacrotable{57,1}=Altura_Bumper;

Altura_Crash=sprintf('length6.Value = %f',Altura_Crash);
catiamacrotable{45,1}=Altura_Crash;

Largura_Crash=sprintf('length7.Value = %f',Largura_Crash );
catiamacrotable{51,1}=Largura_Crash;

Distance_Between_Crashes=sprintf('length5.Value = %f',Distance_Between_Crashes );
catiamacrotable{39,1}=Distance_Between_Crashes;

Largura_Bumper=sprintf('length4.Value = %f',Largura_Bumper);
catiamacrotable{33,1}=Largura_Bumper;

Front_Bumper=sprintf('length1.Value = %f',Front_Bumper);
catiamacrotable{15,1}=Front_Bumper;

Real_Raio_Bumper=sprintf('length2.Value = %f',Real_Raio_Bumper);
catiamacrotable{21,1}=Real_Raio_Bumper;

 

end

