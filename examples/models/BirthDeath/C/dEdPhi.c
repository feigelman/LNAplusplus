/*
 * dEdPhi.c
 *
 * Code generation for function 'dEdPhi'
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
void dEdPhi(const double in1[2], double t, const double in3[6], double b_dEdPhi
            [16])
{
  double x[16];
  (void)t;

  /* DEDPHI */
  /*     DEDPHI = DEDPHI(IN1,T,IN3) */
  /*     This function was generated by the Symbolic Math Toolbox version 6.1. */
  /*     21-Nov-2014 14:19:52 */
  x[0] = 0.0;
  x[1] = 0.0;
  x[2] = in3[2] / sqrt(in3[2] * in1[0]) * -0.5;
  x[3] = 0.0;
  x[4] = 0.0;
  x[5] = in3[1] / sqrt(in3[1] * in1[0]) * 0.5;
  x[6] = 0.0;
  x[7] = 0.0;
  x[8] = 0.0;
  x[9] = 0.0;
  x[10] = 0.0;
  x[11] = 0.0;
  x[12] = 0.0;
  x[13] = 0.0;
  x[14] = 0.0;
  x[15] = in3[3] / sqrt(in3[3] * in1[1]) * -0.5;
  memcpy(&b_dEdPhi[0], &x[0], sizeof(double) << 4);
}

/* End of code generation (dEdPhi.c) */
