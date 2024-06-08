.class public Food
.super java/lang/Object
.field x I
.field y I
.field size I
.field random LRandom;
.method public <init>(III)V
.limit stack 10
.limit locals 4
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield Food.x I
aload 0
iconst_0
putfield Food.y I
aload 0
iconst_0
putfield Food.size I
aload 0
iload 1
putfield Food.x I
aload 0
iload 2
putfield Food.y I
aload 0
iload 3
putfield Food.size I
aload 0
new Random
dup
invokespecial Random.<init>()V
putfield Food.random LRandom;
return
.end method
.method public getX()I
.limit stack 10
.limit locals 1
aload 0
getfield Food.x I
ireturn
.end method
.method public getY()I
.limit stack 10
.limit locals 1
aload 0
getfield Food.y I
ireturn
.end method
.method public draw()V
.limit stack 10
.limit locals 1
iconst_1
invokestatic OS/Screen.setColor(Z)V
aload 0
getfield Food.x I
aload 0
getfield Food.y I
aload 0
getfield Food.x I
aload 0
getfield Food.size I
iadd
aload 0
getfield Food.y I
aload 0
getfield Food.size I
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
return
.end method
.method public newLocation()V
.limit stack 10
.limit locals 1
aload 0
aload 0
getfield Food.random LRandom;
invokevirtual Random.generateRandomX()I
putfield Food.x I
aload 0
aload 0
getfield Food.random LRandom;
invokevirtual Random.generateRandomY()I
putfield Food.y I
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
