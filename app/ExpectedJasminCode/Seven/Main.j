.class public Main
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
	.limit stack 10
    .limit locals 1

		getstatic java/lang/System.out Ljava/io/PrintStream;
        bipush 1
        bipush 2
        bipush 3
        imul
        iadd
		invokevirtual java/io/PrintStream/println(I)V
        return
.end method