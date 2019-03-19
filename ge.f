*  =====================================================================
      SUBROUTINE GE(M,N,A)
*
*     Perform Gaussian Elimination to the matrix A, where A is M by N
*
*  =====================================================================
*     .. Scalar Arguments ..
      INTEGER M,N
*     ..
*     .. Array Arguments ..
      DOUBLE PRECISION A(M,*)
*
*  =====================================================================
*     .. Parameters ..
      REAL      ZERO
      PARAMETER (ZERO=0.0E+0)
*     ..
*     .. Local Scalars ..
      DOUBLE PRECISION L
      INTEGER I,J,K
*
*  =====================================================================
*     .. Intrinsic Functions ..
      INTRINSIC MIN

*  =====================================================================


      DO 10 I = 1,MIN(M,N)
         DO 20 J = I+1,M
            IF (A(I,I) .EQ. ZERO) GOTO 1000
            L = A(J,I) / A(I,I)
            DO 30 K = I,N
               A(J,K) = A(J,K) - L*A(I,K)
   30       CONTINUE
   20    CONTINUE
   10 CONTINUE


 1000 RETURN
      END
