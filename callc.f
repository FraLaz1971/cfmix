C program calc.f
C shows how to use a c language
C function in fortran code linking object files.
C This program read N integers from stdin
C into the array DATA() then compute
C the sum of absolute values of array elements
C calling the SUM_ABS(data, n, s) function
C implemented in the c source file cforf.c
        PROGRAM CALLC
            integer n
            PARAMETER(N=3)
            integer I, s, DATA(N)
            PRINT *,'PLEASE ENTER ',n,'INTEGER VALUES'
            DO 10 I=1, n
                READ (*,*) DATA(I)
10          CONTINUE
            CALL SUM_ABS(data, n, s)
            PRINT *,s
        END

