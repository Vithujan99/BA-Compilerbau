.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 2
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
new WallGame
dup
invokespecial WallGame.<init>()V
astore 1
aload 1
invokevirtual WallGame.run()V
aload 1
invokevirtual WallGame.dispose()V
return
.end method
