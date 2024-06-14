.class public MapBlock4
.super java/lang/Object
.field Block LOS/Array;
.method public <init>()V
.limit stack 10
.limit locals 2
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
new OS/Array
dup
iconst_2
invokespecial OS/Array.<init>(I)V
putfield MapBlock4.Block LOS/Array;
aload 0
getfield MapBlock4.Block LOS/Array;
iconst_0
new MapLine
dup
invokespecial MapLine.<init>()V
invokevirtual OS/Array.set(II)V
aload 0
getfield MapBlock4.Block LOS/Array;
iconst_1
new MapLine
dup
invokespecial MapLine.<init>()V
invokevirtual OS/Array.set(II)V
return
.end method
.method public get(II)I
.limit stack 10
.limit locals 4
aload 0
getfield MapBlock4.Block LOS/Array;
iload 2
invokevirtual OS/Array.get(I)I
astore 3
aload 3
iload 1
invokevirtual MapLine.getX(I)I
ireturn
.end method
.method public set(III)V
.limit stack 10
.limit locals 5
aload 0
getfield MapBlock4.Block LOS/Array;
iload 2
invokevirtual OS/Array.get(I)I
astore 4
aload 4
iload 1
iload 3
invokevirtual MapLine.set(II)V
return
.end method
.method public getEvent(II)I
.limit stack 10
.limit locals 4
aload 0
getfield MapBlock4.Block LOS/Array;
iload 2
invokevirtual OS/Array.get(I)I
astore 3
aload 3
iload 1
invokevirtual MapLine.getEvent(I)I
ireturn
.end method
.method public setEvent(III)V
.limit stack 10
.limit locals 5
aload 0
getfield MapBlock4.Block LOS/Array;
iload 2
invokevirtual OS/Array.get(I)I
astore 4
aload 4
iload 1
iload 3
invokevirtual MapLine.setEvent(II)V
return
.end method
.method public draw(II)V
.limit stack 10
.limit locals 4
iload 1
bipush 63
ineg
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
iload 2
bipush 63
ineg
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ior
iload 1
sipush 511
if_icmple jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ior
iload 2
sipush 255
if_icmple jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ior
ifeq ifL0
return
ifL0:
aload 0
getfield MapBlock4.Block LOS/Array;
iconst_0
invokevirtual OS/Array.get(I)I
astore 3
aload 3
iload 1
iload 2
invokevirtual MapLine.draw(II)V
aload 0
getfield MapBlock4.Block LOS/Array;
iconst_1
invokevirtual OS/Array.get(I)I
astore 3
aload 3
iload 1
iload 2
bipush 32
iadd
invokevirtual MapLine.draw(II)V
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 2
aload 0
getfield MapBlock4.Block LOS/Array;
iconst_0
invokevirtual OS/Array.get(I)I
astore 1
aload 1
invokevirtual MapLine.dispose()V
aload 0
getfield MapBlock4.Block LOS/Array;
iconst_1
invokevirtual OS/Array.get(I)I
astore 1
aload 1
invokevirtual MapLine.dispose()V
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
.method public print()V
.limit stack 10
.limit locals 2
aload 0
getfield MapBlock4.Block LOS/Array;
iconst_0
invokevirtual OS/Array.get(I)I
astore 1
aload 1
invokevirtual MapLine.print()V
aload 0
getfield MapBlock4.Block LOS/Array;
iconst_1
invokevirtual OS/Array.get(I)I
astore 1
aload 1
invokevirtual MapLine.print()V
return
.end method
