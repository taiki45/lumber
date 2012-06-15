#include <stdio.h>
#include <stdlib.h>

int fizz(int num);
int buzz(int num);

int main(int argc, char* argv[])
{
        int num, i;
        if (argc <= 1) exit(0);
        num = atoi(argv[1]);
        for (i=1; i <= num; i++) {
                if (fizz(i) && buzz(i)) {
                        printf("FizzBuzz\n");
                } else if (fizz(i)) {
                        printf("Fizz\n");
                } else if (buzz(i)) {
                        printf("Buzz\n");
                } else {
                        printf("%d\n", i);
                }
        }
        return 0;
}

int fizz(int num)
{
        if ((num % 3) == 0) {
                return 1;
        }
        return 0;
}

int buzz(int num)
{
        if ((num % 5) == 0) {
                return 1;
        }
        return 0;
}
