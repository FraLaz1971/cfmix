C      f77 test program with subroutine

C      subroutines part
        SUBROUTINE GREET
            PRINT *, 'hello, F77 world!'
            PRINT *, 'greetings from a subroutine :-)'
        END

C       main program
        PROGRAM SHELLO
            CALL GREET
        END
