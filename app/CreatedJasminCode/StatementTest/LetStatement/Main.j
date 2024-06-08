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
iconst_5
istore 1
iload 1
invokestatic OS/Output.printInt(I)V
return
.end method
