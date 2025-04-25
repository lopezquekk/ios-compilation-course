#include "CountC.h"

int count_repeated_letters(const char *input) {
    int counts[256] = {0};
    int total = 0;

    for (int i = 0; input[i] != '\0'; i++) {
        unsigned char c = input[i];
        counts[c]++;
    }

    for (int i = 0; i < 256; i++) {
        if (counts[i] > 1) total++;
    }

    return total;
}