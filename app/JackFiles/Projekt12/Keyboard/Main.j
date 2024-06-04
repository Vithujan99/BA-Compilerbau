.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 6
new OS/Output
dup
invokespecial OS/Output.<init>()V
pop
new OS/Screen
dup
invokespecial OS/Screen.<init>()V
pop
new OS/Memory
dup
invokespecial OS/Memory.<init>()V
pop
new OS/Math
dup
invokespecial OS/Math.<init>()V
pop
new OS/Keyboard
dup
invokespecial OS/Keyboard.<init>()V
pop
iconst_0
istore 1
iconst_0
istore 5
new OS/String
dup
bipush 17
invokespecial OS/String.<init>(I)V
bipush 107
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
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
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
invokestatic OS/Output.println()V
whileL1:
iload 5
ifne jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
new OS/String
dup
bipush 33
invokespecial OS/String.<init>(I)V
bipush 80
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
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
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 39
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 80
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 68
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 119
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 39
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
invokestatic OS/Output.printString(LOS/String;)V
whileL3:
iload 1
iconst_0
if_icmpne jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq whileL2
invokestatic OS/Keyboard.keyPressed()C
istore 1
goto whileL3
whileL2:
iload 1
istore 2
whileL5:
iload 1
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
invokestatic OS/Keyboard.keyPressed()C
istore 1
goto whileL5
whileL4:
invokestatic OS/Output.println()V
iload 2
sipush 137
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq ifL6
new OS/String
dup
iconst_3
invokespecial OS/String.<init>(I)V
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 107
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
invokestatic OS/Output.println()V
iconst_1
istore 5
goto ifL7
ifL6:
ifL7:
goto whileL1
whileL0:
iconst_0
istore 5
new OS/String
dup
bipush 15
invokespecial OS/String.<init>(I)V
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 67
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
invokestatic OS/Output.println()V
new OS/String
dup
bipush 60
invokespecial OS/String.<init>(I)V
bipush 40
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 86
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 102
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
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
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
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
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 41
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
invokestatic OS/Output.println()V
whileL9:
iload 5
ifne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq whileL8
new OS/String
dup
bipush 29
invokespecial OS/String.<init>(I)V
bipush 80
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
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
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 98
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 39
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 51
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 39
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
invokestatic OS/Keyboard.readChar()C
istore 2
invokestatic OS/Output.println()V
iload 2
bipush 51
if_icmpne jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq ifL10
new OS/String
dup
iconst_3
invokespecial OS/String.<init>(I)V
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 107
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
invokestatic OS/Output.println()V
iconst_1
istore 5
goto ifL11
ifL10:
ifL11:
goto whileL9
whileL8:
iconst_0
istore 5
new OS/String
dup
bipush 15
invokespecial OS/String.<init>(I)V
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 76
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
invokestatic OS/Output.println()V
new OS/String
dup
bipush 39
invokespecial OS/String.<init>(I)V
bipush 40
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 86
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 102
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 102
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 39
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 98
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 107
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 39
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 41
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
invokestatic OS/Output.println()V
whileL13:
iload 5
ifne jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
ifeq whileL12
new OS/String
dup
bipush 36
invokespecial OS/String.<init>(I)V
bipush 80
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 39
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 74
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 65
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 67
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 75
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 39
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
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
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Keyboard.readLine(LOS/String;)LOS/String;
astore 3
aload 3
invokevirtual OS/String.length()I
iconst_4
if_icmpne jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
ifeq ifL14
aload 3
iconst_0
invokevirtual OS/String.charAt(I)C
bipush 74
if_icmpne jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
aload 3
iconst_1
invokevirtual OS/String.charAt(I)C
bipush 65
if_icmpne jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
iand
aload 3
iconst_2
invokevirtual OS/String.charAt(I)C
bipush 67
if_icmpne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
iand
aload 3
iconst_3
invokevirtual OS/String.charAt(I)C
bipush 75
if_icmpne jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
iand
ifeq ifL16
new OS/String
dup
iconst_3
invokespecial OS/String.<init>(I)V
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 107
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
invokestatic OS/Output.println()V
iconst_1
istore 5
goto ifL17
ifL16:
ifL17:
goto ifL15
ifL14:
ifL15:
goto whileL13
whileL12:
iconst_0
istore 5
new OS/String
dup
bipush 14
invokespecial OS/String.<init>(I)V
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 73
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
invokestatic OS/Output.println()V
new OS/String
dup
bipush 39
invokespecial OS/String.<init>(I)V
bipush 40
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 86
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 102
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 102
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 39
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 98
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 107
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 39
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 41
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
invokestatic OS/Output.println()V
whileL19:
iload 5
ifne jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
ifeq whileL18
new OS/String
dup
bipush 38
invokespecial OS/String.<init>(I)V
bipush 80
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 39
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 51
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 50
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 49
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 50
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 51
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 39
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
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
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Keyboard.readInt(LOS/String;)I
istore 4
iload 4
sipush 32123
ineg
if_icmpne jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
ifeq ifL20
new OS/String
dup
iconst_3
invokespecial OS/String.<init>(I)V
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 107
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
invokestatic OS/Output.println()V
iconst_1
istore 5
goto ifL21
ifL20:
ifL21:
goto whileL19
whileL18:
invokestatic OS/Output.println()V
new OS/String
dup
bipush 28
invokespecial OS/String.<init>(I)V
bipush 84
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 102
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
return
.end method
