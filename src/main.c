#include <stdio.h>
#include <stdlib.h>

static const int MAX_BUFFER = 250;

int main(int argc, char *argv[]) {
    char error_message[MAX_BUFFER];
    int error_code = validate_args(argc, argv, &error_message);

    if (error_code > 0) {
        fputs((const char *) &error_message, stderr);
    }

    return error_code;
}

int validate_args(int argc, char *argv[], char *out_message) {
    if (strcmp(argv[1], "compile") != 0) {
        sprintf(
            out_message,
            "Unrecognised command %s!\n\nUsage: numberwang compile <source file>\n",
            argv[1]
        );

        return 1;
    }

    return 0;
}