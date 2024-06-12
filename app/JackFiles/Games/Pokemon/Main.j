.class public Main
.super java/lang/Object
.field static currentTileset LTileSet;
.field static Updating Z
.field static viewX I
.field static viewY I
.field static inside Z
.field static GlobalEvent I
.field static currentMap I
.field static mapchange Z
.field static inMenu Z
.field static direction I
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 1
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
invokestatic Main.startGame()V
return
.end method
.method public static startGame()V
.limit stack 10
.limit locals 2
iconst_0
istore 0
iconst_5
invokestatic Main.setPlayerTileX(I)V
iconst_5
invokestatic Main.setPlayerTileY(I)V
iconst_0
invokestatic Event.setEventCounter(I)V
new TileSet
dup
invokespecial TileSet.<init>()V
putstatic Main.currentTileset LTileSet;
iconst_2
invokestatic CreateMap256.createMap(I)LMapBlock256;
astore 1
iconst_0
putstatic Main.GlobalEvent I
iconst_2
putstatic Main.currentMap I
iconst_0
putstatic Main.mapchange Z
iconst_0
putstatic Main.inMenu Z
iconst_1
putstatic Main.Updating Z
iconst_3
putstatic Main.direction I
whileL1:
iconst_1
ifeq whileL0
getstatic Main.mapchange Z
ifeq ifL2
aload 1
invokestatic Main.drawCurrent(LMapBlock256;)V
aload 1
invokevirtual MapBlock256.dispose()V
getstatic Main.currentMap I
invokestatic CreateMap256.createMap(I)LMapBlock256;
astore 1
iconst_0
putstatic Main.mapchange Z
iconst_1
putstatic Main.Updating Z
goto ifL3
ifL2:
ifL3:
getstatic Main.inMenu Z
ifeq ifL4
goto ifL5
ifL4:
ifL5:
getstatic Main.Updating Z
ifeq ifL6
iconst_0
putstatic Main.Updating Z
aload 1
invokestatic Main.drawCurrent(LMapBlock256;)V
goto ifL7
ifL6:
ifL7:
invokestatic OS/Keyboard.keyPressed()C
istore 0
iload 0
iconst_0
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
ifeq ifL8
iconst_1
putstatic Main.Updating Z
goto ifL9
ifL8:
ifL9:
iload 0
aload 1
invokestatic Main.update(ILMapBlock256;)V
bipush 30
invokestatic OS/Sys.wait(I)V
goto whileL1
whileL0:
return
.end method
.method public static update(ILMapBlock256;)V
.limit stack 10
.limit locals 2
getstatic Main.inMenu Z
ifne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL10
iload 0
sipush 130
if_icmpne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq ifL12
aload 1
invokestatic Main.goLeft(LMapBlock256;)V
goto ifL13
ifL12:
ifL13:
iload 0
sipush 131
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq ifL14
aload 1
invokestatic Main.goUp(LMapBlock256;)V
goto ifL15
ifL14:
ifL15:
iload 0
sipush 132
if_icmpne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq ifL16
aload 1
invokestatic Main.goRight(LMapBlock256;)V
goto ifL17
ifL16:
ifL17:
iload 0
sipush 133
if_icmpne jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq ifL18
aload 1
invokestatic Main.goDown(LMapBlock256;)V
goto ifL19
ifL18:
ifL19:
goto ifL11
ifL10:
ifL11:
iload 0
bipush 65
if_icmpne jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
iload 0
bipush 97
if_icmpne jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
ior
ifeq ifL20
getstatic Main.direction I
iconst_0
if_icmpne jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
ifeq ifL22
invokestatic Main.getPlayerTileX()I
iconst_1
isub
invokestatic Main.getPlayerTileY()I
invokestatic Event.interact(II)V
goto ifL23
ifL22:
ifL23:
getstatic Main.direction I
iconst_1
if_icmpne jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
ifeq ifL24
invokestatic Main.getPlayerTileX()I
invokestatic Main.getPlayerTileY()I
iconst_1
isub
invokestatic Event.interact(II)V
goto ifL25
ifL24:
ifL25:
getstatic Main.direction I
iconst_2
if_icmpne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ifeq ifL26
invokestatic Main.getPlayerTileX()I
iconst_1
iadd
invokestatic Main.getPlayerTileY()I
invokestatic Event.interact(II)V
goto ifL27
ifL26:
ifL27:
getstatic Main.direction I
iconst_3
if_icmpne jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ifeq ifL28
invokestatic Main.getPlayerTileX()I
invokestatic Main.getPlayerTileY()I
iconst_1
iadd
invokestatic Event.interact(II)V
goto ifL29
ifL28:
ifL29:
goto ifL21
ifL20:
ifL21:
return
.end method
.method public static drawCurrent(LMapBlock256;)V
.limit stack 10
.limit locals 1
getstatic Main.inMenu Z
ifne jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
ifeq ifL30
aload 0
iconst_0
iconst_0
getstatic Main.viewX I
getstatic Main.viewY I
invokevirtual MapBlock256.draw(IIII)V
sipush 240
bipush 112
iconst_0
iconst_2
invokestatic TileGraphic.drawGraphic(IIZI)V
goto ifL31
ifL30:
ifL31:
return
.end method
.method public static drawAtTile(III)V
.limit stack 10
.limit locals 3
iload 0
bipush 32
imul
getstatic Main.viewX I
isub
iload 1
bipush 32
imul
getstatic Main.viewY I
isub
iconst_0
iload 2
invokestatic TileGraphic.drawGraphic(IIZI)V
return
.end method
.method public static goUp(LMapBlock256;)V
.limit stack 10
.limit locals 6
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 5
iconst_1
putstatic Main.direction I
invokestatic Main.getPlayerTileX()I
istore 1
invokestatic Main.getPlayerTileY()I
istore 2
iload 2
iconst_1
isub
istore 2
aload 0
iload 1
iload 2
invokevirtual MapBlock256.get(II)I
istore 3
getstatic Main.currentTileset LTileSet;
iload 3
invokevirtual TileSet.getTile(I)LTile;
astore 4
aload 4
invokevirtual Tile.getSolid()Z
istore 5
iload 5
ifne jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
ifeq ifL32
iload 1
invokestatic Main.setPlayerTileX(I)V
iload 2
invokestatic Main.setPlayerTileY(I)V
iload 1
iload 2
invokestatic Event.WalkOn(II)V
goto ifL33
ifL32:
ifL33:
return
.end method
.method public static goDown(LMapBlock256;)V
.limit stack 10
.limit locals 6
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 5
iconst_3
putstatic Main.direction I
invokestatic Main.getPlayerTileX()I
istore 1
invokestatic Main.getPlayerTileY()I
istore 2
iload 2
iconst_1
iadd
istore 2
aload 0
iload 1
iload 2
invokevirtual MapBlock256.get(II)I
istore 3
getstatic Main.currentTileset LTileSet;
iload 3
invokevirtual TileSet.getTile(I)LTile;
astore 4
aload 4
invokevirtual Tile.getSolid()Z
istore 5
iload 5
ifne jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
ifeq ifL34
iload 1
invokestatic Main.setPlayerTileX(I)V
iload 2
invokestatic Main.setPlayerTileY(I)V
iload 1
iload 2
invokestatic Event.WalkOn(II)V
goto ifL35
ifL34:
ifL35:
return
.end method
.method public static goLeft(LMapBlock256;)V
.limit stack 10
.limit locals 6
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 5
iconst_0
putstatic Main.direction I
invokestatic Main.getPlayerTileX()I
istore 1
invokestatic Main.getPlayerTileY()I
istore 2
iload 1
iconst_1
isub
istore 1
aload 0
iload 1
iload 2
invokevirtual MapBlock256.get(II)I
istore 3
getstatic Main.currentTileset LTileSet;
iload 3
invokevirtual TileSet.getTile(I)LTile;
astore 4
aload 4
invokevirtual Tile.getSolid()Z
istore 5
iload 5
ifne jump32
iconst_1
goto jump33
jump32:
iconst_0
jump33:
ifeq ifL36
iload 1
invokestatic Main.setPlayerTileX(I)V
iload 2
invokestatic Main.setPlayerTileY(I)V
iload 1
iload 2
invokestatic Event.WalkOn(II)V
goto ifL37
ifL36:
ifL37:
return
.end method
.method public static goRight(LMapBlock256;)V
.limit stack 10
.limit locals 6
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 5
iconst_2
putstatic Main.direction I
invokestatic Main.getPlayerTileX()I
istore 1
invokestatic Main.getPlayerTileY()I
istore 2
iload 1
iconst_1
iadd
istore 1
aload 0
iload 1
iload 2
invokevirtual MapBlock256.get(II)I
istore 3
getstatic Main.currentTileset LTileSet;
iload 3
invokevirtual TileSet.getTile(I)LTile;
astore 4
aload 4
invokevirtual Tile.getSolid()Z
istore 5
iload 5
ifne jump34
iconst_1
goto jump35
jump34:
iconst_0
jump35:
ifeq ifL38
iload 1
invokestatic Main.setPlayerTileX(I)V
iload 2
invokestatic Main.setPlayerTileY(I)V
iload 1
iload 2
invokestatic Event.WalkOn(II)V
goto ifL39
ifL38:
ifL39:
return
.end method
.method public static getPlayerDirection()I
.limit stack 10
.limit locals 0
getstatic Main.direction I
ireturn
.end method
.method public static getPlayerX()I
.limit stack 10
.limit locals 0
getstatic Main.viewX I
sipush 239
iadd
ireturn
.end method
.method public static getPlayerY()I
.limit stack 10
.limit locals 0
getstatic Main.viewY I
bipush 112
iadd
ireturn
.end method
.method public static setPlayerX(I)V
.limit stack 10
.limit locals 1
iload 0
sipush 239
isub
putstatic Main.viewX I
return
.end method
.method public static setPlayerY(I)V
.limit stack 10
.limit locals 1
iload 0
bipush 112
isub
putstatic Main.viewY I
return
.end method
.method public static setPlayerTileX(I)V
.limit stack 10
.limit locals 1
iload 0
bipush 32
imul
invokestatic Main.setPlayerX(I)V
return
.end method
.method public static setPlayerTileY(I)V
.limit stack 10
.limit locals 1
iload 0
bipush 32
imul
invokestatic Main.setPlayerY(I)V
return
.end method
.method public static getPlayerTileX()I
.limit stack 10
.limit locals 1
iconst_0
istore 0
invokestatic Main.getPlayerX()I
istore 0
iload 0
bipush 32
idiv
ireturn
.end method
.method public static getPlayerTileY()I
.limit stack 10
.limit locals 1
iconst_0
istore 0
invokestatic Main.getPlayerY()I
istore 0
iload 0
bipush 32
idiv
ireturn
.end method
.method public static getInside()Z
.limit stack 10
.limit locals 0
getstatic Main.inside Z
ireturn
.end method
.method public static setInside(Z)V
.limit stack 10
.limit locals 1
iload 0
putstatic Main.inside Z
return
.end method
.method public static getEvent()Z
.limit stack 10
.limit locals 0
getstatic Main.GlobalEvent I
ireturn
.end method
.method public static setEvent(I)V
.limit stack 10
.limit locals 1
iload 0
putstatic Main.GlobalEvent I
return
.end method
.method public static getMap()I
.limit stack 10
.limit locals 0
getstatic Main.currentMap I
ireturn
.end method
.method public static setMap(I)V
.limit stack 10
.limit locals 1
iload 0
putstatic Main.currentMap I
return
.end method
.method public static getviewX()I
.limit stack 10
.limit locals 0
getstatic Main.viewX I
ireturn
.end method
.method public static getviewXY()I
.limit stack 10
.limit locals 0
getstatic Main.viewY I
ireturn
.end method
.method public static getUpdating()Z
.limit stack 10
.limit locals 0
getstatic Main.Updating Z
ireturn
.end method
.method public static getCurrentTileSet()LTileSet;
.limit stack 10
.limit locals 0
getstatic Main.currentTileset LTileSet;
areturn
.end method
.method public static getinMenu()Z
.limit stack 10
.limit locals 0
getstatic Main.inMenu Z
ireturn
.end method
.method public static setinMenu(Z)V
.limit stack 10
.limit locals 1
iload 0
putstatic Main.inMenu Z
return
.end method
.method public static getMapChange()Z
.limit stack 10
.limit locals 0
getstatic Main.mapchange Z
ireturn
.end method
.method public static setMapChange(Z)V
.limit stack 10
.limit locals 1
iload 0
putstatic Main.mapchange Z
return
.end method
