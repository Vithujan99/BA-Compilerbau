.class public Main
.super java/lang/Object
.field x I

.method public <init>()V
.limit stack 10
.limit locals 1
    aload 0
    invokespecial java/lang/Object.<init>()V
    aload 0
    bipush 5
    putfield Main.x I
    return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 10
    .limit locals 2
    new Main
    dup
    invokespecial Main.<init>()V
    astore 1
    aload 1
    bipush 1
    invokevirtual Main.add(Z)I
    pop
    invokestatic Main.test()Z
    pop
    invokestatic Main.printLine()V
    return
.end method

.method public add(Z)I
    .limit stack 10
    .limit locals 2
    getstatic java/lang/System.out Ljava/io/PrintStream;
    ldc "Method add"
    invokevirtual java/io/PrintStream.print(Ljava/lang/String;)V
    bipush 5
    ireturn
.end method
.method public static test()Z
    .limit stack 10
    .limit locals 0
    getstatic java/lang/System.out Ljava/io/PrintStream;
    ldc "Method test"
    invokevirtual java/io/PrintStream.print(Ljava/lang/String;)V
    bipush 1
    ireturn
.end method

.method public static printLine()V
    .limit stack 10
    .limit locals 0
    getstatic java/lang/System.out Ljava/io/PrintStream;
    ldc "Hello World!"
    invokevirtual java/io/PrintStream.print(Ljava/lang/String;)V
    return
.end method