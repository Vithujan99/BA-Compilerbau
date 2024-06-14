.class public Player
.super java/lang/Object
.field xPos I
.field yPos I
.method public <init>(II)V
.limit stack 10
.limit locals 3
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield Player.xPos I
aload 0
iconst_0
putfield Player.yPos I
aload 0
iload 1
putfield Player.xPos I
aload 0
iload 2
putfield Player.yPos I
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
