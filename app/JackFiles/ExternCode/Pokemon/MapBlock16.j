.class public MapBlock16
.super java/lang/Object
.field Block LOS/Array;
.method public <init>()V
.limit stack 10
.limit locals 2
aload 0
invokespecial java/lang/Object.<init>()V
iconst_0
istore 1
aload 0
new OS/Array
dup
iconst_4
invokespecial OS/Array.<init>(I)V
putfield MapBlock16.Block LOS/Array;
iconst_0
istore 1
whileL1:
iload 1
iconst_4
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
aload 0
getfield MapBlock16.Block LOS/Array;
iload 1
new MapBlock4
dup
invokespecial MapBlock4.<init>()V
invokevirtual OS/Array.set(II)V
iload 1
iconst_1
iadd
istore 1
goto whileL1
whileL0:
return
.end method
.method public get(II)I
.limit stack 10
.limit locals 6
iconst_0
istore 4
iconst_0
istore 5
aload 0
getfield MapBlock16.Block LOS/Array;
iconst_0
invokevirtual OS/Array.get(I)I
astore 3
iload 1
iconst_2
idiv
istore 4
iload 2
iconst_2
idiv
istore 5
aload 0
getfield MapBlock16.Block LOS/Array;
iconst_2
iload 5
imul
iload 4
iadd
invokevirtual OS/Array.get(I)I
astore 3
iload 1
iconst_2
invokestatic LibExt.mod(II)I
istore 4
iload 2
iconst_2
invokestatic LibExt.mod(II)I
istore 5
aload 3
iload 4
iload 5
invokevirtual MapBlock4.get(II)I
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
iconst_2
idiv
istore 5
iload 2
iconst_2
idiv
istore 6
aload 0
getfield MapBlock16.Block LOS/Array;
iconst_2
iload 6
imul
iload 5
iadd
invokevirtual OS/Array.get(I)I
astore 4
iload 1
iconst_2
invokestatic LibExt.mod(II)I
istore 5
iload 2
iconst_2
invokestatic LibExt.mod(II)I
istore 6
aload 4
iload 5
iload 6
iload 3
invokevirtual MapBlock4.set(III)V
return
.end method
.method public getEvent(II)I
.limit stack 10
.limit locals 6
iconst_0
istore 4
iconst_0
istore 5
aload 0
getfield MapBlock16.Block LOS/Array;
iconst_0
invokevirtual OS/Array.get(I)I
astore 3
iload 1
iconst_2
idiv
istore 4
iload 2
iconst_2
idiv
istore 5
aload 0
getfield MapBlock16.Block LOS/Array;
iconst_2
iload 5
imul
iload 4
iadd
invokevirtual OS/Array.get(I)I
astore 3
iload 1
iconst_2
invokestatic LibExt.mod(II)I
istore 4
iload 2
iconst_2
invokestatic LibExt.mod(II)I
istore 5
aload 3
iload 4
iload 5
invokevirtual MapBlock4.getEvent(II)I
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
iconst_2
idiv
istore 5
iload 2
iconst_2
idiv
istore 6
aload 0
getfield MapBlock16.Block LOS/Array;
iconst_2
iload 6
imul
iload 5
iadd
invokevirtual OS/Array.get(I)I
astore 4
iload 1
iconst_2
invokestatic LibExt.mod(II)I
istore 5
iload 2
iconst_2
invokestatic LibExt.mod(II)I
istore 6
aload 4
iload 5
iload 6
iload 3
invokevirtual MapBlock4.setEvent(III)V
return
.end method
.method public draw(II)V
.limit stack 10
.limit locals 4
iload 1
bipush 127
ineg
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
iload 2
bipush 127
ineg
if_icmpge jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ior
iload 1
sipush 511
if_icmple jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ior
iload 2
sipush 255
if_icmple jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ior
ifeq ifL2
return
ifL2:
aload 0
getfield MapBlock16.Block LOS/Array;
iconst_0
invokevirtual OS/Array.get(I)I
astore 3
aload 3
iload 1
iload 2
invokevirtual MapBlock4.draw(II)V
aload 0
getfield MapBlock16.Block LOS/Array;
iconst_1
invokevirtual OS/Array.get(I)I
astore 3
aload 3
iload 1
bipush 64
iadd
iload 2
invokevirtual MapBlock4.draw(II)V
aload 0
getfield MapBlock16.Block LOS/Array;
iconst_2
invokevirtual OS/Array.get(I)I
astore 3
aload 3
iload 1
iload 2
bipush 64
iadd
invokevirtual MapBlock4.draw(II)V
aload 0
getfield MapBlock16.Block LOS/Array;
iconst_3
invokevirtual OS/Array.get(I)I
astore 3
aload 3
iload 1
bipush 64
iadd
iload 2
bipush 64
iadd
invokevirtual MapBlock4.draw(II)V
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 3
iconst_0
istore 2
iconst_0
istore 2
whileL5:
iload 2
iconst_4
if_icmpge jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq whileL4
aload 0
getfield MapBlock16.Block LOS/Array;
iload 2
invokevirtual OS/Array.get(I)I
astore 1
aload 1
invokevirtual MapBlock4.dispose()V
goto whileL5
whileL4:
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
