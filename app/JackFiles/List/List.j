.class public List
.super java/lang/Object
.field data I
.field next LList;
.method public <init>(ILList;)V
.limit stack 10
.limit locals 3
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iload 1
putfield List.data I
aload 0
aload 2
putfield List.next LList;
return
.end method
.method public getData()I
.limit stack 10
.limit locals 1
aload 0
getfield List.data I
ireturn
.end method
.method public getNext()LList;
.limit stack 10
.limit locals 1
aload 0
getfield List.next LList;
areturn
.end method
.method public print()V
.limit stack 10
.limit locals 2
aload 0
astore 1
whileL1:
aload 1
aconst_null
if_acmpne jump0
bipush 1
goto jump1
jump0:
bipush 0
jump1:
ifne jump2
bipush 1
goto jump3
jump2:
bipush 0
jump3:
ifeq whileL0
getstatic java/lang/System.out Ljava/io/PrintStream;
aload 1
invokevirtual List.getData()I
invokevirtual java/io/PrintStream.print(I)V
getstatic java/lang/System.out Ljava/io/PrintStream;
bipush 32
invokevirtual java/io/PrintStream.print(C)V
aload 1
invokevirtual List.getNext()LList;
astore 1
goto whileL1
whileL0:
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
getfield List.next LList;
aconst_null
if_acmpne jump4
bipush 1
goto jump5
jump4:
bipush 0
jump5:
ifne jump6
bipush 1
goto jump7
jump6:
bipush 0
jump7:
ifeq ifL2
aload 0
getfield List.next LList;
invokevirtual List.dispose()V
goto ifL3
ifL2:
ifL3:
return
.end method