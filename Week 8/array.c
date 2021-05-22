#include <stdio.h>
#include <stdlib.h>
int main() {
  int arr[] = {0x10111213, 0x24252627, 0x38393A3B};
  unsigned char *s = (unsigned char*)arr;
  int i;
  for (i = 0; i < 3; i++)
    printf("arr %d:%p\n", i, &arr[i]);
  for (i = 0; i < sizeof(int); i++)
    printf("byte %d of arr[0]:%x\n", i, s[i]);
  return 0;
}
