function out1 = S0(in1) %#codegen
%S0
%    OUT1 = S0(IN1)

%    This function was generated by the Symbolic Math Toolbox version 6.1.
%    21-Nov-2014 14:19:54

g_m = in1(:,3);
g_p = in1(:,4);
k_m = in1(:,1);
k_p = in1(:,2);
t2 = 1.0./g_m;
t3 = 1.0./g_p;
t4 = 1.0./g_m.^2;
out1 = reshape([t2,k_p.*t2.*t3,0.0,k_m.*t2.*t3,-k_m.*t4,-k_m.*k_p.*t3.*t4,0.0,-1.0./g_p.^2.*k_m.*k_p.*t2,0.0,0.0,0.0,0.0],[2, 6]);
