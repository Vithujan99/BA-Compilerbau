.class public Main
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
    .limit stack 10
    .limit locals 2
    bipush 5
    istore 1
    iload 1
    bipush 10
    if_icmpge jump0
    bipush 1
    goto jump1
    jump0:
    bipush 0
    jump1:
    ifeq ifL0
    getstatic java/lang/System.out Ljava/io/PrintStream;
    ldc "Kleiner"
    invokevirtual java/io/PrintStream.print(Ljava/lang/String;)V
    goto ifL1
    ifL0:
    getstatic java/lang/System.out Ljava/io/PrintStream;
    ldc "Größer"
    invokevirtual java/io/PrintStream.print(Ljava/lang/String;)V
    ifL1:
    return
.end method