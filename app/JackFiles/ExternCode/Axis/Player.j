.class public Player
.super java/lang/Object
.field x I
.field y I
.field screen LOS/Array;
.field static LENGTH I
.method public <init>(IILOS/Array;)V
.limit stack 10
.limit locals 4
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield Player.x I
aload 0
iconst_0
putfield Player.y I
iconst_3
putstatic Player.LENGTH I
aload 0
iload 1
putfield Player.x I
aload 0
iload 2
putfield Player.y I
aload 0
aload 3
putfield Player.screen LOS/Array;
aload 0
invokevirtual Player.draw()V
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
return
.end method
.method public getX()I
.limit stack 10
.limit locals 1
aload 0
getfield Player.x I
ireturn
.end method
.method public getY()I
.limit stack 10
.limit locals 1
aload 0
getfield Player.y I
ireturn
.end method
.method public static getLength()I
.limit stack 10
.limit locals 0
getstatic Player.LENGTH I
ireturn
.end method
.method public turn(I)V
.limit stack 10
.limit locals 2
aload 0
iload 1
aload 0
getfield Player.x I
isub
iconst_1
isub
putfield Player.x I
return
.end method
.method public draw()V
.limit stack 10
.limit locals 3
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 1
iconst_0
istore 2
whileL1:
iload 1
getstatic Player.LENGTH I
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
whileL3:
iload 2
getstatic Player.LENGTH I
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq whileL2
aload 0
getfield Player.screen LOS/Array;
aload 0
getfield Player.x I
iload 1
iadd
aload 0
getfield Player.y I
iload 2
iadd
bipush 127
imul
iadd
iconst_1
invokevirtual OS/Array.set(II)V
iload 2
iconst_1
iadd
istore 2
goto whileL3
whileL2:
iload 1
iconst_1
iadd
istore 1
goto whileL1
whileL0:
return
.end method
.method public collides(II)Z
.limit stack 10
.limit locals 3
iload 1
aload 0
getfield Player.x I
iconst_1
isub
if_icmple jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
iload 1
aload 0
getfield Player.x I
getstatic Player.LENGTH I
iadd
iconst_1
iadd
if_icmpge jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
iand
iload 2
aload 0
getfield Player.y I
iconst_1
isub
if_icmple jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
iand
iload 2
aload 0
getfield Player.y I
getstatic Player.LENGTH I
iadd
iconst_1
iadd
if_icmpge jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
iand
ireturn
.end method
