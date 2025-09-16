#include <stdio.h>

int main(void) {

    int ch;
    int count = 0;

    while ((ch = getchar()) != EOF) {
        count += 1;
    }

    printf("Characters entered = %d\n", count);

}
