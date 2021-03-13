clc 
clear all
close all


global xLast;
xLast=1;
global Vector;
global xANT;
xANT=0;
A=[];
B=[];
Aeq=[];
Beq=[];


LB=[1.5 60 150 2000 51 15];

UB=[5 90 318 10000 70 40];
objective=@objfun;
nonl=@constr;



rng default
%options for optimization
opts = optimoptions('gamultiobj','FunctionTolerance',0.005,'MaxGenerations',50,'PopulationSize',15,'MaxStallGenerations',5);

%optimization algorithm
[x,fval,exitflag,output]=gamultiobj(objective,6,A,B,Aeq,Beq,LB,UB,nonl,opts);


global xLast_1;
global myf;
global myc;
global myceq;

xLast_1 = []; % Last place computeall was called
myf = []; % Use for objective at xLast
myc = []; % Use for nonlinear inequality constraint
myceq = []; % Use for nonlinear equality constraint

  function [y1, y2]= objfun(x)
  global xLast_1;
global myf1;
global myf2;
global myc;
global myceq;
cd 'C:/Users/samue/Desktop/Two_structures'
load('AL6082T6_H_900kg.mat');

        if ~isequal(x,xLast_1) % Check if computation is necessary
           
            [myf1,myf2,myc,myceq] = computeall(x);
            xLast_1 = x;
        end
        % Now compute objective function
        y1=myf1;
        y2=myf2;
  end


    function [c,ceq] = constr(x)
    global xLast_1;
global myf1;
global myf2;
global myc;
global myceq;

        if ~isequal(x,xLast_1) % Check if computation is necessary
          
            [myf1 ,myf2, myc, myceq] = computeall(x);
            xLast_1 = x;
        end
        % Now compute constraint functions
        c = myc; % In this case. the computation is trivial
        ceq = myceq;
  end
    