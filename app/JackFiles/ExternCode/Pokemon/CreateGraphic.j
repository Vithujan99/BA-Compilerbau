.class public CreateGraphic
.super java/lang/Object
.method public static drawGraphic(IIZI)V
.limit stack 10
.limit locals 5
iconst_0
istore 4
iload 3
bipush 7
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
iload 3
iconst_1
ineg
if_icmple jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
iand
ifeq ifL0
invokestatic Main.getPlayerDirection()I
istore 4
iload 3
iconst_0
if_icmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL2
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
goto ifL3
ifL2:
ifL3:
iload 3
iconst_1
if_icmpne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq ifL4
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
goto ifL5
ifL4:
ifL5:
iload 3
iconst_2
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq ifL6
iload 4
iconst_0
if_icmpne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq ifL8
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iadd
iconst_4
bipush 7
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 8
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 10
iadd
iload 1
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 10
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL9
ifL8:
ifL9:
iload 4
iconst_1
if_icmpne jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq ifL10
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_4
iadd
iload 1
bipush 8
iadd
bipush 6
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iadd
iconst_4
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 10
iadd
iload 1
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 12
iadd
iconst_4
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL11
ifL10:
ifL11:
iload 4
iconst_2
if_icmpne jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
ifeq ifL12
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iadd
iconst_4
bipush 7
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 10
iadd
iload 1
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_4
iadd
iconst_1
bipush 6
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 10
iadd
iconst_3
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL13
ifL12:
ifL13:
iload 4
iconst_3
if_icmpne jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
ifeq ifL14
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_2
iadd
iload 1
bipush 12
iadd
iconst_1
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 8
iadd
bipush 6
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_4
iadd
iconst_5
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iadd
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 10
iadd
iload 1
iconst_2
iadd
iconst_3
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 14
iadd
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 12
iadd
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL15
ifL14:
ifL15:
goto ifL7
ifL6:
ifL7:
iload 3
iconst_3
if_icmpne jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
ifeq ifL16
iload 4
iconst_0
if_icmpne jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
ifeq ifL18
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
iconst_4
bipush 7
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 10
iadd
iconst_1
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 10
iadd
iconst_5
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_4
iadd
iconst_1
bipush 6
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL19
ifL18:
ifL19:
iload 4
iconst_1
if_icmpne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ifeq ifL20
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
iconst_4
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 12
iadd
iconst_2
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 12
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 12
iadd
iconst_4
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 10
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL21
ifL20:
ifL21:
iload 4
iconst_2
if_icmpne jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ifeq ifL22
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
iconst_4
bipush 7
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 8
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 10
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 10
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL23
ifL22:
ifL23:
iload 4
iconst_3
if_icmpne jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
ifeq ifL24
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_3
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_2
iadd
iconst_1
bipush 7
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_4
iadd
iconst_1
bipush 6
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
iconst_3
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 12
iadd
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 14
iadd
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL25
ifL24:
ifL25:
goto ifL17
ifL16:
ifL17:
iload 3
iconst_4
if_icmpne jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
ifeq ifL26
iload 4
iconst_0
if_icmpne jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
ifeq ifL28
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 12
iadd
iload 1
iconst_2
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 8
iadd
iload 1
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_2
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 10
iadd
iconst_2
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
goto ifL29
ifL28:
ifL29:
iload 4
iconst_1
if_icmpne jump32
iconst_1
goto jump33
jump32:
iconst_0
jump33:
ifeq ifL30
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_4
iadd
iload 1
bipush 6
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 10
iadd
iconst_5
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 14
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_4
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_2
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 6
iadd
iconst_2
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 12
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL31
ifL30:
ifL31:
iload 4
iconst_2
if_icmpne jump34
iconst_1
goto jump35
jump34:
iconst_0
jump35:
ifeq ifL32
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 8
iadd
iload 1
iconst_4
bipush 6
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 12
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 6
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_2
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_4
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 10
iadd
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 14
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL33
ifL32:
ifL33:
iload 4
iconst_3
if_icmpne jump36
iconst_1
goto jump37
jump36:
iconst_0
jump37:
ifeq ifL34
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_4
iadd
iload 1
bipush 6
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 10
iadd
iconst_5
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 14
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_4
iadd
iload 1
iconst_4
iadd
iconst_2
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_2
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 8
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 12
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL35
ifL34:
ifL35:
goto ifL27
ifL26:
ifL27:
iload 3
iconst_5
if_icmpne jump38
iconst_1
goto jump39
jump38:
iconst_0
jump39:
ifeq ifL36
iload 4
iconst_0
if_icmpne jump40
iconst_1
goto jump41
jump40:
iconst_0
jump41:
ifeq ifL38
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_4
bipush 6
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 12
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 14
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 10
iadd
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_4
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_2
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
goto ifL39
ifL38:
ifL39:
iload 4
iconst_1
if_icmpne jump42
iconst_1
goto jump43
jump42:
iconst_0
jump43:
ifeq ifL40
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 6
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 10
iadd
iconst_4
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_2
iadd
iload 1
bipush 14
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_4
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 10
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 10
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
iconst_2
iadd
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 8
iadd
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
goto ifL41
ifL40:
ifL41:
iload 4
iconst_2
if_icmpne jump44
iconst_1
goto jump45
jump44:
iconst_0
jump45:
ifeq ifL42
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_4
iadd
iconst_2
bipush 6
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_2
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 10
iadd
iconst_2
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
goto ifL43
ifL42:
ifL43:
iload 4
iconst_3
if_icmpne jump46
iconst_1
goto jump47
jump46:
iconst_0
jump47:
ifeq ifL44
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_5
bipush 7
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 14
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_1
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_2
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_4
iadd
iconst_2
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 10
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 8
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 12
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
goto ifL45
ifL44:
ifL45:
goto ifL37
ifL36:
ifL37:
iload 3
bipush 6
if_icmpne jump48
iconst_1
goto jump49
jump48:
iconst_0
jump49:
ifeq ifL46
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
invokestatic CreateGraphic.drawPoint(II)V
iload 0
iconst_2
iadd
iload 1
iconst_2
iadd
invokestatic CreateGraphic.drawPoint(II)V
iload 0
iconst_4
iadd
iload 1
iconst_4
iadd
invokestatic CreateGraphic.drawPoint(II)V
iload 0
bipush 6
iadd
iload 1
bipush 6
iadd
invokestatic CreateGraphic.drawPoint(II)V
iload 0
bipush 8
iadd
iload 1
bipush 8
iadd
invokestatic CreateGraphic.drawPoint(II)V
iload 0
bipush 10
iadd
iload 1
bipush 10
iadd
invokestatic CreateGraphic.drawPoint(II)V
iload 0
bipush 12
iadd
iload 1
bipush 12
iadd
invokestatic CreateGraphic.drawPoint(II)V
iload 0
bipush 14
iadd
iload 1
bipush 14
iadd
invokestatic CreateGraphic.drawPoint(II)V
iload 0
iload 1
bipush 12
iadd
invokestatic CreateGraphic.drawPoint(II)V
iload 0
iconst_2
iadd
iload 1
bipush 10
iadd
invokestatic CreateGraphic.drawPoint(II)V
iload 0
iconst_4
iadd
iload 1
bipush 8
iadd
invokestatic CreateGraphic.drawPoint(II)V
goto ifL47
ifL46:
ifL47:
goto ifL1
ifL0:
ifL1:
iload 3
bipush 6
if_icmple jump50
iconst_1
goto jump51
jump50:
iconst_0
jump51:
iload 3
bipush 20
if_icmpge jump52
iconst_1
goto jump53
jump52:
iconst_0
jump53:
iand
ifeq ifL48
iload 3
bipush 7
if_icmpne jump54
iconst_1
goto jump55
jump54:
iconst_0
jump55:
ifeq ifL50
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 8
iadd
iload 1
bipush 12
iadd
iconst_4
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 14
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 10
iadd
iconst_5
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_4
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 6
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 8
iadd
invokestatic CreateGraphic.drawPoint(II)V
iload 0
iconst_4
iadd
iload 1
bipush 6
iadd
invokestatic CreateGraphic.drawPoint(II)V
iload 0
iload 1
bipush 12
iadd
invokestatic CreateGraphic.drawPoint(II)V
iload 0
iconst_4
iadd
iload 1
bipush 12
iadd
invokestatic CreateGraphic.drawPoint(II)V
iload 0
iload 1
bipush 8
iadd
invokestatic CreateGraphic.drawPoint(II)V
iload 0
bipush 6
iadd
iload 1
bipush 8
iadd
invokestatic CreateGraphic.drawPoint(II)V
iload 0
iconst_4
iadd
iload 1
iconst_2
iadd
invokestatic CreateGraphic.drawPoint(II)V
goto ifL51
ifL50:
ifL51:
iload 3
bipush 8
if_icmpne jump56
iconst_1
goto jump57
jump56:
iconst_0
jump57:
ifeq ifL52
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 6
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 14
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 8
iadd
iconst_4
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_4
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_3
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 6
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL53
ifL52:
ifL53:
iload 3
bipush 9
if_icmpne jump58
iconst_1
goto jump59
jump58:
iconst_0
jump59:
ifeq ifL54
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_5
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_2
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_4
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
iconst_4
iadd
iconst_5
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 8
iadd
iconst_1
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_2
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
goto ifL55
ifL54:
ifL55:
iload 3
bipush 10
if_icmpne jump60
iconst_1
goto jump61
jump60:
iconst_0
jump61:
ifeq ifL56
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_2
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_4
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL57
ifL56:
ifL57:
iload 3
bipush 11
if_icmpne jump62
iconst_1
goto jump63
jump62:
iconst_0
jump63:
ifeq ifL58
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_4
iadd
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 6
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 8
iadd
iconst_4
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 14
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL59
ifL58:
ifL59:
iload 3
bipush 12
if_icmpne jump64
iconst_1
goto jump65
jump64:
iconst_0
jump65:
ifeq ifL60
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_2
iadd
iload 1
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_2
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 6
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 12
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 8
iadd
iconst_2
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL61
ifL60:
ifL61:
iload 3
bipush 13
if_icmpne jump66
iconst_1
goto jump67
jump66:
iconst_0
jump67:
ifeq ifL62
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_4
iadd
iload 1
iconst_1
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 14
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 8
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_2
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL63
ifL62:
ifL63:
iload 3
bipush 14
if_icmpne jump68
iconst_1
goto jump69
jump68:
iconst_0
jump69:
ifeq ifL64
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_2
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 6
iadd
iconst_3
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_1
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
goto ifL65
ifL64:
ifL65:
iload 3
bipush 15
if_icmpne jump70
iconst_1
goto jump71
jump70:
iconst_0
jump71:
ifeq ifL66
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 8
iadd
bipush 8
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL67
ifL66:
ifL67:
iload 3
bipush 16
if_icmpne jump72
iconst_1
goto jump73
jump72:
iconst_0
jump73:
ifeq ifL68
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 6
iadd
iload 1
bipush 14
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 12
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL69
ifL68:
ifL69:
iload 3
bipush 17
if_icmpne jump74
iconst_1
goto jump75
jump74:
iconst_0
jump75:
ifeq ifL70
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 10
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 8
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 6
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_4
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL71
ifL70:
ifL71:
iload 3
bipush 18
if_icmpne jump76
iconst_1
goto jump77
jump76:
iconst_0
jump77:
ifeq ifL72
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 8
iadd
iload 1
bipush 6
iadd
iconst_2
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_2
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL73
ifL72:
ifL73:
iload 3
bipush 19
if_icmpne jump78
iconst_1
goto jump79
jump78:
iconst_0
jump79:
ifeq ifL74
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
iconst_2
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 12
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
goto ifL75
ifL74:
ifL75:
goto ifL49
ifL48:
ifL49:
iload 3
bipush 19
if_icmple jump80
iconst_1
goto jump81
jump80:
iconst_0
jump81:
iload 3
ior
bipush 34
if_icmpge jump82
iconst_1
goto jump83
jump82:
iconst_0
jump83:
ifeq ifL76
iload 3
bipush 20
if_icmpne jump84
iconst_1
goto jump85
jump84:
iconst_0
jump85:
ifeq ifL78
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_2
iadd
iload 1
iconst_2
iadd
bipush 7
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 14
iadd
bipush 6
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 12
iadd
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL79
ifL78:
ifL79:
iload 3
bipush 21
if_icmpne jump86
iconst_1
goto jump87
jump86:
iconst_0
jump87:
ifeq ifL80
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
bipush 7
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 14
iadd
bipush 6
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 12
iadd
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL81
ifL80:
ifL81:
iload 3
bipush 22
if_icmpne jump88
iconst_1
goto jump89
jump88:
iconst_0
jump89:
ifeq ifL82
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_1
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
goto ifL83
ifL82:
ifL83:
iload 3
bipush 23
if_icmpne jump90
iconst_1
goto jump91
jump90:
iconst_0
jump91:
ifeq ifL84
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 14
iadd
iload 1
iconst_1
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
goto ifL85
ifL84:
ifL85:
iload 3
bipush 24
if_icmpne jump92
iconst_1
goto jump93
jump92:
iconst_0
jump93:
ifeq ifL86
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_2
iadd
iload 1
iconst_2
iadd
bipush 7
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
goto ifL87
ifL86:
ifL87:
iload 3
bipush 25
if_icmpne jump94
iconst_1
goto jump95
jump94:
iconst_0
jump95:
ifeq ifL88
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
bipush 7
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
goto ifL89
ifL88:
ifL89:
iload 3
bipush 26
if_icmpne jump96
iconst_1
goto jump97
jump96:
iconst_0
jump97:
ifeq ifL90
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_1
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 6
iadd
bipush 7
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 12
iadd
iconst_4
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
goto ifL91
ifL90:
ifL91:
iload 3
bipush 27
if_icmpne jump98
iconst_1
goto jump99
jump98:
iconst_0
jump99:
ifeq ifL92
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 6
iadd
bipush 7
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
goto ifL93
ifL92:
ifL93:
iload 3
bipush 28
if_icmpne jump100
iconst_1
goto jump101
jump100:
iconst_0
jump101:
ifeq ifL94
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_2
iadd
iload 1
iconst_1
bipush 7
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 12
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 12
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL95
ifL94:
ifL95:
iload 3
bipush 29
if_icmpne jump102
iconst_1
goto jump103
jump102:
iconst_0
jump103:
ifeq ifL96
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 14
iadd
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 12
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 12
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_1
bipush 6
invokestatic CreateGraphic.Rect(IIII)V
goto ifL97
ifL96:
ifL97:
iload 3
bipush 30
if_icmpne jump104
iconst_1
goto jump105
jump104:
iconst_0
jump105:
ifeq ifL98
iload 0
iload 1
iload 2
bipush 6
invokestatic CreateGraphic.drawGraphic(IIZI)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_2
iadd
iload 1
iconst_2
iadd
bipush 7
bipush 7
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 6
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_4
iadd
iload 1
iconst_2
iadd
bipush 6
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 8
iadd
bipush 6
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
goto ifL99
ifL98:
ifL99:
iload 3
bipush 31
if_icmpne jump106
iconst_1
goto jump107
jump106:
iconst_0
jump107:
ifeq ifL100
iload 0
iload 1
iload 2
bipush 6
invokestatic CreateGraphic.drawGraphic(IIZI)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_2
iadd
iconst_1
bipush 7
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
iconst_1
bipush 7
invokestatic CreateGraphic.Rect(IIII)V
goto ifL101
ifL100:
ifL101:
iload 3
bipush 32
if_icmpne jump108
iconst_1
goto jump109
jump108:
iconst_0
jump109:
ifeq ifL102
iload 0
iload 1
iload 2
bipush 6
invokestatic CreateGraphic.drawGraphic(IIZI)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_4
iadd
iload 1
iconst_2
iadd
bipush 6
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 8
iadd
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_4
iadd
iload 1
bipush 6
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL103
ifL102:
ifL103:
iload 3
bipush 33
if_icmpne jump110
iconst_1
goto jump111
jump110:
iconst_0
jump111:
ifeq ifL104
iload 0
iload 1
iload 2
bipush 6
invokestatic CreateGraphic.drawGraphic(IIZI)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_2
iadd
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 6
iadd
iconst_1
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 14
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 8
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 12
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 8
iadd
iconst_3
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 6
iadd
iconst_3
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_4
iadd
iconst_4
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iadd
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL105
ifL104:
ifL105:
goto ifL77
ifL76:
ifL77:
iload 3
bipush 33
if_icmple jump112
iconst_1
goto jump113
jump112:
iconst_0
jump113:
iload 3
bipush 47
if_icmpge jump114
iconst_1
goto jump115
jump114:
iconst_0
jump115:
iand
ifeq ifL106
iload 3
bipush 34
if_icmpne jump116
iconst_1
goto jump117
jump116:
iconst_0
jump117:
ifeq ifL108
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_2
iadd
bipush 7
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_4
iadd
iconst_1
bipush 6
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 14
iadd
bipush 6
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 6
iadd
iconst_5
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
goto ifL109
ifL108:
ifL109:
iload 3
bipush 35
if_icmpne jump118
iconst_1
goto jump119
jump118:
iconst_0
jump119:
ifeq ifL110
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 14
iadd
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_2
iadd
bipush 7
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_4
iadd
iconst_1
bipush 6
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 14
iadd
bipush 6
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 6
iadd
iconst_5
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
goto ifL111
ifL110:
ifL111:
iload 3
bipush 36
if_icmpne jump120
iconst_1
goto jump121
jump120:
iconst_0
jump121:
ifeq ifL112
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_2
iadd
iload 1
iconst_2
iadd
bipush 7
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
goto ifL113
ifL112:
ifL113:
iload 3
bipush 37
if_icmpne jump122
iconst_1
goto jump123
jump122:
iconst_0
jump123:
ifeq ifL114
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
bipush 7
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL115
ifL114:
ifL115:
iload 3
bipush 38
if_icmpne jump124
iconst_1
goto jump125
jump124:
iconst_0
jump125:
ifeq ifL116
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 12
iadd
bipush 8
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
iconst_2
iadd
bipush 6
bipush 7
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_5
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_2
iadd
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 12
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iadd
iconst_4
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_2
iadd
iconst_1
bipush 7
invokestatic CreateGraphic.Rect(IIII)V
goto ifL117
ifL116:
ifL117:
iload 3
bipush 39
if_icmpne jump126
iconst_1
goto jump127
jump126:
iconst_0
jump127:
ifeq ifL118
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_5
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_2
iadd
iconst_1
bipush 7
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 12
iadd
iconst_2
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
iconst_5
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL119
ifL118:
ifL119:
iload 3
bipush 40
if_icmpne jump128
iconst_1
goto jump129
jump128:
iconst_0
jump129:
ifeq ifL120
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_1
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
iconst_1
bipush 6
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 10
iadd
iconst_5
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 6
iadd
iconst_5
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_4
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
goto ifL121
ifL120:
ifL121:
iload 3
bipush 41
if_icmpne jump130
iconst_1
goto jump131
jump130:
iconst_0
jump131:
ifeq ifL122
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_4
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 6
iadd
iconst_5
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 10
iadd
iconst_5
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_1
bipush 6
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_1
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
iconst_1
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
goto ifL123
ifL122:
ifL123:
iload 3
bipush 42
if_icmpne jump132
iconst_1
goto jump133
jump132:
iconst_0
jump133:
ifeq ifL124
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 8
iadd
iconst_4
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL125
ifL124:
ifL125:
iload 3
bipush 43
if_icmpne jump134
iconst_1
goto jump135
jump134:
iconst_0
jump135:
ifeq ifL126
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
iconst_5
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
goto ifL127
ifL126:
ifL127:
iload 3
bipush 44
if_icmpne jump136
iconst_1
goto jump137
jump136:
iconst_0
jump137:
ifeq ifL128
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
iconst_1
bipush 7
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 7
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL129
ifL128:
ifL129:
iload 3
bipush 45
if_icmpne jump138
iconst_1
goto jump139
jump138:
iconst_0
jump139:
ifeq ifL130
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL131
ifL130:
ifL131:
iload 3
bipush 46
if_icmpne jump140
iconst_1
goto jump141
jump140:
iconst_0
jump141:
ifeq ifL132
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 7
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_4
iadd
iconst_2
bipush 6
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL133
ifL132:
ifL133:
goto ifL107
ifL106:
ifL107:
iload 3
bipush 46
if_icmple jump142
iconst_1
goto jump143
jump142:
iconst_0
jump143:
iload 3
bipush 100
if_icmpge jump144
iconst_1
goto jump145
jump144:
iconst_0
jump145:
iand
ifeq ifL134
iload 3
bipush 47
if_icmpne jump146
iconst_1
goto jump147
jump146:
iconst_0
jump147:
ifeq ifL136
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_1
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
goto ifL137
ifL136:
ifL137:
iload 3
bipush 48
if_icmpne jump148
iconst_1
goto jump149
jump148:
iconst_0
jump149:
ifeq ifL138
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_4
iadd
iconst_1
bipush 6
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 14
iadd
bipush 8
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 10
iadd
iconst_2
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 8
iadd
iconst_3
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
goto ifL139
ifL138:
ifL139:
iload 3
bipush 49
if_icmpne jump150
iconst_1
goto jump151
jump150:
iconst_0
jump151:
ifeq ifL140
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 10
iadd
bipush 8
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
goto ifL141
ifL140:
ifL141:
iload 3
bipush 50
if_icmpne jump152
iconst_1
goto jump153
jump152:
iconst_0
jump153:
ifeq ifL142
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 12
iadd
iload 1
iconst_2
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 6
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
goto ifL143
ifL142:
ifL143:
iload 3
bipush 51
if_icmpne jump154
iconst_1
goto jump155
jump154:
iconst_0
jump155:
ifeq ifL144
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 10
iadd
iconst_2
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 14
iadd
bipush 6
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
iconst_4
iadd
iconst_1
bipush 6
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 8
iadd
iconst_3
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
goto ifL145
ifL144:
ifL145:
iload 3
bipush 52
if_icmpne jump156
iconst_1
goto jump157
jump156:
iconst_0
jump157:
ifeq ifL146
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
bipush 8
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 6
iadd
bipush 8
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 10
iadd
bipush 8
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 14
iadd
bipush 8
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_4
iadd
iconst_1
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
goto ifL147
ifL146:
ifL147:
iload 3
bipush 53
if_icmpne jump158
iconst_1
goto jump159
jump158:
iconst_0
jump159:
ifeq ifL148
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
bipush 8
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 6
iadd
bipush 8
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 10
iadd
bipush 8
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 14
iadd
bipush 8
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
goto ifL149
ifL148:
ifL149:
iload 3
bipush 54
if_icmpne jump160
iconst_1
goto jump161
jump160:
iconst_0
jump161:
ifeq ifL150
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
iadd
bipush 8
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_5
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_4
iadd
iconst_5
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL151
ifL150:
ifL151:
iload 3
bipush 55
if_icmpne jump162
iconst_1
goto jump163
jump162:
iconst_0
jump163:
ifeq ifL152
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_5
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_4
iadd
iconst_5
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 8
iadd
bipush 8
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL153
ifL152:
ifL153:
iload 3
bipush 56
if_icmpne jump164
iconst_1
goto jump165
jump164:
iconst_0
jump165:
ifeq ifL154
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_2
iadd
iconst_1
bipush 7
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_2
iadd
iload 1
bipush 7
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL155
ifL154:
ifL155:
iload 3
bipush 57
if_icmpne jump166
iconst_1
goto jump167
jump166:
iconst_0
jump167:
ifeq ifL156
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 7
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_4
iadd
iconst_2
bipush 6
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL157
ifL156:
ifL157:
iload 3
bipush 58
if_icmpne jump168
iconst_1
goto jump169
jump168:
iconst_0
jump169:
ifeq ifL158
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_4
iadd
iload 1
bipush 6
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 14
iadd
bipush 6
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_4
iadd
iconst_2
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
goto ifL159
ifL158:
ifL159:
iload 3
bipush 59
if_icmpne jump170
iconst_1
goto jump171
jump170:
iconst_0
jump171:
ifeq ifL160
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 6
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 14
iadd
bipush 6
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_4
iadd
iconst_2
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_4
iadd
iconst_2
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
goto ifL161
ifL160:
ifL161:
iload 3
bipush 60
if_icmpne jump172
iconst_1
goto jump173
jump172:
iconst_0
jump173:
ifeq ifL162
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 6
iadd
iload 1
bipush 14
iadd
iconst_5
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 10
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_4
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 14
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_5
invokestatic CreateGraphic.Rect(IIII)V
goto ifL163
ifL162:
ifL163:
iload 3
bipush 61
if_icmpne jump174
iconst_1
goto jump175
jump174:
iconst_0
jump175:
ifeq ifL164
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 12
iadd
iconst_3
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 8
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_4
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_3
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 6
iadd
iload 1
iconst_2
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 8
iadd
iconst_3
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 14
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
goto ifL165
ifL164:
ifL165:
iload 3
bipush 62
if_icmpne jump176
iconst_1
goto jump177
jump176:
iconst_0
jump177:
ifeq ifL166
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
bipush 8
iadd
iload 1
iconst_3
iconst_3
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 6
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
bipush 10
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
bipush 8
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
goto ifL167
ifL166:
ifL167:
iload 3
bipush 63
if_icmpne jump178
iconst_1
goto jump179
jump178:
iconst_0
jump179:
ifeq ifL168
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
bipush 8
bipush 8
invokestatic CreateGraphic.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iconst_3
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iload 1
bipush 6
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
iconst_4
iadd
iload 1
iconst_4
iadd
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 8
iadd
iload 1
iconst_2
iadd
iconst_1
iconst_1
invokestatic CreateGraphic.Rect(IIII)V
iload 0
bipush 12
iadd
iload 1
iconst_1
iconst_2
invokestatic CreateGraphic.Rect(IIII)V
goto ifL169
ifL168:
ifL169:
goto ifL135
ifL134:
ifL135:
return
.end method
.method public static Rect(IIII)V
.limit stack 10
.limit locals 4
iload 2
iconst_2
imul
iconst_1
isub
istore 2
iload 3
iconst_2
imul
iconst_1
isub
istore 3
iload 2
iconst_1
if_icmpge jump180
iconst_1
goto jump181
jump180:
iconst_0
jump181:
ifeq ifL170
iconst_1
istore 2
goto ifL171
ifL170:
ifL171:
iload 3
iconst_1
if_icmpge jump182
iconst_1
goto jump183
jump182:
iconst_0
jump183:
ifeq ifL172
iconst_1
istore 3
goto ifL173
ifL172:
ifL173:
iload 0
iload 1
iload 0
iload 2
iadd
iload 1
iload 3
iadd
invokestatic Tile.Rect(IIII)V
return
.end method
.method public static drawPoint(II)V
.limit stack 10
.limit locals 2
iload 0
iload 1
iload 0
iconst_1
iadd
iload 1
iconst_1
iadd
invokestatic Tile.Rect(IIII)V
return
.end method
.method public static drawAllGraphics()V
.limit stack 10
.limit locals 2
iconst_0
istore 0
iconst_0
istore 1
iconst_0
istore 0
iconst_0
istore 1
whileL175:
iload 1
sipush 255
if_icmpge jump184
iconst_1
goto jump185
jump184:
iconst_0
jump185:
ifeq whileL174
whileL177:
iload 0
sipush 511
if_icmpge jump186
iconst_1
goto jump187
jump186:
iconst_0
jump187:
ifeq whileL176
iload 0
iload 1
iconst_0
iload 1
bipush 16
idiv
bipush 32
imul
iload 0
bipush 16
idiv
iadd
invokestatic CreateGraphic.drawGraphic(IIZI)V
iload 0
bipush 16
iadd
istore 0
goto whileL177
whileL176:
iconst_0
istore 0
iload 1
bipush 16
iadd
istore 1
goto whileL175
whileL174:
return
.end method
