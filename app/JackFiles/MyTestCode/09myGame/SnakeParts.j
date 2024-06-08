.class public SnakeParts
.super java/lang/Object
.field head LList;
.field tail LList;
.field size I
.method public <init>(II)V
.limit stack 10
.limit locals 3
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield SnakeParts.size I
aload 0
new List
dup
iload 1
iload 2
invokespecial List.<init>(II)V
putfield SnakeParts.head LList;
aload 0
iconst_1
putfield SnakeParts.size I
aload 0
aload 0
getfield SnakeParts.head LList;
putfield SnakeParts.tail LList;
return
.end method
.method public getSize()I
.limit stack 10
.limit locals 1
aload 0
getfield SnakeParts.size I
ireturn
.end method
.method public push(II)V
.limit stack 10
.limit locals 4
new List
dup
iload 1
iload 2
invokespecial List.<init>(II)V
astore 3
aload 0
getfield SnakeParts.head LList;
aload 3
invokevirtual List.setNext(LList;)V
aload 0
aload 3
putfield SnakeParts.head LList;
aload 0
aload 0
getfield SnakeParts.size I
iconst_1
iadd
putfield SnakeParts.size I
return
.end method
.method public pop()LList;
.limit stack 10
.limit locals 3
aload 0
getfield SnakeParts.tail LList;
invokevirtual List.getNext()LList;
astore 1
new List
dup
aload 0
getfield SnakeParts.tail LList;
invokevirtual List.getX()I
aload 0
getfield SnakeParts.tail LList;
invokevirtual List.getY()I
invokespecial List.<init>(II)V
astore 2
aload 0
getfield SnakeParts.tail LList;
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
aload 0
aload 1
putfield SnakeParts.tail LList;
aload 0
aload 0
getfield SnakeParts.size I
iconst_1
isub
putfield SnakeParts.size I
aload 2
areturn
.end method
.method public crash()Z
.limit stack 10
.limit locals 2
aload 0
getfield SnakeParts.tail LList;
astore 1
whileL1:
aload 1
aload 0
getfield SnakeParts.head LList;
if_acmpne jump0
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
ifeq whileL0
aload 1
invokevirtual List.getX()I
aload 0
getfield SnakeParts.head LList;
invokevirtual List.getX()I
if_icmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
aload 1
invokevirtual List.getY()I
aload 0
getfield SnakeParts.head LList;
invokevirtual List.getY()I
if_icmpne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
iand
ifeq ifL2
iconst_1
ireturn
ifL2:
aload 1
invokevirtual List.getNext()LList;
astore 1
goto whileL1
whileL0:
iconst_0
ireturn
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
getfield SnakeParts.head LList;
invokevirtual List.dispose()V
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
