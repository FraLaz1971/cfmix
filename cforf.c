#include <stdlib.h>
void sum_abs_(int *in, int *num, int *out) {
    int i,sum;
    sum = 0;
    for (i=0; i < *num; ++i) { sum += abs(in[i]);}
    *out = sum;
    return;
}

/* to be used in fortran code:
integer, parameter :: n=200
integer :: s, data(n)
call SUM_ABS(data, n, s)
print*, s
*/
