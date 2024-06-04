.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 2
new OS/Output
dup
invokespecial OS/Output.<init>()V
pop
new OS/Screen
dup
invokespecial OS/Screen.<init>()V
pop
new OS/Memory
dup
invokespecial OS/Memory.<init>()V
pop
new OS/Math
dup
invokespecial OS/Math.<init>()V
pop
iconst_5
istore 1
iload 1
bipush 10
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq ifL0
new OS/String
dup
bipush 8
invokespecial OS/String.<init>(I)V
bipush 75
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
goto ifL1
ifL0:
new OS/String
dup
bipush 9
invokespecial OS/String.<init>(I)V
bipush 71
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
sipush 195
invokevirtual OS/String.appendChar(C)LOS/String;
sipush 182
invokevirtual OS/String.appendChar(C)LOS/String;
sipush 195
invokevirtual OS/String.appendChar(C)LOS/String;
sipush 376
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
ifL1:
return
.end method
