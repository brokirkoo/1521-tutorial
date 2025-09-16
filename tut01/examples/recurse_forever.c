#include <stdio.h>

void foo(void) {
    return foo();
}

int main(void) {
    foo();
    return 0;
}