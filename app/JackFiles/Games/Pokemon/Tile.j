.class public Tile
.super java/lang/Object
.field tile I
.field Solid Z
.field empty Z
.field full Z
.method public <init>(I)V
.limit stack 10
.limit locals 2
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield Tile.tile I
aload 0
iconst_0
putfield Tile.Solid Z
aload 0
iconst_0
putfield Tile.empty Z
aload 0
iconst_0
putfield Tile.full Z
aload 0
iconst_1
putfield Tile.Solid Z
iload 1
iconst_0
if_icmpne jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq ifL0
aload 0
iconst_0
putfield Tile.Solid Z
aload 0
iconst_1
putfield Tile.empty Z
goto ifL1
ifL0:
aload 0
iconst_0
putfield Tile.empty Z
ifL1:
iload 1
iconst_1
if_icmpne jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq ifL2
aload 0
iconst_1
putfield Tile.Solid Z
aload 0
iconst_1
putfield Tile.full Z
goto ifL3
ifL2:
aload 0
iconst_0
putfield Tile.full Z
ifL3:
iload 1
iconst_2
if_icmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
iload 1
iconst_4
if_icmpne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ior
iload 1
iconst_5
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ior
iload 1
bipush 6
if_icmpne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ior
iload 1
bipush 8
if_icmpne jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ior
iload 1
bipush 9
if_icmpne jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
ior
iload 1
bipush 10
if_icmpne jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
ior
iload 1
bipush 11
if_icmpne jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
ior
iload 1
bipush 12
if_icmpne jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
ior
iload 1
bipush 13
if_icmpne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ior
iload 1
bipush 14
if_icmpne jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ior
iload 1
bipush 15
if_icmpne jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
ior
iload 1
bipush 16
if_icmpne jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
ior
iload 1
bipush 17
if_icmpne jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
ior
iload 1
bipush 18
if_icmpne jump32
iconst_1
goto jump33
jump32:
iconst_0
jump33:
ior
iload 1
bipush 19
if_icmpne jump34
iconst_1
goto jump35
jump34:
iconst_0
jump35:
ior
iload 1
bipush 20
if_icmpne jump36
iconst_1
goto jump37
jump36:
iconst_0
jump37:
ior
iload 1
bipush 21
if_icmpne jump38
iconst_1
goto jump39
jump38:
iconst_0
jump39:
ior
ifeq ifL4
aload 0
iconst_1
putfield Tile.Solid Z
goto ifL5
ifL4:
ifL5:
iload 1
iconst_3
if_icmpne jump40
iconst_1
goto jump41
jump40:
iconst_0
jump41:
iload 1
bipush 7
if_icmpne jump42
iconst_1
goto jump43
jump42:
iconst_0
jump43:
ior
iload 1
bipush 22
if_icmpne jump44
iconst_1
goto jump45
jump44:
iconst_0
jump45:
ior
ifeq ifL6
aload 0
iconst_0
putfield Tile.Solid Z
goto ifL7
ifL6:
ifL7:
aload 0
iload 1
putfield Tile.tile I
return
.end method
.method public getSolid()Z
.limit stack 10
.limit locals 1
aload 0
getfield Tile.Solid Z
ireturn
.end method
.method public getEmpty()Z
.limit stack 10
.limit locals 1
aload 0
getfield Tile.empty Z
ireturn
.end method
.method public drawTile(IIZ)V
.limit stack 10
.limit locals 5
iconst_0
istore 4
iload 1
bipush 31
ineg
if_icmpge jump46
iconst_1
goto jump47
jump46:
iconst_0
jump47:
iload 2
bipush 31
ineg
if_icmpge jump48
iconst_1
goto jump49
jump48:
iconst_0
jump49:
ior
iload 1
sipush 511
if_icmple jump50
iconst_1
goto jump51
jump50:
iconst_0
jump51:
ior
iload 2
sipush 255
if_icmple jump52
iconst_1
goto jump53
jump52:
iconst_0
jump53:
ior
ifeq ifL8
return
ifL8:
aload 0
getfield Tile.empty Z
ifeq ifL10
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 1
iload 2
iload 1
bipush 32
iadd
iload 2
bipush 32
iadd
invokestatic Tile.Rect(IIII)V
return
ifL10:
aload 0
getfield Tile.full Z
ifeq ifL12
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 1
iload 2
iload 1
bipush 32
iadd
iload 2
bipush 32
iadd
invokestatic Tile.Rect(IIII)V
goto ifL13
ifL12:
iload 1
iload 2
iload 3
aload 0
getfield Tile.tile I
invokestatic TileGraphic.drawGraphic(IIZI)V
ifL13:
return
.end method
.method public static Rect(IIII)V
.limit stack 10
.limit locals 6
iconst_0
istore 4
iconst_0
istore 5
iload 2
iload 0
isub
iconst_1
iadd
istore 4
iload 3
iload 1
isub
iconst_1
iadd
istore 5
iload 0
iload 4
iconst_1
isub
ineg
if_icmpge jump54
iconst_1
goto jump55
jump54:
iconst_0
jump55:
ifne jump56
iconst_1
goto jump57
jump56:
iconst_0
jump57:
iload 0
sipush 511
if_icmple jump58
iconst_1
goto jump59
jump58:
iconst_0
jump59:
ifne jump60
iconst_1
goto jump61
jump60:
iconst_0
jump61:
iand
iload 1
iload 5
iconst_1
isub
ineg
if_icmpge jump62
iconst_1
goto jump63
jump62:
iconst_0
jump63:
ifne jump64
iconst_1
goto jump65
jump64:
iconst_0
jump65:
iand
iload 1
sipush 255
if_icmple jump66
iconst_1
goto jump67
jump66:
iconst_0
jump67:
ifne jump68
iconst_1
goto jump69
jump68:
iconst_0
jump69:
iand
ifeq ifL14
iload 0
iconst_0
sipush 511
invokestatic Tile.intInInterval(III)I
istore 0
iload 1
iconst_0
sipush 255
invokestatic Tile.intInInterval(III)I
istore 1
iload 2
iconst_0
sipush 511
invokestatic Tile.intInInterval(III)I
istore 2
iload 3
iconst_0
sipush 255
invokestatic Tile.intInInterval(III)I
istore 3
iload 0
iload 1
iload 2
iload 3
invokestatic OS/Screen.drawRectangle(IIII)V
goto ifL15
ifL14:
ifL15:
return
.end method
.method public static intInInterval(III)I
.limit stack 10
.limit locals 3
iload 0
iload 1
if_icmpge jump70
iconst_1
goto jump71
jump70:
iconst_0
jump71:
ifeq ifL16
iload 1
istore 0
goto ifL17
ifL16:
ifL17:
iload 0
iload 2
if_icmple jump72
iconst_1
goto jump73
jump72:
iconst_0
jump73:
ifeq ifL18
iload 2
istore 0
goto ifL19
ifL18:
ifL19:
iload 0
ireturn
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
.method public print()V
.limit stack 10
.limit locals 1
return
.end method
