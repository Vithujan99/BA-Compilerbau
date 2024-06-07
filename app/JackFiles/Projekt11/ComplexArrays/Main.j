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
iconst_2
invokestatic Main.double(I)I
isub
iconst_1
iadd
invokevirtual OS/Array.get(I)I
imul
invokevirtual OS/Array.set(II)V
aload 3
iconst_0
aconst_null
pop
iconst_0
invokevirtual OS/Array.set(II)V
aload 3
iconst_0
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 3
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
bipush 51
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
aload 3
invokevirtual OS/Array.getBaseAddress()I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
aconst_null
astore 3
aload 3
aconst_null
if_acmpne jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq ifL0
aload 1
bipush 10
invokestatic Main.fill(LOS/Array;I)V
aload 1
iconst_3
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 3
aload 3
iconst_1
bipush 33
invokevirtual OS/Array.set(II)V
aload 1
bipush 7
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 3
aload 3
iconst_1
bipush 77
invokevirtual OS/Array.set(II)V
aload 1
iconst_3
invokevirtual OS/Array.get(I)I
invokestatic OS/Array.setBaseAddress(I)LOS/Array;
astore 2
aload 2
iconst_1
aload 2
iconst_1
invokevirtual OS/Array.get(I)I
aload 3
iconst_1
invokevirtual OS/Array.get(I)I
iadd
invokevirtual OS/Array.set(II)V
goto ifL1
ifL0:
ifL1:
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
bipush 52
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
bipush 55
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 55
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
aload 3
iconst_1
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
new OS/String
dup
bipush 45
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
bipush 53
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
bipush 49
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 49
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
aload 2
iconst_1
invokevirtual OS/Array.get(I)I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
return
.end method
.method public static double(I)I
.limit stack 10
.limit locals 1
iload 0
iconst_2
imul
ireturn
.end method
.method public static fill(LOS/Array;I)V
.limit stack 10
.limit locals 2
whileL3:
iload 1
iconst_0
if_icmple jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq whileL2
iload 1
iconst_1
isub
istore 1
aload 0
iload 1
new OS/Array
dup
iconst_3
invokespecial OS/Array.<init>(I)V
invokevirtual OS/Array.getBaseAddress()I
invokevirtual OS/Array.set(II)V
goto whileL3
whileL2:
return
.end method
