.class public MapLine
.super java/lang/Object
.field Line LOS/Array;
.method public <init>()V
.limit stack 10
.limit locals 1
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
new OS/Array
dup
iconst_2
invokespecial OS/Array.<init>(I)V
putfield MapLine.Line LOS/Array;
aload 0
getfield MapLine.Line LOS/Array;
iconst_0
iconst_0
invokevirtual OS/Array.set(II)V
aload 0
getfield MapLine.Line LOS/Array;
iconst_1
iconst_0
invokevirtual OS/Array.set(II)V
invokestatic Main.getInside()Z
ifeq ifL0
aload 0
getfield MapLine.Line LOS/Array;
iconst_0
iconst_1
invokevirtual OS/Array.set(II)V
aload 0
getfield MapLine.Line LOS/Array;
iconst_1
iconst_1
invokevirtual OS/Array.set(II)V
goto ifL1
ifL0:
ifL1:
return
.end method
.method public getX(I)I
.limit stack 10
.limit locals 2
aload 0
getfield MapLine.Line LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
ireturn
.end method
.method public set(II)V
.limit stack 10
.limit locals 3
aload 0
getfield MapLine.Line LOS/Array;
iload 1
iload 2
invokevirtual OS/Array.set(II)V
return
.end method
.method public getEvent(I)I
.limit stack 10
.limit locals 2
aconst_null
ireturn
.end method
.method public setEvent(II)V
.limit stack 10
.limit locals 3
return
.end method
.method public draw(II)V
.limit stack 10
.limit locals 5
invokestatic Main.getCurrentTileSet()LTileSet;
astore 3
aload 3
aload 0
getfield MapLine.Line LOS/Array;
iconst_0
invokevirtual OS/Array.get(I)I
invokevirtual TileSet.getTile(I)LTile;
astore 4
aload 4
iload 1
iload 2
iconst_0
invokevirtual Tile.drawTile(IIZ)V
aload 3
aload 0
getfield MapLine.Line LOS/Array;
iconst_1
invokevirtual OS/Array.get(I)I
invokevirtual TileSet.getTile(I)LTile;
astore 4
aload 4
iload 1
bipush 32
iadd
iload 2
iconst_0
invokevirtual Tile.drawTile(IIZ)V
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
getfield MapLine.Line LOS/Array;
invokevirtual OS/Array.dispose()V
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
.method public print()V
.limit stack 10
.limit locals 1
aload 0
getfield MapLine.Line LOS/Array;
iconst_0
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
aload 0
getfield MapLine.Line LOS/Array;
iconst_1
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
return
.end method
