#include <stdio.h>

int *get_var(void) {
    int local = 1;
    return &local;
}

int main(void) {
    int *local_pointer = get_var();
    printf("%d\n", *local_pointer);
    
    return 0;
}