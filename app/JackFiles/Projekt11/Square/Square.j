.class public Square
.super java/lang/Object
.field x I
.field y I
.field size I
.method public <init>(III)V
.limit stack 10
.limit locals 4
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield Square.x I
aload 0
iconst_0
putfield Square.y I
aload 0
iconst_0
putfield Square.size I
aload 0
iload 1
putfield Square.x I
aload 0
iload 2
putfield Square.y I
aload 0
iload 3
putfield Square.size I
aload 0
invokevirtual Square.draw()V
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
.method public draw()V
.limit stack 10
.limit locals 1
iconst_1
invokestatic OS/Screen.setColor(Z)V
aload 0
getfield Square.x I
aload 0
getfield Square.y I
aload 0
getfield Square.x I
aload 0
getfield Square.size I
iadd
aload 0
getfield Square.y I
aload 0
getfield Square.size I
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
return
.end method
.method public erase()V
.limit stack 10
.limit locals 1
iconst_0
invokestatic OS/Screen.setColor(Z)V
aload 0
getfield Square.x I
aload 0
getfield Square.y I
aload 0
getfield Square.x I
aload 0
getfield Square.size I
iadd
aload 0
getfield Square.y I
aload 0
getfield Square.size I
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
return
.end method
.method public incSize()V
.limit stack 10
.limit locals 1
aload 0
getfield Square.y I
aload 0
getfield Square.size I
iadd
sipush 254
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
aload 0
getfield Square.x I
aload 0
getfield Square.size I
iadd
sipush 510
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
iand
ifeq ifL0
aload 0
invokevirtual Square.erase()V
aload 0
aload 0
getfield Square.size I
iconst_2
iadd
putfield Square.size I
aload 0
invokevirtual Square.draw()V
goto ifL1
ifL0:
ifL1:
return
.end method
.method public decSize()V
.limit stack 10
.limit locals 1
aload 0
getfield Square.size I
iconst_2
if_icmple jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL2
aload 0
invokevirtual Square.erase()V
aload 0
aload 0
getfield Square.size I
iconst_2
isub
putfield Square.size I
aload 0
invokevirtual Square.draw()V
goto ifL3
ifL2:
ifL3:
return
.end method
.method public moveUp()V
.limit stack 10
.limit locals 1
aload 0
getfield Square.y I
iconst_1
if_icmple jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq ifL4
iconst_0
invokestatic OS/Screen.setColor(Z)V
aload 0
getfield Square.x I
aload 0
getfield Square.y I
aload 0
getfield Square.size I
iadd
iconst_1
isub
aload 0
getfield Square.x I
aload 0
getfield Square.size I
iadd
aload 0
getfield Square.y I
aload 0
getfield Square.size I
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
aload 0
aload 0
getfield Square.y I
iconst_2
isub
putfield Square.y I
iconst_1
invokestatic OS/Screen.setColor(Z)V
aload 0
getfield Square.x I
aload 0
getfield Square.y I
aload 0
getfield Square.x I
aload 0
getfield Square.size I
iadd
aload 0
getfield Square.y I
iconst_1
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
goto ifL5
ifL4:
ifL5:
return
.end method
.method public moveDown()V
.limit stack 10
.limit locals 1
aload 0
getfield Square.y I
aload 0
getfield Square.size I
iadd
sipush 254
if_icmpge jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq ifL6
iconst_0
invokestatic OS/Screen.setColor(Z)V
aload 0
getfield Square.x I
aload 0
getfield Square.y I
aload 0
getfield Square.x I
aload 0
getfield Square.size I
iadd
aload 0
getfield Square.y I
iconst_1
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
aload 0
aload 0
getfield Square.y I
iconst_2
iadd
putfield Square.y I
iconst_1
invokestatic OS/Screen.setColor(Z)V
aload 0
getfield Square.x I
aload 0
getfield Square.y I
aload 0
getfield Square.size I
iadd
iconst_1
isub
aload 0
getfield Square.x I
aload 0
getfield Square.size I
iadd
aload 0
getfield Square.y I
aload 0
getfield Square.size I
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
goto ifL7
ifL6:
ifL7:
return
.end method
.method public moveLeft()V
.limit stack 10
.limit locals 1
aload 0
getfield Square.x I
iconst_1
if_icmple jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq ifL8
iconst_0
invokestatic OS/Screen.setColor(Z)V
aload 0
getfield Square.x I
aload 0
getfield Square.size I
iadd
iconst_1
isub
aload 0
getfield Square.y I
aload 0
getfield Square.x I
aload 0
getfield Square.size I
iadd
aload 0
getfield Square.y I
aload 0
getfield Square.size I
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
aload 0
aload 0
getfield Square.x I
iconst_2
isub
putfield Square.x I
iconst_1
invokestatic OS/Screen.setColor(Z)V
aload 0
getfield Square.x I
aload 0
getfield Square.y I
aload 0
getfield Square.x I
iconst_1
iadd
aload 0
getfield Square.y I
aload 0
getfield Square.size I
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
goto ifL9
ifL8:
ifL9:
return
.end method
.method public moveRight()V
.limit stack 10
.limit locals 1
aload 0
getfield Square.x I
aload 0
getfield Square.size I
iadd
sipush 510
if_icmpge jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq ifL10
iconst_0
invokestatic OS/Screen.setColor(Z)V
aload 0
getfield Square.x I
aload 0
getfield Square.y I
aload 0
getfield Square.x I
iconst_1
iadd
aload 0
getfield Square.y I
aload 0
getfield Square.size I
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
aload 0
aload 0
getfield Square.x I
iconst_2
iadd
putfield Square.x I
iconst_1
invokestatic OS/Screen.setColor(Z)V
aload 0
getfield Square.x I
aload 0
getfield Square.size I
iadd
iconst_1
isub
aload 0
getfield Square.y I
aload 0
getfield Square.x I
aload 0
getfield Square.size I
iadd
aload 0
getfield Square.y I
aload 0
getfield Square.size I
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
goto ifL11
ifL10:
ifL11:
return
.end method
