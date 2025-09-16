#include <stdio.h>

int main(void) {

    char arr[2];
    int count = 0;

    while (fgets(arr, 2, stdin) != NULL) {
        count += 1;
    }

    printf("Characters entered = %d\n", count);

}
 