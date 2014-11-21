/*
 * S0.c
 *
 * Code generation for function 'S0'
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
#include "V0.h"
#include "Y0.h"
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
void S0(const double in1[6], double out1[12])
{
  double t2;
  double t3;
  double t4;
  double x[12];

  /* S0 */
  /*     OUT1 = S0(IN1) */
  /*     This function was generated by the Symbolic Math Toolbox version 6.1. */
  /*     21-Nov-2014 14:19:54 */
  t2 = 1.0 / in1[2];
  t3 = 1.0 / in1[3];
  t4 = 1.0 / (in1[2] * in1[2]);
  x[0] = t2;
  x[1] = in1[1] * t2 * t3;
  x[2] = 0.0;
  x[3] = in1[0] * t2 * t3;
  x[4] = -in1[0] * t4;
  x[5] = -in1[0] * in1[1] * t3 * t4;
  x[6] = 0.0;
  x[7] = -1.0 / (in1[3] * in1[3]) * in1[0] * in1[1] * t2;
  x[8] = 0.0;
  x[9] = 0.0;
  x[10] = 0.0;
  x[11] = 0.0;
  memcpy(&out1[0], &x[0], 12U * sizeof(double));
}

/* End of code generation (S0.c) */
