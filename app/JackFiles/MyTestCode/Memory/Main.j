.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 6
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
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
return
.end method
