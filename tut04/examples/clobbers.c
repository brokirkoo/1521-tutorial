

int main(void) {
    int x = 5;
    int y = 6;
    int z = 7;
    int res = add(5 + 6);
    z = res + z;
    printf("%d\n");
    return 0;
}

int add(int x, int y) {
    // clobbers $t0 and $t1
    return x + y;
}