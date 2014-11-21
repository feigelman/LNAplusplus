/*
 * d2EdThetadPhi.c
 *
 * Code generation for function 'd2EdThetadPhi'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Afunc.h"
#include "Efunc.h"
#include "J.h"
#include "MI.h"
#include "S0.h"
#include "S20.h"
#include "S2V0.h"
#include "SV0.h"
#include "d2AdPhi2.h"
#include "d2AdPhidTheta.h"
#include "d2AdTheta2.h"
#include "d2AdThetadPhi.h"
#include "d2EdPhi2.h"
#include "d2EdPhidTheta.h"
#include "d2EdTheta2.h"
#include "d2EdThetadPhi.h"
#include "d2fdTheta2.h"
#include "dAdPhi.h"
#include "dAdTheta.h"
#include "dEdPhi.h"
#include "dEdTheta.h"
#include "dFdTheta.h"
#include "reactionFlux.h"
#include "systemJacobian.h"
#include "reactionFlux_rtwutil.h"

/* Function Definitions */
void d2EdThetadPhi(const double in1[2], double t, const double in3[6], double
                   b_d2EdThetadPhi[96])
{
  double t2;
  double t3;
  double t4;
  double x[96];
  (void)t;

  /* D2EDTHETADPHI */
  /*     D2EDTHETADPHI = D2EDTHETADPHI(IN1,T,IN3) */
  /*     This function was generated by the Symbolic Math Toolbox version 6.1. */
  /*     06-Nov-2014 18:12:54 */
  t2 = in3[1] * in1[0];
  t3 = in3[2] * in1[0];
  t4 = in3[3] * in1[1];
  x[0] = 0.0;
  x[1] = 0.0;
  x[2] = 0.0;
  x[3] = 0.0;
  x[4] = 0.0;
  x[5] = 0.0;
  x[6] = 0.0;
  x[7] = 0.0;
  x[8] = 0.0;
  x[9] = 0.0;
  x[10] = 0.0;
  x[11] = 0.0;
  x[12] = 0.0;
  x[13] = 1.0 / sqrt(t2) * 0.5 - in3[1] * in1[0] / rt_powd_snf(t2, 1.5) * 0.25;
  x[14] = 0.0;
  x[15] = 0.0;
  x[16] = 0.0;
  x[17] = 0.0;
  x[18] = 1.0 / sqrt(t3) * -0.5 + in3[2] * in1[0] / rt_powd_snf(t3, 1.5) * 0.25;
  x[19] = 0.0;
  x[20] = 0.0;
  x[21] = 0.0;
  x[22] = 0.0;
  x[23] = 0.0;
  x[24] = 0.0;
  x[25] = 0.0;
  x[26] = 0.0;
  x[27] = 0.0;
  x[28] = 0.0;
  x[29] = 0.0;
  x[30] = 0.0;
  x[31] = 0.0;
  x[32] = 0.0;
  x[33] = 0.0;
  x[34] = 0.0;
  x[35] = 0.0;
  x[36] = 0.0;
  x[37] = 0.0;
  x[38] = 0.0;
  x[39] = 0.0;
  x[40] = 0.0;
  x[41] = 0.0;
  x[42] = 0.0;
  x[43] = 0.0;
  x[44] = 0.0;
  x[45] = 0.0;
  x[46] = 0.0;
  x[47] = 0.0;
  x[48] = 0.0;
  x[49] = 0.0;
  x[50] = 0.0;
  x[51] = 0.0;
  x[52] = 0.0;
  x[53] = 0.0;
  x[54] = 0.0;
  x[55] = 0.0;
  x[56] = 0.0;
  x[57] = 0.0;
  x[58] = 0.0;
  x[59] = 0.0;
  x[60] = 0.0;
  x[61] = 0.0;
  x[62] = 0.0;
  x[63] = 0.0;
  x[64] = 0.0;
  x[65] = 0.0;
  x[66] = 0.0;
  x[67] = 0.0;
  x[68] = 0.0;
  x[69] = 0.0;
  x[70] = 0.0;
  x[71] = 0.0;
  x[72] = 0.0;
  x[73] = 0.0;
  x[74] = 0.0;
  x[75] = 0.0;
  x[76] = 0.0;
  x[77] = 0.0;
  x[78] = 0.0;
  x[79] = 1.0 / sqrt(t4) * -0.5 + in3[3] * in1[1] / rt_powd_snf(t4, 1.5) * 0.25;
  x[80] = 0.0;
  x[81] = 0.0;
  x[82] = 0.0;
  x[83] = 0.0;
  x[84] = 0.0;
  x[85] = 0.0;
  x[86] = 0.0;
  x[87] = 0.0;
  x[88] = 0.0;
  x[89] = 0.0;
  x[90] = 0.0;
  x[91] = 0.0;
  x[92] = 0.0;
  x[93] = 0.0;
  x[94] = 0.0;
  x[95] = 0.0;
  memcpy(&b_d2EdThetadPhi[0], &x[0], 96U * sizeof(double));
}

/* End of code generation (d2EdThetadPhi.c) */
