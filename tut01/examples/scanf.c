#include <stdio.h>

int main(void) {

    char ch;
    int count = 0;

    // If we don't want to scan whitespace (newlines / spaces / tabs)
    // we could instead write scanf(" %c", *ch)
    while (scanf(" %c", &ch) != EOF) {
        count += 1;
    }

    printf("Characters entered = %d\n", count);

} 
