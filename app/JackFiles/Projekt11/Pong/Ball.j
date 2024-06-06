.class public Ball
.super java/lang/Object
.field x I
.field y I
.field lengthx I
.field lengthy I
.field d I
.field straightD I
.field diagonalD I
.field invert Z
.field positivex Z
.field positivey Z
.field leftWall I
.field rightWall I
.field topWall I
.field bottomWall I
.field wall I
.method public <init>(IIIIII)V
.limit stack 10
.limit locals 7
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iload 1
putfield Ball.x I
aload 0
iload 2
putfield Ball.y I
aload 0
iload 3
putfield Ball.leftWall I
aload 0
iload 4
bipush 6
isub
putfield Ball.rightWall I
aload 0
iload 5
putfield Ball.topWall I
aload 0
iload 6
bipush 6
isub
putfield Ball.bottomWall I
aload 0
iconst_0
putfield Ball.wall I
aload 0
invokevirtual Ball.show()V
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
invokevirtual Ball.draw()V
return
.end method
.method public hide()V
.limit stack 10
.limit locals 1
iconst_0
invokestatic OS/Screen.setColor(Z)V
aload 0
invokevirtual Ball.draw()V
return
.end method
.method public draw()V
.limit stack 10
.limit locals 1
aload 0
getfield Ball.x I
aload 0
getfield Ball.y I
aload 0
getfield Ball.x I
iconst_5
iadd
aload 0
getfield Ball.y I
iconst_5
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
return
.end method
.method public getLeft()I
.limit stack 10
.limit locals 1
aload 0
getfield Ball.x I
ireturn
.end method
.method public getRight()I
.limit stack 10
.limit locals 1
aload 0
getfield Ball.x I
iconst_5
iadd
ireturn
.end method
.method public setDestination(II)V
.limit stack 10
.limit locals 6
aload 0
iload 1
aload 0
getfield Ball.x I
isub
putfield Ball.lengthx I
aload 0
iload 2
aload 0
getfield Ball.y I
isub
putfield Ball.lengthy I
aload 0
getfield Ball.lengthx I
invokestatic OS/Math.abs(I)I
istore 3
aload 0
getfield Ball.lengthy I
invokestatic OS/Math.abs(I)I
istore 4
aload 0
iload 3
iload 4
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
putfield Ball.invert Z
aload 0
getfield Ball.invert Z
ifeq ifL0
iload 3
istore 5
iload 4
istore 3
iload 5
istore 4
aload 0
aload 0
getfield Ball.y I
iload 2
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
putfield Ball.positivex Z
aload 0
aload 0
getfield Ball.x I
iload 1
if_icmpge jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
putfield Ball.positivey Z
goto ifL1
ifL0:
aload 0
aload 0
getfield Ball.x I
iload 1
if_icmpge jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
putfield Ball.positivex Z
aload 0
aload 0
getfield Ball.y I
iload 2
if_icmpge jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
putfield Ball.positivey Z
ifL1:
aload 0
iconst_2
iload 4
imul
iload 3
isub
putfield Ball.d I
aload 0
iconst_2
iload 4
imul
putfield Ball.straightD I
aload 0
iconst_2
iload 4
iload 3
isub
imul
putfield Ball.diagonalD I
return
.end method
.method public move()I
.limit stack 10
.limit locals 1
aload 0
invokevirtual Ball.hide()V
aload 0
getfield Ball.d I
iconst_0
if_icmpge jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq ifL2
aload 0
aload 0
getfield Ball.d I
aload 0
getfield Ball.straightD I
iadd
putfield Ball.d I
goto ifL3
ifL2:
aload 0
aload 0
getfield Ball.d I
aload 0
getfield Ball.diagonalD I
iadd
putfield Ball.d I
aload 0
getfield Ball.positivey Z
ifeq ifL4
aload 0
getfield Ball.invert Z
ifeq ifL6
aload 0
aload 0
getfield Ball.x I
iconst_4
iadd
putfield Ball.x I
goto ifL7
ifL6:
aload 0
aload 0
getfield Ball.y I
iconst_4
iadd
putfield Ball.y I
ifL7:
goto ifL5
ifL4:
aload 0
getfield Ball.invert Z
ifeq ifL8
aload 0
aload 0
getfield Ball.x I
iconst_4
isub
putfield Ball.x I
goto ifL9
ifL8:
aload 0
aload 0
getfield Ball.y I
iconst_4
isub
putfield Ball.y I
ifL9:
ifL5:
ifL3:
aload 0
getfield Ball.positivex Z
ifeq ifL10
aload 0
getfield Ball.invert Z
ifeq ifL12
aload 0
aload 0
getfield Ball.y I
iconst_4
iadd
putfield Ball.y I
goto ifL13
ifL12:
aload 0
aload 0
getfield Ball.x I
iconst_4
iadd
putfield Ball.x I
ifL13:
goto ifL11
ifL10:
aload 0
getfield Ball.invert Z
ifeq ifL14
aload 0
aload 0
getfield Ball.y I
iconst_4
isub
putfield Ball.y I
goto ifL15
ifL14:
aload 0
aload 0
getfield Ball.x I
iconst_4
isub
putfield Ball.x I
ifL15:
ifL11:
aload 0
getfield Ball.x I
aload 0
getfield Ball.leftWall I
if_icmple jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifne jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
ifeq ifL16
aload 0
iconst_1
putfield Ball.wall I
aload 0
aload 0
getfield Ball.leftWall I
putfield Ball.x I
goto ifL17
ifL16:
ifL17:
aload 0
getfield Ball.x I
aload 0
getfield Ball.rightWall I
if_icmpge jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
ifne jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
ifeq ifL18
aload 0
iconst_2
putfield Ball.wall I
aload 0
aload 0
getfield Ball.rightWall I
putfield Ball.x I
goto ifL19
ifL18:
ifL19:
aload 0
getfield Ball.y I
aload 0
getfield Ball.topWall I
if_icmple jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
ifne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ifeq ifL20
aload 0
iconst_3
putfield Ball.wall I
aload 0
aload 0
getfield Ball.topWall I
putfield Ball.y I
goto ifL21
ifL20:
ifL21:
aload 0
getfield Ball.y I
aload 0
getfield Ball.bottomWall I
if_icmpge jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ifne jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
ifeq ifL22
aload 0
iconst_4
putfield Ball.wall I
aload 0
aload 0
getfield Ball.bottomWall I
putfield Ball.y I
goto ifL23
ifL22:
ifL23:
aload 0
invokevirtual Ball.show()V
aload 0
getfield Ball.wall I
ireturn
.end method
.method public bounce(I)V
.limit stack 10
.limit locals 7
aload 0
getfield Ball.lengthx I
bipush 10
idiv
istore 4
aload 0
getfield Ball.lengthy I
bipush 10
idiv
istore 5
iload 1
iconst_0
if_icmpne jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
ifeq ifL24
bipush 10
istore 6
goto ifL25
ifL24:
aload 0
getfield Ball.lengthx I
iconst_0
if_icmpge jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
ifne jump32
iconst_1
goto jump33
jump32:
iconst_0
jump33:
iload 1
iconst_1
if_icmpne jump34
iconst_1
goto jump35
jump34:
iconst_0
jump35:
iand
aload 0
getfield Ball.lengthx I
iconst_0
if_icmpge jump36
iconst_1
goto jump37
jump36:
iconst_0
jump37:
iload 1
iconst_1
ineg
if_icmpne jump38
iconst_1
goto jump39
jump38:
iconst_0
jump39:
iand
ior
ifeq ifL26
bipush 20
istore 6
goto ifL27
ifL26:
iconst_5
istore 6
ifL27:
ifL25:
aload 0
getfield Ball.wall I
iconst_1
if_icmpne jump40
iconst_1
goto jump41
jump40:
iconst_0
jump41:
ifeq ifL28
sipush 506
istore 2
iload 5
bipush 50
ineg
imul
iload 4
idiv
istore 3
aload 0
getfield Ball.y I
iload 3
iload 6
imul
iadd
istore 3
goto ifL29
ifL28:
aload 0
getfield Ball.wall I
iconst_2
if_icmpne jump42
iconst_1
goto jump43
jump42:
iconst_0
jump43:
ifeq ifL30
iconst_0
istore 2
iload 5
bipush 50
imul
iload 4
idiv
istore 3
aload 0
getfield Ball.y I
iload 3
iload 6
imul
iadd
istore 3
goto ifL31
ifL30:
aload 0
getfield Ball.wall I
iconst_3
if_icmpne jump44
iconst_1
goto jump45
jump44:
iconst_0
jump45:
ifeq ifL32
sipush 250
istore 3
iload 4
bipush 25
ineg
imul
iload 5
idiv
istore 2
aload 0
getfield Ball.x I
iload 2
iload 6
imul
iadd
istore 2
goto ifL33
ifL32:
iconst_0
istore 3
iload 4
bipush 25
imul
iload 5
idiv
istore 2
aload 0
getfield Ball.x I
iload 2
iload 6
imul
iadd
istore 2
ifL33:
ifL31:
ifL29:
aload 0
iload 2
iload 3
invokevirtual Ball.setDestination(II)V
return
.end method
