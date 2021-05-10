// Save the following C code into cond.c and compile it into assembly code using 
//  gcc -Og -c cond.c
// **INSTEAD USE: gcc -S cond.c

// Q1. What jump instruction is used in max?
// Q2. What jump instruction is used in min?
// Q3. What’s the difference between the assembly instructions of max and min? 

int max(int a, int b) {
  if (a > b)
    return a;
  else
    return b;
}

int min(int a, int b) {
  if (a < b)
    return a;
  else
    return b;
}
