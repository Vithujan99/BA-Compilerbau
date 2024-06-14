.class public Brainhack
.super java/lang/Object
.field code LOS/String;
.field input LOS/String;
.field tape LOS/Array;
.field tapeLen I
.method public <init>(LOS/String;LOS/String;)V
.limit stack 10
.limit locals 3
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield Brainhack.tapeLen I
aload 0
aload 1
putfield Brainhack.code LOS/String;
aload 0
aload 2
putfield Brainhack.input LOS/String;
aload 0
new OS/Array
dup
bipush 16
invokespecial OS/Array.<init>(I)V
putfield Brainhack.tape LOS/Array;
aload 0
bipush 16
putfield Brainhack.tapeLen I
aload 0
invokevirtual Brainhack.writeTape()V
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
getfield Brainhack.code LOS/String;
invokevirtual OS/String.dispose()V
aload 0
getfield Brainhack.input LOS/String;
invokevirtual OS/String.dispose()V
aload 0
getfield Brainhack.tape LOS/Array;
invokevirtual OS/Array.dispose()V
aload 0
invokestatic OS/Memory.deAlloc(Ljava/lang/Object;)V
return
.end method
.method public run()V
.limit stack 10
.limit locals 8
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 4
iconst_0
istore 5
iconst_0
istore 6
iconst_0
istore 7
new OS/Array
dup
bipush 10
invokespecial OS/Array.<init>(I)V
astore 1
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 4
iconst_0
istore 5
iconst_0
istore 6
whileL1:
iload 2
aload 0
getfield Brainhack.code LOS/String;
invokevirtual OS/String.length()I
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
aload 0
getfield Brainhack.code LOS/String;
iload 2
invokevirtual OS/String.charAt(I)C
istore 7
iload 7
bipush 43
if_icmpne jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq ifL2
aload 0
getfield Brainhack.tape LOS/Array;
iload 5
aload 0
getfield Brainhack.tape LOS/Array;
iload 5
invokevirtual OS/Array.get(I)I
iconst_1
iadd
invokevirtual OS/Array.set(II)V
goto ifL3
ifL2:
ifL3:
iload 7
bipush 45
if_icmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL4
aload 0
getfield Brainhack.tape LOS/Array;
iload 5
aload 0
getfield Brainhack.tape LOS/Array;
iload 5
invokevirtual OS/Array.get(I)I
iconst_1
isub
invokevirtual OS/Array.set(II)V
goto ifL5
ifL4:
ifL5:
iload 7
bipush 62
if_icmpne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq ifL6
iload 5
iconst_1
iadd
istore 5
goto ifL7
ifL6:
ifL7:
iload 7
bipush 60
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq ifL8
iload 5
iconst_1
isub
istore 5
goto ifL9
ifL8:
ifL9:
iload 5
aload 0
getfield Brainhack.tapeLen I
iconst_1
isub
if_icmple jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq ifL10
iload 5
aload 0
getfield Brainhack.tapeLen I
isub
istore 5
goto ifL11
ifL10:
ifL11:
iload 5
iconst_0
if_icmpge jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq ifL12
iload 5
aload 0
getfield Brainhack.tapeLen I
iadd
istore 5
goto ifL13
ifL12:
ifL13:
iload 7
bipush 44
if_icmpne jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
ifeq ifL14
aload 0
getfield Brainhack.tape LOS/Array;
iload 5
aload 0
getfield Brainhack.input LOS/String;
iload 3
invokevirtual OS/String.charAt(I)C
invokevirtual OS/Array.set(II)V
iload 3
iconst_1
iadd
istore 3
goto ifL15
ifL14:
ifL15:
iload 7
bipush 46
if_icmpne jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
ifeq ifL16
bipush 15
bipush 8
iload 4
iadd
invokestatic OS/Output.moveCursor(II)V
aload 0
getfield Brainhack.tape LOS/Array;
iload 5
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printChar(C)V
iload 4
iconst_1
iadd
istore 4
goto ifL17
ifL16:
ifL17:
iload 7
bipush 91
if_icmpne jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
ifeq ifL18
aload 1
iload 6
iload 2
invokevirtual OS/Array.set(II)V
iload 6
iconst_1
iadd
istore 6
goto ifL19
ifL18:
ifL19:
iload 7
bipush 93
if_icmpne jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
ifeq ifL20
iload 6
iconst_1
isub
istore 6
aload 0
getfield Brainhack.tape LOS/Array;
iload 5
invokevirtual OS/Array.get(I)I
iconst_0
if_icmpne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ifne jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ifeq ifL22
aload 1
iload 6
invokevirtual OS/Array.get(I)I
istore 2
goto ifL23
ifL22:
iload 2
iconst_1
iadd
istore 2
ifL23:
goto ifL21
ifL20:
iload 2
iconst_1
iadd
istore 2
ifL21:
aload 0
invokevirtual Brainhack.writeTape()V
goto whileL1
whileL0:
return
.end method
.method public writeTape()V
.limit stack 10
.limit locals 2
iconst_0
istore 1
iconst_0
istore 1
whileL25:
iload 1
aload 0
getfield Brainhack.tapeLen I
if_icmpge jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
ifeq whileL24
bipush 10
bipush 8
iconst_3
iload 1
imul
iadd
invokestatic OS/Output.moveCursor(II)V
aload 0
getfield Brainhack.tape LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
iload 1
iconst_1
iadd
istore 1
goto whileL25
whileL24:
bipush 100
invokestatic OS/Sys.wait(I)V
return
.end method
