.class public Snake
.super java/lang/Object
.field x I
.field y I
.field size I
.field length I
.field direction I
.field fullSnake LSnakeParts;
.method public <init>(III)V
.limit stack 10
.limit locals 4
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield Snake.x I
aload 0
iconst_0
putfield Snake.y I
aload 0
iconst_0
putfield Snake.size I
aload 0
iconst_0
putfield Snake.length I
aload 0
iconst_0
putfield Snake.direction I
aload 0
iload 1
putfield Snake.x I
aload 0
iload 2
putfield Snake.y I
aload 0
iload 3
putfield Snake.size I
aload 0
sipush 132
putfield Snake.direction I
aload 0
iconst_1
putfield Snake.length I
aload 0
new SnakeParts
dup
iload 1
iload 2
invokespecial SnakeParts.<init>(II)V
putfield Snake.fullSnake LSnakeParts;
aload 0
iload 1
iload 2
iconst_1
invokevirtual Snake.drawFinal(IIZ)V
return
.end method
.method public drawFinal(IIZ)V
.limit stack 10
.limit locals 4
iload 3
invokestatic OS/Screen.setColor(Z)V
iload 1
iload 2
iload 1
aload 0
getfield Snake.size I
iadd
iload 2
aload 0
getfield Snake.size I
iadd
invokestatic OS/Screen.drawRectangle(IIII)V
return
.end method
.method public draw()V
.limit stack 10
.limit locals 2
aload 0
getfield Snake.fullSnake LSnakeParts;
aload 0
getfield Snake.x I
aload 0
getfield Snake.y I
invokevirtual SnakeParts.push(II)V
aload 0
getfield Snake.length I
aload 0
getfield Snake.fullSnake LSnakeParts;
invokevirtual SnakeParts.getSize()I
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq ifL0
aload 0
getfield Snake.fullSnake LSnakeParts;
invokevirtual SnakeParts.pop()LList;
astore 1
aload 0
aload 1
invokevirtual List.getX()I
aload 1
invokevirtual List.getY()I
iconst_0
invokevirtual Snake.drawFinal(IIZ)V
goto ifL1
ifL0:
ifL1:
aload 0
aload 0
getfield Snake.x I
aload 0
getfield Snake.y I
iconst_1
invokevirtual Snake.drawFinal(IIZ)V
return
.end method
.method public move()V
.limit stack 10
.limit locals 1
aload 0
getfield Snake.direction I
sipush 130
if_icmpne jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq ifL2
aload 0
aload 0
getfield Snake.x I
aload 0
getfield Snake.size I
isub
putfield Snake.x I
goto ifL3
ifL2:
ifL3:
aload 0
getfield Snake.direction I
sipush 131
if_icmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL4
aload 0
aload 0
getfield Snake.y I
aload 0
getfield Snake.size I
isub
putfield Snake.y I
goto ifL5
ifL4:
ifL5:
aload 0
getfield Snake.direction I
sipush 132
if_icmpne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq ifL6
aload 0
aload 0
getfield Snake.x I
aload 0
getfield Snake.size I
iadd
putfield Snake.x I
goto ifL7
ifL6:
ifL7:
aload 0
getfield Snake.direction I
sipush 133
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq ifL8
aload 0
aload 0
getfield Snake.y I
aload 0
getfield Snake.size I
iadd
putfield Snake.y I
goto ifL9
ifL8:
ifL9:
return
.end method
.method public increaseLength()V
.limit stack 10
.limit locals 1
aload 0
aload 0
getfield Snake.length I
iconst_1
iadd
putfield Snake.length I
return
.end method
.method public eat(LFood;)Z
.limit stack 10
.limit locals 2
aload 0
getfield Snake.x I
aload 1
invokevirtual Food.getX()I
if_icmpne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
aload 0
getfield Snake.y I
aload 1
invokevirtual Food.getY()I
if_icmpne jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
iand
ifeq ifL10
iconst_1
ireturn
ifL10:
iconst_0
ireturn
ifL11:
.end method
.method public crash()Z
.limit stack 10
.limit locals 1
aload 0
getfield Snake.x I
iconst_0
if_icmpge jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
aload 0
getfield Snake.x I
sipush 509
if_icmple jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
ior
aload 0
getfield Snake.y I
iconst_0
if_icmpge jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
ior
aload 0
getfield Snake.y I
sipush 249
if_icmple jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
ior
ifeq ifL12
iconst_1
ireturn
ifL12:
iconst_0
ireturn
ifL13:
.end method
.method public selfCrash()Z
.limit stack 10
.limit locals 1
aload 0
getfield Snake.fullSnake LSnakeParts;
invokevirtual SnakeParts.crash()Z
ireturn
.end method
.method public setDirection(I)V
.limit stack 10
.limit locals 4
iconst_0
istore 2
iconst_0
istore 3
iload 1
iconst_2
iadd
istore 2
iload 1
iconst_2
isub
istore 3
aload 0
getfield Snake.direction I
iload 3
if_icmpne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ifne jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ifeq ifL14
aload 0
getfield Snake.direction I
iload 2
if_icmpne jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
ifne jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
ifeq ifL16
aload 0
iload 1
putfield Snake.direction I
goto ifL17
ifL16:
ifL17:
goto ifL15
ifL14:
ifL15:
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
