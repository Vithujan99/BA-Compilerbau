.class public Main
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
    .limit stack 10
    .limit locals 3
    new OS/Sys
    dup
    invokespecial OS/Sys.<init>()V
    pop
    iconst_0
    istore 1
    iconst_0
    istore 2
    iconst_1
     istore 1
     iconst_1
     istore 2
      iload 1
      ineg
      invokestatic OS/Output.printInt(I)V
    iload 2
    ifne jump0
    iconst_1
    goto jump1
    jump0:
    iconst_0
    jump1:
    invokestatic OS/Output.printInt(I)V
    return
.end method
