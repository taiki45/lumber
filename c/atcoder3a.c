#include <stdio.h>
#include <stdlib.h>

int main (int argc, const char * argv[])
{
    int sum = 0, num, i;
    char input[400];
    gets(input);
    num = atoi(input);
    gets(input);
    for (i=0; input[i] != '\0'; i++) {
        if (input[i] == 'A') {
            sum += 4;
        } else if (input[i] == 'B') {
            sum += 3;
        } else if (input[i] == 'C') {
            sum += 2;
        } else if (input[i] == 'D') {
            sum += 1;
        }
    }
    if (sum == 0) {
        printf("%d\n", 0);
    } else {
        printf("%.10f\n" , (sum / (double)(num)));
    }
    return 0;
}
