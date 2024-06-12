.class public Map
.super java/lang/Object
.method public <init>()V
.limit stack 10
.limit locals 1
aload 0
invokespecial java/lang/Object.<init>()V
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
