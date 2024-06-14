.class public Renderer
.super java/lang/Object
.field static cache LOS/Array;
.field static cache2 LOS/Array;
.field static depthBuffer LOS/Array;
.field static i I
.field static i2 I
.method public static init()V
.limit stack 10
.limit locals 1
iconst_0
istore 0
iconst_0
istore 0
new OS/Array
dup
bipush 100
invokespecial OS/Array.<init>(I)V
putstatic Renderer.cache LOS/Array;
whileL1:
iload 0
bipush 100
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
getstatic Renderer.cache LOS/Array;
iload 0
new OS/Array
dup
iconst_4
invokespecial OS/Array.<init>(I)V
invokevirtual OS/Array.getBaseAddress()I
invokevirtual OS/Array.set(II)V
iload 0
iconst_1
iadd
istore 0
goto whileL1
whileL0:
iconst_0
istore 0
new OS/Array
dup
bipush 100
invokespecial OS/Array.<init>(I)V
putstatic Renderer.cache2 LOS/Array;
whileL3:
iload 0
bipush 100
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq whileL2
getstatic Renderer.cache2 LOS/Array;
iload 0
new OS/Array
dup
iconst_4
invokespecial OS/Array.<init>(I)V
invokevirtual OS/Array.getBaseAddress()I
invokevirtual OS/Array.set(II)V
iload 0
iconst_1
iadd
istore 0
goto whileL3
whileL2:
new OS/Array
dup
sipush 512
invokespecial OS/Array.<init>(I)V
putstatic Renderer.depthBuffer LOS/Array;
return
.end method
.method public static reset()V
.limit stack 10
.limit locals 3
iconst_0
istore 0
getstatic Renderer.i I
putstatic Renderer.i2 I
iconst_0
putstatic Renderer.i I
whileL5:
iload 0
getstatic Renderer.i2 I
if_icmpge jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq whileL4
getstatic Renderer.cache LOS/Array;
iload 0
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 1
getstatic Renderer.cache2 LOS/Array;
iload 0
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 2
aload 2
iconst_0
aload 1
iconst_0
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.set(II)V
aload 2
iconst_1
aload 1
iconst_1
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.set(II)V
aload 2
iconst_2
aload 1
iconst_2
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.set(II)V
aload 2
iconst_3
aload 1
iconst_3
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.set(II)V
iload 0
iconst_1
iadd
istore 0
goto whileL5
whileL4:
whileL7:
getstatic Renderer.i I
sipush 512
if_icmpge jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq whileL6
getstatic Renderer.depthBuffer LOS/Array;
getstatic Renderer.i I
iconst_0
invokevirtual OS/Array.set(II)V
getstatic Renderer.i I
iconst_1
iadd
putstatic Renderer.i I
goto whileL7
whileL6:
iconst_0
putstatic Renderer.i I
return
.end method
.method public static drawMesh(IIII)V
.limit stack 20
.limit locals 17
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
istore 13
iconst_0
istore 14
iconst_0
istore 15
iconst_0
istore 16
iconst_1
istore 14
iconst_0
istore 15
iconst_0
istore 16
bipush 120
iload 1
imul
sipush 200
idiv
bipush 10
iadd
istore 4
bipush 120
iload 1
iload 3
iadd
imul
sipush 200
idiv
bipush 10
iadd
istore 5
iload 4
bipush 10
if_icmpge jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq ifL8
bipush 10
istore 4
iconst_1
istore 15
goto ifL9
ifL8:
ifL9:
iload 5
bipush 10
if_icmpge jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq ifL10
bipush 10
istore 5
iconst_1
istore 16
goto ifL11
ifL10:
ifL11:
bipush 120
iload 0
imul
iload 4
idiv
sipush 256
iadd
istore 6
bipush 120
iload 0
iload 2
iadd
imul
iload 5
idiv
sipush 256
iadd
istore 7
iload 6
istore 11
iload 6
iconst_0
if_icmpge jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
iload 7
iconst_0
if_icmple jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
iand
ifeq ifL12
bipush 120
iload 0
iconst_0
iload 6
isub
bipush 20
imul
iload 7
iload 6
isub
idiv
iload 2
imul
bipush 20
idiv
iadd
imul
iconst_0
sipush 256
isub
idiv
istore 4
iconst_0
istore 6
goto ifL13
ifL12:
iload 6
sipush 506
if_icmple jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
iload 7
sipush 506
if_icmpge jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
iand
ifeq ifL14
bipush 120
iload 0
iload 6
sipush 506
isub
bipush 20
imul
iload 6
iload 7
isub
idiv
iload 2
imul
bipush 20
idiv
iadd
imul
sipush 506
sipush 256
isub
idiv
istore 4
sipush 506
istore 6
goto ifL15
ifL14:
ifL15:
ifL13:
iload 7
iconst_0
if_icmpge jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
iload 11
iconst_0
if_icmple jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
iand
ifeq ifL16
bipush 120
iload 0
iload 2
iadd
iconst_0
iload 7
isub
bipush 20
imul
iload 11
iload 7
isub
idiv
iload 2
imul
bipush 20
idiv
isub
imul
iconst_0
sipush 256
isub
idiv
istore 5
iconst_0
istore 7
goto ifL17
ifL16:
iload 7
sipush 506
if_icmple jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
iload 11
sipush 506
if_icmpge jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
iand
ifeq ifL18
bipush 120
iload 0
iload 2
iadd
iload 7
sipush 506
isub
bipush 20
imul
iload 7
iload 11
isub
idiv
iload 2
imul
bipush 20
idiv
isub
imul
sipush 506
sipush 256
isub
idiv
istore 5
sipush 506
istore 7
goto ifL19
ifL18:
ifL19:
ifL17:
iload 7
sipush 506
if_icmple jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
iload 11
sipush 506
if_icmple jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
iand
iload 11
iconst_0
if_icmpge jump32
iconst_1
goto jump33
jump32:
iconst_0
jump33:
iload 7
iconst_0
if_icmpge jump34
iconst_1
goto jump35
jump34:
iconst_0
jump35:
iand
ior
ifeq ifL20
iconst_0
istore 14
goto ifL21
ifL20:
ifL21:
iload 4
bipush 10
if_icmpge jump36
iconst_1
goto jump37
jump36:
iconst_0
jump37:
ifeq ifL22
bipush 10
istore 4
iconst_1
istore 15
goto ifL23
ifL22:
ifL23:
iload 5
bipush 10
if_icmpge jump38
iconst_1
goto jump39
jump38:
iconst_0
jump39:
ifeq ifL24
bipush 10
istore 5
iconst_1
istore 16
goto ifL25
ifL24:
ifL25:
iload 14
ifeq ifL26
iconst_0
istore 13
iconst_1
istore 10
iload 7
iload 6
if_icmpge jump40
iconst_1
goto jump41
jump40:
iconst_0
jump41:
ifeq ifL28
iconst_1
ineg
istore 10
goto ifL29
ifL28:
ifL29:
iload 15
iload 6
iload 7
if_icmpge jump42
iconst_1
goto jump43
jump42:
iconst_0
jump43:
iand
ifeq ifL30
iconst_0
istore 8
whileL33:
iload 8
iload 6
if_icmpge jump44
iconst_1
goto jump45
jump44:
iconst_0
jump45:
ifeq whileL32
getstatic Renderer.depthBuffer LOS/Array;
iload 8
invokevirtual OS/Array.get(I)I
iconst_0
if_icmpne jump46
iconst_1
goto jump47
jump46:
iconst_0
jump47:
ifeq ifL34
getstatic Renderer.depthBuffer LOS/Array;
iload 8
iconst_1
invokevirtual OS/Array.set(II)V
goto ifL35
ifL34:
ifL35:
iload 8
iconst_1
iadd
istore 8
goto whileL33
whileL32:
goto ifL31
ifL30:
iload 15
iload 6
iload 7
if_icmple jump48
iconst_1
goto jump49
jump48:
iconst_0
jump49:
iand
ifeq ifL36
iload 6
istore 8
whileL39:
iload 8
sipush 510
if_icmpge jump50
iconst_1
goto jump51
jump50:
iconst_0
jump51:
ifeq whileL38
getstatic Renderer.depthBuffer LOS/Array;
iload 8
invokevirtual OS/Array.get(I)I
iconst_0
if_icmpne jump52
iconst_1
goto jump53
jump52:
iconst_0
jump53:
ifeq ifL40
getstatic Renderer.depthBuffer LOS/Array;
iload 8
iconst_1
invokevirtual OS/Array.set(II)V
goto ifL41
ifL40:
ifL41:
iload 8
iconst_1
iadd
istore 8
goto whileL39
whileL38:
goto ifL37
ifL36:
ifL37:
ifL31:
iload 16
iload 6
iload 7
if_icmpge jump54
iconst_1
goto jump55
jump54:
iconst_0
jump55:
iand
ifeq ifL42
iload 7
istore 8
whileL45:
iload 8
sipush 510
if_icmpge jump56
iconst_1
goto jump57
jump56:
iconst_0
jump57:
ifeq whileL44
getstatic Renderer.depthBuffer LOS/Array;
iload 8
invokevirtual OS/Array.get(I)I
iconst_0
if_icmpne jump58
iconst_1
goto jump59
jump58:
iconst_0
jump59:
ifeq ifL46
getstatic Renderer.depthBuffer LOS/Array;
iload 8
iconst_1
invokevirtual OS/Array.set(II)V
goto ifL47
ifL46:
ifL47:
iload 8
iconst_1
iadd
istore 8
goto whileL45
whileL44:
goto ifL43
ifL42:
iload 16
iload 6
iload 7
if_icmple jump60
iconst_1
goto jump61
jump60:
iconst_0
jump61:
iand
ifeq ifL48
iconst_0
istore 8
whileL51:
iload 8
iload 7
if_icmpge jump62
iconst_1
goto jump63
jump62:
iconst_0
jump63:
ifeq whileL50
getstatic Renderer.depthBuffer LOS/Array;
iload 8
invokevirtual OS/Array.get(I)I
iconst_0
if_icmpne jump64
iconst_1
goto jump65
jump64:
iconst_0
jump65:
ifeq ifL52
getstatic Renderer.depthBuffer LOS/Array;
iload 8
iconst_1
invokevirtual OS/Array.set(II)V
goto ifL53
ifL52:
ifL53:
iload 8
iconst_1
iadd
istore 8
goto whileL51
whileL50:
goto ifL49
ifL48:
ifL49:
ifL43:
iload 6
istore 8
whileL55:
iload 7
iload 6
if_icmple jump66
iconst_1
goto jump67
jump66:
iconst_0
jump67:
iload 8
iload 7
if_icmpge jump68
iconst_1
goto jump69
jump68:
iconst_0
jump69:
iand
iload 7
iload 6
if_icmpge jump70
iconst_1
goto jump71
jump70:
iconst_0
jump71:
iload 8
iload 7
if_icmple jump72
iconst_1
goto jump73
jump72:
iconst_0
jump73:
iand
ior
ifeq whileL54
iload 13
ifne jump74
iconst_1
goto jump75
jump74:
iconst_0
jump75:
getstatic Renderer.depthBuffer LOS/Array;
iload 8
invokevirtual OS/Array.get(I)I
iconst_0
if_icmpne jump76
iconst_1
goto jump77
jump76:
iconst_0
jump77:
iand
ifeq ifL56
iconst_1
istore 13
iload 4
iload 8
iload 6
isub
bipush 10
imul
iload 7
iload 6
isub
idiv
iload 5
iload 4
isub
imul
bipush 10
idiv
iadd
istore 9
iload 8
iload 9
invokestatic Renderer.startMesh(II)V
getstatic Renderer.depthBuffer LOS/Array;
iload 8
iconst_1
invokevirtual OS/Array.set(II)V
goto ifL57
ifL56:
iload 13
getstatic Renderer.depthBuffer LOS/Array;
iload 8
invokevirtual OS/Array.get(I)I
iconst_0
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
iand
ifeq ifL58
iconst_0
istore 13
iload 4
iload 8
iload 6
isub
bipush 10
imul
iload 7
iload 6
isub
idiv
iload 5
iload 4
isub
imul
bipush 10
idiv
iadd
istore 9
iload 8
iload 9
invokestatic Renderer.endMesh(II)V
goto ifL59
ifL58:
iload 13
ifeq ifL60
getstatic Renderer.depthBuffer LOS/Array;
iload 8
iconst_1
invokevirtual OS/Array.set(II)V
goto ifL61
ifL60:
ifL61:
ifL59:
ifL57:
iload 8
iload 10
iadd
istore 8
goto whileL55
whileL54:
iload 13
ifeq ifL62
iload 7
iload 5
invokestatic Renderer.endMesh(II)V
goto ifL63
ifL62:
ifL63:
goto ifL27
ifL26:
ifL27:
return
.end method
.method public static startMesh(II)V
.limit stack 10
.limit locals 4
iconst_0
istore 3
getstatic Renderer.cache LOS/Array;
getstatic Renderer.i I
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 2
aload 2
iconst_0
iload 0
invokevirtual OS/Array.set(II)V
aload 2
iconst_1
iconst_0
sipush 1260
isub
iload 1
idiv
bipush 126
isub
ineg
invokevirtual OS/Array.set(II)V
getstatic Renderer.cache LOS/Array;
getstatic Renderer.i I
iconst_1
iadd
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 2
aload 2
iconst_0
iload 0
invokevirtual OS/Array.set(II)V
bipush 120
bipush 20
imul
sipush 1260
isub
iload 1
idiv
bipush 126
isub
ineg
istore 3
aload 2
iconst_1
iload 3
invokevirtual OS/Array.set(II)V
getstatic Renderer.cache LOS/Array;
getstatic Renderer.i I
iconst_2
iadd
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 2
aload 2
iconst_0
iload 0
invokevirtual OS/Array.set(II)V
bipush 120
bipush 10
imul
sipush 1260
isub
iload 1
idiv
bipush 126
isub
ineg
istore 3
aload 2
iconst_1
iload 3
invokevirtual OS/Array.set(II)V
getstatic Renderer.cache LOS/Array;
getstatic Renderer.i I
iconst_3
iadd
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 2
aload 2
iconst_0
iload 0
invokevirtual OS/Array.set(II)V
bipush 120
bipush 15
imul
sipush 1260
isub
iload 1
idiv
bipush 126
isub
ineg
istore 3
aload 2
iconst_1
iload 3
invokevirtual OS/Array.set(II)V
getstatic Renderer.cache LOS/Array;
getstatic Renderer.i I
iconst_4
iadd
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 2
aload 2
iconst_0
iload 0
invokevirtual OS/Array.set(II)V
bipush 120
iconst_5
imul
sipush 1260
isub
iload 1
idiv
bipush 126
isub
ineg
istore 3
aload 2
iconst_1
iload 3
invokevirtual OS/Array.set(II)V
return
.end method
.method public static endMesh(II)V
.limit stack 10
.limit locals 3
getstatic Renderer.cache LOS/Array;
getstatic Renderer.i I
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 2
aload 2
iconst_2
iload 0
invokevirtual OS/Array.set(II)V
aload 2
iconst_3
iconst_0
sipush 1260
isub
iload 1
idiv
bipush 126
isub
ineg
invokevirtual OS/Array.set(II)V
getstatic Renderer.cache LOS/Array;
getstatic Renderer.i I
iconst_1
iadd
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 2
aload 2
iconst_2
iload 0
invokevirtual OS/Array.set(II)V
aload 2
iconst_3
bipush 120
bipush 20
imul
sipush 1260
isub
iload 1
idiv
bipush 126
isub
ineg
invokevirtual OS/Array.set(II)V
getstatic Renderer.cache LOS/Array;
getstatic Renderer.i I
iconst_2
iadd
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 2
aload 2
iconst_2
iload 0
invokevirtual OS/Array.set(II)V
aload 2
iconst_3
bipush 120
bipush 10
imul
sipush 1260
isub
iload 1
idiv
bipush 126
isub
ineg
invokevirtual OS/Array.set(II)V
getstatic Renderer.cache LOS/Array;
getstatic Renderer.i I
iconst_3
iadd
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 2
aload 2
iconst_2
iload 0
invokevirtual OS/Array.set(II)V
aload 2
iconst_3
bipush 120
bipush 15
imul
sipush 1260
isub
iload 1
idiv
bipush 126
isub
ineg
invokevirtual OS/Array.set(II)V
getstatic Renderer.cache LOS/Array;
getstatic Renderer.i I
iconst_4
iadd
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 2
aload 2
iconst_2
iload 0
invokevirtual OS/Array.set(II)V
aload 2
iconst_3
bipush 120
iconst_5
imul
sipush 1260
isub
iload 1
idiv
bipush 126
isub
ineg
invokevirtual OS/Array.set(II)V
getstatic Renderer.i I
iconst_5
iadd
putstatic Renderer.i I
return
.end method
.method public static clearPaint()V
.limit stack 10
.limit locals 2
iconst_0
istore 0
iconst_0
invokestatic OS/Screen.setColor(Z)V
whileL65:
iload 0
getstatic Renderer.i2 I
if_icmpge jump82
iconst_1
goto jump83
jump82:
iconst_0
jump83:
ifeq whileL64
getstatic Renderer.cache2 LOS/Array;
iload 0
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 1
aload 1
iconst_0
invokevirtual OS/Array.get(I)I
iconst_1
ineg
if_icmple jump84
iconst_1
goto jump85
jump84:
iconst_0
jump85:
aload 1
iconst_1
invokevirtual OS/Array.get(I)I
iconst_1
ineg
if_icmple jump86
iconst_1
goto jump87
jump86:
iconst_0
jump87:
iand
aload 1
iconst_2
invokevirtual OS/Array.get(I)I
iconst_1
ineg
if_icmple jump88
iconst_1
goto jump89
jump88:
iconst_0
jump89:
iand
aload 1
iconst_3
invokevirtual OS/Array.get(I)I
iconst_1
ineg
if_icmple jump90
iconst_1
goto jump91
jump90:
iconst_0
jump91:
iand
ifeq ifL66
aload 1
iconst_0
invokevirtual OS/Array.get(I)I
sipush 512
if_icmpge jump92
iconst_1
goto jump93
jump92:
iconst_0
jump93:
aload 1
iconst_1
invokevirtual OS/Array.get(I)I
sipush 256
if_icmpge jump94
iconst_1
goto jump95
jump94:
iconst_0
jump95:
iand
aload 1
iconst_2
invokevirtual OS/Array.get(I)I
sipush 512
if_icmpge jump96
iconst_1
goto jump97
jump96:
iconst_0
jump97:
iand
aload 1
iconst_3
invokevirtual OS/Array.get(I)I
sipush 256
if_icmpge jump98
iconst_1
goto jump99
jump98:
iconst_0
jump99:
iand
ifeq ifL68
aload 1
iconst_0
invokevirtual OS/Array.get(I)I
aload 1
iconst_1
invokevirtual OS/Array.get(I)I
aload 1
iconst_2
invokevirtual OS/Array.get(I)I
aload 1
iconst_3
invokevirtual OS/Array.get(I)I
invokestatic OS/Screen.drawLine(IIII)V
goto ifL69
ifL68:
ifL69:
goto ifL67
ifL66:
ifL67:
iload 0
iconst_1
iadd
istore 0
goto whileL65
whileL64:
return
.end method
.method public static paint(I)V
.limit stack 10
.limit locals 3
iconst_0
istore 1
iload 0
invokestatic OS/Screen.setColor(Z)V
whileL71:
iload 1
getstatic Renderer.i I
if_icmpge jump100
iconst_1
goto jump101
jump100:
iconst_0
jump101:
ifeq whileL70
getstatic Renderer.cache LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 2
aload 2
iconst_0
invokevirtual OS/Array.get(I)I
iconst_1
ineg
if_icmple jump102
iconst_1
goto jump103
jump102:
iconst_0
jump103:
aload 2
iconst_1
invokevirtual OS/Array.get(I)I
iconst_1
ineg
if_icmple jump104
iconst_1
goto jump105
jump104:
iconst_0
jump105:
iand
aload 2
iconst_2
invokevirtual OS/Array.get(I)I
iconst_1
ineg
if_icmple jump106
iconst_1
goto jump107
jump106:
iconst_0
jump107:
iand
aload 2
iconst_3
invokevirtual OS/Array.get(I)I
iconst_1
ineg
if_icmple jump108
iconst_1
goto jump109
jump108:
iconst_0
jump109:
iand
ifeq ifL72
aload 2
iconst_0
invokevirtual OS/Array.get(I)I
sipush 512
if_icmpge jump110
iconst_1
goto jump111
jump110:
iconst_0
jump111:
aload 2
iconst_1
invokevirtual OS/Array.get(I)I
sipush 256
if_icmpge jump112
iconst_1
goto jump113
jump112:
iconst_0
jump113:
iand
aload 2
iconst_2
invokevirtual OS/Array.get(I)I
sipush 512
if_icmpge jump114
iconst_1
goto jump115
jump114:
iconst_0
jump115:
iand
aload 2
iconst_3
invokevirtual OS/Array.get(I)I
sipush 256
if_icmpge jump116
iconst_1
goto jump117
jump116:
iconst_0
jump117:
iand
ifeq ifL74
aload 2
iconst_0
invokevirtual OS/Array.get(I)I
aload 2
iconst_1
invokevirtual OS/Array.get(I)I
aload 2
iconst_2
invokevirtual OS/Array.get(I)I
aload 2
iconst_3
invokevirtual OS/Array.get(I)I
invokestatic OS/Screen.drawLine(IIII)V
goto ifL75
ifL74:
ifL75:
goto ifL73
ifL72:
ifL73:
iload 1
iconst_1
iadd
istore 1
goto whileL71
whileL70:
return
.end method
