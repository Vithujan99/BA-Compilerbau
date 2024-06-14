.class public MathTools
.super java/lang/Object
.method public static lengthOf(I)I
.limit stack 10
.limit locals 2
iconst_0
istore 1
iconst_0
istore 1
iload 0
iconst_0
if_icmpne jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq ifL0
iconst_1
ireturn
ifL0:
ifL1:
iload 0
iconst_0
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq ifL2
iconst_1
istore 1
iload 0
ineg
istore 0
goto ifL3
ifL2:
ifL3:
whileL5:
iload 0
iconst_0
if_icmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq whileL4
iload 0
bipush 10
idiv
istore 0
iload 1
iconst_1
iadd
istore 1
goto whileL5
whileL4:
iload 1
ireturn
.end method
.method public static strToInt(LOS/String;I)I
.limit stack 10
.limit locals 6
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 4
iconst_0
istore 5
iload 1
aload 0
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
ifeq ifL6
iconst_0
ireturn
ifL6:
ifL7:
iload 1
istore 2
iconst_0
istore 3
iconst_0
istore 5
aload 0
iload 1
invokevirtual OS/String.charAt(I)C
bipush 45
if_icmpne jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq ifL8
iconst_1
istore 5
iload 2
iconst_1
iadd
istore 2
goto ifL9
ifL8:
ifL9:
whileL11:
iload 2
aload 0
invokevirtual OS/String.length()I
if_icmpge jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
ifeq whileL10
aload 0
iload 2
invokevirtual OS/String.charAt(I)C
istore 4
iload 4
bipush 47
if_icmple jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
iload 4
bipush 58
if_icmpge jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
iand
ifeq ifL12
iload 3
bipush 10
imul
iload 4
bipush 48
isub
iadd
istore 3
goto ifL13
ifL12:
aload 0
invokevirtual OS/String.length()I
istore 2
ifL13:
iload 2
iconst_1
iadd
istore 2
goto whileL11
whileL10:
iload 5
ifeq ifL14
iload 3
ineg
istore 3
goto ifL15
ifL14:
ifL15:
iload 3
ireturn
.end method
.method public static sin10(II)I
.limit stack 10
.limit locals 2
iload 0
sipush 158
iload 1
imul
bipush 10
idiv
iconst_1
iadd
if_icmpge jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
ifeq ifL16
iload 0
iload 0
iload 0
imul
iload 0
imul
iload 0
iload 0
imul
iload 0
imul
iload 0
imul
iload 0
imul
sipush 2000
idiv
iload 1
idiv
iload 1
idiv
isub
bipush 6
idiv
bipush 10
idiv
bipush 10
idiv
iload 1
idiv
iload 1
idiv
isub
iload 1
idiv
ireturn
ifL16:
ifL17:
iload 0
sipush 315
iload 1
imul
bipush 10
idiv
iconst_1
iadd
if_icmpge jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ifeq ifL18
sipush 315
iload 1
imul
bipush 10
idiv
iload 0
isub
iload 1
invokestatic MathTools.sin10(II)I
ireturn
ifL18:
ifL19:
iload 0
sipush 629
iload 1
imul
bipush 10
idiv
iconst_1
iadd
if_icmpge jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ifeq ifL20
iload 0
sipush 315
iload 1
imul
bipush 10
idiv
isub
iload 1
invokestatic MathTools.sin10(II)I
ineg
ireturn
ifL20:
ifL21:
iload 0
sipush 629
iload 1
imul
bipush 10
idiv
isub
iload 1
invokestatic MathTools.sin10(II)I
ireturn
.end method
.method public static breakMath()V
.limit stack 10
.limit locals 1
iconst_0
istore 0
iconst_0
istore 0
whileL23:
iload 0
bipush 10
if_icmpge jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
ifeq whileL22
iload 0
iconst_2
idiv
iconst_2
imul
iload 0
if_icmpne jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
invokestatic OS/Screen.setColor(Z)V
iconst_1
iconst_1
sipush 511
sipush 255
invokestatic OS/Screen.drawRectangle(IIII)V
iconst_3
iconst_3
invokestatic OS/Output.moveCursor(II)V
iload 0
iconst_2
idiv
iconst_2
imul
iload 0
if_icmpne jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
ifeq ifL24
new OS/String
dup
bipush 61
invokespecial OS/String.<init>(I)V
bipush 75
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 66
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 44
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 119
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 77
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 107
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 118
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 69
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 33
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
goto ifL25
ifL24:
ifL25:
bipush 100
invokestatic OS/Sys.wait(I)V
iload 0
iconst_1
iadd
istore 0
goto whileL23
whileL22:
return
.end method
