#include <stdio.h>

void recursive(int n) {
    if (n >= 10) return;
    printf("%d\n", n);
    recursive(n + 1);
}

int main(void) {
    recursive(0);
    return 0;
}