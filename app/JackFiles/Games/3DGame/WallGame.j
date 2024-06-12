.class public WallGame
.super java/lang/Object
.field static POV I
.field static HALF_POV I
.field static PROJECTIONPLANEHEIGHT I
.field static MAX_INT I
.field static distProjectionPlane I
.field static TILE_SIZE I
.field static trig LTrig;
.field static xStepTable LOS/Array;
.field static yStepTable LOS/Array;
.field map LMap;
.field px I
.field py I
.field pArc I
.field lastCast LOS/Array;
.method public <init>()V
.limit stack 10
.limit locals 1
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield WallGame.px I
aload 0
iconst_0
putfield WallGame.py I
aload 0
iconst_0
putfield WallGame.pArc I
bipush 60
putstatic WallGame.POV I
bipush 30
putstatic WallGame.HALF_POV I
sipush 240
putstatic WallGame.PROJECTIONPLANEHEIGHT I
sipush 8000
putstatic WallGame.distProjectionPlane I
sipush 32767
putstatic WallGame.MAX_INT I
bipush 32
putstatic WallGame.TILE_SIZE I
new Trig
dup
invokespecial Trig.<init>()V
putstatic WallGame.trig LTrig;
aload 0
invokevirtual WallGame.initStepTable()V
aload 0
new OS/Array
dup
getstatic WallGame.POV I
invokespecial OS/Array.<init>(I)V
putfield WallGame.lastCast LOS/Array;
aload 0
invokestatic Level.level1()LMap;
putfield WallGame.map LMap;
aload 0
bipush 72
putfield WallGame.px I
aload 0
bipush 72
putfield WallGame.py I
aload 0
bipush 110
putfield WallGame.pArc I
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
getfield WallGame.map LMap;
invokevirtual Map.dispose()V
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
.method public drawPlayer()V
.limit stack 10
.limit locals 3
iconst_0
istore 1
iconst_0
istore 2
aload 0
getfield WallGame.px I
sipush 256
iadd
istore 1
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 1
aload 0
getfield WallGame.py I
iconst_2
invokestatic OS/Screen.drawCircle(III)V
aload 0
getfield WallGame.pArc I
getstatic WallGame.HALF_POV I
isub
istore 2
iload 2
iconst_0
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq ifL0
iload 2
sipush 360
iadd
istore 2
goto ifL1
ifL0:
ifL1:
iload 1
aload 0
getfield WallGame.py I
iload 1
getstatic WallGame.trig LTrig;
iload 2
invokevirtual Trig.cos(I)I
iconst_5
idiv
iadd
aload 0
getfield WallGame.py I
getstatic WallGame.trig LTrig;
iload 2
invokevirtual Trig.sin(I)I
iconst_5
idiv
iadd
invokestatic OS/Screen.drawLine(IIII)V
aload 0
getfield WallGame.pArc I
getstatic WallGame.HALF_POV I
iadd
istore 2
iload 2
sipush 360
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL2
iload 2
sipush 360
isub
istore 2
goto ifL3
ifL2:
ifL3:
iload 1
aload 0
getfield WallGame.py I
iload 1
getstatic WallGame.trig LTrig;
iload 2
invokevirtual Trig.cos(I)I
iconst_5
idiv
iadd
aload 0
getfield WallGame.py I
getstatic WallGame.trig LTrig;
iload 2
invokevirtual Trig.sin(I)I
iconst_5
idiv
iadd
invokestatic OS/Screen.drawLine(IIII)V
return
.end method
.method public moveForwards(I)Z
.limit stack 10
.limit locals 4
iconst_0
istore 2
iconst_0
istore 3
aload 0
getfield WallGame.px I
getstatic WallGame.trig LTrig;
aload 0
getfield WallGame.pArc I
invokevirtual Trig.cos(I)I
iload 1
imul
bipush 100
idiv
iadd
istore 2
aload 0
getfield WallGame.py I
getstatic WallGame.trig LTrig;
aload 0
getfield WallGame.pArc I
invokevirtual Trig.sin(I)I
iload 1
imul
bipush 100
idiv
iadd
istore 3
aload 0
getfield WallGame.map LMap;
iload 2
getstatic WallGame.TILE_SIZE I
idiv
iload 3
getstatic WallGame.TILE_SIZE I
idiv
invokevirtual Map.isWall(II)Z
ifne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq ifL4
aload 0
iload 2
putfield WallGame.px I
aload 0
iload 3
putfield WallGame.py I
iconst_1
ireturn
ifL4:
iconst_0
ireturn
.end method
.method public moveLeft(I)Z
.limit stack 10
.limit locals 4
iconst_0
istore 2
iconst_0
istore 3
aload 0
getfield WallGame.px I
getstatic WallGame.trig LTrig;
aload 0
getfield WallGame.pArc I
invokevirtual Trig.sin(I)I
iload 1
imul
bipush 100
idiv
iadd
istore 2
aload 0
getfield WallGame.py I
getstatic WallGame.trig LTrig;
aload 0
getfield WallGame.pArc I
invokevirtual Trig.cos(I)I
iload 1
imul
bipush 100
idiv
isub
istore 3
aload 0
getfield WallGame.map LMap;
iload 2
getstatic WallGame.TILE_SIZE I
idiv
iload 3
getstatic WallGame.TILE_SIZE I
idiv
invokevirtual Map.isWall(II)Z
ifne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq ifL6
aload 0
iload 2
putfield WallGame.px I
aload 0
iload 3
putfield WallGame.py I
iconst_1
ireturn
ifL6:
iconst_0
ireturn
.end method
.method public moveBackwards(I)Z
.limit stack 10
.limit locals 4
iconst_0
istore 2
iconst_0
istore 3
aload 0
getfield WallGame.px I
getstatic WallGame.trig LTrig;
aload 0
getfield WallGame.pArc I
invokevirtual Trig.cos(I)I
iload 1
imul
bipush 100
idiv
isub
istore 2
aload 0
getfield WallGame.py I
getstatic WallGame.trig LTrig;
aload 0
getfield WallGame.pArc I
invokevirtual Trig.sin(I)I
iload 1
imul
bipush 100
idiv
isub
istore 3
aload 0
getfield WallGame.map LMap;
iload 2
getstatic WallGame.TILE_SIZE I
idiv
iload 3
getstatic WallGame.TILE_SIZE I
idiv
invokevirtual Map.isWall(II)Z
ifne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq ifL8
aload 0
iload 2
putfield WallGame.px I
aload 0
iload 3
putfield WallGame.py I
iconst_1
ireturn
ifL8:
iconst_0
ireturn
.end method
.method public moveRight(I)Z
.limit stack 10
.limit locals 4
iconst_0
istore 2
iconst_0
istore 3
aload 0
getfield WallGame.px I
getstatic WallGame.trig LTrig;
aload 0
getfield WallGame.pArc I
invokevirtual Trig.sin(I)I
iload 1
imul
bipush 100
idiv
isub
istore 2
aload 0
getfield WallGame.py I
getstatic WallGame.trig LTrig;
aload 0
getfield WallGame.pArc I
invokevirtual Trig.cos(I)I
iload 1
imul
bipush 100
idiv
iadd
istore 3
aload 0
getfield WallGame.map LMap;
iload 2
getstatic WallGame.TILE_SIZE I
idiv
iload 3
getstatic WallGame.TILE_SIZE I
idiv
invokevirtual Map.isWall(II)Z
ifne jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq ifL10
aload 0
iload 2
putfield WallGame.px I
aload 0
iload 3
putfield WallGame.py I
iconst_1
ireturn
ifL10:
iconst_0
ireturn
.end method
.method public rotateLeft(I)V
.limit stack 10
.limit locals 2
aload 0
aload 0
getfield WallGame.pArc I
iload 1
isub
putfield WallGame.pArc I
aload 0
getfield WallGame.pArc I
iconst_0
if_icmpge jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
ifeq ifL12
aload 0
aload 0
getfield WallGame.pArc I
sipush 360
iadd
putfield WallGame.pArc I
goto ifL13
ifL12:
ifL13:
return
.end method
.method public rotateRight(I)V
.limit stack 10
.limit locals 2
aload 0
aload 0
getfield WallGame.pArc I
iload 1
iadd
putfield WallGame.pArc I
aload 0
getfield WallGame.pArc I
sipush 360
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
aload 0
aload 0
getfield WallGame.pArc I
sipush 360
isub
putfield WallGame.pArc I
goto ifL15
ifL14:
ifL15:
return
.end method
.method public drawGrid()V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic WallGame.TILE_SIZE I
istore 1
whileL17:
iload 1
sipush 256
if_icmpge jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
ifeq whileL16
sipush 256
iload 1
sipush 511
iload 1
invokestatic OS/Screen.drawLine(IIII)V
iload 1
getstatic WallGame.TILE_SIZE I
iadd
istore 1
goto whileL17
whileL16:
sipush 256
istore 1
whileL19:
iload 1
sipush 511
if_icmpge jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ifeq whileL18
iload 1
iconst_0
iload 1
sipush 255
invokestatic OS/Screen.drawLine(IIII)V
iload 1
getstatic WallGame.TILE_SIZE I
iadd
istore 1
goto whileL19
whileL18:
return
.end method
.method public drawRay(II)V
.limit stack 10
.limit locals 3
iload 1
iconst_1
ineg
if_icmple jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
iload 1
sipush 256
if_icmpge jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
iand
iload 2
iconst_1
ineg
if_icmple jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
iand
iload 2
sipush 256
if_icmpge jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
iand
ifeq ifL20
iconst_1
invokestatic OS/Screen.setColor(Z)V
sipush 255
aload 0
getfield WallGame.px I
iadd
aload 0
getfield WallGame.py I
sipush 255
iload 1
iadd
iload 2
invokestatic OS/Screen.drawLine(IIII)V
goto ifL21
ifL20:
ifL21:
return
.end method
.method public castToVerticalWall(I)I
.limit stack 10
.limit locals 9
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
iload 1
bipush 90
if_icmpge jump32
iconst_1
goto jump33
jump32:
iconst_0
jump33:
iload 1
sipush 270
if_icmple jump34
iconst_1
goto jump35
jump34:
iconst_0
jump35:
ior
ifeq ifL22
aload 0
getfield WallGame.px I
getstatic WallGame.TILE_SIZE I
idiv
getstatic WallGame.TILE_SIZE I
imul
getstatic WallGame.TILE_SIZE I
iadd
istore 2
getstatic WallGame.TILE_SIZE I
istore 3
goto ifL23
ifL22:
aload 0
getfield WallGame.px I
getstatic WallGame.TILE_SIZE I
idiv
getstatic WallGame.TILE_SIZE I
imul
iconst_1
isub
istore 2
getstatic WallGame.TILE_SIZE I
ineg
istore 3
ifL23:
getstatic WallGame.trig LTrig;
iload 1
invokevirtual Trig.tan(I)I
iload 2
aload 0
getfield WallGame.px I
isub
imul
getstatic WallGame.trig LTrig;
invokevirtual Trig.FIX_POINT()I
idiv
aload 0
getfield WallGame.py I
iadd
istore 4
iload 1
bipush 90
if_icmpne jump36
iconst_1
goto jump37
jump36:
iconst_0
jump37:
iload 1
sipush 270
if_icmpne jump38
iconst_1
goto jump39
jump38:
iconst_0
jump39:
ior
ifeq ifL24
getstatic WallGame.MAX_INT I
istore 5
goto ifL25
ifL24:
iconst_0
istore 8
whileL27:
iload 8
ifne jump40
iconst_1
goto jump41
jump40:
iconst_0
jump41:
ifeq whileL26
iload 2
getstatic WallGame.TILE_SIZE I
idiv
istore 6
iload 4
getstatic WallGame.TILE_SIZE I
idiv
istore 7
iload 6
aload 0
getfield WallGame.map LMap;
invokevirtual Map.width()I
if_icmpge jump42
iconst_1
goto jump43
jump42:
iconst_0
jump43:
ifne jump44
iconst_1
goto jump45
jump44:
iconst_0
jump45:
iload 7
aload 0
getfield WallGame.map LMap;
invokevirtual Map.height()I
if_icmpge jump46
iconst_1
goto jump47
jump46:
iconst_0
jump47:
ifne jump48
iconst_1
goto jump49
jump48:
iconst_0
jump49:
ior
iload 2
iconst_0
if_icmpge jump50
iconst_1
goto jump51
jump50:
iconst_0
jump51:
ior
iload 4
iconst_0
if_icmpge jump52
iconst_1
goto jump53
jump52:
iconst_0
jump53:
ior
ifeq ifL28
iconst_1
istore 8
getstatic WallGame.MAX_INT I
istore 5
goto ifL29
ifL28:
aload 0
getfield WallGame.map LMap;
iload 6
iload 7
invokevirtual Map.isWall(II)Z
ifeq ifL30
iconst_1
istore 8
iload 2
aload 0
getfield WallGame.px I
isub
getstatic WallGame.trig LTrig;
invokevirtual Trig.FIX_POINT()I
imul
getstatic WallGame.trig LTrig;
iload 1
invokevirtual Trig.cos(I)I
idiv
istore 5
goto ifL31
ifL30:
iload 4
getstatic WallGame.yStepTable LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
iadd
istore 4
iload 2
iload 3
iadd
istore 2
ifL31:
ifL29:
goto whileL27
whileL26:
ifL25:
iload 5
ireturn
.end method
.method public castToHorizontalWall(I)I
.limit stack 10
.limit locals 9
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
iload 1
iconst_0
if_icmple jump54
iconst_1
goto jump55
jump54:
iconst_0
jump55:
iload 1
sipush 180
if_icmpge jump56
iconst_1
goto jump57
jump56:
iconst_0
jump57:
iand
ifeq ifL32
aload 0
getfield WallGame.py I
getstatic WallGame.TILE_SIZE I
idiv
getstatic WallGame.TILE_SIZE I
imul
getstatic WallGame.TILE_SIZE I
iadd
istore 2
getstatic WallGame.TILE_SIZE I
istore 3
goto ifL33
ifL32:
aload 0
getfield WallGame.py I
getstatic WallGame.TILE_SIZE I
idiv
getstatic WallGame.TILE_SIZE I
imul
iconst_1
isub
istore 2
getstatic WallGame.TILE_SIZE I
ineg
istore 3
ifL33:
getstatic WallGame.trig LTrig;
iload 1
invokevirtual Trig.itan(I)I
iload 2
aload 0
getfield WallGame.py I
isub
imul
getstatic WallGame.trig LTrig;
invokevirtual Trig.FIX_POINT()I
idiv
aload 0
getfield WallGame.px I
iadd
istore 4
iload 1
iconst_0
if_icmpne jump58
iconst_1
goto jump59
jump58:
iconst_0
jump59:
iload 1
sipush 180
if_icmpne jump60
iconst_1
goto jump61
jump60:
iconst_0
jump61:
ior
ifeq ifL34
getstatic WallGame.MAX_INT I
istore 5
goto ifL35
ifL34:
iconst_0
istore 8
whileL37:
iload 8
ifne jump62
iconst_1
goto jump63
jump62:
iconst_0
jump63:
ifeq whileL36
iload 4
getstatic WallGame.TILE_SIZE I
idiv
istore 6
iload 2
getstatic WallGame.TILE_SIZE I
idiv
istore 7
iload 6
aload 0
getfield WallGame.map LMap;
invokevirtual Map.width()I
if_icmpge jump64
iconst_1
goto jump65
jump64:
iconst_0
jump65:
ifne jump66
iconst_1
goto jump67
jump66:
iconst_0
jump67:
iload 7
aload 0
getfield WallGame.map LMap;
invokevirtual Map.height()I
if_icmpge jump68
iconst_1
goto jump69
jump68:
iconst_0
jump69:
ifne jump70
iconst_1
goto jump71
jump70:
iconst_0
jump71:
ior
iload 4
iconst_0
if_icmpge jump72
iconst_1
goto jump73
jump72:
iconst_0
jump73:
ior
iload 2
iconst_0
if_icmpge jump74
iconst_1
goto jump75
jump74:
iconst_0
jump75:
ior
ifeq ifL38
iconst_1
istore 8
getstatic WallGame.MAX_INT I
istore 5
goto ifL39
ifL38:
aload 0
getfield WallGame.map LMap;
iload 6
iload 7
invokevirtual Map.isWall(II)Z
ifeq ifL40
iconst_1
istore 8
iload 2
aload 0
getfield WallGame.py I
isub
getstatic WallGame.trig LTrig;
invokevirtual Trig.FIX_POINT()I
imul
getstatic WallGame.trig LTrig;
iload 1
invokevirtual Trig.sin(I)I
idiv
istore 5
goto ifL41
ifL40:
iload 4
getstatic WallGame.xStepTable LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
iadd
istore 4
iload 2
iload 3
iadd
istore 2
ifL41:
ifL39:
goto whileL37
whileL36:
ifL35:
iload 5
ireturn
.end method
.method public drawWallSlice(II)V
.limit stack 10
.limit locals 5
iconst_0
istore 3
iconst_0
istore 4
iload 2
iconst_0
if_icmpne jump76
iconst_1
goto jump77
jump76:
iconst_0
jump77:
ifeq ifL42
getstatic WallGame.PROJECTIONPLANEHEIGHT I
istore 3
goto ifL43
ifL42:
getstatic WallGame.distProjectionPlane I
iload 2
idiv
getstatic WallGame.PROJECTIONPLANEHEIGHT I
invokestatic OS/Math.min(II)I
istore 3
ifL43:
getstatic WallGame.PROJECTIONPLANEHEIGHT I
iload 3
isub
iconst_2
idiv
istore 4
iload 1
iconst_4
imul
istore 1
iload 3
iconst_0
if_icmple jump78
iconst_1
goto jump79
jump78:
iconst_0
jump79:
ifeq ifL44
iload 1
iload 4
iload 1
iload 4
iload 3
iadd
invokestatic OS/Screen.drawLine(IIII)V
goto ifL45
ifL44:
ifL45:
return
.end method
.method public render()V
.limit stack 10
.limit locals 7
iconst_0
istore 1
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
aload 0
getfield WallGame.pArc I
bipush 30
isub
istore 2
iload 2
iconst_0
if_icmpge jump80
iconst_1
goto jump81
jump80:
iconst_0
jump81:
ifeq ifL46
sipush 360
iload 2
iadd
istore 2
goto ifL47
ifL46:
ifL47:
whileL49:
iload 1
getstatic WallGame.POV I
if_icmpge jump82
iconst_1
goto jump83
jump82:
iconst_0
jump83:
ifeq whileL48
aload 0
iload 2
invokevirtual WallGame.castToHorizontalWall(I)I
istore 3
aload 0
iload 2
invokevirtual WallGame.castToVerticalWall(I)I
istore 4
iload 1
bipush 30
if_icmpge jump84
iconst_1
goto jump85
jump84:
iconst_0
jump85:
ifeq ifL50
getstatic WallGame.trig LTrig;
iload 1
bipush 30
isub
sipush 360
iadd
invokevirtual Trig.cos(I)I
iload 3
iload 4
invokestatic OS/Math.min(II)I
imul
bipush 100
idiv
istore 5
goto ifL51
ifL50:
getstatic WallGame.trig LTrig;
iload 1
bipush 30
isub
invokevirtual Trig.cos(I)I
iload 3
iload 4
invokestatic OS/Math.min(II)I
imul
bipush 100
idiv
istore 5
ifL51:
aload 0
getfield WallGame.lastCast LOS/Array;
iload 1
iload 5
invokevirtual OS/Array.set(II)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
aload 0
iload 1
iload 5
invokevirtual WallGame.drawWallSlice(II)V
iload 1
iconst_1
iadd
istore 1
iload 2
iconst_1
iadd
istore 2
iload 2
sipush 360
if_icmpge jump86
iconst_1
goto jump87
jump86:
iconst_0
jump87:
ifne jump88
iconst_1
goto jump89
jump88:
iconst_0
jump89:
ifeq ifL52
iload 2
sipush 360
isub
istore 2
goto ifL53
ifL52:
ifL53:
goto whileL49
whileL48:
return
.end method
.method public blankWalls()V
.limit stack 10
.limit locals 1
iconst_0
invokestatic OS/Screen.setColor(Z)V
iconst_0
iconst_0
getstatic WallGame.POV I
iconst_4
imul
getstatic WallGame.PROJECTIONPLANEHEIGHT I
invokestatic OS/Screen.drawRectangle(IIII)V
return
.end method
.method public draw()V
.limit stack 10
.limit locals 1
aload 0
getfield WallGame.map LMap;
iconst_0
sipush 256
iconst_0
getstatic WallGame.TILE_SIZE I
invokevirtual Map.draw(ZIII)V
aload 0
invokevirtual WallGame.drawPlayer()V
aload 0
invokevirtual WallGame.blankWalls()V
aload 0
invokevirtual WallGame.render()V
return
.end method
.method public run()V
.limit stack 10
.limit locals 3
iconst_0
istore 1
iconst_0
istore 2
aload 0
getfield WallGame.map LMap;
iconst_1
sipush 256
iconst_0
getstatic WallGame.TILE_SIZE I
invokevirtual Map.draw(ZIII)V
aload 0
invokevirtual WallGame.draw()V
bipush 22
iconst_0
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 31
invokespecial OS/String.<init>(I)V
bipush 77
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 118
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 65
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 119
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 107
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 82
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 118
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 44
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 98
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iconst_0
istore 2
whileL55:
iload 2
ifne jump90
iconst_1
goto jump91
jump90:
iconst_0
jump91:
ifeq whileL54
whileL57:
iload 1
iconst_0
if_icmpne jump92
iconst_1
goto jump93
jump92:
iconst_0
jump93:
ifeq whileL56
invokestatic OS/Keyboard.keyPressed()C
istore 1
goto whileL57
whileL56:
iload 1
bipush 81
if_icmpne jump94
iconst_1
goto jump95
jump94:
iconst_0
jump95:
ifeq ifL58
iconst_1
istore 2
goto ifL59
ifL58:
ifL59:
iload 1
sipush 130
if_icmpne jump96
iconst_1
goto jump97
jump96:
iconst_0
jump97:
ifeq ifL60
aload 0
iconst_5
invokevirtual WallGame.moveLeft(I)Z
ifeq ifL62
aload 0
invokevirtual WallGame.draw()V
goto ifL63
ifL62:
ifL63:
goto ifL61
ifL60:
ifL61:
iload 1
sipush 131
if_icmpne jump98
iconst_1
goto jump99
jump98:
iconst_0
jump99:
ifeq ifL64
aload 0
iconst_5
invokevirtual WallGame.moveForwards(I)Z
ifeq ifL66
aload 0
invokevirtual WallGame.draw()V
goto ifL67
ifL66:
ifL67:
goto ifL65
ifL64:
ifL65:
iload 1
sipush 132
if_icmpne jump100
iconst_1
goto jump101
jump100:
iconst_0
jump101:
ifeq ifL68
aload 0
iconst_5
invokevirtual WallGame.moveRight(I)Z
ifeq ifL70
aload 0
invokevirtual WallGame.draw()V
goto ifL71
ifL70:
ifL71:
goto ifL69
ifL68:
ifL69:
iload 1
sipush 133
if_icmpne jump102
iconst_1
goto jump103
jump102:
iconst_0
jump103:
ifeq ifL72
aload 0
iconst_5
invokevirtual WallGame.moveBackwards(I)Z
ifeq ifL74
aload 0
invokevirtual WallGame.draw()V
goto ifL75
ifL74:
ifL75:
goto ifL73
ifL72:
ifL73:
iload 1
bipush 86
if_icmpne jump104
iconst_1
goto jump105
jump104:
iconst_0
jump105:
ifeq ifL76
aload 0
iconst_5
invokevirtual WallGame.rotateLeft(I)V
aload 0
invokevirtual WallGame.draw()V
goto ifL77
ifL76:
ifL77:
iload 1
bipush 66
if_icmpne jump106
iconst_1
goto jump107
jump106:
iconst_0
jump107:
ifeq ifL78
aload 0
iconst_5
invokevirtual WallGame.rotateRight(I)V
aload 0
invokevirtual WallGame.draw()V
goto ifL79
ifL78:
ifL79:
whileL81:
iload 1
iconst_0
if_icmpne jump108
iconst_1
goto jump109
jump108:
iconst_0
jump109:
ifne jump110
iconst_1
goto jump111
jump110:
iconst_0
jump111:
ifeq whileL80
invokestatic OS/Keyboard.keyPressed()C
istore 1
goto whileL81
whileL80:
goto whileL55
whileL54:
return
.end method
.method public initStepTable()V
.limit stack 10
.limit locals 2
iconst_0
istore 1
new OS/Array
dup
sipush 360
invokespecial OS/Array.<init>(I)V
putstatic WallGame.xStepTable LOS/Array;
new OS/Array
dup
sipush 360
invokespecial OS/Array.<init>(I)V
putstatic WallGame.yStepTable LOS/Array;
whileL83:
iload 1
sipush 360
if_icmpge jump112
iconst_1
goto jump113
jump112:
iconst_0
jump113:
ifeq whileL82
getstatic WallGame.xStepTable LOS/Array;
iload 1
getstatic WallGame.TILE_SIZE I
getstatic WallGame.trig LTrig;
iload 1
invokevirtual Trig.itan(I)I
imul
getstatic WallGame.trig LTrig;
invokevirtual Trig.FIX_POINT()I
idiv
invokevirtual OS/Array.set(II)V
iload 1
bipush 90
if_icmpge jump114
iconst_1
goto jump115
jump114:
iconst_0
jump115:
ifne jump116
iconst_1
goto jump117
jump116:
iconst_0
jump117:
iload 1
sipush 270
if_icmpge jump118
iconst_1
goto jump119
jump118:
iconst_0
jump119:
iand
ifeq ifL84
getstatic WallGame.xStepTable LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
iconst_0
if_icmple jump120
iconst_1
goto jump121
jump120:
iconst_0
jump121:
ifeq ifL86
getstatic WallGame.xStepTable LOS/Array;
iload 1
getstatic WallGame.xStepTable LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
ineg
invokevirtual OS/Array.set(II)V
goto ifL87
ifL86:
ifL87:
goto ifL85
ifL84:
getstatic WallGame.xStepTable LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
iconst_0
if_icmpge jump122
iconst_1
goto jump123
jump122:
iconst_0
jump123:
ifeq ifL88
getstatic WallGame.xStepTable LOS/Array;
iload 1
getstatic WallGame.xStepTable LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
ineg
invokevirtual OS/Array.set(II)V
goto ifL89
ifL88:
ifL89:
ifL85:
getstatic WallGame.yStepTable LOS/Array;
iload 1
getstatic WallGame.TILE_SIZE I
getstatic WallGame.trig LTrig;
iload 1
invokevirtual Trig.tan(I)I
imul
getstatic WallGame.trig LTrig;
invokevirtual Trig.FIX_POINT()I
idiv
invokevirtual OS/Array.set(II)V
iload 1
iconst_0
if_icmpge jump124
iconst_1
goto jump125
jump124:
iconst_0
jump125:
ifne jump126
iconst_1
goto jump127
jump126:
iconst_0
jump127:
iload 1
sipush 180
if_icmpge jump128
iconst_1
goto jump129
jump128:
iconst_0
jump129:
iand
ifeq ifL90
getstatic WallGame.yStepTable LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
iconst_0
if_icmpge jump130
iconst_1
goto jump131
jump130:
iconst_0
jump131:
ifeq ifL92
getstatic WallGame.yStepTable LOS/Array;
iload 1
getstatic WallGame.yStepTable LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
ineg
invokevirtual OS/Array.set(II)V
goto ifL93
ifL92:
ifL93:
goto ifL91
ifL90:
getstatic WallGame.yStepTable LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
iconst_0
if_icmple jump132
iconst_1
goto jump133
jump132:
iconst_0
jump133:
ifeq ifL94
getstatic WallGame.yStepTable LOS/Array;
iload 1
getstatic WallGame.yStepTable LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
ineg
invokevirtual OS/Array.set(II)V
goto ifL95
ifL94:
ifL95:
ifL91:
iload 1
iconst_1
iadd
istore 1
goto whileL83
whileL82:
return
.end method
