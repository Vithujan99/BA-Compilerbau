.class public Main
.super java/lang/Object
.field x I

.method public <init>()V
.limit stack 10
.limit locals 1
    aload 0
    invokespecial java/lang/Object.<init>()V
    aload 0
    iconst_5
    putfield Main.x I
    return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 10
    .limit locals 3
    new OS/Sys
    dup
    invokespecial OS/Sys.<init>()V
    pop
    new Main
    dup
    invokespecial Main.<init>()V
    astore 2
    aload 2
    invokestatic Main.test()Z
    invokevirtual Main.add(Z)I
    istore 1
    iload 1
    invokestatic OS/Output.printInt(I)V
    return
.end method

.method public add(Z)I
    .limit stack 10
    .limit locals 2
    iconst_5
    ireturn
.end method
.method public static test()Z
    .limit stack 10
    .limit locals 0
    iconst_1
    ireturn
.end method