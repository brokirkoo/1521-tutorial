#include <stdio.h>
#include <sys/stat.h>

// struct stat {
//            dev_t      st_dev;      /* ID of device containing file */
//            ino_t      st_ino;      /* Inode number */
//            mode_t     st_mode;     /* File type and mode */
//            nlink_t    st_nlink;    /* Number of hard links */
//            uid_t      st_uid;      /* User ID of owner */
//            gid_t      st_gid;      /* Group ID of owner */
//            dev_t      st_rdev;     /* Device ID (if special file) */
//            off_t      st_size;     /* Total size, in bytes */
//            blksize_t  st_blksize;  /* Block size for filesystem I/O */
//            blkcnt_t   st_blocks;   /* Number of 512 B blocks allocated */

//            /* Since POSIX.1-2008, this structure supports nanosecond
//               precision for the following timestamp fields.
//               For the details before POSIX.1-2008, see VERSIONS. */

//            struct timespec  st_atim;  /* Time of last access */
//            struct timespec  st_mtim;  /* Time of last modification */
//            struct timespec  st_ctim;  /* Time of last status change */

//        #define st_atime  st_atim.tv_sec  /* Backward compatibility */
//        #define st_mtine  st_mtim.tv_sec
//        #define st_ctime  st_ctim.tv_sec
//        };

int main(int argc, char *argv[]) {
    char *filename = argv[1];

    struct stat s;
    stat(filename, &s);

    printf("%s:\n", filename);
    printf("\tsize: %lu\n", s.st_size);
    printf("\tIS_DIR: %d\n", (S_ISDIR(s.st_mode)) != 0);
    printf("\tread: %d\n", (S_IRUSR & s.st_mode) != 0);
    printf("\twrite: %d\n", (S_IWUSR & s.st_mode) != 0);
    printf("\texec: %d\n", (S_IXUSR & s.st_mode) != 0);
    printf("\n");

    return 0;
}
