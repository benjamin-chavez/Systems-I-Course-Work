/*
Save the C code in foo.c
Compile foo.c to assembly code using “gcc -S foo.c”
Read assembly code in foo.s and answer questions:

objdump –d foo
*/

int main(int a, int b) {
   int c = (a + b) * 12;
   int d = 56;
   int e = 0;
   int f = d << 2;
   int g = e >> 3;
   int h = d & e;
   int i = d | e;
   int j = ~i;
   int *p = &a;
   *p = 56;
   p = &b;
   *p = 78;
   return  j;
}


