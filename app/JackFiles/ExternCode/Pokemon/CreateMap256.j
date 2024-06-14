.class public CreateMap256
.super java/lang/Object
.method public static createMap(I)LMapBlock256;
.limit stack 10
.limit locals 4
iconst_0
istore 2
iconst_0
istore 3
iload 0
iconst_0
if_icmpne jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq ifL0
iconst_0
invokestatic Main.setInside(Z)V
new MapBlock256
dup
invokespecial MapBlock256.<init>()V
astore 1
goto ifL1
ifL0:
ifL1:
iload 0
iconst_1
if_icmpne jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq ifL2
iconst_1
invokestatic Main.setInside(Z)V
new MapBlock256
dup
invokespecial MapBlock256.<init>()V
astore 1
goto ifL3
ifL2:
ifL3:
iload 0
iconst_2
if_icmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL4
iconst_1
invokestatic Main.setInside(Z)V
new MapBlock256
dup
invokespecial MapBlock256.<init>()V
astore 1
aload 1
iconst_4
iconst_2
iconst_3
invokevirtual MapBlock256.addMapObject(III)V
aload 1
iconst_5
iconst_2
iconst_3
invokevirtual MapBlock256.addMapObject(III)V
aload 1
bipush 6
iconst_2
iconst_3
invokevirtual MapBlock256.addMapObject(III)V
aload 1
bipush 7
iconst_2
iconst_3
invokevirtual MapBlock256.addMapObject(III)V
iconst_1
istore 2
whileL7:
iload 2
bipush 9
if_icmpge jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq whileL6
aload 1
iload 2
iconst_3
iconst_3
invokevirtual MapBlock256.addMapObject(III)V
iload 2
iconst_1
iadd
istore 2
goto whileL7
whileL6:
iconst_1
istore 2
whileL9:
iload 2
bipush 9
if_icmpge jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq whileL8
aload 1
iload 2
iconst_4
iconst_3
invokevirtual MapBlock256.addMapObject(III)V
iload 2
iconst_1
iadd
istore 2
goto whileL9
whileL8:
iconst_1
istore 2
whileL11:
iload 2
bipush 9
if_icmpge jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq whileL10
aload 1
iload 2
iconst_5
iconst_3
invokevirtual MapBlock256.addMapObject(III)V
iload 2
iconst_1
iadd
istore 2
goto whileL11
whileL10:
iconst_1
istore 2
whileL13:
iload 2
bipush 9
if_icmpge jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq whileL12
aload 1
iload 2
bipush 6
iconst_3
invokevirtual MapBlock256.addMapObject(III)V
iload 2
iconst_1
iadd
istore 2
goto whileL13
whileL12:
iconst_2
istore 2
whileL15:
iload 2
bipush 7
if_icmpge jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
ifeq whileL14
aload 1
iload 2
bipush 7
iconst_3
invokevirtual MapBlock256.addMapObject(III)V
iload 2
iconst_1
iadd
istore 2
goto whileL15
whileL14:
iconst_2
istore 2
whileL17:
iload 2
bipush 7
if_icmpge jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
ifeq whileL16
aload 1
iload 2
bipush 8
iconst_3
invokevirtual MapBlock256.addMapObject(III)V
iload 2
iconst_1
iadd
istore 2
goto whileL17
whileL16:
aload 1
bipush 8
bipush 8
iconst_3
invokevirtual MapBlock256.addMapObject(III)V
aload 1
bipush 8
bipush 7
iconst_3
invokevirtual MapBlock256.addMapObject(III)V
iconst_1
istore 2
whileL19:
iload 2
bipush 9
if_icmpge jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
ifeq whileL18
aload 1
iload 2
iconst_1
iconst_5
invokevirtual MapBlock256.addMapObject(III)V
iload 2
iconst_1
iadd
istore 2
goto whileL19
whileL18:
aload 1
bipush 8
iconst_1
bipush 13
invokevirtual MapBlock256.addMapObject(III)V
aload 1
bipush 6
iconst_1
bipush 13
invokevirtual MapBlock256.addMapObject(III)V
aload 1
bipush 8
iconst_2
bipush 6
invokevirtual MapBlock256.addMapObject(III)V
aload 1
iconst_1
bipush 7
bipush 7
invokevirtual MapBlock256.addMapObject(III)V
aload 1
bipush 7
bipush 7
iconst_4
invokevirtual MapBlock256.addMapObject(III)V
aload 1
iconst_4
iconst_5
bipush 8
invokevirtual MapBlock256.addMapObject(III)V
aload 1
iconst_4
bipush 6
bipush 9
invokevirtual MapBlock256.addMapObject(III)V
aload 1
iconst_1
iconst_2
bipush 10
invokevirtual MapBlock256.addMapObject(III)V
aload 1
iconst_1
iconst_1
bipush 11
invokevirtual MapBlock256.addMapObject(III)V
aload 1
iconst_2
iconst_1
bipush 12
invokevirtual MapBlock256.addMapObject(III)V
goto ifL5
ifL4:
ifL5:
iload 0
iconst_3
if_icmpne jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
ifeq ifL20
iconst_1
invokestatic Main.setInside(Z)V
new MapBlock256
dup
invokespecial MapBlock256.<init>()V
astore 1
iconst_3
istore 2
whileL23:
iload 2
bipush 9
if_icmpge jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ifeq whileL22
aload 1
iload 2
iconst_1
iconst_5
invokevirtual MapBlock256.addMapObject(III)V
iload 2
iconst_1
iadd
istore 2
goto whileL23
whileL22:
iconst_1
istore 2
iconst_2
istore 3
whileL25:
iload 3
bipush 9
if_icmpge jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ifeq whileL24
whileL27:
iload 2
bipush 9
if_icmpge jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
ifeq whileL26
aload 1
iload 2
iload 3
iconst_3
invokevirtual MapBlock256.addMapObject(III)V
iload 2
iconst_1
iadd
istore 2
goto whileL27
whileL26:
iconst_1
istore 2
iload 3
iconst_1
iadd
istore 3
goto whileL25
whileL24:
aload 1
iconst_4
iconst_2
bipush 8
invokevirtual MapBlock256.addMapObject(III)V
aload 1
bipush 8
iconst_1
bipush 13
invokevirtual MapBlock256.addMapObject(III)V
aload 1
bipush 6
iconst_1
bipush 13
invokevirtual MapBlock256.addMapObject(III)V
aload 1
iconst_4
iconst_1
bipush 13
invokevirtual MapBlock256.addMapObject(III)V
aload 1
iconst_1
iconst_1
bipush 14
invokevirtual MapBlock256.addMapObject(III)V
aload 1
iconst_2
iconst_1
bipush 14
invokevirtual MapBlock256.addMapObject(III)V
aload 1
bipush 8
iconst_2
bipush 15
invokevirtual MapBlock256.addMapObject(III)V
goto ifL21
ifL20:
ifL21:
aload 1
areturn
.end method
