.class public Main
.super java/lang/Object
.field x I
.field static y I
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 1
getstatic java/lang/System.out Ljava/io/PrintStream;
bipush 1
bipush 2
bipush 3
imul
iadd
invokevirtual java/io/PrintStream.print(I)V
return
.end method
