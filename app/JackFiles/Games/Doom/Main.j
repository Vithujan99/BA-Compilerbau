.class public Main
.super java/lang/Object
.field static meshes LOS/Array;
.field static meshCount I
.field static playerX I
.field static playerZ I
.field static ammo I
.field static demonCount I
.field static playing Z
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 1
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
invokestatic MainMenu.displayMainMenuAndAwaitGameStart()V
iconst_1
putstatic Main.playing Z
iconst_5
putstatic Main.ammo I
invokestatic Main.play()V
return
.end method
.method public static play()V
.limit stack 10
.limit locals 1
bipush 12
putstatic Main.meshCount I
new OS/Array
dup
bipush 12
invokespecial OS/Array.<init>(I)V
putstatic Main.meshes LOS/Array;
getstatic Main.meshes LOS/Array;
iconst_0
new Mesh
dup
iconst_5
iconst_0
iconst_0
iconst_0
iconst_5
bipush 15
invokespecial Mesh.<init>(IIIII)V
invokevirtual OS/Array.set(II)V
getstatic Main.meshes LOS/Array;
iconst_1
new Mesh
dup
iconst_5
ineg
iconst_0
iconst_0
iconst_0
iconst_5
bipush 15
invokespecial Mesh.<init>(IIIII)V
invokevirtual OS/Array.set(II)V
getstatic Main.meshes LOS/Array;
iconst_2
new Mesh
dup
iconst_5
iconst_0
bipush 15
bipush 15
iconst_5
iconst_0
invokespecial Mesh.<init>(IIIII)V
invokevirtual OS/Array.set(II)V
getstatic Main.meshes LOS/Array;
iconst_3
new Mesh
dup
iconst_5
ineg
iconst_0
bipush 15
bipush 15
ineg
iconst_5
iconst_0
invokespecial Mesh.<init>(IIIII)V
invokevirtual OS/Array.set(II)V
getstatic Main.meshes LOS/Array;
iconst_0
new Mesh
dup
bipush 20
iconst_0
iconst_0
bipush 60
iconst_0
invokespecial Mesh.<init>(IIIII)V
invokevirtual OS/Array.set(II)V
getstatic Main.meshes LOS/Array;
iconst_1
new Mesh
dup
bipush 20
ineg
iconst_0
iconst_0
bipush 60
iconst_1
invokespecial Mesh.<init>(IIIII)V
invokevirtual OS/Array.set(II)V
getstatic Main.meshes LOS/Array;
iconst_2
new Mesh
dup
bipush 20
bipush 60
bipush 60
iconst_0
iconst_2
invokespecial Mesh.<init>(IIIII)V
invokevirtual OS/Array.set(II)V
getstatic Main.meshes LOS/Array;
iconst_3
new Mesh
dup
bipush 80
ineg
bipush 60
bipush 60
iconst_0
iconst_3
invokespecial Mesh.<init>(IIIII)V
invokevirtual OS/Array.set(II)V
getstatic Main.meshes LOS/Array;
iconst_4
new Mesh
dup
bipush 120
ineg
bipush 100
sipush 240
iconst_0
iconst_4
invokespecial Mesh.<init>(IIIII)V
invokevirtual OS/Array.set(II)V
getstatic Main.meshes LOS/Array;
iconst_5
new Mesh
dup
bipush 80
ineg
iconst_0
iconst_0
bipush 60
iconst_5
invokespecial Mesh.<init>(IIIII)V
invokevirtual OS/Array.set(II)V
getstatic Main.meshes LOS/Array;
bipush 6
new Mesh
dup
bipush 80
ineg
iconst_0
bipush 60
iconst_0
bipush 6
invokespecial Mesh.<init>(IIIII)V
invokevirtual OS/Array.set(II)V
getstatic Main.meshes LOS/Array;
bipush 7
new Mesh
dup
bipush 80
iconst_0
iconst_0
bipush 60
bipush 7
invokespecial Mesh.<init>(IIIII)V
invokevirtual OS/Array.set(II)V
getstatic Main.meshes LOS/Array;
bipush 8
new Mesh
dup
bipush 20
iconst_0
bipush 60
iconst_0
bipush 8
invokespecial Mesh.<init>(IIIII)V
invokevirtual OS/Array.set(II)V
getstatic Main.meshes LOS/Array;
bipush 9
new Mesh
dup
bipush 120
ineg
bipush 40
ineg
iconst_0
sipush 140
bipush 9
invokespecial Mesh.<init>(IIIII)V
invokevirtual OS/Array.set(II)V
getstatic Main.meshes LOS/Array;
bipush 10
new Mesh
dup
bipush 120
bipush 40
ineg
iconst_0
sipush 140
bipush 10
invokespecial Mesh.<init>(IIIII)V
invokevirtual OS/Array.set(II)V
getstatic Main.meshes LOS/Array;
bipush 11
new Mesh
dup
bipush 120
ineg
bipush 40
ineg
sipush 240
iconst_0
bipush 11
invokespecial Mesh.<init>(IIIII)V
invokevirtual OS/Array.set(II)V
invokestatic Mesh.createCos()V
invokestatic Mesh.createSin()V
invokestatic Renderer.init()V
iconst_0
getstatic Main.meshCount I
iconst_1
isub
invokestatic Main.sortMeshesByZ(II)V
iconst_1
invokestatic Main.updateDisplay(I)V
invokestatic Main.printAmmo()V
whileL1:
getstatic Main.playing Z
ifeq whileL0
invokestatic Main.tick()V
goto whileL1
whileL0:
return
.end method
.method public static tick()V
.limit stack 10
.limit locals 1
iconst_0
istore 0
invokestatic Main.updateMovement()I
istore 0
iload 0
ifeq ifL2
iconst_1
invokestatic Main.updateDisplay(I)V
invokestatic Main.printAmmo()V
goto ifL3
ifL2:
ifL3:
getstatic Main.playerX I
bipush 20
ineg
if_icmple jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
getstatic Main.playerX I
bipush 20
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
iand
getstatic Main.playerZ I
bipush 30
ineg
if_icmpge jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
iand
getstatic Main.playerZ I
bipush 34
ineg
if_icmple jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
iand
getstatic Main.demonCount I
iconst_0
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
iand
ifeq ifL4
invokestatic Main.fightDemon()V
goto ifL5
ifL4:
ifL5:
getstatic Main.playerX I
bipush 14
ineg
if_icmple jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
getstatic Main.playerX I
bipush 8
if_icmpge jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
iand
getstatic Main.playerZ I
sipush 220
ineg
if_icmpge jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
iand
getstatic Main.playerZ I
sipush 224
ineg
if_icmple jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
iand
getstatic Main.demonCount I
iconst_1
if_icmpne jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
iand
ifeq ifL6
invokestatic Main.fightDemon()V
goto ifL7
ifL6:
ifL7:
getstatic Main.playerX I
bipush 42
ineg
if_icmple jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
getstatic Main.playerX I
bipush 20
ineg
if_icmpge jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
iand
getstatic Main.playerZ I
sipush 418
ineg
if_icmpge jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
iand
getstatic Main.playerZ I
sipush 422
ineg
if_icmple jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
iand
getstatic Main.demonCount I
iconst_2
if_icmpne jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
iand
ifeq ifL8
invokestatic Main.fightDemon()V
goto ifL9
ifL8:
ifL9:
bipush 10
invokestatic OS/Sys.wait(I)V
return
.end method
.method public static fightDemon()V
.limit stack 10
.limit locals 2
iconst_0
istore 0
iconst_0
istore 1
invokestatic Demon.draw1()V
invokestatic Main.drawGun()V
whileL11:
iload 0
iconst_0
if_icmpne jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
ifeq whileL10
invokestatic OS/Keyboard.keyPressed()C
istore 0
iload 0
bipush 32
if_icmpne jump32
iconst_1
goto jump33
jump32:
iconst_0
jump33:
ifne jump34
iconst_1
goto jump35
jump34:
iconst_0
jump35:
ifeq ifL12
iconst_0
istore 0
goto ifL13
ifL12:
ifL13:
iload 1
iconst_1
iadd
istore 1
iload 1
sipush 200
if_icmple jump36
iconst_1
goto jump37
jump36:
iconst_0
jump37:
ifeq ifL14
iconst_1
istore 0
goto ifL15
ifL14:
ifL15:
iconst_1
invokestatic OS/Sys.wait(I)V
goto whileL11
whileL10:
iload 0
iconst_1
if_icmpne jump38
iconst_1
goto jump39
jump38:
iconst_0
jump39:
getstatic Main.ammo I
iconst_0
if_icmpne jump40
iconst_1
goto jump41
jump40:
iconst_0
jump41:
ior
ifeq ifL16
iconst_0
putstatic Main.playing Z
iconst_0
invokestatic OS/Screen.setColor(Z)V
iconst_0
iconst_0
sipush 511
sipush 255
invokestatic OS/Screen.drawRectangle(IIII)V
bipush 11
bipush 7
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 52
invokespecial OS/String.<init>(I)V
bipush 84
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 118
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 98
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 33
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
goto ifL17
ifL16:
iload 0
bipush 32
if_icmpne jump42
iconst_1
goto jump43
jump42:
iconst_0
jump43:
ifeq ifL18
invokestatic Demon.draw6()V
invokestatic Demon.drawFlash()V
invokestatic Main.drawGun()V
sipush 300
invokestatic OS/Sys.wait(I)V
invokestatic Demon.draw6()V
invokestatic Main.drawGun()V
sipush 700
invokestatic OS/Sys.wait(I)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iconst_0
iconst_0
sipush 511
sipush 255
invokestatic OS/Screen.drawRectangle(IIII)V
iconst_1
invokestatic Main.updateDisplay(I)V
getstatic Main.demonCount I
iconst_1
iadd
putstatic Main.demonCount I
getstatic Main.ammo I
iconst_1
isub
putstatic Main.ammo I
invokestatic Main.printAmmo()V
goto ifL19
ifL18:
ifL19:
ifL17:
return
.end method
.method public static printAmmo()V
.limit stack 10
.limit locals 0
bipush 22
iconst_0
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 6
invokespecial OS/String.<init>(I)V
bipush 65
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
getstatic Main.ammo I
invokestatic OS/Output.printInt(I)V
new OS/String
dup
iconst_4
invokespecial OS/String.<init>(I)V
bipush 47
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 48
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 53
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
return
.end method
.method public static updateMovement()I
.limit stack 10
.limit locals 8
iconst_0
istore 0
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 4
iconst_0
istore 5
iconst_0
istore 7
iconst_0
istore 7
invokestatic OS/Keyboard.keyPressed()C
istore 0
iload 0
bipush 87
if_icmpne jump44
iconst_1
goto jump45
jump44:
iconst_0
jump45:
ifeq ifL20
iconst_2
ineg
istore 2
getstatic Main.playerZ I
iconst_2
isub
putstatic Main.playerZ I
goto ifL21
ifL20:
ifL21:
iload 0
bipush 83
if_icmpne jump46
iconst_1
goto jump47
jump46:
iconst_0
jump47:
ifeq ifL22
iconst_2
istore 2
getstatic Main.playerZ I
iconst_2
iadd
putstatic Main.playerZ I
goto ifL23
ifL22:
ifL23:
iload 0
bipush 65
if_icmpne jump48
iconst_1
goto jump49
jump48:
iconst_0
jump49:
ifeq ifL24
iconst_2
istore 1
getstatic Main.playerX I
iconst_2
iadd
putstatic Main.playerX I
goto ifL25
ifL24:
ifL25:
iload 0
bipush 68
if_icmpne jump50
iconst_1
goto jump51
jump50:
iconst_0
jump51:
ifeq ifL26
iconst_2
ineg
istore 1
getstatic Main.playerX I
iconst_2
isub
putstatic Main.playerX I
goto ifL27
ifL26:
ifL27:
iload 0
sipush 130
if_icmpne jump52
iconst_1
goto jump53
jump52:
iconst_0
jump53:
ifeq ifL28
bipush 6
ineg
istore 3
goto ifL29
ifL28:
ifL29:
iload 0
sipush 132
if_icmpne jump54
iconst_1
goto jump55
jump54:
iconst_0
jump55:
ifeq ifL30
bipush 6
istore 3
goto ifL31
ifL30:
ifL31:
iload 0
bipush 32
if_icmpne jump56
iconst_1
goto jump57
jump56:
iconst_0
jump57:
getstatic Main.ammo I
iconst_0
if_icmple jump58
iconst_1
goto jump59
jump58:
iconst_0
jump59:
iand
ifeq ifL32
invokestatic Demon.drawFlash()V
sipush 200
invokestatic OS/Sys.wait(I)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iconst_0
iconst_0
sipush 511
sipush 255
invokestatic OS/Screen.drawRectangle(IIII)V
iconst_1
invokestatic Main.updateDisplay(I)V
getstatic Main.ammo I
iconst_1
isub
putstatic Main.ammo I
invokestatic Main.printAmmo()V
goto ifL33
ifL32:
ifL33:
iload 0
bipush 80
if_icmpne jump60
iconst_1
goto jump61
jump60:
iconst_0
jump61:
ifeq ifL34
iconst_0
istore 4
whileL37:
iload 4
getstatic Main.meshCount I
if_icmpge jump62
iconst_1
goto jump63
jump62:
iconst_0
jump63:
ifeq whileL36
getstatic Main.meshes LOS/Array;
iload 4
invokevirtual OS/Array.get(I)I
astore 6
aload 6
invokevirtual Mesh.print()V
iload 4
iconst_1
iadd
istore 4
goto whileL37
whileL36:
goto ifL35
ifL34:
ifL35:
iload 0
bipush 84
if_icmpne jump64
iconst_1
goto jump65
jump64:
iconst_0
jump65:
ifeq ifL38
getstatic Main.playerX I
invokestatic OS/Output.printInt(I)V
new OS/String
dup
iconst_1
invokespecial OS/String.<init>(I)V
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
getstatic Main.playerZ I
invokestatic OS/Output.printInt(I)V
invokestatic OS/Output.println()V
goto ifL39
ifL38:
ifL39:
iconst_0
istore 4
iload 1
iconst_0
if_icmpne jump66
iconst_1
goto jump67
jump66:
iconst_0
jump67:
ifne jump68
iconst_1
goto jump69
jump68:
iconst_0
jump69:
iload 2
iconst_0
if_icmpne jump70
iconst_1
goto jump71
jump70:
iconst_0
jump71:
ifne jump72
iconst_1
goto jump73
jump72:
iconst_0
jump73:
ior
ifeq ifL40
whileL43:
iload 4
getstatic Main.meshCount I
if_icmpge jump74
iconst_1
goto jump75
jump74:
iconst_0
jump75:
iload 7
ifne jump76
iconst_1
goto jump77
jump76:
iconst_0
jump77:
iand
ifeq whileL42
getstatic Main.meshes LOS/Array;
iload 4
invokevirtual OS/Array.get(I)I
astore 6
aload 6
iload 1
iload 2
invokevirtual Mesh.translate(II)V
aload 6
invokevirtual Mesh.stuckInWall()Z
ifeq ifL44
iconst_1
istore 7
goto ifL45
ifL44:
ifL45:
iload 4
iconst_1
iadd
istore 4
goto whileL43
whileL42:
iload 7
ifeq ifL46
whileL49:
iload 5
iload 4
if_icmpge jump78
iconst_1
goto jump79
jump78:
iconst_0
jump79:
ifeq whileL48
getstatic Main.meshes LOS/Array;
iload 5
invokevirtual OS/Array.get(I)I
astore 6
aload 6
iload 1
ineg
iload 2
ineg
invokevirtual Mesh.translate(II)V
iload 5
iconst_1
iadd
istore 5
goto whileL49
whileL48:
goto ifL47
ifL46:
ifL47:
iconst_0
getstatic Main.meshCount I
iconst_1
isub
invokestatic Main.sortMeshesByZ(II)V
goto ifL41
ifL40:
ifL41:
iload 0
sipush 130
if_icmpne jump80
iconst_1
goto jump81
jump80:
iconst_0
jump81:
iload 0
sipush 132
if_icmpne jump82
iconst_1
goto jump83
jump82:
iconst_0
jump83:
ior
ifeq ifL50
iconst_0
istore 5
whileL53:
iload 5
bipush 15
if_icmpge jump84
iconst_1
goto jump85
jump84:
iconst_0
jump85:
ifeq whileL52
iconst_0
istore 4
whileL55:
iload 4
getstatic Main.meshCount I
if_icmpge jump86
iconst_1
goto jump87
jump86:
iconst_0
jump87:
ifeq whileL54
getstatic Main.meshes LOS/Array;
iload 4
invokevirtual OS/Array.get(I)I
astore 6
aload 6
iload 3
invokevirtual Mesh.rotate(I)V
iload 4
iconst_1
iadd
istore 4
goto whileL55
whileL54:
iconst_0
getstatic Main.meshCount I
iconst_1
isub
invokestatic Main.sortMeshesByZ(II)V
iconst_1
invokestatic Main.updateDisplay(I)V
bipush 40
invokestatic OS/Sys.wait(I)V
iload 5
iconst_1
iadd
istore 5
goto whileL53
whileL52:
goto ifL51
ifL50:
ifL51:
iload 0
bipush 87
if_icmpne jump88
iconst_1
goto jump89
jump88:
iconst_0
jump89:
iload 0
bipush 83
if_icmpne jump90
iconst_1
goto jump91
jump90:
iconst_0
jump91:
ior
iload 0
bipush 65
if_icmpne jump92
iconst_1
goto jump93
jump92:
iconst_0
jump93:
ior
iload 0
bipush 68
if_icmpne jump94
iconst_1
goto jump95
jump94:
iconst_0
jump95:
ior
iload 0
sipush 130
if_icmpne jump96
iconst_1
goto jump97
jump96:
iconst_0
jump97:
ior
iload 0
sipush 132
if_icmpne jump98
iconst_1
goto jump99
jump98:
iconst_0
jump99:
ior
ireturn
.end method
.method public static updateDisplay(I)V
.limit stack 10
.limit locals 3
iconst_0
istore 1
invokestatic Renderer.reset()V
whileL57:
iload 1
getstatic Main.meshCount I
if_icmpge jump100
iconst_1
goto jump101
jump100:
iconst_0
jump101:
ifeq whileL56
getstatic Main.meshes LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
astore 2
aload 2
invokevirtual Mesh.draw()V
iload 1
iconst_1
iadd
istore 1
goto whileL57
whileL56:
invokestatic Renderer.clearPaint()V
iload 0
invokestatic Renderer.paint(I)V
invokestatic Main.drawGun()V
return
.end method
.method public static drawGun()V
.limit stack 10
.limit locals 0
sipush 23311
iconst_4
invokestatic OS/Memory.poke(II)V
sipush 23343
bipush 11
invokestatic OS/Memory.poke(II)V
sipush 23375
iconst_1
invokestatic OS/Memory.poke(II)V
sipush 23407
sipush 2938
invokestatic OS/Memory.poke(II)V
sipush 23439
sipush 4832
invokestatic OS/Memory.poke(II)V
sipush 23470
sipush 16384
sipush 16384
iadd
invokestatic OS/Memory.poke(II)V
sipush 23471
sipush 30209
ineg
invokestatic OS/Memory.poke(II)V
sipush 23503
sipush 6702
ineg
invokestatic OS/Memory.poke(II)V
sipush 23534
sipush 24576
invokestatic OS/Memory.poke(II)V
sipush 23535
sipush 3855
invokestatic OS/Memory.poke(II)V
sipush 23536
bipush 7
invokestatic OS/Memory.poke(II)V
sipush 23567
sipush 16142
invokestatic OS/Memory.poke(II)V
sipush 23598
sipush 2048
invokestatic OS/Memory.poke(II)V
sipush 23599
sipush 15879
invokestatic OS/Memory.poke(II)V
sipush 23631
sipush 15366
invokestatic OS/Memory.poke(II)V
sipush 23632
sipush 192
invokestatic OS/Memory.poke(II)V
sipush 23662
sipush 2304
invokestatic OS/Memory.poke(II)V
sipush 23663
sipush 24614
invokestatic OS/Memory.poke(II)V
sipush 23664
sipush 1054
ineg
invokestatic OS/Memory.poke(II)V
sipush 23665
iconst_3
invokestatic OS/Memory.poke(II)V
sipush 23694
sipush 9216
ineg
invokestatic OS/Memory.poke(II)V
sipush 23695
sipush 16767
invokestatic OS/Memory.poke(II)V
sipush 23696
sipush 24304
invokestatic OS/Memory.poke(II)V
sipush 23726
sipush 17024
ineg
invokestatic OS/Memory.poke(II)V
sipush 23727
sipush 25214
invokestatic OS/Memory.poke(II)V
sipush 23728
sipush 16368
invokestatic OS/Memory.poke(II)V
sipush 23729
iconst_2
invokestatic OS/Memory.poke(II)V
sipush 23758
sipush 32256
invokestatic OS/Memory.poke(II)V
sipush 23759
sipush 7007
ineg
invokestatic OS/Memory.poke(II)V
sipush 23760
bipush 16
ineg
invokestatic OS/Memory.poke(II)V
sipush 23761
bipush 8
invokestatic OS/Memory.poke(II)V
sipush 23790
sipush 16512
ineg
invokestatic OS/Memory.poke(II)V
sipush 23791
sipush 22489
ineg
invokestatic OS/Memory.poke(II)V
sipush 23792
sipush 1168
ineg
invokestatic OS/Memory.poke(II)V
sipush 23793
bipush 99
invokestatic OS/Memory.poke(II)V
sipush 23822
bipush 64
ineg
invokestatic OS/Memory.poke(II)V
sipush 23823
bipush 95
invokestatic OS/Memory.poke(II)V
sipush 23824
sipush 528
ineg
invokestatic OS/Memory.poke(II)V
sipush 23825
sipush 7455
invokestatic OS/Memory.poke(II)V
sipush 23826
iconst_4
invokestatic OS/Memory.poke(II)V
sipush 23854
sipush 512
ineg
invokestatic OS/Memory.poke(II)V
sipush 23855
sipush 223
invokestatic OS/Memory.poke(II)V
sipush 23856
sipush 29680
invokestatic OS/Memory.poke(II)V
sipush 23857
sipush 8673
ineg
invokestatic OS/Memory.poke(II)V
sipush 23858
iconst_4
invokestatic OS/Memory.poke(II)V
sipush 23886
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
sipush 23887
sipush 16863
invokestatic OS/Memory.poke(II)V
sipush 23888
sipush 4108
ineg
invokestatic OS/Memory.poke(II)V
sipush 23889
sipush 577
ineg
invokestatic OS/Memory.poke(II)V
sipush 23890
bipush 15
invokestatic OS/Memory.poke(II)V
sipush 23918
sipush 6144
ineg
invokestatic OS/Memory.poke(II)V
sipush 23919
sipush 16415
invokestatic OS/Memory.poke(II)V
sipush 23920
sipush 24584
ineg
invokestatic OS/Memory.poke(II)V
sipush 23921
bipush 97
ineg
invokestatic OS/Memory.poke(II)V
sipush 23922
bipush 63
invokestatic OS/Memory.poke(II)V
sipush 23950
sipush 31232
invokestatic OS/Memory.poke(II)V
sipush 23951
sipush 20831
invokestatic OS/Memory.poke(II)V
sipush 23952
sipush 32736
invokestatic OS/Memory.poke(II)V
sipush 23953
bipush 65
ineg
invokestatic OS/Memory.poke(II)V
sipush 23954
bipush 63
invokestatic OS/Memory.poke(II)V
sipush 23982
sipush 968
ineg
invokestatic OS/Memory.poke(II)V
sipush 23983
sipush 21727
invokestatic OS/Memory.poke(II)V
sipush 23984
bipush 64
ineg
invokestatic OS/Memory.poke(II)V
sipush 23985
bipush 68
ineg
invokestatic OS/Memory.poke(II)V
sipush 23986
bipush 125
invokestatic OS/Memory.poke(II)V
sipush 24014
bipush 96
ineg
invokestatic OS/Memory.poke(II)V
sipush 24015
sipush 20927
invokestatic OS/Memory.poke(II)V
sipush 24016
sipush 766
ineg
invokestatic OS/Memory.poke(II)V
sipush 24017
sipush 615
ineg
invokestatic OS/Memory.poke(II)V
sipush 24018
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 24045
sipush 16384
sipush 16384
iadd
invokestatic OS/Memory.poke(II)V
sipush 24046
bipush 97
ineg
invokestatic OS/Memory.poke(II)V
sipush 24047
sipush 31297
ineg
invokestatic OS/Memory.poke(II)V
sipush 24048
sipush 1536
ineg
invokestatic OS/Memory.poke(II)V
sipush 24049
bipush 25
ineg
invokestatic OS/Memory.poke(II)V
sipush 24050
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 24077
sipush 16384
sipush 16384
iadd
invokestatic OS/Memory.poke(II)V
sipush 24078
sipush 825
ineg
invokestatic OS/Memory.poke(II)V
sipush 24079
sipush 4031
invokestatic OS/Memory.poke(II)V
sipush 24080
sipush 4095
ineg
invokestatic OS/Memory.poke(II)V
sipush 24081
bipush 49
ineg
invokestatic OS/Memory.poke(II)V
sipush 24082
sipush 255
invokestatic OS/Memory.poke(II)V
sipush 24109
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
sipush 24110
sipush 253
ineg
invokestatic OS/Memory.poke(II)V
sipush 24111
sipush 3071
invokestatic OS/Memory.poke(II)V
sipush 24112
sipush 10240
ineg
invokestatic OS/Memory.poke(II)V
sipush 24113
sipush 193
ineg
invokestatic OS/Memory.poke(II)V
sipush 24114
sipush 255
invokestatic OS/Memory.poke(II)V
sipush 24141
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
sipush 24142
sipush 1023
ineg
invokestatic OS/Memory.poke(II)V
sipush 24143
sipush 8191
invokestatic OS/Memory.poke(II)V
sipush 24144
sipush 8190
ineg
invokestatic OS/Memory.poke(II)V
sipush 24145
sipush 385
ineg
invokestatic OS/Memory.poke(II)V
sipush 24146
sipush 511
invokestatic OS/Memory.poke(II)V
sipush 24173
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
sipush 24174
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
sipush 24175
sipush 27599
invokestatic OS/Memory.poke(II)V
sipush 24176
sipush 8188
ineg
invokestatic OS/Memory.poke(II)V
sipush 24177
sipush 1537
ineg
invokestatic OS/Memory.poke(II)V
sipush 24178
sipush 511
invokestatic OS/Memory.poke(II)V
sipush 24205
sipush 30720
invokestatic OS/Memory.poke(II)V
sipush 24206
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
sipush 24207
sipush 825
ineg
invokestatic OS/Memory.poke(II)V
sipush 24208
sipush 16328
ineg
invokestatic OS/Memory.poke(II)V
sipush 24209
sipush 3073
ineg
invokestatic OS/Memory.poke(II)V
sipush 24210
sipush 511
invokestatic OS/Memory.poke(II)V
sipush 24237
sipush 10240
invokestatic OS/Memory.poke(II)V
sipush 24238
sipush 16370
ineg
invokestatic OS/Memory.poke(II)V
sipush 24239
sipush 5177
ineg
invokestatic OS/Memory.poke(II)V
sipush 24240
sipush 16352
ineg
invokestatic OS/Memory.poke(II)V
sipush 24241
sipush 12291
ineg
invokestatic OS/Memory.poke(II)V
sipush 24242
sipush 1023
invokestatic OS/Memory.poke(II)V
sipush 24269
sipush 24576
invokestatic OS/Memory.poke(II)V
sipush 24270
sipush 32752
ineg
invokestatic OS/Memory.poke(II)V
sipush 24271
bipush 25
ineg
invokestatic OS/Memory.poke(II)V
sipush 24272
sipush 32704
ineg
invokestatic OS/Memory.poke(II)V
sipush 24273
iconst_3
ineg
invokestatic OS/Memory.poke(II)V
sipush 24274
sipush 1967
invokestatic OS/Memory.poke(II)V
sipush 24301
sipush 15360
ineg
invokestatic OS/Memory.poke(II)V
sipush 24303
sipush 32739
invokestatic OS/Memory.poke(II)V
sipush 24304
bipush 33
invokestatic OS/Memory.poke(II)V
sipush 24305
iconst_5
ineg
invokestatic OS/Memory.poke(II)V
sipush 24306
sipush 4095
invokestatic OS/Memory.poke(II)V
sipush 24334
sipush 448
invokestatic OS/Memory.poke(II)V
sipush 24335
sipush 32737
invokestatic OS/Memory.poke(II)V
sipush 24336
sipush 1217
invokestatic OS/Memory.poke(II)V
sipush 24337
bipush 16
ineg
invokestatic OS/Memory.poke(II)V
sipush 24338
sipush 4095
invokestatic OS/Memory.poke(II)V
sipush 24366
sipush 896
invokestatic OS/Memory.poke(II)V
sipush 24367
bipush 31
ineg
invokestatic OS/Memory.poke(II)V
sipush 24368
sipush 522
invokestatic OS/Memory.poke(II)V
sipush 24369
bipush 16
ineg
invokestatic OS/Memory.poke(II)V
sipush 24370
sipush 8191
invokestatic OS/Memory.poke(II)V
sipush 24397
sipush 512
ineg
invokestatic OS/Memory.poke(II)V
sipush 24398
sipush 194
invokestatic OS/Memory.poke(II)V
sipush 24399
bipush 64
ineg
invokestatic OS/Memory.poke(II)V
sipush 24400
sipush 1028
invokestatic OS/Memory.poke(II)V
sipush 24401
sipush 160
ineg
invokestatic OS/Memory.poke(II)V
sipush 24402
sipush 8191
invokestatic OS/Memory.poke(II)V
sipush 24429
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 24430
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 24431
sipush 3200
ineg
invokestatic OS/Memory.poke(II)V
sipush 24432
sipush 1029
invokestatic OS/Memory.poke(II)V
sipush 24433
sipush 320
ineg
invokestatic OS/Memory.poke(II)V
sipush 24434
sipush 16383
invokestatic OS/Memory.poke(II)V
sipush 24461
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
sipush 24462
sipush 1023
invokestatic OS/Memory.poke(II)V
sipush 24463
sipush 320
ineg
invokestatic OS/Memory.poke(II)V
sipush 24464
sipush 555
invokestatic OS/Memory.poke(II)V
sipush 24465
sipush 640
ineg
invokestatic OS/Memory.poke(II)V
sipush 24466
sipush 16383
invokestatic OS/Memory.poke(II)V
sipush 24493
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 24494
sipush 511
invokestatic OS/Memory.poke(II)V
sipush 24495
sipush 704
ineg
invokestatic OS/Memory.poke(II)V
sipush 24496
sipush 1043
invokestatic OS/Memory.poke(II)V
sipush 24497
sipush 256
ineg
invokestatic OS/Memory.poke(II)V
sipush 24498
sipush 32767
invokestatic OS/Memory.poke(II)V
sipush 24525
sipush 1025
ineg
invokestatic OS/Memory.poke(II)V
sipush 24526
sipush 511
invokestatic OS/Memory.poke(II)V
sipush 24527
sipush 8464
invokestatic OS/Memory.poke(II)V
sipush 24528
bipush 17
invokestatic OS/Memory.poke(II)V
sipush 24529
sipush 512
ineg
invokestatic OS/Memory.poke(II)V
sipush 24530
sipush 32767
invokestatic OS/Memory.poke(II)V
sipush 24556
sipush 16384
sipush 16384
iadd
invokestatic OS/Memory.poke(II)V
sipush 24557
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 24558
sipush 511
invokestatic OS/Memory.poke(II)V
sipush 24559
sipush 1464
invokestatic OS/Memory.poke(II)V
sipush 24560
sipush 176
invokestatic OS/Memory.poke(II)V
sipush 24561
sipush 11776
ineg
invokestatic OS/Memory.poke(II)V
sipush 24562
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static sortMeshesByZ(II)V
.limit stack 20
.limit locals 17
iconst_0
istore 2
iconst_0
istore 0
iconst_0
istore 4
iconst_0
istore 1
iconst_0
istore 6
iconst_0
istore 7
iconst_0
istore 8
iconst_0
istore 9
iconst_0
istore 10
iconst_0
istore 11
iconst_0
istore 12
iconst_1
istore 2
new OS/Array
dup
getstatic Main.meshCount I
invokespecial OS/Array.<init>(I)V
astore 13
new OS/Array
dup
getstatic Main.meshCount I
invokespecial OS/Array.<init>(I)V
astore 14
whileL59:
iload 2
getstatic Main.meshCount I
if_icmpge jump102
iconst_1
goto jump103
jump102:
iconst_0
jump103:
ifeq whileL58
iconst_0
istore 0
whileL61:
iload 0
getstatic Main.meshCount I
iconst_1
isub
if_icmpge jump104
iconst_1
goto jump105
jump104:
iconst_0
jump105:
ifeq whileL60
getstatic Main.meshCount I
iconst_1
isub
iload 0
iload 2
iadd
iconst_1
isub
if_icmpge jump106
iconst_1
goto jump107
jump106:
iconst_0
jump107:
ifeq ifL62
getstatic Main.meshCount I
iconst_1
isub
istore 4
goto ifL63
ifL62:
iload 0
iload 2
iadd
iconst_1
isub
istore 4
ifL63:
getstatic Main.meshCount I
iconst_1
isub
iload 0
iload 2
iadd
iload 2
iadd
iconst_1
isub
if_icmpge jump108
iconst_1
goto jump109
jump108:
iconst_0
jump109:
ifeq ifL64
getstatic Main.meshCount I
iconst_1
isub
istore 1
goto ifL65
ifL64:
iload 0
iload 2
iadd
iload 2
iadd
iconst_1
isub
istore 1
ifL65:
iload 4
iload 0
isub
iconst_1
iadd
istore 9
iload 1
iload 4
isub
istore 10
iconst_0
istore 6
whileL67:
iload 6
iload 9
if_icmpge jump110
iconst_1
goto jump111
jump110:
iconst_0
jump111:
ifeq whileL66
aload 13
iload 6
getstatic Main.meshes LOS/Array;
iload 0
iload 6
iadd
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.set(II)V
iload 6
iconst_1
iadd
istore 6
goto whileL67
whileL66:
iconst_0
istore 7
whileL69:
iload 7
iload 10
if_icmpge jump112
iconst_1
goto jump113
jump112:
iconst_0
jump113:
ifeq whileL68
aload 14
iload 7
getstatic Main.meshes LOS/Array;
iload 4
iconst_1
iadd
iload 7
iadd
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.set(II)V
iload 7
iconst_1
iadd
istore 7
goto whileL69
whileL68:
iconst_0
istore 6
iconst_0
istore 7
iload 0
istore 8
whileL71:
iload 6
iload 9
if_icmpge jump114
iconst_1
goto jump115
jump114:
iconst_0
jump115:
iload 7
iload 10
if_icmpge jump116
iconst_1
goto jump117
jump116:
iconst_0
jump117:
iand
ifeq whileL70
aload 13
iload 6
invokevirtual OS/Array.get(I)I
astore 15
aload 14
iload 7
invokevirtual OS/Array.get(I)I
astore 16
aload 15
invokevirtual Mesh.minZ()I
istore 11
aload 16
invokevirtual Mesh.minZ()I
istore 12
iload 11
iload 12
if_icmpge jump118
iconst_1
goto jump119
jump118:
iconst_0
jump119:
iload 11
iload 12
if_icmpne jump120
iconst_1
goto jump121
jump120:
iconst_0
jump121:
ior
ifeq ifL72
getstatic Main.meshes LOS/Array;
iload 8
aload 13
iload 6
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.set(II)V
iload 6
iconst_1
iadd
istore 6
goto ifL73
ifL72:
getstatic Main.meshes LOS/Array;
iload 8
aload 14
iload 7
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.set(II)V
iload 7
iconst_1
iadd
istore 7
ifL73:
iload 8
iconst_1
iadd
istore 8
goto whileL71
whileL70:
whileL75:
iload 6
iload 9
if_icmpge jump122
iconst_1
goto jump123
jump122:
iconst_0
jump123:
ifeq whileL74
getstatic Main.meshes LOS/Array;
iload 8
aload 13
iload 6
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.set(II)V
iload 6
iconst_1
iadd
istore 6
iload 8
iconst_1
iadd
istore 8
goto whileL75
whileL74:
whileL77:
iload 7
iload 10
if_icmpge jump124
iconst_1
goto jump125
jump124:
iconst_0
jump125:
ifeq whileL76
getstatic Main.meshes LOS/Array;
iload 8
aload 14
iload 7
invokevirtual OS/Array.get(I)I
invokevirtual OS/Array.set(II)V
iload 7
iconst_1
iadd
istore 7
iload 8
iconst_1
iadd
istore 8
goto whileL77
whileL76:
iload 0
iload 2
iadd
iload 2
iadd
istore 0
goto whileL61
whileL60:
iload 2
iload 2
iadd
istore 2
goto whileL59
whileL58:
aload 13
invokevirtual OS/Array.dispose()V
aload 14
invokevirtual OS/Array.dispose()V
return
.end method
