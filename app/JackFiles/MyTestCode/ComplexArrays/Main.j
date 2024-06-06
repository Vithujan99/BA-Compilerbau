.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 4
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
new OS/Array
dup
bipush 10
invokespecial OS/Array.<init>(I)V
astore 1
new OS/Array
dup
iconst_5
invokespecial OS/Array.<init>(I)V
astore 2
new OS/Array
dup
iconst_1
invokespecial OS/Array.<init>(I)V
astore 3
aload 1
iconst_3
iconst_2
invokevirtual OS/Array.set(II)V
aload 1
iconst_4
bipush 8
invokevirtual OS/Array.set(II)V
aload 1
iconst_5
iconst_4
invokevirtual OS/Array.set(II)V
aload 2
aload 1
iconst_3
invokevirtual OS/Array.get(I)I
aload 1
iconst_3
invokevirtual OS/Array.get(I)I
iconst_3
iadd
invokevirtual OS/Array.set(II)V
aload 1
aload 2
aload 1
iconst_3
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.get(I)I
aload 1
aload 1
iconst_5
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.get(I)I
aload 2
bipush 7
aload 1
iconst_3
invokevirtual OS/Array.get(I)I
isub
iconst_4
isub
iconst_1
iadd
invokevirtual OS/Array.get(I)I
imul
invokevirtual OS/Array.set(II)V
aload 3
iconst_0
aconst_null
invokevirtual OS/Array.set(II)V
new OS/String
dup
bipush 43
invokespecial OS/String.<init>(I)V
bipush 84
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 49
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 120
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 53
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 59
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
aload 2
iconst_2
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
new OS/String
dup
bipush 44
invokespecial OS/String.<init>(I)V
bipush 84
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 50
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 120
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 52
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 48
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 59
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
aload 1
iconst_5
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
return
.end method
