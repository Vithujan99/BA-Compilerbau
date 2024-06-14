.class public AxisGame
.super java/lang/Object
.field currentPlayer Z
.field winner I
.field map LOS/Array;
.field player1 LPlayer;
.field player2 LPlayer;
.method public <init>()V
.limit stack 10
.limit locals 2
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield AxisGame.currentPlayer Z
aload 0
iconst_0
putfield AxisGame.winner I
iconst_0
istore 1
aload 0
new OS/Array
dup
bipush 63
bipush 127
imul
invokespecial OS/Array.<init>(I)V
putfield AxisGame.map LOS/Array;
iconst_0
istore 1
whileL1:
iload 1
bipush 63
bipush 127
imul
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
aload 0
getfield AxisGame.map LOS/Array;
iload 1
iconst_0
invokevirtual OS/Array.set(II)V
iload 1
iconst_1
iadd
istore 1
goto whileL1
whileL0:
aload 0
bipush 30
bipush 15
bipush 8
bipush 20
invokevirtual AxisGame.generateObstacle(IIII)V
aload 0
bipush 91
bipush 42
bipush 13
bipush 8
invokevirtual AxisGame.generateObstacle(IIII)V
aload 0
new Player
dup
iconst_5
bipush 18
aload 0
getfield AxisGame.map LOS/Array;
invokespecial Player.<init>(IILOS/Array;)V
putfield AxisGame.player1 LPlayer;
aload 0
new Player
dup
bipush 120
bipush 29
aload 0
getfield AxisGame.map LOS/Array;
invokespecial Player.<init>(IILOS/Array;)V
putfield AxisGame.player2 LPlayer;
aload 0
iconst_0
putfield AxisGame.currentPlayer Z
aload 0
iconst_1
ineg
putfield AxisGame.winner I
aload 0
invokevirtual AxisGame.drawmap()V
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
getfield AxisGame.player1 LPlayer;
invokevirtual Player.dispose()V
aload 0
getfield AxisGame.player2 LPlayer;
invokevirtual Player.dispose()V
aload 0
getfield AxisGame.map LOS/Array;
invokevirtual OS/Array.dispose()V
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
.method public drawmap()V
.limit stack 10
.limit locals 3
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 2
whileL3:
iload 2
bipush 127
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq whileL2
iconst_0
istore 1
whileL5:
iload 1
bipush 63
if_icmpge jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq whileL4
aload 0
getfield AxisGame.map LOS/Array;
iload 2
iload 1
bipush 127
imul
iadd
invokevirtual OS/Array.get(I)I
invokestatic OS/Screen.setColor(Z)V
iconst_4
iload 2
imul
iconst_4
iload 1
imul
iconst_4
iload 2
iconst_1
iadd
imul
iconst_4
iload 1
iconst_1
iadd
imul
invokestatic OS/Screen.drawRectangle(IIII)V
iload 1
iconst_1
iadd
istore 1
goto whileL5
whileL4:
iload 2
iconst_1
iadd
istore 2
goto whileL3
whileL2:
return
.end method
.method public drawFunction(LOS/String;)Z
.limit stack 30
.limit locals 20
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 4
iconst_0
istore 5
iconst_0
istore 6
iconst_0
istore 7
iconst_0
istore 8
iconst_0
istore 9
iconst_0
istore 10
iconst_0
istore 11
iconst_0
istore 12
iconst_0
istore 13
iconst_0
istore 14
iconst_0
istore 15
iconst_0
istore 16
iconst_0
istore 17
iconst_0
istore 18
iconst_0
istore 19
iconst_1
istore 5
iconst_1
istore 6
iconst_1
istore 7
iconst_1
istore 9
iconst_1
istore 11
iconst_1
istore 13
iconst_0
istore 15
whileL7:
iload 15
aload 1
invokevirtual OS/String.length()I
if_icmpge jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq whileL6
aload 1
iload 15
invokestatic MathTools.strToInt(LOS/String;I)I
istore 12
iload 15
iload 12
invokestatic MathTools.lengthOf(I)I
iadd
istore 15
iload 15
aload 1
invokevirtual OS/String.length()I
if_icmpge jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq ifL8
new OS/String
dup
bipush 33
invokespecial OS/String.<init>(I)V
bipush 85
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 120
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 44
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 40
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 40
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 40
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iload 15
invokestatic OS/Output.printInt(I)V
iconst_0
ireturn
ifL8:
ifL9:
aload 1
iload 15
invokevirtual OS/String.charAt(I)C
bipush 47
if_icmpne jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq ifL10
iload 15
iconst_1
iadd
istore 15
aload 1
iload 15
invokestatic MathTools.strToInt(LOS/String;I)I
istore 13
iload 15
iload 13
invokestatic MathTools.lengthOf(I)I
iadd
istore 15
iload 13
iconst_0
if_icmpne jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
ifeq ifL12
invokestatic MathTools.breakMath()V
aload 0
invokevirtual AxisGame.drawmap()V
iconst_0
ireturn
ifL12:
ifL13:
ifL10:
ifL11:
iload 15
aload 1
invokevirtual OS/String.length()I
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
ifeq ifL14
new OS/String
dup
bipush 32
invokespecial OS/String.<init>(I)V
bipush 85
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 120
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 44
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 40
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 40
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iload 15
invokestatic OS/Output.printInt(I)V
iconst_0
ireturn
ifL14:
ifL15:
aload 1
iload 15
invokevirtual OS/String.charAt(I)C
bipush 88
if_icmpne jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
ifeq ifL16
iload 15
iconst_1
iadd
istore 15
aload 1
iload 15
invokestatic MathTools.strToInt(LOS/String;I)I
istore 14
iload 14
iconst_3
if_icmpne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ifeq ifL18
iload 12
istore 2
iload 13
istore 5
goto ifL19
ifL18:
iload 14
iconst_2
if_icmpne jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ifeq ifL20
iload 12
istore 3
iload 13
istore 6
goto ifL21
ifL20:
iload 14
iconst_1
if_icmpne jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
ifeq ifL22
iload 12
istore 4
iload 13
istore 7
goto ifL23
ifL22:
new OS/String
dup
bipush 26
invokespecial OS/String.<init>(I)V
bipush 85
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 119
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 44
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 40
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iload 14
invokestatic OS/Output.printInt(I)V
iconst_0
ireturn
ifL23:
ifL21:
ifL19:
iconst_1
istore 13
iload 15
iload 14
invokestatic MathTools.lengthOf(I)I
iadd
istore 15
goto ifL17
ifL16:
aload 1
iload 15
invokevirtual OS/String.charAt(I)C
bipush 83
if_icmpne jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
ifeq ifL24
iload 15
iconst_1
iadd
istore 15
aload 1
iload 15
invokestatic MathTools.strToInt(LOS/String;I)I
istore 10
iload 15
iload 10
invokestatic MathTools.lengthOf(I)I
iadd
istore 15
iconst_1
istore 11
iload 15
aload 1
invokevirtual OS/String.length()I
if_icmpge jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
ifeq ifL26
aload 1
iload 15
invokevirtual OS/String.charAt(I)C
bipush 47
if_icmpne jump32
iconst_1
goto jump33
jump32:
iconst_0
jump33:
ifeq ifL28
iload 15
iconst_1
iadd
istore 15
aload 1
iload 15
invokestatic MathTools.strToInt(LOS/String;I)I
istore 11
iload 15
iload 11
invokestatic MathTools.lengthOf(I)I
iadd
istore 15
iload 11
iconst_0
if_icmpne jump34
iconst_1
goto jump35
jump34:
iconst_0
jump35:
ifeq ifL30
invokestatic MathTools.breakMath()V
aload 0
invokevirtual AxisGame.drawmap()V
iconst_0
ireturn
ifL30:
ifL31:
ifL28:
ifL29:
ifL26:
ifL27:
iload 12
istore 8
iload 13
istore 9
iconst_1
istore 13
goto ifL25
ifL24:
new OS/String
dup
bipush 31
invokespecial OS/String.<init>(I)V
bipush 85
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 120
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 44
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 40
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iload 15
invokestatic OS/Output.printInt(I)V
aload 1
iload 15
invokevirtual OS/String.charAt(I)C
invokestatic OS/Output.printChar(C)V
iconst_0
ireturn
ifL25:
ifL17:
iload 15
iconst_1
iadd
istore 15
goto whileL7
whileL6:
aload 0
getfield AxisGame.currentPlayer Z
ifne jump36
iconst_1
goto jump37
jump36:
iconst_0
jump37:
ifeq ifL32
aload 0
getfield AxisGame.player1 LPlayer;
invokevirtual Player.getX()I
istore 16
aload 0
getfield AxisGame.player1 LPlayer;
invokevirtual Player.getY()I
istore 17
goto ifL33
ifL32:
aload 0
getfield AxisGame.player2 LPlayer;
invokevirtual Player.getX()I
istore 16
aload 0
getfield AxisGame.player2 LPlayer;
invokevirtual Player.getY()I
istore 17
ifL33:
invokestatic OS/Output.println()V
iload 2
invokestatic OS/Output.printInt(I)V
new OS/String
dup
iconst_2
invokespecial OS/String.<init>(I)V
bipush 47
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iload 5
invokestatic OS/Output.printInt(I)V
new OS/String
dup
iconst_5
invokespecial OS/String.<init>(I)V
bipush 120
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 94
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 51
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 43
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iload 3
invokestatic OS/Output.printInt(I)V
new OS/String
dup
iconst_2
invokespecial OS/String.<init>(I)V
bipush 47
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iload 6
invokestatic OS/Output.printInt(I)V
new OS/String
dup
iconst_5
invokespecial OS/String.<init>(I)V
bipush 120
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 94
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 50
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 43
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iload 4
invokestatic OS/Output.printInt(I)V
new OS/String
dup
iconst_2
invokespecial OS/String.<init>(I)V
bipush 47
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iload 7
invokestatic OS/Output.printInt(I)V
new OS/String
dup
iconst_3
invokespecial OS/String.<init>(I)V
bipush 120
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 43
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iload 8
invokestatic OS/Output.printInt(I)V
new OS/String
dup
iconst_2
invokespecial OS/String.<init>(I)V
bipush 47
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iload 9
invokestatic OS/Output.printInt(I)V
new OS/String
dup
iconst_5
invokespecial OS/String.<init>(I)V
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 40
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iload 10
invokestatic OS/Output.printInt(I)V
new OS/String
dup
iconst_2
invokespecial OS/String.<init>(I)V
bipush 47
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iload 11
invokestatic OS/Output.printInt(I)V
new OS/String
dup
iconst_3
invokespecial OS/String.<init>(I)V
bipush 120
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 41
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iconst_0
istore 15
whileL35:
iload 15
bipush 127
if_icmpge jump38
iconst_1
goto jump39
jump38:
iconst_0
jump39:
ifeq whileL34
iload 15
iload 16
iadd
invokestatic Player.getLength()I
iadd
istore 18
iload 17
bipush 10
iload 2
imul
iload 15
imul
iload 5
idiv
bipush 10
idiv
iload 15
imul
bipush 10
idiv
iload 15
imul
bipush 10
idiv
bipush 10
iload 3
imul
iload 15
imul
iload 6
idiv
bipush 10
idiv
iload 15
imul
bipush 10
idiv
iadd
bipush 10
iload 4
imul
iload 15
imul
iload 7
idiv
bipush 10
idiv
iadd
iload 8
iload 10
iload 15
imul
iload 11
invokestatic MathTools.sin10(II)I
imul
iload 9
idiv
iadd
isub
istore 19
aload 0
iload 18
iload 19
invokevirtual AxisGame.drawPointIfFree(II)Z
ifne jump40
iconst_1
goto jump41
jump40:
iconst_0
jump41:
ifeq ifL36
aload 0
iload 18
iload 19
invokevirtual AxisGame.destroy(II)V
aload 0
getfield AxisGame.currentPlayer Z
ifne jump42
iconst_1
goto jump43
jump42:
iconst_0
jump43:
ifeq ifL38
aload 0
getfield AxisGame.player2 LPlayer;
iload 18
iload 19
invokevirtual Player.collides(II)Z
ifeq ifL40
aload 0
iconst_1
putfield AxisGame.winner I
goto ifL41
ifL40:
ifL41:
goto ifL39
ifL38:
aload 0
getfield AxisGame.player1 LPlayer;
iload 18
iload 19
invokevirtual Player.collides(II)Z
ifeq ifL42
aload 0
iconst_2
putfield AxisGame.winner I
goto ifL43
ifL42:
ifL43:
ifL39:
iconst_1
ireturn
ifL36:
ifL37:
iload 15
iconst_1
iadd
istore 15
bipush 50
invokestatic OS/Sys.wait(I)V
goto whileL35
whileL34:
sipush 500
invokestatic OS/Sys.wait(I)V
iconst_1
ireturn
.end method
.method public drawPointIfFree(II)Z
.limit stack 10
.limit locals 3
iload 2
bipush 63
if_icmpge jump44
iconst_1
goto jump45
jump44:
iconst_0
jump45:
iload 2
iconst_0
if_icmple jump46
iconst_1
goto jump47
jump46:
iconst_0
jump47:
iand
ifeq ifL44
iload 1
bipush 127
if_icmpge jump48
iconst_1
goto jump49
jump48:
iconst_0
jump49:
iload 1
iconst_0
if_icmple jump50
iconst_1
goto jump51
jump50:
iconst_0
jump51:
iand
ifeq ifL46
aload 0
getfield AxisGame.map LOS/Array;
iload 1
bipush 127
iload 2
imul
iadd
invokevirtual OS/Array.get(I)I
ifne jump52
iconst_1
goto jump53
jump52:
iconst_0
jump53:
ifeq ifL48
iconst_1
invokestatic OS/Screen.setColor(Z)V
iconst_4
iload 1
imul
iconst_4
iload 2
imul
iconst_4
iload 1
iconst_1
iadd
imul
iconst_4
iload 2
iconst_1
iadd
imul
invokestatic OS/Screen.drawRectangle(IIII)V
iconst_1
ireturn
ifL48:
iconst_0
ireturn
ifL49:
ifL46:
iconst_0
ireturn
ifL47:
ifL44:
ifL45:
iload 2
bipush 63
bipush 50
iadd
if_icmpge jump54
iconst_1
goto jump55
jump54:
iconst_0
jump55:
iload 2
iconst_0
bipush 50
isub
if_icmple jump56
iconst_1
goto jump57
jump56:
iconst_0
jump57:
iand
ireturn
.end method
.method public destroy(II)V
.limit stack 10
.limit locals 3
iload 2
bipush 63
if_icmpge jump58
iconst_1
goto jump59
jump58:
iconst_0
jump59:
iload 2
iconst_0
if_icmple jump60
iconst_1
goto jump61
jump60:
iconst_0
jump61:
iand
iload 1
bipush 127
if_icmpge jump62
iconst_1
goto jump63
jump62:
iconst_0
jump63:
iand
iload 1
iconst_0
if_icmple jump64
iconst_1
goto jump65
jump64:
iconst_0
jump65:
iand
ifeq ifL50
iconst_0
invokestatic OS/Screen.setColor(Z)V
aload 0
getfield AxisGame.map LOS/Array;
iload 1
bipush 127
iload 2
imul
iadd
iconst_0
invokevirtual OS/Array.set(II)V
goto ifL51
ifL50:
ifL51:
return
.end method
.method public turn()V
.limit stack 10
.limit locals 4
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 3
aload 0
aload 0
getfield AxisGame.currentPlayer Z
ifne jump66
iconst_1
goto jump67
jump66:
iconst_0
jump67:
putfield AxisGame.currentPlayer Z
iconst_0
istore 1
whileL53:
iload 1
bipush 127
iconst_2
idiv
if_icmpge jump68
iconst_1
goto jump69
jump68:
iconst_0
jump69:
ifeq whileL52
iconst_0
istore 2
whileL55:
iload 2
bipush 63
if_icmpge jump70
iconst_1
goto jump71
jump70:
iconst_0
jump71:
ifeq whileL54
aload 0
getfield AxisGame.map LOS/Array;
iload 1
bipush 127
iload 2
imul
iadd
invokevirtual OS/Array.get(I)I
istore 3
aload 0
getfield AxisGame.map LOS/Array;
iload 1
bipush 127
iload 2
imul
iadd
aload 0
getfield AxisGame.map LOS/Array;
bipush 127
iload 1
isub
iconst_1
isub
bipush 127
iload 2
imul
iadd
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.set(II)V
aload 0
getfield AxisGame.map LOS/Array;
bipush 127
iload 1
isub
iconst_1
isub
bipush 127
iload 2
imul
iadd
iload 3
invokevirtual OS/Array.set(II)V
iload 2
iconst_1
iadd
istore 2
goto whileL55
whileL54:
iload 1
iconst_1
iadd
istore 1
goto whileL53
whileL52:
aload 0
getfield AxisGame.player1 LPlayer;
bipush 127
invokevirtual Player.turn(I)V
aload 0
getfield AxisGame.player2 LPlayer;
bipush 127
invokevirtual Player.turn(I)V
return
.end method
.method public run()Z
.limit stack 10
.limit locals 4
iconst_0
istore 1
iconst_0
istore 3
whileL57:
iconst_1
ifeq whileL56
iconst_0
istore 1
whileL59:
iload 1
ifne jump72
iconst_1
goto jump73
jump72:
iconst_0
jump73:
ifeq whileL58
iconst_0
iconst_0
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 7
invokespecial OS/String.<init>(I)V
bipush 102
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 40
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 120
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 41
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Keyboard.readLine(LOS/String;)LOS/String;
astore 2
aload 0
aload 2
invokevirtual AxisGame.drawFunction(LOS/String;)Z
istore 1
goto whileL59
whileL58:
aload 0
getfield AxisGame.winner I
iconst_1
ineg
if_icmpne jump74
iconst_1
goto jump75
jump74:
iconst_0
jump75:
ifne jump76
iconst_1
goto jump77
jump76:
iconst_0
jump77:
ifeq ifL60
invokestatic OS/Output.println()V
invokestatic OS/Output.println()V
new OS/String
dup
bipush 21
invokespecial OS/String.<init>(I)V
bipush 84
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 119
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
aload 0
getfield AxisGame.winner I
invokestatic OS/Output.printInt(I)V
new OS/String
dup
iconst_2
invokespecial OS/String.<init>(I)V
bipush 46
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
invokestatic OS/Output.println()V
invokestatic OS/Output.println()V
new OS/String
dup
bipush 42
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
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 107
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
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
bipush 44
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 69
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 83
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 67
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 120
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 46
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
invokestatic OS/Keyboard.readChar()C
istore 3
iload 3
sipush 140
if_icmpne jump78
iconst_1
goto jump79
jump78:
iconst_0
jump79:
ifne jump80
iconst_1
goto jump81
jump80:
iconst_0
jump81:
ireturn
ifL60:
ifL61:
aload 0
invokevirtual AxisGame.drawmap()V
aload 0
invokevirtual AxisGame.turn()V
aload 0
invokevirtual AxisGame.drawmap()V
goto whileL57
whileL56:
iconst_0
ireturn
.end method
.method public generateObstacle(IIII)V
.limit stack 20
.limit locals 11
iconst_0
istore 5
iconst_0
istore 6
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 4
iload 1
istore 6
whileL63:
iload 6
iload 1
iload 3
iadd
if_icmpge jump82
iconst_1
goto jump83
jump82:
iconst_0
jump83:
ifeq whileL62
iload 2
istore 5
whileL65:
iload 5
iload 2
iload 4
iadd
if_icmpge jump84
iconst_1
goto jump85
jump84:
iconst_0
jump85:
ifeq whileL64
aload 0
getfield AxisGame.map LOS/Array;
iload 6
iload 5
bipush 127
imul
iadd
iconst_1
invokevirtual OS/Array.set(II)V
iload 5
iconst_1
iadd
istore 5
goto whileL65
whileL64:
iload 6
iconst_1
iadd
istore 6
goto whileL63
whileL62:
return
.end method
