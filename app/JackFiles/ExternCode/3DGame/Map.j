.class public Map
.super java/lang/Object
.field width I
.field height I
.field map LOS/Array;
.method public <init>(II)V
.limit stack 10
.limit locals 4
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield Map.width I
aload 0
iconst_0
putfield Map.height I
iconst_0
istore 3
aload 0
iload 1
putfield Map.width I
aload 0
iload 2
putfield Map.height I
aload 0
new OS/Array
dup
aload 0
getfield Map.width I
aload 0
getfield Map.height I
imul
invokespecial OS/Array.<init>(I)V
putfield Map.map LOS/Array;
iconst_0
istore 3
return
.end method
.method public setWall(II)V
.limit stack 10
.limit locals 3
aload 0
getfield Map.map LOS/Array;
iload 2
aload 0
getfield Map.width I
imul
iload 1
iadd
iconst_1
invokevirtual OS/Array.set(II)V
return
.end method
.method public setEmpty(II)V
.limit stack 10
.limit locals 3
aload 0
getfield Map.map LOS/Array;
iload 2
aload 0
getfield Map.width I
imul
iload 1
iadd
iconst_0
invokevirtual OS/Array.set(II)V
return
.end method
.method public isWall(II)Z
.limit stack 10
.limit locals 3
aload 0
getfield Map.map LOS/Array;
iload 2
aload 0
getfield Map.width I
imul
iload 1
iadd
invokevirtual OS/Array.get(I)I
ireturn
.end method
.method public height()I
.limit stack 10
.limit locals 1
aload 0
getfield Map.height I
ireturn
.end method
.method public width()I
.limit stack 10
.limit locals 1
aload 0
getfield Map.width I
ireturn
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
.method public draw(ZIII)V
.limit stack 20
.limit locals 10
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
aload 0
getfield Map.width I
iload 4
imul
iload 2
iadd
istore 8
aload 0
getfield Map.height I
iload 4
imul
iload 3
iadd
istore 9
iload 1
invokestatic OS/Screen.setColor(Z)V
iload 3
istore 6
whileL1:
iload 6
iload 9
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
iload 2
istore 5
whileL3:
iload 5
iload 8
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq whileL2
aload 0
getfield Map.map LOS/Array;
iload 7
invokevirtual OS/Array.get(I)I
iload 1
if_icmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL4
iload 5
iload 6
iload 5
iload 4
iadd
iconst_1
isub
iload 6
iload 4
iadd
iconst_1
isub
invokestatic OS/Screen.drawRectangle(IIII)V
goto ifL5
ifL4:
ifL5:
iload 5
iload 4
iadd
istore 5
iload 7
iconst_1
iadd
istore 7
goto whileL3
whileL2:
iload 6
iload 4
iadd
istore 6
goto whileL1
whileL0:
return
.end method
