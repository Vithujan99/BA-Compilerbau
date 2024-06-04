.class public Main
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
	.limit stack 10
    .limit locals 1
    new OS/Sys
    dup
    invokespecial OS/Sys.<init>()V
    pop
        iconst_1
        iconst_2
        iconst_3
        imul
        iadd
		invokestatic OS/Output.printInt(I)V
        return
.end method