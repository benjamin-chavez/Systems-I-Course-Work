#include <stdio.h>

int foo(int a, int b) {
   int c = a + b;
   return c;
}
int main() {
   int x=10, y=20, z;
   z = foo(x, y);
   printf("%d\n", z);
   return 0;
}
