clc 

global xLast;
xLast=1;
global Vector;
global xANT;
xANT=0;
A=[];
B=[];
Aeq=[];
Beq=[];

%%definig the low boundaries and upper boundaries [thickness crashboxsize bumperlength]
LB=[3.4 25 290];

UB=[5 55 350];
objective=@objfun;
nonl=@constr;


rng default
%%opotins for optimization

opts = optimoptions('gamultiobj','FunctionTolerance',0.05,'MaxGenerations',50,'PopulationSize',10,'MaxStallGenerations',5);
 
 %%optimizer

[x,fval,exitflag,output]=gamultiobj(objective,3,A,B,Aeq,Beq,LB,UB,nonl,opts);


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
  
        if ~isequal(x,xLast_1) % Check if computation is necessary
           
            [myf1,myf2,myc,myceq] = computeall_2(x);
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
          
            [myf1,myf2,myc,myceq] = computeall_2(x);
            xLast_1 = x;
        end
        % Now compute constraint functions
        c = myc; % In this case, the computation is trivial
        ceq = myceq;
    end