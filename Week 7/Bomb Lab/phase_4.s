Dump of assembler code for function phase_4:
   0x00000000004010d9 <+0>:	sub    $0x18,%rsp               //Makes stack frame
   0x00000000004010dd <+4>:	lea    0xc(%rsp),%rcx           // second input = %rcx
   0x00000000004010e2 <+9>:	lea    0x8(%rsp),%rdx           // first input = %rdx
   0x00000000004010e7 <+14>:	mov    $0x40285d,%esi         //format of answer: %d %d
   0x00000000004010ec <+19>:	mov    $0x0,%eax
   0x00000000004010f1 <+24>:	callq  0x400c30 <__isoc99_sscanf@plt>
   0x00000000004010f6 <+29>:	cmp    $0x2,%eax
   0x00000000004010f9 <+32>:	jne    0x401107 <phase_4+46>  // if NOT equal to 2 jump to explode bomb
   0x00000000004010fb <+34>:	mov    0xc(%rsp),%eax         // eax = *rsp+12(second input)
   0x00000000004010ff <+38>:	sub    $0x2,%eax              // subtract to from second input
   0x0000000000401102 <+41>:	cmp    $0x2,%eax
   0x0000000000401105 <+44>:	jbe    0x40110c <phase_4+51>   // second input -2 < 2********
   0x0000000000401107 <+46>:	callq  0x401604 <explode_bomb>
   0x000000000040110c <+51>:	mov    0xc(%rsp),%esi           // esi = second input
   0x0000000000401110 <+55>:	mov    $0x7,%edi                // edi = 7
=> 0x0000000000401115 <+60>:	callq  0x4010a1 <func4>         //go to func4
   0x000000000040111a <+65>:	cmp    0x8(%rsp),%eax
   0x000000000040111e <+69>:	je     0x401125 <phase_4+76>
   0x0000000000401120 <+71>:	callq  0x401604 <explode_bomb>
   0x0000000000401125 <+76>:	add    $0x18,%rsp
   0x0000000000401129 <+80>:	retq   
End of assembler dump.


a = edi
b= esi

Dump of assembler code for function func4:
   0x00000000004010a1 <+0>:	push   %r12
   0x00000000004010a3 <+2>:	push   %rbp
   0x00000000004010a4 <+3>:	push   %rbx
   0x00000000004010a5 <+4>:	mov    %edi,%ebx            //ebx = edi = 7
   0x00000000004010a7 <+6>:	test   %edi,%edi            // test 7 & 7
   0x00000000004010a9 <+8>:	jle    0x4010cf <func4+46>  // return 0 if edi <= 0
   0x00000000004010ab <+10>:	mov    %esi,%ebp          // ebp = esi = SECONDINPUT
=> 0x00000000004010ad <+12>:	mov    %esi,%eax          // eax = esi = SECONDINPUT
   0x00000000004010af <+14>:	cmp    $0x1,%edi          // compare 1 and 7
   0x00000000004010b2 <+17>:	je     0x4010d4 <func4+51>  // return esi if edi == 1

   0x00000000004010b4 <+19>:	lea    -0x1(%rdi),%edi    //edi = edi -1
   0x00000000004010b7 <+22>:	callq  0x4010a1 <func4>     //func4(a - 1, b)
   0x00000000004010bc <+27>:	lea    (%rax,%rbp,1),%r12d  // r (%r12d) = b + func4(a - 1, b)
   0x00000000004010c0 <+31>:	lea    -0x2(%rbx),%edi
   0x00000000004010c3 <+34>:	mov    %ebp,%esi
   0x00000000004010c5 <+36>:	callq  0x4010a1 <func4>
   0x00000000004010ca <+41>:	add    %r12d,%eax
   0x00000000004010cd <+44>:	jmp    0x4010d4 <func4+51>
   0x00000000004010cf <+46>:	mov    $0x0,%eax
   0x00000000004010d4 <+51>:	pop    %rbx
   0x00000000004010d5 <+52>:	pop    %rbp
   0x00000000004010d6 <+53>:	pop    %r12
   0x00000000004010d8 <+55>:	retq   
End of assembler dump.
