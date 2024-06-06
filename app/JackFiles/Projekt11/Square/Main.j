.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 2
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
new SquareGame
dup
invokespecial SquareGame.<init>()V
astore 1
aload 1
invokevirtual SquareGame.run()V
aload 1
invokevirtual SquareGame.dispose()V
return
.end method
