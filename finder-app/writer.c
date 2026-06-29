#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>

int main(int argc, char *argv[])
{
    FILE *l_fp = NULL;

    if(argc != 3)
    {
        printf("Need to provide correct arguments\n");
        return 1;
    }

    printf("Arguments are %s, %s\n", argv[1], argv[2]);

    openlog("writer", LOG_PID, LOG_USER);

    l_fp = fopen(argv[1], "w");
    if(l_fp == NULL)
    {
        syslog(LOG_ERR, "Error opening file %s", argv[1]);
        closelog();
        return 1;
    }

    fprintf(l_fp, "%s", argv[2]);
    syslog(LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);
    fclose(l_fp);

    closelog();
    return 0;
}