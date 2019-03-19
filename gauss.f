*  =====================================================================
      PROGRAM GAUSS
*
*  =====================================================================
*     .. Parameters ..
      INTEGER R, C
      PARAMETER (R=3,C=4)

*  =====================================================================
*     .. Variables ..
      DOUBLE PRECISION A(R,C)

      INTEGER I,J      

*  =====================================================================
*     .. External Subroutines ..
      EXTERNAL GE

*  =====================================================================


*     Fill the matrix
      DO 10 J = 1,C
         DO 20 I = 1,R
            A(I,J) = (I-1)*C + J
   20    CONTINUE
   10 CONTINUE

*     Print the matrix
      CALL PRINT(R,C,A)

*     Gaussian Elimination
      CALL GE(R,C,A)

*     Print the matrix (again)
      CALL PRINT(R,C,A)


      STOP
      END



      SUBROUTINE PRINT(M,N,A)

      INTEGER M,N
      DOUBLE PRECISION A(M,*)

      INTEGER I,J


      WRITE (*,*) 'A = '
      DO 100 I = 1,M
         WRITE (*,1000) (A(I,J), J=1,N)
  100 CONTINUE
 1000 FORMAT (10F10.2)


      RETURN
      END
