.class public Main
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
    .limit stack 10
    .limit locals 2
    invokestatic Main.test()Z
    istore 1
    getstatic java/lang/System.out Ljava/io/PrintStream;
    iload 1
    invokevirtual java/io/PrintStream.print(I)V
    return
.end method

.method public static test()Z
    .limit stack 10
    .limit locals 0
    getstatic java/lang/System.out Ljava/io/PrintStream;
    bipush 5
    invokevirtual java/io/PrintStream.print(I)V
    bipush 1
    ireturn
.end method