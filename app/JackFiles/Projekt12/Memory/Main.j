.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 6
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
sipush 8000
sipush 333
invokestatic OS/Memory.poke(II)V
sipush 8000
invokestatic OS/Memory.peek(I)I
istore 1
iload 1
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
sipush 8001
iload 1
iconst_1
iadd
invokestatic OS/Memory.poke(II)V
sipush 8001
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
new OS/Array
dup
iconst_3
invokespecial OS/Array.<init>(I)V
astore 3
aload 3
iconst_2
sipush 222
invokevirtual OS/Array.set(II)V
sipush 8002
aload 3
iconst_2
invokevirtual OS/Array.get(I)I
invokestatic OS/Memory.poke(II)V
aload 3
iconst_2
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
iconst_0
istore 2
new OS/Array
dup
iconst_3
invokespecial OS/Array.<init>(I)V
astore 4
aload 4
iconst_1
aload 3
iconst_2
invokevirtual OS/Array.get(I)I
bipush 100
isub
invokevirtual OS/Array.set(II)V
aload 4
aload 3
if_acmpne jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq ifL0
iconst_1
istore 2
goto ifL1
ifL0:
ifL1:
sipush 8003
aload 4
iconst_1
invokevirtual OS/Array.get(I)I
iload 2
iadd
invokestatic OS/Memory.poke(II)V
sipush 8003
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
iconst_0
istore 2
new OS/Array
dup
sipush 500
invokespecial OS/Array.<init>(I)V
astore 5
aload 5
sipush 499
aload 3
iconst_2
invokevirtual OS/Array.get(I)I
aload 4
iconst_1
invokevirtual OS/Array.get(I)I
isub
invokevirtual OS/Array.set(II)V
aload 5
aload 3
if_acmpne jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq ifL2
iconst_1
istore 2
goto ifL3
ifL2:
ifL3:
aload 5
aload 4
if_acmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL4
iload 2
bipush 10
iadd
istore 2
goto ifL5
ifL4:
ifL5:
sipush 8004
aload 5
sipush 499
invokevirtual OS/Array.get(I)I
iload 2
iadd
invokestatic OS/Memory.poke(II)V
sipush 8004
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 3
invokevirtual OS/Array.dispose()V
aload 4
invokevirtual OS/Array.dispose()V
iconst_0
istore 2
new OS/Array
dup
iconst_3
invokespecial OS/Array.<init>(I)V
astore 4
aload 4
iconst_0
aload 5
sipush 499
invokevirtual OS/Array.get(I)I
bipush 90
isub
invokevirtual OS/Array.set(II)V
aload 4
aload 5
if_acmpne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq ifL6
iconst_1
istore 2
goto ifL7
ifL6:
ifL7:
sipush 8005
aload 4
iconst_0
invokevirtual OS/Array.get(I)I
iload 2
iadd
invokestatic OS/Memory.poke(II)V
sipush 8005
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 5
invokevirtual OS/Array.dispose()V
aload 4
invokevirtual OS/Array.dispose()V
return
.end method
