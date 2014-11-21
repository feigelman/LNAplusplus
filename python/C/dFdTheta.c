/*
 * dFdTheta.c
 *
 * Code generation for function 'dFdTheta'
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
void dFdTheta(const double in1[2], double t, const double in3[6], double
              b_dFdTheta[24])
{
  double x[24];
  (void)t;
  (void)in3;

  /* DFDTHETA */
  /*     DFDTHETA = DFDTHETA(IN1,T,IN3) */
  /*     This function was generated by the Symbolic Math Toolbox version 6.1. */
  /*     06-Nov-2014 18:12:33 */
  x[0] = 1.0;
  x[1] = 0.0;
  x[2] = 0.0;
  x[3] = 0.0;
  x[4] = 0.0;
  x[5] = 0.0;
  x[6] = in1[0];
  x[7] = 0.0;
  x[8] = 0.0;
  x[9] = in1[0];
  x[10] = 0.0;
  x[11] = 0.0;
  x[12] = 0.0;
  x[13] = 0.0;
  x[14] = 0.0;
  x[15] = in1[1];
  x[16] = 0.0;
  x[17] = 0.0;
  x[18] = 0.0;
  x[19] = 0.0;
  x[20] = 0.0;
  x[21] = 0.0;
  x[22] = 0.0;
  x[23] = 0.0;
  memcpy(&b_dFdTheta[0], &x[0], 24U * sizeof(double));
}

/* End of code generation (dFdTheta.c) */
