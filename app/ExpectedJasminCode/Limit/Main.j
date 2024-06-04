.class public Main
.super java/lang/Object
.method public <init>(II)V
    .limit stack 10
    .limit locals 3
        aload 0
        invokespecial java/lang/Object.<init>()V
.end method
.method public static main([Ljava/lang/String;)V
    .limit stack 10
    .limit locals 3
    new OS/Sys
    dup
    invokespecial OS/Sys.<init>()V
    pop
.end method
.method public add(ILOS/String;I)I
    .limit stack 10
    .limit locals 4
.end method
.method public static sadd(I)I
    .limit stack 10
    .limit locals 2
.end method