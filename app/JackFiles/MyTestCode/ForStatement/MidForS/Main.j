.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 3
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
iconst_0
istore 1
iconst_0
istore 2
iconst_1
istore 2
forL0:
iload 2
bipush 11
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq forL3
goto forL1
forL2:
iload 2
iconst_1
iadd
istore 2
goto forL0
forL1:
iload 2
iconst_2
if_icmpne jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
iload 2
iconst_4
if_icmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ior
iload 2
bipush 6
if_icmpne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ior
iload 2
bipush 8
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ior
iload 2
bipush 10
if_icmpne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ior
ifeq ifL4
iload 2
invokestatic OS/Output.printInt(I)V
new OS/String
dup
bipush 9
invokespecial OS/String.<init>(I)V
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 71
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
invokestatic OS/Output.println()V
goto ifL5
ifL4:
iload 2
invokestatic OS/Output.printInt(I)V
new OS/String
dup
bipush 11
invokespecial OS/String.<init>(I)V
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 85
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
invokestatic OS/Output.println()V
ifL5:
goto forL2
forL3:
return
.end method
