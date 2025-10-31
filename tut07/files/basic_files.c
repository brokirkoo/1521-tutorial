#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// FILE *fopen();
// fclose();
// fputc();
// fgetc();
// fread();
// fwrite();


// Offset	Size	Field
// 0 bytes	4	Magic - “AIF\0”
// 4 bytes	2	Checksum
// 6 bytes	1	Pixel format
// 7 bytes	1	Compression
// 8 bytes	4	Width
// 12 bytes	4	Height
// 16 bytes	4	Pixel data offset

#define SAMPLE_FILE "hello.aif"

int main(void) {
    FILE *f = fopen(SAMPLE_FILE, "r");
    // char str[] = "hello world!\n";
    char magic[5];
    fread(magic, sizeof(char), 4, f);
    magic[4] = '\0';
    fclose(f);

    printf("%s\n", magic);
    return 0;
}
