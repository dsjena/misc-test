/*************************    Program 4.5    ****************************/
/*                                                                      */
/************************************************************************/
/* Please Note:                                                         */
/*                                                                      */
/* (1) This computer program is written by Tao Pang in conjunction with */
/*     his book, "An Introduction to Computational Physics," published  */
/*     by Cambridge University Press in 1997.                           */
/*                                                                      */
/* (2) No warranties, express or implied, are made for this program.    */
/*                                                                      */
/************************************************************************/

#include <stdio.h>
#include <math.h>

void tdpl (a,b,n,x,p)
/* Subroutine to generate determinant polynomial P_N(X).
   Copyright (c) Tao Pang 1997. */
int n;
double x;
double a[],b[],p[];
{
int i;
double p0;

p0 = 1;
if (n < 1)
  {
  printf("The dimension is less than 1.\n");
  exit(1);
  }
p[0] = a[0]-x;

if (n > 2)
  {
  p[1] = (a[1]-x)*p[0]-b[0]*b[0]*p0;
  }
if (n > 3)
  {
  for (i = 1; i < n-1; ++i)
    {
    p[i+1] = (a[i+1]-x)*p[i]-b[i]*b[i]*p[i-1];
    }
  }
}
