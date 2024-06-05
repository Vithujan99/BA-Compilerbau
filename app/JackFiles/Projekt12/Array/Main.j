.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 5
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
sipush 8000
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 1
new OS/Array
dup
iconst_3
invokespecial OS/Array.<init>(I)V
astore 2
aload 2
iconst_2
sipush 222
invokevirtual OS/Array.set(II)V
aload 1
iconst_0
aload 2
iconst_2
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.set(II)V
aload 1
iconst_0
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
new OS/Array
dup
iconst_3
invokespecial OS/Array.<init>(I)V
astore 3
aload 3
iconst_1
aload 2
iconst_2
invokevirtual OS/Array.get(I)I
bipush 100
isub
invokevirtual OS/Array.set(II)V
aload 1
iconst_1
aload 3
iconst_1
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.set(II)V
aload 1
iconst_1
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
new OS/Array
dup
sipush 500
invokespecial OS/Array.<init>(I)V
astore 4
aload 4
sipush 499
aload 2
iconst_2
invokevirtual OS/Array.get(I)I
aload 3
iconst_1
invokevirtual OS/Array.get(I)I
isub
invokevirtual OS/Array.set(II)V
aload 1
iconst_2
aload 4
sipush 499
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.set(II)V
aload 1
iconst_2
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 2
invokevirtual OS/Array.dispose()V
aload 3
invokevirtual OS/Array.dispose()V
new OS/Array
dup
iconst_3
invokespecial OS/Array.<init>(I)V
astore 3
aload 3
iconst_0
aload 4
sipush 499
invokevirtual OS/Array.get(I)I
bipush 90
isub
invokevirtual OS/Array.set(II)V
aload 1
iconst_3
aload 3
iconst_0
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.set(II)V
sipush 8003
invokestatic OS/Memory.peek(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aload 4
invokevirtual OS/Array.dispose()V
aload 3
invokevirtual OS/Array.dispose()V
return
.end method
