.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 2
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
iconst_0
istore 1
whileL1:
iload 1
bipush 10
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
iload 1
invokestatic OS/Output.printInt(I)V
iload 1
iconst_1
iadd
istore 1
goto whileL1
whileL0:
return
.end method
