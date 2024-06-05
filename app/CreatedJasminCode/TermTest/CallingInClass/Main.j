.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 2
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
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
