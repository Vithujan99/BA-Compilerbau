.class public SnakeGame
.super java/lang/Object
.field snake LSnake;
.field food LFood;
.method public <init>()V
.limit stack 10
.limit locals 1
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
new Snake
dup
iconst_0
iconst_0
bipush 10
invokespecial Snake.<init>(III)V
putfield SnakeGame.snake LSnake;
aload 0
new Food
dup
bipush 50
bipush 50
bipush 8
invokespecial Food.<init>(III)V
putfield SnakeGame.food LFood;
return
.end method
.method public run()V
.limit stack 10
.limit locals 4
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 3
iconst_0
istore 2
bipush 10
bipush 24
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 17
invokespecial OS/String.<init>(I)V
bipush 80
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 83
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 83
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
whileL1:
iload 1
bipush 83
if_icmpne jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifne jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq whileL0
invokestatic OS/Keyboard.keyPressed()C
istore 1
goto whileL1
whileL0:
iconst_0
invokestatic OS/Screen.setColor(Z)V
bipush 20
bipush 20
sipush 510
sipush 250
invokestatic OS/Screen.drawRectangle(IIII)V
aload 0
getfield SnakeGame.food LFood;
invokevirtual Food.draw()V
whileL3:
iload 2
ifne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq whileL2
invokestatic OS/Keyboard.keyPressed()C
istore 1
aload 0
getfield SnakeGame.snake LSnake;
invokevirtual Snake.move()V
aload 0
getfield SnakeGame.snake LSnake;
invokevirtual Snake.crash()Z
iload 1
bipush 81
if_icmpne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ior
aload 0
getfield SnakeGame.snake LSnake;
invokevirtual Snake.selfCrash()Z
ior
ifeq ifL4
iconst_1
istore 2
goto ifL5
ifL4:
iload 1
sipush 129
if_icmple jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
iload 1
sipush 134
if_icmpge jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
iand
ifeq ifL6
aload 0
getfield SnakeGame.snake LSnake;
iload 1
invokevirtual Snake.setDirection(I)V
goto ifL7
ifL6:
ifL7:
aload 0
getfield SnakeGame.snake LSnake;
aload 0
getfield SnakeGame.food LFood;
invokevirtual Snake.eat(LFood;)Z
ifeq ifL8
iload 3
iconst_1
iadd
istore 3
aload 0
getfield SnakeGame.snake LSnake;
invokevirtual Snake.increaseLength()V
aload 0
getfield SnakeGame.food LFood;
invokevirtual Food.newLocation()V
goto ifL9
ifL8:
ifL9:
aload 0
getfield SnakeGame.food LFood;
invokevirtual Food.draw()V
aload 0
getfield SnakeGame.snake LSnake;
invokevirtual Snake.draw()V
bipush 50
invokestatic OS/Sys.wait(I)V
ifL5:
goto whileL3
whileL2:
new OS/String
dup
bipush 7
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
invokestatic OS/Output.printString(LOS/String;)V
iload 3
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
bipush 10
bipush 24
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 12
invokespecial OS/String.<init>(I)V
bipush 83
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
getfield SnakeGame.snake LSnake;
invokevirtual Snake.dispose()V
aload 0
getfield SnakeGame.food LFood;
invokevirtual Food.dispose()V
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
