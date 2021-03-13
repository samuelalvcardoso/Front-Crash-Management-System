function [ MAX_HIC ,MAX_PEAK_3MS,MAX_ACC] = Calc_HIC(Time_Force,Force_HIC,acc )
%%calculation of HIC, Max acc, and acc 3ms
interval=15/0.05;
interval_peak=3/0.05;
if(length(acc)>interval)
for(i=1:length(acc)-interval)

   aux=i+interval;
   HIC(i)=(((1/0.015)*trapz(Time_Force(i:aux)*0.001,acc(i:aux)))^2.5)*0.015;
   
   
end

for(j=1:length(acc)-interval_peak)
    aux2=j+interval_peak;
    PEAK_3MS(j)=mean(acc(j:aux2));
end
[M,I]=max(HIC);
MAX_HIC=M;

MAX_PEAK_3MS=max(PEAK_3MS);
MAX_ACC=max(acc);
end
if(length(acc)<interval)
    
MAX_HIC=10000;

MAX_PEAK_3MS=10000;
MAX_ACC=10000;
end
end

