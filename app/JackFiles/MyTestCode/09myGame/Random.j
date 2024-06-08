.class public Random
.super java/lang/Object
.field xCounter I
.field yCounter I
.field add Z
.method public <init>()V
.limit stack 10
.limit locals 1
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield Random.xCounter I
aload 0
iconst_0
putfield Random.yCounter I
aload 0
iconst_0
putfield Random.add Z
aload 0
iconst_0
putfield Random.xCounter I
aload 0
iconst_0
putfield Random.yCounter I
aload 0
iconst_0
putfield Random.add Z
return
.end method
.method public generateRandomX()I
.limit stack 10
.limit locals 1
aload 0
getfield Random.xCounter I
iconst_4
bipush 20
imul
iadd
sipush 509
if_icmple jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq ifL0
aload 0
iconst_1
putfield Random.add Z
goto ifL1
ifL0:
ifL1:
aload 0
getfield Random.xCounter I
iconst_4
bipush 20
imul
isub
iconst_0
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq ifL2
aload 0
iconst_0
putfield Random.add Z
goto ifL3
ifL2:
ifL3:
aload 0
getfield Random.add Z
ifeq ifL4
aload 0
aload 0
getfield Random.xCounter I
iconst_4
bipush 20
imul
isub
putfield Random.xCounter I
goto ifL5
ifL4:
aload 0
aload 0
getfield Random.xCounter I
iconst_4
bipush 20
imul
iadd
putfield Random.xCounter I
ifL5:
aload 0
getfield Random.xCounter I
ireturn
.end method
.method public generateRandomY()I
.limit stack 10
.limit locals 1
aload 0
getfield Random.yCounter I
iconst_2
bipush 20
imul
iadd
sipush 200
if_icmple jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL6
aload 0
iconst_1
putfield Random.add Z
goto ifL7
ifL6:
ifL7:
aload 0
getfield Random.yCounter I
iconst_2
bipush 20
imul
isub
iconst_0
if_icmpge jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq ifL8
aload 0
iconst_0
putfield Random.add Z
goto ifL9
ifL8:
ifL9:
aload 0
getfield Random.add Z
ifeq ifL10
aload 0
aload 0
getfield Random.yCounter I
iconst_2
bipush 20
imul
isub
putfield Random.yCounter I
goto ifL11
ifL10:
aload 0
aload 0
getfield Random.yCounter I
iconst_2
bipush 20
imul
iadd
putfield Random.yCounter I
ifL11:
aload 0
getfield Random.yCounter I
ireturn
.end method
