.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 2
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
iconst_5
istore 1
iload 1
invokestatic OS/Output.printInt(I)V
return
.end method
