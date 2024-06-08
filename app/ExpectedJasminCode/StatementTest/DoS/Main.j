.class public Main
.super java/lang/Object
.field x I

.method public <init>()V
.limit stack 10
.limit locals 1
    aload 0
    invokespecial java/lang/Object.<init>()V
    aload 0
    iconst_0
    putfield Main.x I
    aload 0
    iconst_5
    putfield Main.x I
    return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 10
    .limit locals 2
    new OS/Sys
    dup
    invokespecial OS/Sys.<init>()V
    pop
    new Main
    dup
    invokespecial Main.<init>()V
    astore 1
    aload 1
    iconst_1
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
    new OS/String
    dup
    bipush 11
    invokespecial OS/String.<init>(I)V
    bipush 77
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 101
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 116
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 104
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 111
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 100
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 32
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 97
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 100
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 100
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 32
    invokevirtual OS/String.appendChar(C)LOS/String;
    invokestatic OS/Output.printString(LOS/String;)V
    iconst_5
    ireturn
.end method
.method public static test()Z
    .limit stack 10
    .limit locals 0
    new OS/String
    dup
    bipush 12
    invokespecial OS/String.<init>(I)V
    bipush 77
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 101
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 116
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 104
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 111
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 100
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 32
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 116
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 101
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 115
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 116
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 32
    invokevirtual OS/String.appendChar(C)LOS/String;
    invokestatic OS/Output.printString(LOS/String;)V
    iconst_1
    ireturn
.end method

.method public static printLine()V
    .limit stack 10
    .limit locals 0
    new OS/String
    dup
    bipush 13
    invokespecial OS/String.<init>(I)V
    bipush 72
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 101
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 108
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 108
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 111
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 32
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 87
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 111
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 114
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 108
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 100
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 33
    invokevirtual OS/String.appendChar(C)LOS/String;
    bipush 32
    invokevirtual OS/String.appendChar(C)LOS/String;
    invokestatic OS/Output.printString(LOS/String;)V
    return
.end method