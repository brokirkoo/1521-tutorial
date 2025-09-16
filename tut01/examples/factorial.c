#include <stdio.h>

// note: undefined for negative numbers
int factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
}

int main(void) {
    printf("%d\n", factorial(8));
    return 0;
}