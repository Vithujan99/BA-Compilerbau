.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 1
new OS/Output
dup
invokespecial OS/Output.<init>()V
pop
new OS/Screen
dup
invokespecial OS/Screen.<init>()V
pop
new OS/Memory
dup
invokespecial OS/Memory.<init>()V
pop
new OS/Math
dup
invokespecial OS/Math.<init>()V
pop
iconst_1
iconst_2
iconst_3
imul
iadd
invokestatic OS/Output.printInt(I)V
return
.end method
