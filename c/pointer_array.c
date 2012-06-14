#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
  int a[3] = {1, 2, 3};
  int* point = NULL;
  printf("%p\n", &a[1]);
  point = &a[1];
  point += 1;
  printf("%p\n", point);
  *point = 7;
  printf("%d / %d / %d\n", a[0], a[1], a[2]);
  return 0;
}
