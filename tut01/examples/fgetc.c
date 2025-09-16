#include <stdio.h>

int main(void) {

    int ch;
    int count = 0;

    while ((ch = fgetc(stdin)) != EOF) {
        count += 1;
    }

    printf("Characters entered = %d\n", count);

}
