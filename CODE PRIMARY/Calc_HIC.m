function [ MAX_HIC ,MAX_PEAK_3MS,MAX_ACC] = Calc_HIC(Time_Force,Force_HIC,acc )
%function to define the contrains by EURO NCAP

interval=15/0.05;
interval_peak=3/0.05;

for(i=1:length(acc)-interval)
%HIC CALC
   aux=i+interval;
   HIC(i)=(((1/0.015)*trapz(Time_Force(i:aux)*0.001,acc(i:aux)))^2.5)*0.015;
   
   
end

for(j=1:length(acc)-interval_peak)
%ACC 3MS CALC
    aux2=j+interval_peak;
    PEAK_3MS(j)=mean(acc(j:aux2));
end
%MAXIMUM ACC
[M,I]=max(HIC);
MAX_HIC=M;

MAX_PEAK_3MS=max(PEAK_3MS);
MAX_ACC=max(acc);
end

