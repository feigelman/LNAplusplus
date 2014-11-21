/*
 * dEdTheta.c
 *
 * Code generation for function 'dEdTheta'
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

/* Function Definitions */
void dEdTheta(const double in1[2], double t, const double in3[6], double
              b_dEdTheta[48])
{
  double x[48];
  (void)t;

  /* DEDTHETA */
  /*     DEDTHETA = DEDTHETA(IN1,T,IN3) */
  /*     This function was generated by the Symbolic Math Toolbox version 6.1. */
  /*     06-Nov-2014 18:12:35 */
  x[0] = 1.0 / sqrt(in3[0]) * 0.5;
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
  x[13] = in1[0] / sqrt(in3[1] * in1[0]) * 0.5;
  x[14] = 0.0;
  x[15] = 0.0;
  x[16] = 0.0;
  x[17] = 0.0;
  x[18] = in1[0] / sqrt(in3[2] * in1[0]) * -0.5;
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
  x[31] = in1[1] / sqrt(in3[3] * in1[1]) * -0.5;
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
  memcpy(&b_dEdTheta[0], &x[0], 48U * sizeof(double));
}

/* End of code generation (dEdTheta.c) */
