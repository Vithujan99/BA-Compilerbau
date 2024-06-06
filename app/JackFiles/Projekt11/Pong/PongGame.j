.class public PongGame
.super java/lang/Object
.field static instance LPongGame;
.field bat LBat;
.field ball LBall;
.field wall I
.field exit Z
.field score I
.field lastWall I
.field batWidth I
.method public <init>()V
.limit stack 10
.limit locals 1
aload 0
invokespecial java/lang/Object.<init>()V
invokestatic OS/Screen.clearScreen()V
aload 0
bipush 50
putfield PongGame.batWidth I
aload 0
new Bat
dup
sipush 230
sipush 229
aload 0
getfield PongGame.batWidth I
bipush 7
invokespecial Bat.<init>(IIII)V
putfield PongGame.bat LBat;
aload 0
new Ball
dup
sipush 253
sipush 222
iconst_0
sipush 511
iconst_0
sipush 229
invokespecial Ball.<init>(IIIIII)V
putfield PongGame.ball LBall;
aload 0
getfield PongGame.ball LBall;
sipush 400
iconst_0
invokevirtual Ball.setDestination(II)V
iconst_0
sipush 238
sipush 511
sipush 240
invokestatic OS/Screen.drawRectangle(IIII)V
bipush 22
iconst_0
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 9
invokespecial OS/String.<init>(I)V
bipush 83
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 48
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
aload 0
iconst_0
putfield PongGame.exit Z
aload 0
iconst_0
putfield PongGame.score I
aload 0
iconst_0
putfield PongGame.wall I
aload 0
iconst_0
putfield PongGame.lastWall I
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
getfield PongGame.bat LBat;
invokevirtual Bat.dispose()V
aload 0
getfield PongGame.ball LBall;
invokevirtual Ball.dispose()V
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
.method public static newInstance()V
.limit stack 10
.limit locals 0
new PongGame
dup
invokespecial PongGame.<init>()V
putstatic PongGame.instance LPongGame;
return
.end method
.method public static getInstance()LPongGame;
.limit stack 10
.limit locals 0
getstatic PongGame.instance LPongGame;
areturn
.end method
.method public run()V
.limit stack 10
.limit locals 2
iconst_0
istore 1
whileL1:
aload 0
getfield PongGame.exit Z
ifne jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
whileL3:
iload 1
iconst_0
if_icmpne jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
aload 0
getfield PongGame.exit Z
ifne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
iand
ifeq whileL2
invokestatic OS/Keyboard.keyPressed()C
istore 1
aload 0
getfield PongGame.bat LBat;
invokevirtual Bat.move()V
aload 0
invokevirtual PongGame.moveBall()V
bipush 50
invokestatic OS/Sys.wait(I)V
goto whileL3
whileL2:
iload 1
sipush 130
if_icmpne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq ifL4
aload 0
getfield PongGame.bat LBat;
iconst_1
invokevirtual Bat.setDirection(I)V
goto ifL5
ifL4:
iload 1
sipush 132
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq ifL6
aload 0
getfield PongGame.bat LBat;
iconst_2
invokevirtual Bat.setDirection(I)V
goto ifL7
ifL6:
iload 1
sipush 140
if_icmpne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq ifL8
aload 0
iconst_1
putfield PongGame.exit Z
goto ifL9
ifL8:
ifL9:
ifL7:
ifL5:
whileL11:
iload 1
iconst_0
if_icmpne jump12
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
aload 0
getfield PongGame.exit Z
ifne jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
iand
ifeq whileL10
invokestatic OS/Keyboard.keyPressed()C
istore 1
aload 0
getfield PongGame.bat LBat;
invokevirtual Bat.move()V
aload 0
invokevirtual PongGame.moveBall()V
bipush 50
invokestatic OS/Sys.wait(I)V
goto whileL11
whileL10:
goto whileL1
whileL0:
aload 0
getfield PongGame.exit Z
ifeq ifL12
bipush 10
bipush 27
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 10
invokespecial OS/String.<init>(I)V
bipush 71
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 79
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 118
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
goto ifL13
ifL12:
ifL13:
return
.end method
.method public moveBall()V
.limit stack 10
.limit locals 6
aload 0
aload 0
getfield PongGame.ball LBall;
invokevirtual Ball.move()I
putfield PongGame.wall I
aload 0
getfield PongGame.wall I
iconst_0
if_icmple jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
aload 0
getfield PongGame.wall I
aload 0
getfield PongGame.lastWall I
if_icmpne jump20
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
iand
ifeq ifL14
aload 0
aload 0
getfield PongGame.wall I
putfield PongGame.lastWall I
iconst_0
istore 1
aload 0
getfield PongGame.bat LBat;
invokevirtual Bat.getLeft()I
istore 2
aload 0
getfield PongGame.bat LBat;
invokevirtual Bat.getRight()I
istore 3
aload 0
getfield PongGame.ball LBall;
invokevirtual Ball.getLeft()I
istore 4
aload 0
getfield PongGame.ball LBall;
invokevirtual Ball.getRight()I
istore 5
aload 0
getfield PongGame.wall I
iconst_4
if_icmpne jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ifeq ifL16
aload 0
iload 2
iload 5
if_icmple jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
iload 3
iload 4
if_icmpge jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
ior
putfield PongGame.exit Z
aload 0
getfield PongGame.exit Z
ifne jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
ifeq ifL18
iload 5
iload 2
bipush 10
iadd
if_icmpge jump32
iconst_1
goto jump33
jump32:
iconst_0
jump33:
ifeq ifL20
iconst_1
ineg
istore 1
goto ifL21
ifL20:
iload 4
iload 3
bipush 10
isub
if_icmple jump34
iconst_1
goto jump35
jump34:
iconst_0
jump35:
ifeq ifL22
iconst_1
istore 1
goto ifL23
ifL22:
ifL23:
ifL21:
aload 0
aload 0
getfield PongGame.batWidth I
iconst_2
isub
putfield PongGame.batWidth I
aload 0
getfield PongGame.bat LBat;
aload 0
getfield PongGame.batWidth I
invokevirtual Bat.setWidth(I)V
aload 0
aload 0
getfield PongGame.score I
iconst_1
iadd
putfield PongGame.score I
bipush 22
bipush 7
invokestatic OS/Output.moveCursor(II)V
aload 0
getfield PongGame.score I
invokestatic OS/Output.printInt(I)V
goto ifL19
ifL18:
ifL19:
goto ifL17
ifL16:
ifL17:
aload 0
getfield PongGame.ball LBall;
iload 1
invokevirtual Ball.bounce(I)V
goto ifL15
ifL14:
ifL15:
return
.end method
