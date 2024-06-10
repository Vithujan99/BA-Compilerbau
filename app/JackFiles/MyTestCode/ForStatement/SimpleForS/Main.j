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
iconst_0
istore 2
forL0:
iload 2
bipush 100
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
iload 1
iload 2
iadd
istore 1
goto forL2
forL3:
iload 1
invokestatic OS/Output.printInt(I)V
return
.end method
