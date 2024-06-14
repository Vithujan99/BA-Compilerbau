.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 2
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
iconst_0
istore 1
sipush 8000
sipush 7515
invokestatic OS/Memory.poke(II)V
sipush 8001
bipush 16
iconst_1
ineg
invokestatic Main.fillMemory(III)V
sipush 8000
invokestatic OS/Memory.peek(I)I
istore 1
iload 1
invokestatic Main.convert(I)V
sipush 8001
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
sipush 8002
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
sipush 8003
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
sipush 8004
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
sipush 8005
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
sipush 8006
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
sipush 8007
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
sipush 8008
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
sipush 8009
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
sipush 8010
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
sipush 8011
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
sipush 8012
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
sipush 8013
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
sipush 8014
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
sipush 8015
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
sipush 8016
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
return
.end method
.method public static convert(I)V
.limit stack 10
.limit locals 4
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 3
iconst_1
istore 3
whileL1:
iload 3
ifeq whileL0
iload 2
iconst_1
iadd
istore 2
iload 1
invokestatic Main.nextMask(I)I
istore 1
iload 2
bipush 16
if_icmple jump0
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
ifeq ifL2
iload 0
iload 1
iand
iconst_0
if_icmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq ifL4
sipush 8000
iload 2
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
goto ifL5
ifL4:
sipush 8000
iload 2
iadd
iconst_0
invokestatic OS/Memory.poke(II)V
ifL5:
goto ifL3
ifL2:
iconst_0
istore 3
ifL3:
goto whileL1
whileL0:
return
.end method
.method public static nextMask(I)I
.limit stack 10
.limit locals 1
iload 0
iconst_0
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq ifL6
iconst_1
ireturn
ifL6:
iload 0
iconst_2
imul
ireturn
ifL7:
.end method
.method public static fillMemory(III)V
.limit stack 10
.limit locals 3
whileL9:
iload 1
iconst_0
if_icmple jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq whileL8
iload 0
iload 2
invokestatic OS/Memory.poke(II)V
iload 1
iconst_1
isub
istore 1
iload 0
iconst_1
iadd
istore 0
goto whileL9
whileL8:
return
.end method
