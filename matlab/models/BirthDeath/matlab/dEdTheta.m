function dEdTheta = dEdTheta(in1,t,in3) %#codegen
%DEDTHETA
%    DEDTHETA = DEDTHETA(IN1,T,IN3)

%    This function was generated by the Symbolic Math Toolbox version 6.1.
%    19-Nov-2014 22:37:47

g_m = in3(:,3);
g_p = in3(:,4);
k_m = in3(:,1);
k_p = in3(:,2);
m = in1(:,1);
p = in1(:,2);
dEdTheta = reshape([1.0./sqrt(k_m).*(1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,m.*1.0./sqrt(k_p.*m).*(1.0./2.0),0.0,0.0,0.0,0.0,m.*1.0./sqrt(g_m.*m).*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,p.*1.0./sqrt(g_p.*p).*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[8, 6]);
