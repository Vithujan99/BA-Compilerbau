.class public TileSet
.super java/lang/Object
.field Tiles LOS/Array;
.field static TileLength I
.method public <init>()V
.limit stack 10
.limit locals 2
aload 0
invokespecial java/lang/Object.<init>()V
iconst_0
istore 1
bipush 23
putstatic TileSet.TileLength I
aload 0
new OS/Array
dup
getstatic TileSet.TileLength I
invokespecial OS/Array.<init>(I)V
putfield TileSet.Tiles LOS/Array;
whileL1:
iload 1
getstatic TileSet.TileLength I
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
aload 0
getfield TileSet.Tiles LOS/Array;
iload 1
new Tile
dup
iload 1
invokespecial Tile.<init>(I)V
invokevirtual OS/Array.set(II)V
iload 1
iconst_1
iadd
istore 1
goto whileL1
whileL0:
return
.end method
.method public getTile(I)LTile;
.limit stack 10
.limit locals 3
iload 1
iconst_0
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
iload 1
getstatic TileSet.TileLength I
iconst_1
isub
if_icmple jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ior
ifeq ifL2
aload 0
getfield TileSet.Tiles LOS/Array;
iconst_0
invokevirtual OS/Array.get(I)I
areturn
ifL2:
aload 0
getfield TileSet.Tiles LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
areturn
.end method
.method public static getTileLength()I
.limit stack 10
.limit locals 0
getstatic TileSet.TileLength I
ireturn
.end method
.method public dispose()V
.limit stack 10
.limit locals 3
iconst_0
istore 1
iconst_0
istore 1
whileL5:
iload 1
bipush 50
if_icmpge jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq whileL4
aload 0
getfield TileSet.Tiles LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
astore 2
aload 2
invokevirtual Tile.dispose()V
iload 1
iconst_1
iadd
istore 1
goto whileL5
whileL4:
return
.end method
.method public print()V
.limit stack 10
.limit locals 2
aload 0
getfield TileSet.Tiles LOS/Array;
iconst_0
invokevirtual OS/Array.get(I)I
astore 1
aload 1
invokevirtual Tile.print()V
aload 0
getfield TileSet.Tiles LOS/Array;
iconst_1
invokevirtual OS/Array.get(I)I
astore 1
aload 1
invokevirtual Tile.print()V
return
.end method
