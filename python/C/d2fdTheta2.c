/*
 * d2fdTheta2.c
 *
 * Code generation for function 'd2fdTheta2'
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
void d2fdTheta2(const double in1[2], double t, const double in3[6], double
                b_d2fdTheta2[144])
{
  (void)in1;
  (void)t;
  (void)in3;

  /* D2FDTHETA2 */
  /*     D2FDTHETA2 = D2FDTHETA2(IN1,T,IN3) */
  /*     This function was generated by the Symbolic Math Toolbox version 6.1. */
  /*     06-Nov-2014 18:12:33 */
  memset(&b_d2fdTheta2[0], 0, 144U * sizeof(double));
}

/* End of code generation (d2fdTheta2.c) */
