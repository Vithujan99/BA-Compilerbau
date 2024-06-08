.class public List
.super java/lang/Object
.field x I
.field y I
.field next LList;
.method public <init>(II)V
.limit stack 10
.limit locals 3
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield List.x I
aload 0
iconst_0
putfield List.y I
aload 0
iload 1
putfield List.x I
aload 0
iload 2
putfield List.y I
aload 0
aconst_null
putfield List.next LList;
return
.end method
.method public getX()I
.limit stack 10
.limit locals 1
aload 0
getfield List.x I
ireturn
.end method
.method public getY()I
.limit stack 10
.limit locals 1
aload 0
getfield List.y I
ireturn
.end method
.method public getNext()LList;
.limit stack 10
.limit locals 1
aload 0
getfield List.next LList;
areturn
.end method
.method public setNext(LList;)V
.limit stack 10
.limit locals 2
aload 0
aload 1
putfield List.next LList;
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
getfield List.next LList;
aconst_null
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
ifeq ifL0
aload 0
getfield List.next LList;
invokevirtual List.dispose()V
goto ifL1
ifL0:
ifL1:
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
