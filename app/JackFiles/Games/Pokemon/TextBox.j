.class public TextBox
.super java/lang/Object
.method public static drawEmptyTextBox(IIII)V
.limit stack 10
.limit locals 4
iconst_1
invokestatic OS/Screen.setColor(Z)V
iload 0
iload 1
iload 2
iload 3
invokestatic Tile.Rect(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 0
iconst_5
iadd
iload 1
iconst_5
iadd
iload 2
iconst_5
isub
iload 3
iconst_5
isub
invokestatic Tile.Rect(IIII)V
return
.end method
.method public static showTextBox(LOS/Array;I)V
.limit stack 10
.limit locals 4
iconst_0
istore 2
iconst_0
sipush 170
sipush 511
sipush 255
invokestatic TextBox.drawEmptyTextBox(IIII)V
whileL1:
iload 2
iload 1
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
aload 0
iload 2
invokevirtual OS/Array.get(I)I
astore 3
iload 2
aload 3
invokestatic TextBox.writeInRowTextBox(ILOS/String;)V
iload 2
iconst_1
iadd
istore 2
goto whileL1
whileL0:
sipush 200
invokestatic OS/Sys.wait(I)V
return
.end method
.method public static writeInRowTextBox(ILOS/String;)V
.limit stack 10
.limit locals 2
iload 0
bipush 17
iadd
iconst_3
invokestatic OS/Output.moveCursor(II)V
aload 1
invokestatic OS/Output.printString(LOS/String;)V
return
.end method
.method public static showMenu()V
.limit stack 10
.limit locals 0
return
.end method
