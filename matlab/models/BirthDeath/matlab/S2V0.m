function out1 = S2V0(in1) %#codegen
%S2V0
%    OUT1 = S2V0(IN1)

%    This function was generated by the Symbolic Math Toolbox version 6.1.
%    19-Nov-2014 22:38:05

g_m = in1(:,3);
g_p = in1(:,4);
k_m = in1(:,1);
k_p = in1(:,2);
phi01 = in1(:,5);
phi02 = in1(:,6);
t2 = sqrt(k_m);
t3 = conj(t2);
t4 = 1.0./sqrt(k_m);
t5 = 1.0./t3;
t6 = 1.0./g_m;
t7 = 1.0./k_m.^(3.0./2.0);
t8 = t3.*t7.*(1.0./4.0);
t9 = 1.0./t3.^3;
t10 = t2.*t9.*(1.0./4.0);
t11 = t8+t10-t4.*t5.*(1.0./2.0);
t12 = g_m+g_p;
t13 = 1.0./t12;
t14 = t3.*t4.*(1.0./2.0);
t15 = t2.*t5.*(1.0./2.0);
t16 = t14+t15;
t17 = 1.0./g_m.^2;
t18 = 1.0./t12.^2;
t19 = k_p.^2;
t20 = 1.0./g_p;
t21 = t3.*t4.*t19.*(1.0./2.0);
t22 = t2.*t5.*t19.*(1.0./2.0);
t23 = t21+t22;
t24 = t6.*t13.*t16.*(1.0./2.0);
t25 = g_m.*phi01;
t26 = sqrt(t25);
t27 = conj(t26);
t28 = t2.*t3;
t29 = t26.*t27;
t30 = t28+t29;
t31 = 1.0./sqrt(t25);
t32 = 1.0./t27;
t33 = k_p.*t2.*t5;
t34 = k_p.*t3.*t4;
t35 = t33+t34;
t36 = t6.*t13.*t20.*t35.*(1.0./2.0);
t37 = k_p.*phi01;
t38 = g_m.^2;
t39 = phi01.^2;
t40 = sqrt(t37);
t41 = conj(t40);
t42 = 1.0./t37.^(3.0./2.0);
t43 = 1.0./t41;
t44 = 1.0./sqrt(t37);
t45 = 1.0./t41.^3;
t46 = k_p.*t26.*t27.*2.0;
t47 = k_p.*t2.*t3.*2.0;
t48 = phi01.*t38.*t41.*t44.*(1.0./2.0);
t49 = phi01.*t38.*t40.*t43.*(1.0./2.0);
t50 = g_m.*g_p.*phi01.*t41.*t44.*(1.0./2.0);
t51 = g_m.*g_p.*phi01.*t40.*t43.*(1.0./2.0);
t52 = t46+t47+t48+t49+t50+t51;
t53 = 1.0./g_p.^2;
t54 = phi01.*t27.*t31.*(1.0./2.0);
t55 = phi01.*t26.*t32.*(1.0./2.0);
t56 = t54+t55;
t57 = g_m.*t27.*t31.*(1.0./2.0);
t58 = g_m.*t26.*t32.*(1.0./2.0);
t59 = t57+t58;
t60 = 1.0./t27.^3;
t61 = 1.0./t25.^(3.0./2.0);
t125 = k_p.*t6.*t16.*t18.*(1.0./2.0);
t62 = -t125-k_p.*t13.*t16.*t17.*(1.0./2.0);
t63 = t6.*t13.*t56.*(1.0./2.0);
t126 = t6.*t18.*t30.*(1.0./2.0);
t64 = t63-t126-t13.*t17.*t30.*(1.0./2.0);
t65 = t26.*t39.*t60.*(1.0./4.0);
t66 = t27.*t39.*t61.*(1.0./4.0);
t67 = t65+t66-t31.*t32.*t39.*(1.0./2.0);
t68 = 1.0./g_m.^3;
t69 = 1.0./t12.^3;
t70 = k_p.*t6.*t30.*t69;
t71 = t26.*t32.*(1.0./2.0);
t72 = t27.*t31.*(1.0./2.0);
t73 = g_m.*phi01.*t31.*t32.*(1.0./2.0);
t152 = g_m.*phi01.*t26.*t60.*(1.0./4.0);
t153 = g_m.*phi01.*t27.*t61.*(1.0./4.0);
t74 = t71+t72+t73-t152-t153;
t129 = t6.*t18.*t20.*t23.*(1.0./2.0);
t75 = -t129-t13.*t17.*t20.*t23.*(1.0./2.0);
t76 = k_p.*phi01.*t26.*t32;
t77 = g_m.*phi01.*t40.*t43;
t78 = g_p.*phi01.*t40.*t43.*(1.0./2.0);
t79 = k_p.*phi01.*t27.*t31;
t80 = g_m.*phi01.*t41.*t44;
t81 = g_p.*phi01.*t41.*t44.*(1.0./2.0);
t82 = t76+t77+t78+t79+t80+t81;
t83 = t6.*t13.*t20.*t82.*(1.0./2.0);
t130 = t6.*t18.*t20.*t52.*(1.0./2.0);
t84 = t83-t130-t13.*t17.*t20.*t52.*(1.0./2.0);
t85 = g_p.*phi02;
t86 = sqrt(t85);
t87 = conj(t86);
t88 = t2.*t3.*t19;
t89 = t38.*t86.*t87;
t90 = t19.*t26.*t27;
t91 = t38.*t40.*t41;
t92 = g_m.*g_p.*t86.*t87;
t93 = g_m.*g_p.*t40.*t41;
t94 = t88+t89+t90+t91+t92+t93;
t95 = g_m.*t86.*t87.*2.0;
t96 = g_p.*t86.*t87;
t97 = g_m.*t40.*t41.*2.0;
t98 = g_p.*t40.*t41;
t99 = phi01.*t19.*t27.*t31.*(1.0./2.0);
t100 = phi01.*t19.*t26.*t32.*(1.0./2.0);
t101 = t95+t96+t97+t98+t99+t100;
t102 = 1.0./t87;
t103 = 1.0./sqrt(t85);
t104 = t6.*t20.*t69.*t94;
t105 = g_m.*t86.*t87;
t106 = g_m.*t40.*t41;
t107 = phi02.*t38.*t87.*t103.*(1.0./2.0);
t108 = phi02.*t38.*t86.*t102.*(1.0./2.0);
t109 = g_m.*g_p.*phi02.*t87.*t103.*(1.0./2.0);
t110 = g_m.*g_p.*phi02.*t86.*t102.*(1.0./2.0);
t111 = t105+t106+t107+t108+t109+t110;
t112 = g_m.*t19.*t27.*t31.*(1.0./2.0);
t113 = k_p.*t38.*t41.*t44.*(1.0./2.0);
t114 = g_m.*t19.*t26.*t32.*(1.0./2.0);
t115 = k_p.*t38.*t40.*t43.*(1.0./2.0);
t116 = g_m.*g_p.*k_p.*t41.*t44.*(1.0./2.0);
t117 = g_m.*g_p.*k_p.*t40.*t43.*(1.0./2.0);
t118 = t112+t113+t114+t115+t116+t117;
t119 = g_p.^2;
t120 = g_m.*t87.*t103.*t119.*(1.0./2.0);
t121 = g_p.*t38.*t87.*t103.*(1.0./2.0);
t122 = g_m.*t86.*t102.*t119.*(1.0./2.0);
t123 = g_p.*t38.*t86.*t102.*(1.0./2.0);
t124 = t120+t121+t122+t123;
t127 = k_p.*t17.*t18.*t30.*(1.0./2.0);
t128 = t70+t127-k_p.*t6.*t18.*t56.*(1.0./2.0);
t131 = g_m.*phi01.*t40.*t43.*(1.0./2.0);
t132 = g_m.*phi01.*t41.*t44.*(1.0./2.0);
t133 = t131+t132;
t134 = t6.*t13.*t20.*t133.*(1.0./2.0);
t135 = t86.*t87;
t136 = t40.*t41;
t137 = g_m.*phi02.*t86.*t102;
t138 = g_p.*phi02.*t86.*t102.*(1.0./2.0);
t139 = g_m.*phi02.*t87.*t103;
t140 = g_p.*phi02.*t87.*t103.*(1.0./2.0);
t141 = t135+t136+t137+t138+t139+t140;
t142 = t6.*t13.*t20.*t141.*(1.0./2.0);
t143 = t6.*t18.*t53.*t94.*(1.0./2.0);
t144 = t17.*t18.*t20.*t94.*(1.0./2.0);
t145 = t13.*t17.*t53.*t94.*(1.0./2.0);
t146 = t104+t142+t143+t144+t145-t6.*t18.*t20.*t101.*(1.0./2.0)-t6.*t18.*t20.*t111.*(1.0./2.0)-t13.*t17.*t20.*t111.*(1.0./2.0)-t6.*t13.*t53.*t101.*(1.0./2.0);
t147 = phi02.^2;
t148 = 1.0./t85.^(3.0./2.0);
t149 = 1.0./t87.^3;
t150 = g_m.*g_p.*t86.*t102;
t151 = g_m.*g_p.*t87.*t103;
t154 = t6.*t74.*(1.0./2.0);
t155 = t154-t17.*t59.*(1.0./2.0);
t156 = t6.*t13.*t59.*(1.0./2.0);
t157 = k_p.*t6.*t13.*t74.*(1.0./2.0);
t159 = k_p.*t6.*t18.*t59.*(1.0./2.0);
t158 = t157-t159-k_p.*t13.*t17.*t59.*(1.0./2.0);
t160 = t26.*t38.*t60.*(1.0./4.0);
t161 = t27.*t38.*t61.*(1.0./4.0);
t162 = t160+t161-t31.*t32.*t38.*(1.0./2.0);
t163 = t38.*t40.*t43.*(1.0./2.0);
t164 = t38.*t41.*t44.*(1.0./2.0);
t165 = g_m.*k_p.*t26.*t32;
t166 = g_m.*g_p.*t40.*t43.*(1.0./2.0);
t167 = g_m.*k_p.*t27.*t31;
t168 = g_m.*g_p.*t41.*t44.*(1.0./2.0);
t169 = k_p.*phi01.*t38.*t43.*t44.*(1.0./2.0);
t170 = g_m.*g_p.*k_p.*phi01.*t43.*t44.*(1.0./2.0);
t171 = t163+t164+t165+t166+t167+t168+t169+t170-k_p.*phi01.*t38.*t41.*t42.*(1.0./4.0)-k_p.*phi01.*t38.*t40.*t45.*(1.0./4.0)-g_m.*g_p.*k_p.*phi01.*t41.*t42.*(1.0./4.0)-g_m.*g_p.*k_p.*phi01.*t40.*t45.*(1.0./4.0);
t172 = t6.*t13.*t20.*t171.*(1.0./2.0);
t173 = t19.*t26.*t32.*(1.0./2.0);
t174 = t19.*t27.*t31.*(1.0./2.0);
t175 = g_m.*k_p.*t40.*t43;
t176 = g_p.*k_p.*t40.*t43.*(1.0./2.0);
t177 = g_m.*k_p.*t41.*t44;
t178 = g_p.*k_p.*t41.*t44.*(1.0./2.0);
t179 = g_m.*phi01.*t19.*t31.*t32.*(1.0./2.0);
t180 = t173+t174+t175+t176+t177+t178+t179-g_m.*phi01.*t19.*t26.*t60.*(1.0./4.0)-g_m.*phi01.*t19.*t27.*t61.*(1.0./4.0);
t181 = t6.*t13.*t20.*t180.*(1.0./2.0);
t187 = t6.*t18.*t20.*t118.*(1.0./2.0);
t182 = t181-t187-t13.*t17.*t20.*t118.*(1.0./2.0);
t183 = g_m.*k_p.*t40.*t43.*(1.0./2.0);
t184 = g_m.*k_p.*t41.*t44.*(1.0./2.0);
t185 = t183+t184;
t186 = t6.*t13.*t20.*t185.*(1.0./2.0);
t188 = t86.*t102.*t119.*(1.0./2.0);
t189 = t87.*t103.*t119.*(1.0./2.0);
t190 = t150+t151+t188+t189;
t191 = t6.*t13.*t20.*t190.*(1.0./2.0);
t193 = t6.*t18.*t20.*t124.*(1.0./2.0);
t192 = t191-t193-t13.*t17.*t20.*t124.*(1.0./2.0);
t194 = t38.*t86.*t102.*(1.0./2.0);
t195 = t38.*t87.*t103.*(1.0./2.0);
t196 = g_m.*phi02.*t102.*t103.*t119.*(1.0./2.0);
t197 = g_p.*phi02.*t38.*t102.*t103.*(1.0./2.0);
t198 = t150+t151+t194+t195+t196+t197-g_m.*phi02.*t86.*t119.*t149.*(1.0./4.0)-g_m.*phi02.*t87.*t119.*t148.*(1.0./4.0)-g_p.*phi02.*t38.*t86.*t149.*(1.0./4.0)-g_p.*phi02.*t38.*t87.*t148.*(1.0./4.0);
t199 = t6.*t13.*t20.*t198.*(1.0./2.0);
out1 = reshape([t6.*t11.*(-1.0./2.0),k_p.*t6.*t11.*t13.*(-1.0./2.0),t6.*t13.*t20.*(t4.*t5.*t19.*(-1.0./2.0)+t3.*t7.*t19.*(1.0./4.0)+t2.*t9.*t19.*(1.0./4.0)).*(-1.0./2.0),0.0,t24,t36,t16.*t17.*(-1.0./2.0),t62,t75,0.0,-t125,-t129-t6.*t13.*t23.*t53.*(1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,t24,t36,0.0,0.0,t6.*t13.*t20.*(t2.*t3.*2.0+t26.*t27.*2.0-t38.*t39.*t41.*t42.*(1.0./4.0)-t38.*t39.*t40.*t45.*(1.0./4.0)+t38.*t39.*t43.*t44.*(1.0./2.0)-g_m.*g_p.*t39.*t41.*t42.*(1.0./4.0)-g_m.*g_p.*t39.*t40.*t45.*(1.0./4.0)+g_m.*g_p.*t39.*t43.*t44.*(1.0./2.0)).*(1.0./2.0),0.0,t64,t84,0.0,-t126,-t130+t134-t6.*t13.*t52.*t53.*(1.0./2.0),0.0,t156,t172,0.0,0.0,0.0,t16.*t17.*(-1.0./2.0),t62,t75,0.0,t64,t84,t6.*t67.*(-1.0./2.0)-t17.*t56+t30.*t68,t70+k_p.*t17.*t18.*t30-k_p.*t6.*t18.*t56-k_p.*t6.*t13.*t67.*(1.0./2.0)-k_p.*t13.*t17.*t56+k_p.*t13.*t30.*t68,t104-t6.*t18.*t20.*t101+t17.*t18.*t20.*t94-t13.*t17.*t20.*t101+t13.*t20.*t68.*t94+t6.*t13.*t20.*(t40.*t41.*2.0+t86.*t87.*2.0+t19.*t31.*t32.*t39.*(1.0./2.0)-t19.*t26.*t39.*t60.*(1.0./4.0)-t19.*t27.*t39.*t61.*(1.0./4.0)).*(1.0./2.0),0.0,t128,t146,t155,t158,t182,0.0,0.0,t192,0.0,k_p.*t6.*t16.*t18.*(-1.0./2.0),t6.*t18.*t20.*t23.*(-1.0./2.0)-t6.*t13.*t23.*t53.*(1.0./2.0),0.0,t6.*t18.*t30.*(-1.0./2.0),t134-t6.*t18.*t20.*t52.*(1.0./2.0)-t6.*t13.*t52.*t53.*(1.0./2.0),0.0,t128,t146,0.0,t70,t104-t6.*t18.*t20.*t111+t6.*t18.*t53.*t94-t6.*t13.*t53.*t111+t6.*t13.*t20.*(t137+t139+t38.*t102.*t103.*t147.*(1.0./2.0)-t38.*t86.*t147.*t149.*(1.0./4.0)-t38.*t87.*t147.*t148.*(1.0./4.0)+g_m.*g_p.*t102.*t103.*t147.*(1.0./2.0)-g_m.*g_p.*t86.*t147.*t149.*(1.0./4.0)-g_m.*g_p.*t87.*t147.*t148.*(1.0./4.0)).*(1.0./2.0)+1.0./g_p.^3.*t6.*t13.*t94,0.0,-t159,t186-t187-t6.*t13.*t53.*t118.*(1.0./2.0),0.0,0.0,-t193+t199-t6.*t13.*t53.*t124.*(1.0./2.0),0.0,0.0,0.0,0.0,t156,t172,t155,t158,t182,0.0,k_p.*t6.*t18.*t59.*(-1.0./2.0),t186-t6.*t18.*t20.*t118.*(1.0./2.0)-t6.*t13.*t53.*t118.*(1.0./2.0),t6.*t162.*(-1.0./2.0),k_p.*t6.*t13.*t162.*(-1.0./2.0),t6.*t13.*t20.*(t19.*t31.*t32.*t38.*(-1.0./2.0)+t19.*t38.*t41.*t42.*(1.0./4.0)+t19.*t38.*t40.*t45.*(1.0./4.0)+t19.*t26.*t38.*t60.*(1.0./4.0)-t19.*t38.*t43.*t44.*(1.0./2.0)+t19.*t27.*t38.*t61.*(1.0./4.0)+g_m.*g_p.*t19.*t41.*t42.*(1.0./4.0)+g_m.*g_p.*t19.*t40.*t45.*(1.0./4.0)-g_m.*g_p.*t19.*t43.*t44.*(1.0./2.0)).*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t192,0.0,0.0,t199-t6.*t18.*t20.*t124.*(1.0./2.0)-t6.*t13.*t53.*t124.*(1.0./2.0),0.0,0.0,0.0,0.0,0.0,t6.*t13.*t20.*(t38.*t102.*t103.*t119.*(-1.0./2.0)+t38.*t86.*t119.*t149.*(1.0./4.0)+t38.*t87.*t119.*t148.*(1.0./4.0)-g_m.*g_p.*t102.*t103.*t119.*(1.0./2.0)+g_m.*g_p.*t86.*t119.*t149.*(1.0./4.0)+g_m.*g_p.*t87.*t119.*t148.*(1.0./4.0)).*(-1.0./2.0)],[18, 6]);
