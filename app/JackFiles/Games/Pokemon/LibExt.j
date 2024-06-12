.class public LibExt
.super java/lang/Object
.method public static Pow(II)I
.limit stack 10
.limit locals 3
iconst_0
istore 2
iconst_1
istore 2
whileL1:
iload 1
iconst_0
if_icmple jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
iload 2
iload 0
imul
istore 2
iload 1
iconst_1
isub
istore 1
goto whileL1
whileL0:
iload 2
ireturn
.end method
.method public static mod(II)I
.limit stack 10
.limit locals 2
iload 0
iload 0
iload 1
idiv
iload 1
imul
isub
ireturn
.end method
