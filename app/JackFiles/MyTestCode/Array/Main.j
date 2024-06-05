.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 2
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
new OS/Array
dup
iconst_3
invokespecial OS/Array.<init>(I)V
astore 1
aload 1
iconst_2
sipush 222
invokevirtual OS/Array.set(II)V
aload 1
iconst_2
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
return
.end method
