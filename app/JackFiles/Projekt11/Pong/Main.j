.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 2
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
invokestatic PongGame.newInstance()V
invokestatic PongGame.getInstance()LPongGame;
astore 1
aload 1
invokevirtual PongGame.run()V
aload 1
invokevirtual PongGame.dispose()V
return
.end method
