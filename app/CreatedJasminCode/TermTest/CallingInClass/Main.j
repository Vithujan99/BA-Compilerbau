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
invokestatic Main.test()Z
istore 1
iload 1
invokestatic OS/Output.printInt(I)V
return
.end method
.method public static test()Z
.limit stack 10
.limit locals 0
iconst_5
invokestatic OS/Output.printInt(I)V
iconst_1
ireturn
.end method
