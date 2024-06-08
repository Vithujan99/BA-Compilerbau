.class public Bat
.super java/lang/Object
.field x I
.field y I
.field width I
.field height I
.field direction I
.method public <init>(IIII)V
.limit stack 10
.limit locals 5
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield Bat.x I
aload 0
iconst_0
putfield Bat.y I
aload 0
iconst_0
putfield Bat.width I
aload 0
iconst_0
putfield Bat.height I
aload 0
iconst_0
putfield Bat.direction I
aload 0
iload 1
putfield Bat.x I
aload 0
iload 2
putfield Bat.y I
aload 0
iload 3
putfield Bat.width I
aload 0
iload 4
putfield Bat.height I
aload 0
iconst_2
putfield Bat.direction I
aload 0
invokevirtual Bat.show()V
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
.method public show()V
.limit stack 10
.limit locals 1
iconst_1
invokestatic OS/Screen.setColor(Z)V
aload 0
invokevirtual Bat.draw()V
return
.end method
.method public hide()V
.limit stack 10
.limit locals 1
iconst_0
invokestatic OS/Screen.setColor(Z)V
aload 0
invokevirtual Bat.draw()V
return
.end method
.method public draw()V
.limit stack 10
.limit locals 1
aload 0
getfield Bat.x I
aload 0
getfield Bat.y I
aload 0
getfield Bat.x I
aload 0
getfield Bat.width I
iadd
aload 0
getfield Bat.y I
aload 0
getfield Bat.height I
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
return
.end method
.method public setDirection(I)V
.limit stack 10
.limit locals 2
aload 0
iload 1
putfield Bat.direction I
return
.end method
.method public getLeft()I
.limit stack 10
.limit locals 1
aload 0
getfield Bat.x I
ireturn
.end method
.method public getRight()I
.limit stack 10
.limit locals 1
aload 0
getfield Bat.x I
aload 0
getfield Bat.width I
iadd
ireturn
.end method
.method public setWidth(I)V
.limit stack 10
.limit locals 2
aload 0
invokevirtual Bat.hide()V
aload 0
iload 1
putfield Bat.width I
aload 0
invokevirtual Bat.show()V
return
.end method
.method public move()V
.limit stack 10
.limit locals 1
aload 0
getfield Bat.direction I
iconst_1
if_icmpne jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq ifL0
aload 0
aload 0
getfield Bat.x I
iconst_4
isub
putfield Bat.x I
aload 0
getfield Bat.x I
iconst_0
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq ifL2
aload 0
iconst_0
putfield Bat.x I
goto ifL3
ifL2:
ifL3:
iconst_0
invokestatic OS/Screen.setColor(Z)V
aload 0
getfield Bat.x I
aload 0
getfield Bat.width I
iadd
iconst_1
iadd
aload 0
getfield Bat.y I
aload 0
getfield Bat.x I
aload 0
getfield Bat.width I
iadd
iconst_4
iadd
aload 0
getfield Bat.y I
aload 0
getfield Bat.height I
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
aload 0
getfield Bat.x I
aload 0
getfield Bat.y I
aload 0
getfield Bat.x I
iconst_3
iadd
aload 0
getfield Bat.y I
aload 0
getfield Bat.height I
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
goto ifL1
ifL0:
aload 0
aload 0
getfield Bat.x I
iconst_4
iadd
putfield Bat.x I
aload 0
getfield Bat.x I
aload 0
getfield Bat.width I
iadd
sipush 511
if_icmple jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL4
aload 0
sipush 511
aload 0
getfield Bat.width I
isub
putfield Bat.x I
goto ifL5
ifL4:
ifL5:
iconst_0
invokestatic OS/Screen.setColor(Z)V
aload 0
getfield Bat.x I
iconst_4
isub
aload 0
getfield Bat.y I
aload 0
getfield Bat.x I
iconst_1
isub
aload 0
getfield Bat.y I
aload 0
getfield Bat.height I
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
aload 0
getfield Bat.x I
aload 0
getfield Bat.width I
iadd
iconst_3
isub
aload 0
getfield Bat.y I
aload 0
getfield Bat.x I
aload 0
getfield Bat.width I
iadd
aload 0
getfield Bat.y I
aload 0
getfield Bat.height I
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
ifL1:
return
.end method
