#include <stdio.h>

int global = 1;

void my_function(int *local) {
    *local = 3;
    global = 3;
    return;
}

int main(void) {
    int local = 1;

    local = 2;
    global = 2;

    my_function(&local);

    printf("local: %d\nglobal: %d\n", local, global);
    
    return 0;
}
