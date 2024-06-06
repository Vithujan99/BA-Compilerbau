.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 5
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
new OS/String
dup
bipush 18
invokespecial OS/String.<init>(I)V
bipush 72
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 119
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 98
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 63
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Keyboard.readInt(LOS/String;)I
istore 2
new OS/Array
dup
iload 2
invokespecial OS/Array.<init>(I)V
astore 1
iconst_0
istore 3
iconst_0
istore 4
whileL1:
iload 3
iload 2
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
aload 1
iload 3
new OS/String
dup
bipush 16
invokespecial OS/String.<init>(I)V
bipush 69
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 98
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Keyboard.readInt(LOS/String;)I
invokevirtual OS/Array.set(II)V
iload 4
aload 1
iload 3
invokevirtual OS/Array.get(I)I
iadd
istore 4
iload 3
iconst_1
iadd
istore 3
goto whileL1
whileL0:
new OS/String
dup
bipush 15
invokespecial OS/String.<init>(I)V
bipush 84
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 118
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iload 4
iload 2
idiv
invokestatic OS/Output.printInt(I)V
return
.end method
