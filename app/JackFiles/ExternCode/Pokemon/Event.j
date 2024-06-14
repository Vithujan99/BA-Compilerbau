.class public Event
.super java/lang/Object
.field static EventCounter I
.method public static interact(II)V
.limit stack 10
.limit locals 4
invokestatic Main.getMap()I
iconst_2
if_icmpne jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq ifL0
iload 0
iconst_4
if_icmpne jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
iload 1
bipush 6
if_icmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
iand
ifeq ifL2
getstatic Event.EventCounter I
iconst_0
if_icmpne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq ifL4
new OS/Array
dup
iconst_1
invokespecial OS/Array.<init>(I)V
astore 2
new OS/String
dup
bipush 27
invokespecial OS/String.<init>(I)V
bipush 82
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 79
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 84
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 83
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 85
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 80
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 69
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 82
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 78
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 73
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 78
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 84
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 69
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 78
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 68
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 79
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 33
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
astore 3
aload 2
iconst_0
aload 3
invokevirtual OS/Array.set(ILOS/String;)V
aload 2
iconst_1
invokestatic TextBox.showTextBox(LOS/Array;I)V
aload 3
invokevirtual OS/String.dispose()V
aload 2
invokevirtual OS/Array.dispose()V
iconst_1
invokestatic Main.setinMenu(Z)V
goto ifL5
ifL4:
ifL5:
getstatic Event.EventCounter I
iconst_1
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq ifL6
new OS/Array
dup
iconst_1
invokespecial OS/Array.<init>(I)V
astore 2
new OS/String
dup
bipush 31
invokespecial OS/String.<init>(I)V
bipush 46
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 46
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 46
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 79
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 75
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 33
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 68
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 82
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 107
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 98
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
astore 3
aload 2
iconst_0
aload 3
invokevirtual OS/Array.set(ILOS/String;)V
aload 2
iconst_1
invokestatic TextBox.showTextBox(LOS/Array;I)V
aload 3
invokevirtual OS/String.dispose()V
aload 2
invokevirtual OS/Array.dispose()V
goto ifL7
ifL6:
ifL7:
getstatic Event.EventCounter I
iconst_2
if_icmpne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq ifL8
iconst_1
ineg
putstatic Event.EventCounter I
iconst_0
invokestatic Main.setinMenu(Z)V
goto ifL9
ifL8:
ifL9:
getstatic Event.EventCounter I
iconst_1
iadd
putstatic Event.EventCounter I
goto ifL3
ifL2:
ifL3:
goto ifL1
ifL0:
ifL1:
return
.end method
.method public static WalkOn(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
iconst_0
istore 2
invokestatic Main.getMap()I
iconst_2
if_icmpne jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq ifL10
iconst_2
istore 2
iload 0
bipush 8
if_icmpne jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
iload 1
iconst_2
if_icmpne jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
iand
ifeq ifL12
iconst_3
istore 2
iconst_1
invokestatic Main.setMapChange(Z)V
goto ifL13
ifL12:
ifL13:
goto ifL11
ifL10:
ifL11:
invokestatic Main.getMap()I
iconst_3
if_icmpne jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
ifeq ifL14
iconst_3
istore 2
iload 0
bipush 8
if_icmpne jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
iload 1
iconst_2
if_icmpne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
iand
ifeq ifL16
iconst_2
istore 2
iconst_1
invokestatic Main.setMapChange(Z)V
goto ifL17
ifL16:
ifL17:
goto ifL15
ifL14:
ifL15:
iload 2
invokestatic Main.setMap(I)V
return
.end method
.method public static setEventCounter(I)V
.limit stack 10
.limit locals 1
iload 0
putstatic Event.EventCounter I
return
.end method
.method public static carryOnEvent(I)V
.limit stack 10
.limit locals 1
return
.end method
