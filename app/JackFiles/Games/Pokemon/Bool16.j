.class public Bool16
.super java/lang/Object
.field x I
.method public <init>(Z)V
.limit stack 10
.limit locals 2
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield Bool16.x I
aload 0
iconst_0
putfield Bool16.x I
iload 1
ifeq ifL0
aload 0
iconst_1
ineg
putfield Bool16.x I
goto ifL1
ifL0:
ifL1:
return
.end method
.method public getBoolean(I)Z
.limit stack 10
.limit locals 4
iconst_0
istore 3
aload 0
getfield Bool16.x I
invokestatic Bool16.InttoBinary(I)LOS/Array;
astore 2
aload 2
iload 1
invokevirtual OS/Array.get(I)I
istore 3
aload 2
invokevirtual OS/Array.dispose()V
iload 3
ireturn
.end method
.method public setBoolean(IZ)V
.limit stack 10
.limit locals 4
aload 0
getfield Bool16.x I
invokestatic Bool16.InttoBinary(I)LOS/Array;
astore 3
aload 3
iload 1
iload 2
invokevirtual OS/Array.set(II)V
aload 0
aload 3
invokestatic Bool16.BinarytoInt(LOS/Array;)I
putfield Bool16.x I
return
.end method
.method public getInt()I
.limit stack 10
.limit locals 1
aload 0
getfield Bool16.x I
ireturn
.end method
.method public setInt(I)V
.limit stack 10
.limit locals 2
aload 0
iload 1
putfield Bool16.x I
return
.end method
.method public static BinarytoInt(LOS/Array;)I
.limit stack 10
.limit locals 3
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 1
iconst_0
istore 2
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
iload 1
invokevirtual OS/Array.get(I)I
iconst_1
if_icmpne jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq ifL4
iload 2
iconst_2
iload 1
invokestatic LibExt.Pow(II)I
iadd
istore 2
goto ifL5
ifL4:
ifL5:
iload 1
iconst_1
iadd
istore 1
goto whileL3
whileL2:
iload 2
ireturn
.end method
.method public static InttoBinary(I)LArray;
.limit stack 10
.limit locals 4
iconst_0
istore 1
iconst_0
istore 3
new OS/Array
dup
bipush 16
invokespecial OS/Array.<init>(I)V
astore 2
iload 0
iconst_0
if_icmpge jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL6
aload 2
bipush 15
iconst_1
invokevirtual OS/Array.set(II)V
iload 0
iconst_2
bipush 15
invokestatic LibExt.Pow(II)I
iadd
istore 0
goto ifL7
ifL6:
aload 2
bipush 15
iconst_0
invokevirtual OS/Array.set(II)V
ifL7:
iload 0
istore 1
iconst_0
istore 3
whileL9:
iload 3
bipush 16
if_icmpge jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq whileL8
aload 2
iload 3
iload 1
iconst_2
invokestatic LibExt.mod(II)I
invokevirtual OS/Array.set(II)V
iload 3
iconst_1
iadd
istore 3
iload 1
iconst_2
idiv
istore 1
goto whileL9
whileL8:
aload 2
areturn
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
