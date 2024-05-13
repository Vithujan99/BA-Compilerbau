.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 3
bipush 1
istore 1
bipush 1
istore 2
getstatic java/lang/System.out Ljava/io/PrintStream;
iload 1
ineg
invokevirtual java/io/PrintStream.print(I)V
getstatic java/lang/System.out Ljava/io/PrintStream;
iload 2
ifne jump0
bipush 1
goto jump1
jump0:
bipush 0
jump1:
invokevirtual java/io/PrintStream.print(I)V
return
.end method
