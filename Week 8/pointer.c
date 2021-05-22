#include <stdio.h>
#include <stdlib.h>

int main() {
  char a[6];
  char *b[2];
  int c[3];
  int i;

  for (i = 0; i < 6; i++)
    printf("a %d:%p\n", i, &a[i]);
  for (i = 0; i < 2; i++)
    printf("b %d:%p\n", i, &b[i]);
  for (i = 0; i < 3; i++)
    printf("c %d:%p\n", i, &c[i]);
  return 0;
}
