#include <stdio.h>
#include <stdlib.h>

// #define FILENAME "./copy.txt"

// fopen
// fread  / fgetc
// fwrite / fputc
// fclose

// stat
// fseek

#define BUF_LEN 5

int main(int argc, char *argv[]) {
    char *filename1 = argv[1];
    char *filename2 = argv[2];
    FILE *f1 = fopen(filename1, "r");
    char buf[BUF_LEN];
    
    FILE *f2 = fopen(filename2, "w");

    int nbyte;
    while ((nbyte = fread(buf, sizeof(char), BUF_LEN, f1)) != 0) {
        fwrite(buf, sizeof(char), nbyte, f2);
    }

    fclose(f1); fclose(f2);
    return 0;
}
