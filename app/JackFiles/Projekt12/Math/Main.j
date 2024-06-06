.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 2
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
sipush 8000
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 1
aload 1
iconst_0
iconst_2
iconst_3
imul
invokevirtual OS/Array.set(II)V
aload 1
iconst_0
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 1
iconst_1
aload 1
iconst_0
invokevirtual OS/Array.get(I)I
bipush 30
ineg
imul
invokevirtual OS/Array.set(II)V
aload 1
iconst_1
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 1
iconst_2
aload 1
iconst_1
invokevirtual OS/Array.get(I)I
bipush 100
imul
invokevirtual OS/Array.set(II)V
sipush 8002
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 1
iconst_3
iconst_1
aload 1
iconst_2
invokevirtual OS/Array.get(I)I
imul
invokevirtual OS/Array.set(II)V
aload 1
iconst_3
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 1
iconst_4
aload 1
iconst_3
invokevirtual OS/Array.get(I)I
iconst_0
imul
invokevirtual OS/Array.set(II)V
aload 1
iconst_4
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 1
iconst_5
bipush 9
iconst_3
idiv
invokevirtual OS/Array.set(II)V
aload 1
iconst_5
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 1
bipush 6
sipush 18000
ineg
bipush 6
idiv
invokevirtual OS/Array.set(II)V
sipush 8006
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 1
bipush 7
sipush 32766
sipush 32767
ineg
idiv
invokevirtual OS/Array.set(II)V
sipush 8007
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 1
bipush 8
bipush 9
invokestatic OS/Math.sqrt(I)I
invokevirtual OS/Array.set(II)V
aload 1
bipush 8
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 1
bipush 9
sipush 32767
invokestatic OS/Math.sqrt(I)I
invokevirtual OS/Array.set(II)V
aload 1
bipush 9
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 1
bipush 10
sipush 345
bipush 123
invokestatic OS/Math.min(II)I
invokevirtual OS/Array.set(II)V
sipush 8010
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 1
bipush 11
bipush 123
sipush 345
ineg
invokestatic OS/Math.max(II)I
invokevirtual OS/Array.set(II)V
sipush 8011
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 1
bipush 12
bipush 27
invokestatic OS/Math.abs(I)I
invokevirtual OS/Array.set(II)V
aload 1
bipush 12
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 1
bipush 13
sipush 32767
ineg
invokestatic OS/Math.abs(I)I
invokevirtual OS/Array.set(II)V
aload 1
bipush 13
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
return
.end method
