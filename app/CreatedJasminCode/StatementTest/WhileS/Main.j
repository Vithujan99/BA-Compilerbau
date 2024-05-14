.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 2
bipush 0
istore 1
whileL1:
iload 1
bipush 10
if_icmpge jump0
bipush 1
goto jump1
jump0:
bipush 0
jump1:
ifeq whileL0
getstatic java/lang/System.out Ljava/io/PrintStream;
iload 1
invokevirtual java/io/PrintStream.print(I)V
iload 1
bipush 1
iadd
istore 1
goto whileL1
whileL0:
return
.end method
