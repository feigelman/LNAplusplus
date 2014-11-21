/*
 * Efunc.c
 *
 * Code generation for function 'Efunc'
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
void Efunc(const double in1[2], double t, const double in3[6], double E[8])
{
  double x[8];
  (void)t;

  /* EFUNC */
  /*     E = EFUNC(IN1,T,IN3) */
  /*     This function was generated by the Symbolic Math Toolbox version 6.1. */
  /*     21-Nov-2014 14:19:51 */
  x[0] = sqrt(in3[0]);
  x[1] = 0.0;
  x[2] = -sqrt(in3[2] * in1[0]);
  x[3] = 0.0;
  x[4] = 0.0;
  x[5] = sqrt(in3[1] * in1[0]);
  x[6] = 0.0;
  x[7] = -sqrt(in3[3] * in1[1]);
  memcpy(&E[0], &x[0], sizeof(double) << 3);
}

/* End of code generation (Efunc.c) */
