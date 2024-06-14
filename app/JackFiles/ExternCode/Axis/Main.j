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
istore 2
iconst_1
istore 2
whileL1:
iload 2
ifeq whileL0
new AxisGame
dup
invokespecial AxisGame.<init>()V
astore 1
aload 1
invokevirtual AxisGame.run()Z
istore 2
aload 1
invokevirtual AxisGame.dispose()V
goto whileL1
whileL0:
return
.end method
