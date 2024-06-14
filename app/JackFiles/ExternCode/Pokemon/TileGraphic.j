.class public TileGraphic
.super java/lang/Object
.method public static drawGraphic(IIZI)V
.limit stack 10
.limit locals 8
iconst_0
istore 4
iconst_0
istore 5
iconst_0
istore 6
iconst_0
istore 7
iconst_0
istore 4
iconst_0
istore 5
iconst_0
istore 6
iconst_0
istore 7
iload 3
iconst_0
if_icmple jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
iload 3
bipush 6
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
iand
ifeq ifL0
iload 3
iconst_1
if_icmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL2
iconst_1
istore 4
iconst_1
istore 5
iconst_1
istore 6
iconst_1
istore 7
goto ifL3
ifL2:
ifL3:
iload 3
iconst_2
if_icmpne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq ifL4
iconst_2
istore 4
iconst_3
istore 5
iconst_4
istore 6
iconst_5
istore 7
goto ifL5
ifL4:
ifL5:
iload 3
iconst_3
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq ifL6
bipush 6
istore 4
bipush 6
istore 5
bipush 6
istore 6
bipush 6
istore 7
goto ifL7
ifL6:
ifL7:
iload 3
iconst_4
if_icmpne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq ifL8
bipush 7
istore 4
bipush 8
istore 5
bipush 9
istore 6
bipush 10
istore 7
goto ifL9
ifL8:
ifL9:
iload 3
iconst_5
if_icmpne jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq ifL10
bipush 11
istore 4
bipush 12
istore 5
bipush 13
istore 6
bipush 14
istore 7
goto ifL11
ifL10:
ifL11:
goto ifL1
ifL0:
ifL1:
iload 3
iconst_5
if_icmple jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
iload 3
bipush 12
if_icmpge jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
iand
ifeq ifL12
iload 3
bipush 6
if_icmpne jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
ifeq ifL14
bipush 15
istore 4
bipush 15
istore 5
bipush 15
istore 6
bipush 15
istore 7
goto ifL15
ifL14:
ifL15:
iload 3
bipush 7
if_icmpne jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
ifeq ifL16
bipush 16
istore 4
bipush 17
istore 5
bipush 18
istore 6
bipush 19
istore 7
goto ifL17
ifL16:
ifL17:
iload 3
bipush 8
if_icmpne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ifeq ifL18
bipush 20
istore 4
bipush 21
istore 5
bipush 22
istore 6
bipush 23
istore 7
goto ifL19
ifL18:
ifL19:
iload 3
bipush 9
if_icmpne jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ifeq ifL20
bipush 22
istore 4
bipush 23
istore 5
bipush 24
istore 6
bipush 25
istore 7
goto ifL21
ifL20:
ifL21:
iload 3
bipush 10
if_icmpne jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
ifeq ifL22
bipush 26
istore 4
bipush 27
istore 5
bipush 28
istore 6
bipush 29
istore 7
goto ifL23
ifL22:
ifL23:
iload 3
bipush 11
if_icmpne jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
ifeq ifL24
bipush 30
istore 4
bipush 31
istore 5
bipush 32
istore 6
bipush 33
istore 7
goto ifL25
ifL24:
ifL25:
goto ifL13
ifL12:
ifL13:
iload 3
bipush 11
if_icmple jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
iload 3
bipush 20
if_icmpge jump32
iconst_1
goto jump33
jump32:
iconst_0
jump33:
iand
ifeq ifL26
iload 3
bipush 12
if_icmpne jump34
iconst_1
goto jump35
jump34:
iconst_0
jump35:
ifeq ifL28
bipush 34
istore 4
bipush 35
istore 5
bipush 36
istore 6
bipush 37
istore 7
goto ifL29
ifL28:
ifL29:
iload 3
bipush 13
if_icmpne jump36
iconst_1
goto jump37
jump36:
iconst_0
jump37:
ifeq ifL30
bipush 38
istore 4
bipush 39
istore 5
bipush 40
istore 6
bipush 41
istore 7
goto ifL31
ifL30:
ifL31:
iload 3
bipush 14
if_icmpne jump38
iconst_1
goto jump39
jump38:
iconst_0
jump39:
ifeq ifL32
bipush 42
istore 4
bipush 43
istore 5
bipush 36
istore 6
bipush 37
istore 7
goto ifL33
ifL32:
ifL33:
iload 3
bipush 15
if_icmpne jump40
iconst_1
goto jump41
jump40:
iconst_0
jump41:
ifeq ifL34
bipush 15
istore 4
bipush 15
istore 5
bipush 44
istore 6
bipush 45
istore 7
goto ifL35
ifL34:
ifL35:
iload 3
bipush 16
if_icmpne jump42
iconst_1
goto jump43
jump42:
iconst_0
jump43:
ifeq ifL36
bipush 15
istore 4
bipush 15
istore 5
bipush 45
istore 6
bipush 46
istore 7
goto ifL37
ifL36:
ifL37:
iload 3
bipush 17
if_icmpne jump44
iconst_1
goto jump45
jump44:
iconst_0
jump45:
ifeq ifL38
bipush 47
istore 4
iconst_0
istore 5
bipush 48
istore 6
bipush 49
istore 7
goto ifL39
ifL38:
ifL39:
iload 3
bipush 18
if_icmpne jump46
iconst_1
goto jump47
jump46:
iconst_0
jump47:
ifeq ifL40
iconst_0
istore 4
bipush 50
istore 5
bipush 49
istore 6
bipush 51
istore 7
goto ifL41
ifL40:
ifL41:
iload 3
bipush 19
if_icmpne jump48
iconst_1
goto jump49
jump48:
iconst_0
jump49:
ifeq ifL42
bipush 52
istore 4
bipush 53
istore 5
bipush 54
istore 6
bipush 55
istore 7
goto ifL43
ifL42:
ifL43:
goto ifL27
ifL26:
ifL27:
iload 3
bipush 19
if_icmple jump50
iconst_1
goto jump51
jump50:
iconst_0
jump51:
iload 3
bipush 100
if_icmpge jump52
iconst_1
goto jump53
jump52:
iconst_0
jump53:
iand
ifeq ifL44
iload 3
bipush 20
if_icmpne jump54
iconst_1
goto jump55
jump54:
iconst_0
jump55:
ifeq ifL46
bipush 56
istore 4
bipush 57
istore 5
bipush 58
istore 6
bipush 59
istore 7
goto ifL47
ifL46:
ifL47:
iload 3
bipush 21
if_icmpne jump56
iconst_1
goto jump57
jump56:
iconst_0
jump57:
ifeq ifL48
bipush 58
istore 4
bipush 59
istore 5
bipush 58
istore 6
bipush 59
istore 7
goto ifL49
ifL48:
ifL49:
iload 3
bipush 22
if_icmpne jump58
iconst_1
goto jump59
jump58:
iconst_0
jump59:
ifeq ifL50
bipush 60
istore 4
bipush 61
istore 5
bipush 62
istore 6
bipush 63
istore 7
goto ifL51
ifL50:
ifL51:
goto ifL45
ifL44:
ifL45:
iload 0
iload 1
iload 2
iload 4
invokestatic CreateGraphic.drawGraphic(IIZI)V
iload 0
bipush 16
iadd
iload 1
iload 2
iload 5
invokestatic CreateGraphic.drawGraphic(IIZI)V
iload 0
iload 1
bipush 16
iadd
iload 2
iload 6
invokestatic CreateGraphic.drawGraphic(IIZI)V
iload 0
bipush 16
iadd
iload 1
bipush 16
iadd
iload 2
iload 7
invokestatic CreateGraphic.drawGraphic(IIZI)V
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
whileL53:
iload 1
sipush 255
if_icmpge jump60
iconst_1
goto jump61
jump60:
iconst_0
jump61:
ifeq whileL52
whileL55:
iload 0
sipush 511
if_icmpge jump62
iconst_1
goto jump63
jump62:
iconst_0
jump63:
ifeq whileL54
iload 0
iload 1
iconst_0
iload 1
bipush 32
idiv
bipush 16
imul
iload 0
bipush 32
idiv
iadd
invokestatic TileGraphic.drawGraphic(IIZI)V
iload 0
bipush 32
iadd
istore 0
goto whileL55
whileL54:
iconst_0
istore 0
iload 1
bipush 32
iadd
istore 1
goto whileL53
whileL52:
return
.end method
