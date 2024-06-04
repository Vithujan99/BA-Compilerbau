.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 1
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
iconst_0
sipush 220
sipush 511
sipush 220
invokestatic OS/Screen.drawLine(IIII)V
sipush 280
bipush 90
sipush 410
sipush 220
invokestatic OS/Screen.drawRectangle(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
sipush 350
bipush 120
sipush 390
sipush 219
invokestatic OS/Screen.drawRectangle(IIII)V
sipush 292
bipush 120
sipush 332
sipush 150
invokestatic OS/Screen.drawRectangle(IIII)V
iconst_1
invokestatic OS/Screen.setColor(Z)V
sipush 360
sipush 170
iconst_3
invokestatic OS/Screen.drawCircle(III)V
sipush 280
bipush 90
sipush 345
bipush 35
invokestatic OS/Screen.drawLine(IIII)V
sipush 345
bipush 35
sipush 410
bipush 90
invokestatic OS/Screen.drawLine(IIII)V
sipush 140
bipush 60
bipush 30
invokestatic OS/Screen.drawCircle(III)V
sipush 140
bipush 26
sipush 140
bipush 6
invokestatic OS/Screen.drawLine(IIII)V
sipush 163
bipush 35
sipush 178
bipush 20
invokestatic OS/Screen.drawLine(IIII)V
sipush 174
bipush 60
sipush 194
bipush 60
invokestatic OS/Screen.drawLine(IIII)V
sipush 163
bipush 85
sipush 178
bipush 100
invokestatic OS/Screen.drawLine(IIII)V
sipush 140
bipush 94
sipush 140
bipush 114
invokestatic OS/Screen.drawLine(IIII)V
bipush 117
bipush 85
bipush 102
bipush 100
invokestatic OS/Screen.drawLine(IIII)V
bipush 106
bipush 60
bipush 86
bipush 60
invokestatic OS/Screen.drawLine(IIII)V
bipush 117
bipush 35
bipush 102
bipush 20
invokestatic OS/Screen.drawLine(IIII)V
return
.end method
