.class public SquareGame
.super java/lang/Object
.field square LSquare;
.field direction I
.method public <init>()V
.limit stack 10
.limit locals 1
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
new Square
dup
iconst_0
iconst_0
bipush 30
invokespecial Square.<init>(III)V
putfield SquareGame.square LSquare;
aload 0
iconst_0
putfield SquareGame.direction I
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
getfield SquareGame.square LSquare;
invokevirtual Square.dispose()V
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
.method public moveSquare()V
.limit stack 10
.limit locals 1
aload 0
getfield SquareGame.direction I
iconst_1
if_icmpne jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq ifL0
aload 0
getfield SquareGame.square LSquare;
invokevirtual Square.moveUp()V
goto ifL1
ifL0:
ifL1:
aload 0
getfield SquareGame.direction I
iconst_2
if_icmpne jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq ifL2
aload 0
getfield SquareGame.square LSquare;
invokevirtual Square.moveDown()V
goto ifL3
ifL2:
ifL3:
aload 0
getfield SquareGame.direction I
iconst_3
if_icmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL4
aload 0
getfield SquareGame.square LSquare;
invokevirtual Square.moveLeft()V
goto ifL5
ifL4:
ifL5:
aload 0
getfield SquareGame.direction I
iconst_4
if_icmpne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq ifL6
aload 0
getfield SquareGame.square LSquare;
invokevirtual Square.moveRight()V
goto ifL7
ifL6:
ifL7:
iconst_5
invokestatic OS/Sys.wait(I)V
return
.end method
.method public run()V
.limit stack 10
.limit locals 3
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 1
whileL9:
iload 2
ifne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq whileL8
whileL11:
iload 1
iconst_0
if_icmpne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq whileL10
invokestatic OS/Keyboard.keyPressed()C
istore 1
aload 0
invokevirtual SquareGame.moveSquare()V
goto whileL11
whileL10:
iload 1
bipush 81
if_icmpne jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq ifL12
iconst_1
istore 2
goto ifL13
ifL12:
ifL13:
iload 1
bipush 90
if_icmpne jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
ifeq ifL14
aload 0
getfield SquareGame.square LSquare;
invokevirtual Square.decSize()V
goto ifL15
ifL14:
ifL15:
iload 1
bipush 88
if_icmpne jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
ifeq ifL16
aload 0
getfield SquareGame.square LSquare;
invokevirtual Square.incSize()V
goto ifL17
ifL16:
ifL17:
iload 1
sipush 131
if_icmpne jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
ifeq ifL18
aload 0
iconst_1
putfield SquareGame.direction I
goto ifL19
ifL18:
ifL19:
iload 1
sipush 133
if_icmpne jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
ifeq ifL20
aload 0
iconst_2
putfield SquareGame.direction I
goto ifL21
ifL20:
ifL21:
iload 1
sipush 130
if_icmpne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ifeq ifL22
aload 0
iconst_3
putfield SquareGame.direction I
goto ifL23
ifL22:
ifL23:
iload 1
sipush 132
if_icmpne jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ifeq ifL24
aload 0
iconst_4
putfield SquareGame.direction I
goto ifL25
ifL24:
ifL25:
whileL27:
iload 1
iconst_0
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
ifeq whileL26
invokestatic OS/Keyboard.keyPressed()C
istore 1
aload 0
invokevirtual SquareGame.moveSquare()V
goto whileL27
whileL26:
goto whileL9
whileL8:
return
.end method
