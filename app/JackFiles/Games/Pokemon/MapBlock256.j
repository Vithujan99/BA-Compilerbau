.class public MapBlock256
.super java/lang/Object
.field Block LOS/Array;
.field Up I
.field UpRight I
.field UpLeft I
.field Left I
.field Right I
.field DownLeft I
.field Down I
.field DownRight I
.method public <init>()V
.limit stack 10
.limit locals 2
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield MapBlock256.Up I
aload 0
iconst_0
putfield MapBlock256.UpRight I
aload 0
iconst_0
putfield MapBlock256.UpLeft I
aload 0
iconst_0
putfield MapBlock256.Left I
aload 0
iconst_0
putfield MapBlock256.Right I
aload 0
iconst_0
putfield MapBlock256.DownLeft I
aload 0
iconst_0
putfield MapBlock256.Down I
aload 0
iconst_0
putfield MapBlock256.DownRight I
iconst_0
istore 1
aload 0
new OS/Array
dup
bipush 16
invokespecial OS/Array.<init>(I)V
putfield MapBlock256.Block LOS/Array;
iconst_0
istore 1
invokestatic Main.getInside()Z
ifeq ifL0
aload 0
iconst_1
putfield MapBlock256.Up I
aload 0
iconst_1
putfield MapBlock256.UpLeft I
aload 0
iconst_1
putfield MapBlock256.UpRight I
aload 0
iconst_1
putfield MapBlock256.Left I
aload 0
iconst_1
putfield MapBlock256.Right I
aload 0
iconst_1
putfield MapBlock256.DownLeft I
aload 0
iconst_1
putfield MapBlock256.Down I
aload 0
iconst_1
putfield MapBlock256.DownRight I
goto ifL1
ifL0:
aload 0
iconst_0
putfield MapBlock256.Up I
aload 0
iconst_0
putfield MapBlock256.UpLeft I
aload 0
iconst_0
putfield MapBlock256.UpRight I
aload 0
iconst_0
putfield MapBlock256.Left I
aload 0
iconst_0
putfield MapBlock256.Right I
aload 0
iconst_0
putfield MapBlock256.DownLeft I
aload 0
iconst_0
putfield MapBlock256.Down I
aload 0
iconst_0
putfield MapBlock256.DownRight I
ifL1:
whileL3:
iload 1
bipush 16
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL2
aload 0
getfield MapBlock256.Block LOS/Array;
iload 1
new MapBlock16
dup
invokespecial MapBlock16.<init>()V
invokevirtual OS/Array.set(II)V
iload 1
iconst_1
iadd
istore 1
goto whileL3
whileL2:
return
.end method
.method public get(II)I
.limit stack 10
.limit locals 6
iconst_0
istore 4
iconst_0
istore 5
iload 1
iconst_4
idiv
istore 4
iload 2
iconst_4
idiv
istore 5
aload 0
getfield MapBlock256.Block LOS/Array;
iconst_4
iload 5
imul
iload 4
iadd
invokevirtual OS/Array.get(I)I
astore 3
iload 1
iconst_4
invokestatic LibExt.mod(II)I
istore 4
iload 2
iconst_4
invokestatic LibExt.mod(II)I
istore 5
aload 3
iload 4
iload 5
invokevirtual MapBlock16.get(II)I
ireturn
.end method
.method public set(III)V
.limit stack 10
.limit locals 7
iconst_0
istore 5
iconst_0
istore 6
iload 1
iconst_4
idiv
istore 5
iload 2
iconst_4
idiv
istore 6
aload 0
getfield MapBlock256.Block LOS/Array;
iconst_4
iload 6
imul
iload 5
iadd
invokevirtual OS/Array.get(I)I
astore 4
iload 1
iconst_4
invokestatic LibExt.mod(II)I
istore 5
iload 2
iconst_4
invokestatic LibExt.mod(II)I
istore 6
aload 4
iload 5
iload 6
iload 3
invokevirtual MapBlock16.set(III)V
return
.end method
.method public getEvent(II)I
.limit stack 10
.limit locals 6
iconst_0
istore 4
iconst_0
istore 5
iload 1
iconst_4
idiv
istore 4
iload 2
iconst_4
idiv
istore 5
aload 0
getfield MapBlock256.Block LOS/Array;
iconst_4
iload 5
imul
iload 4
iadd
invokevirtual OS/Array.get(I)I
astore 3
iload 1
iconst_4
invokestatic LibExt.mod(II)I
istore 4
iload 2
iconst_4
invokestatic LibExt.mod(II)I
istore 5
aload 3
iload 4
iload 5
invokevirtual MapBlock16.getEvent(II)I
ireturn
.end method
.method public setEvent(III)V
.limit stack 10
.limit locals 7
iconst_0
istore 5
iconst_0
istore 6
iload 1
iconst_4
idiv
istore 5
iload 2
iconst_4
idiv
istore 6
aload 0
getfield MapBlock256.Block LOS/Array;
iconst_4
iload 6
imul
iload 5
iadd
invokevirtual OS/Array.get(I)I
astore 4
iload 1
iconst_4
invokestatic LibExt.mod(II)I
istore 5
iload 2
iconst_4
invokestatic LibExt.mod(II)I
istore 6
aload 4
iload 5
iload 6
iload 3
invokevirtual MapBlock16.setEvent(III)V
return
.end method
.method public addMapObject(III)V
.limit stack 10
.limit locals 5
iconst_0
istore 4
iload 3
iconst_5
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq ifL4
iconst_0
istore 4
goto ifL5
ifL4:
ifL5:
iload 3
iconst_5
if_icmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
iload 3
bipush 6
if_icmpne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ior
iload 3
bipush 7
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ior
ifeq ifL6
iconst_1
istore 4
goto ifL7
ifL6:
ifL7:
iload 3
bipush 8
if_icmpne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
iload 3
bipush 9
if_icmpne jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ior
iload 3
bipush 10
if_icmpne jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
ior
iload 3
bipush 11
if_icmpne jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
ior
ifeq ifL8
iconst_2
istore 4
goto ifL9
ifL8:
ifL9:
iload 3
bipush 12
if_icmpne jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
ifeq ifL10
iconst_3
istore 4
goto ifL11
ifL10:
ifL11:
iload 3
bipush 13
if_icmpne jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
iload 3
bipush 14
if_icmpne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ior
ifeq ifL12
bipush 6
istore 4
goto ifL13
ifL12:
ifL13:
iload 3
bipush 15
if_icmpne jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ifeq ifL14
bipush 7
istore 4
goto ifL15
ifL14:
ifL15:
iload 3
iconst_4
if_icmpge jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
iload 3
iconst_5
if_icmpne jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
ior
iload 3
bipush 6
if_icmpne jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
ior
iload 3
bipush 8
if_icmpne jump32
iconst_1
goto jump33
jump32:
iconst_0
jump33:
ior
iload 3
bipush 9
if_icmpne jump34
iconst_1
goto jump35
jump34:
iconst_0
jump35:
ior
iload 3
bipush 10
if_icmpne jump36
iconst_1
goto jump37
jump36:
iconst_0
jump37:
ior
iload 3
bipush 13
if_icmpne jump38
iconst_1
goto jump39
jump38:
iconst_0
jump39:
ior
iload 3
bipush 15
if_icmpne jump40
iconst_1
goto jump41
jump40:
iconst_0
jump41:
ior
ifeq ifL16
aload 0
iload 1
iload 2
iload 3
iload 4
iadd
invokevirtual MapBlock256.set(III)V
return
ifL16:
iload 3
iconst_4
if_icmpne jump42
iconst_1
goto jump43
jump42:
iconst_0
jump43:
iload 3
bipush 7
if_icmpne jump44
iconst_1
goto jump45
jump44:
iconst_0
jump45:
ior
iload 3
bipush 11
if_icmpne jump46
iconst_1
goto jump47
jump46:
iconst_0
jump47:
ior
iload 3
bipush 14
if_icmpne jump48
iconst_1
goto jump49
jump48:
iconst_0
jump49:
ior
ifeq ifL18
aload 0
iload 1
iload 2
iload 3
iload 4
iadd
invokevirtual MapBlock256.set(III)V
aload 0
iload 1
iload 2
iconst_1
iadd
iload 3
iload 4
iadd
iconst_1
iadd
invokevirtual MapBlock256.set(III)V
return
ifL18:
iload 3
bipush 12
if_icmpne jump50
iconst_1
goto jump51
jump50:
iconst_0
jump51:
ifeq ifL20
aload 0
iload 1
iload 2
iload 3
iload 4
iadd
invokevirtual MapBlock256.set(III)V
aload 0
iload 1
iconst_1
iadd
iload 2
iload 3
iload 4
iadd
iconst_1
iadd
invokevirtual MapBlock256.set(III)V
aload 0
iload 1
iload 2
iconst_1
iadd
iload 3
iload 4
iadd
iconst_2
iadd
invokevirtual MapBlock256.set(III)V
aload 0
iload 1
iconst_1
iadd
iload 2
iconst_1
iadd
iload 3
iload 4
iadd
iconst_3
iadd
invokevirtual MapBlock256.set(III)V
goto ifL21
ifL20:
ifL21:
return
.end method
.method public getDirection(I)I
.limit stack 10
.limit locals 2
iload 1
iconst_0
if_icmpne jump52
iconst_1
goto jump53
jump52:
iconst_0
jump53:
ifeq ifL22
aload 0
getfield MapBlock256.UpLeft I
ireturn
ifL22:
iload 1
iconst_1
if_icmpne jump54
iconst_1
goto jump55
jump54:
iconst_0
jump55:
ifeq ifL24
aload 0
getfield MapBlock256.Up I
ireturn
ifL24:
iload 1
iconst_2
if_icmpne jump56
iconst_1
goto jump57
jump56:
iconst_0
jump57:
ifeq ifL26
aload 0
getfield MapBlock256.UpRight I
ireturn
ifL26:
iload 1
iconst_3
if_icmpne jump58
iconst_1
goto jump59
jump58:
iconst_0
jump59:
ifeq ifL28
aload 0
getfield MapBlock256.Left I
ireturn
ifL28:
iload 1
iconst_4
if_icmpne jump60
iconst_1
goto jump61
jump60:
iconst_0
jump61:
ifeq ifL30
aload 0
getfield MapBlock256.Right I
ireturn
ifL30:
iload 1
iconst_5
if_icmpne jump62
iconst_1
goto jump63
jump62:
iconst_0
jump63:
ifeq ifL32
aload 0
getfield MapBlock256.DownLeft I
ireturn
ifL32:
iload 1
bipush 6
if_icmpne jump64
iconst_1
goto jump65
jump64:
iconst_0
jump65:
ifeq ifL34
aload 0
getfield MapBlock256.Down I
ireturn
ifL34:
iload 1
bipush 7
if_icmpne jump66
iconst_1
goto jump67
jump66:
iconst_0
jump67:
ifeq ifL36
aload 0
getfield MapBlock256.DownRight I
ireturn
ifL36:
iconst_0
ireturn
.end method
.method public setDirection(II)V
.limit stack 10
.limit locals 3
iload 1
iconst_0
if_icmpne jump68
iconst_1
goto jump69
jump68:
iconst_0
jump69:
ifeq ifL38
aload 0
iload 2
putfield MapBlock256.UpLeft I
goto ifL39
ifL38:
ifL39:
iload 1
iconst_1
if_icmpne jump70
iconst_1
goto jump71
jump70:
iconst_0
jump71:
ifeq ifL40
aload 0
iload 2
putfield MapBlock256.Up I
goto ifL41
ifL40:
ifL41:
iload 1
iconst_2
if_icmpne jump72
iconst_1
goto jump73
jump72:
iconst_0
jump73:
ifeq ifL42
aload 0
iload 2
putfield MapBlock256.UpRight I
goto ifL43
ifL42:
ifL43:
iload 1
iconst_3
if_icmpne jump74
iconst_1
goto jump75
jump74:
iconst_0
jump75:
ifeq ifL44
aload 0
iload 2
putfield MapBlock256.Left I
goto ifL45
ifL44:
ifL45:
iload 1
iconst_4
if_icmpne jump76
iconst_1
goto jump77
jump76:
iconst_0
jump77:
ifeq ifL46
aload 0
iload 2
putfield MapBlock256.Right I
goto ifL47
ifL46:
ifL47:
iload 1
iconst_5
if_icmpne jump78
iconst_1
goto jump79
jump78:
iconst_0
jump79:
ifeq ifL48
aload 0
iload 2
putfield MapBlock256.DownLeft I
goto ifL49
ifL48:
ifL49:
iload 1
bipush 6
if_icmpne jump80
iconst_1
goto jump81
jump80:
iconst_0
jump81:
ifeq ifL50
aload 0
iload 2
putfield MapBlock256.Down I
goto ifL51
ifL50:
ifL51:
iload 1
bipush 7
if_icmpne jump82
iconst_1
goto jump83
jump82:
iconst_0
jump83:
ifeq ifL52
aload 0
iload 2
putfield MapBlock256.DownRight I
goto ifL53
ifL52:
ifL53:
return
.end method
.method public draw(IIII)V
.limit stack 10
.limit locals 8
iconst_0
istore 6
iconst_0
istore 7
invokestatic Main.getInside()Z
ifeq ifL54
iconst_1
invokestatic OS/Screen.setColor(Z)V
goto ifL55
ifL54:
iconst_0
invokestatic OS/Screen.setColor(Z)V
ifL55:
iload 1
iload 3
isub
istore 1
iload 2
iload 4
isub
istore 2
iload 1
sipush 511
ineg
if_icmpge jump84
iconst_1
goto jump85
jump84:
iconst_0
jump85:
iload 2
sipush 511
ineg
if_icmpge jump86
iconst_1
goto jump87
jump86:
iconst_0
jump87:
ior
iload 1
sipush 511
if_icmple jump88
iconst_1
goto jump89
jump88:
iconst_0
jump89:
ior
iload 2
sipush 255
if_icmple jump90
iconst_1
goto jump91
jump90:
iconst_0
jump91:
ior
ifeq ifL56
return
ifL56:
iconst_0
iconst_0
iload 1
sipush 255
invokestatic Tile.Rect(IIII)V
iload 1
sipush 544
iadd
iconst_0
sipush 511
sipush 255
invokestatic Tile.Rect(IIII)V
iconst_0
iconst_0
sipush 511
iload 2
invokestatic Tile.Rect(IIII)V
iconst_0
iload 2
sipush 288
iadd
sipush 511
sipush 255
invokestatic Tile.Rect(IIII)V
iconst_0
istore 6
iconst_0
istore 7
whileL59:
iload 7
iconst_4
if_icmpge jump92
iconst_1
goto jump93
jump92:
iconst_0
jump93:
ifeq whileL58
whileL61:
iload 6
iconst_4
if_icmpge jump94
iconst_1
goto jump95
jump94:
iconst_0
jump95:
ifeq whileL60
aload 0
getfield MapBlock256.Block LOS/Array;
iload 7
iconst_4
imul
iload 6
iadd
invokevirtual OS/Array.get(I)I
astore 5
aload 5
iload 6
sipush 128
imul
iload 1
iadd
iload 7
sipush 128
imul
iload 2
iadd
invokevirtual MapBlock16.draw(II)V
iload 6
iconst_1
iadd
istore 6
goto whileL61
whileL60:
iconst_0
istore 6
iload 7
iconst_1
iadd
istore 7
goto whileL59
whileL58:
return
.end method
.method public print()V
.limit stack 10
.limit locals 1
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
