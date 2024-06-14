.class public MainMenu
.super java/lang/Object
.method public static displayMainMenuAndAwaitGameStart()V
.limit stack 10
.limit locals 1
iconst_0
istore 0
invokestatic MainMenu.drawMainMenu()V
bipush 16
bipush 19
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 27
invokespecial OS/String.<init>(I)V
bipush 80
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
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
invokestatic OS/Output.printString(LOS/String;)V
whileL1:
iload 0
iconst_0
if_icmpne jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
invokestatic OS/Keyboard.keyPressed()C
istore 0
iload 0
bipush 32
if_icmpne jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL2
iconst_0
istore 0
goto ifL3
ifL2:
ifL3:
goto whileL1
whileL0:
invokestatic MainMenu.drawDogma()V
return
.end method
.method public static drawMainMenu()V
.limit stack 10
.limit locals 0
sipush 17131
sipush 32480
invokestatic OS/Memory.poke(II)V
sipush 17132
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 17133
sipush 511
invokestatic OS/Memory.poke(II)V
sipush 17134
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
sipush 17135
sipush 8191
invokestatic OS/Memory.poke(II)V
sipush 17136
bipush 32
ineg
invokestatic OS/Memory.poke(II)V
sipush 17137
sipush 16383
invokestatic OS/Memory.poke(II)V
sipush 17138
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 17139
sipush 1021
ineg
invokestatic OS/Memory.poke(II)V
sipush 17140
sipush 8191
invokestatic OS/Memory.poke(II)V
sipush 17163
bipush 64
ineg
invokestatic OS/Memory.poke(II)V
sipush 17164
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 17165
sipush 1023
invokestatic OS/Memory.poke(II)V
sipush 17166
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17167
sipush 16383
invokestatic OS/Memory.poke(II)V
sipush 17168
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 17169
sipush 4097
ineg
invokestatic OS/Memory.poke(II)V
sipush 17170
bipush 95
ineg
invokestatic OS/Memory.poke(II)V
sipush 17171
sipush 9213
ineg
invokestatic OS/Memory.poke(II)V
sipush 17172
sipush 1023
invokestatic OS/Memory.poke(II)V
sipush 17195
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 17196
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17197
sipush 28673
ineg
invokestatic OS/Memory.poke(II)V
sipush 17198
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17199
sipush 16383
invokestatic OS/Memory.poke(II)V
sipush 17200
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
sipush 17201
sipush 32687
invokestatic OS/Memory.poke(II)V
sipush 17202
bipush 25
ineg
invokestatic OS/Memory.poke(II)V
sipush 17203
sipush 505
ineg
invokestatic OS/Memory.poke(II)V
sipush 17204
sipush 1023
invokestatic OS/Memory.poke(II)V
sipush 17227
sipush 512
ineg
invokestatic OS/Memory.poke(II)V
sipush 17228
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17229
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17230
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17231
sipush 31743
invokestatic OS/Memory.poke(II)V
sipush 17232
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
sipush 17233
sipush 3073
ineg
invokestatic OS/Memory.poke(II)V
sipush 17234
bipush 25
ineg
invokestatic OS/Memory.poke(II)V
sipush 17235
sipush 505
ineg
invokestatic OS/Memory.poke(II)V
sipush 17236
sipush 255
invokestatic OS/Memory.poke(II)V
sipush 17259
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17260
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17261
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17262
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17263
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17264
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 17265
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17266
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17267
sipush 505
ineg
invokestatic OS/Memory.poke(II)V
sipush 17268
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17291
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17292
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17293
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17294
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17295
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17296
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 17297
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17298
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17299
sipush 1273
ineg
invokestatic OS/Memory.poke(II)V
sipush 17300
bipush 119
invokestatic OS/Memory.poke(II)V
sipush 17323
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17324
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17325
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17326
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17327
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17328
sipush 1036
ineg
invokestatic OS/Memory.poke(II)V
sipush 17329
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17330
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17331
sipush 241
ineg
invokestatic OS/Memory.poke(II)V
sipush 17332
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17355
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17356
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17357
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17358
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17359
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17360
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
sipush 17361
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17362
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17363
sipush 241
ineg
invokestatic OS/Memory.poke(II)V
sipush 17364
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17387
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
sipush 17388
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17389
sipush 8209
ineg
invokestatic OS/Memory.poke(II)V
sipush 17390
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17391
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17392
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
sipush 17393
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17394
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17395
sipush 241
ineg
invokestatic OS/Memory.poke(II)V
sipush 17396
bipush 63
invokestatic OS/Memory.poke(II)V
sipush 17419
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17420
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17421
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17422
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17423
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17424
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 17425
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17426
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17427
bipush 105
ineg
invokestatic OS/Memory.poke(II)V
sipush 17428
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17451
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17452
sipush 257
ineg
invokestatic OS/Memory.poke(II)V
sipush 17453
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17454
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17455
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17456
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 17457
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17458
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17459
bipush 97
ineg
invokestatic OS/Memory.poke(II)V
sipush 17460
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17483
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17484
sipush 3585
ineg
invokestatic OS/Memory.poke(II)V
sipush 17485
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17486
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17487
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17488
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 17489
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17490
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17491
bipush 113
ineg
invokestatic OS/Memory.poke(II)V
sipush 17492
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17515
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17516
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17517
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17518
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17519
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17520
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 17521
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17522
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17523
bipush 33
ineg
invokestatic OS/Memory.poke(II)V
sipush 17524
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17547
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17548
sipush 129
ineg
invokestatic OS/Memory.poke(II)V
sipush 17549
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17550
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17551
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17552
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 17553
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17554
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17555
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17556
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17579
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17580
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17581
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17582
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 17583
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 17584
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 17585
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 17586
sipush 16401
ineg
invokestatic OS/Memory.poke(II)V
sipush 17587
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17588
bipush 126
invokestatic OS/Memory.poke(II)V
sipush 17611
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17612
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17613
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17614
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 17615
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 17616
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 17617
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 17618
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17619
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17620
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17643
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17644
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17645
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17646
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 17647
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 17648
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 17649
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 17650
bipush 49
ineg
invokestatic OS/Memory.poke(II)V
sipush 17651
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17652
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17675
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17676
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17677
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17678
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 17679
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 17680
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 17681
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 17682
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17683
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17684
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17707
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17708
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17709
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17710
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 17711
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 17712
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 17713
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 17714
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17715
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17716
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17739
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17740
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17741
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17742
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 17743
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 17744
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 17745
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 17746
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17747
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17748
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17771
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17772
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17773
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17774
sipush 1023
invokestatic OS/Memory.poke(II)V
sipush 17775
bipush 40
ineg
invokestatic OS/Memory.poke(II)V
sipush 17776
sipush 16366
invokestatic OS/Memory.poke(II)V
sipush 17777
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 17778
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17779
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17780
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17803
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17804
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17805
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17806
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 17807
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 17808
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 17809
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 17810
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17811
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17812
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17835
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17836
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17837
sipush 8209
ineg
invokestatic OS/Memory.poke(II)V
sipush 17838
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 17839
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 17840
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 17841
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 17842
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17843
sipush 32767
invokestatic OS/Memory.poke(II)V
sipush 17844
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17867
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17868
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17869
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17870
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 17871
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 17872
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 17873
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 17874
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17875
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17876
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17899
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17900
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17901
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17902
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 17903
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 17904
sipush 16350
invokestatic OS/Memory.poke(II)V
sipush 17905
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 17906
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17907
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17908
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17931
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17932
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17933
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17934
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 17935
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 17936
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 17937
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 17938
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17939
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17940
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17963
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17964
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17965
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17966
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 17967
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 17968
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 17969
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 17970
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 17971
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 17972
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17995
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 17996
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 17997
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 17998
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 17999
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18000
sipush 16374
invokestatic OS/Memory.poke(II)V
sipush 18001
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18002
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18003
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18004
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18027
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18028
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18029
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 18030
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 18031
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18032
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18033
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18034
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18035
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18036
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18059
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18060
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18061
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 18062
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 18063
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18064
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18065
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18066
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18067
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18068
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18091
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18092
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18093
sipush 12289
ineg
invokestatic OS/Memory.poke(II)V
sipush 18094
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 18095
sipush 16392
ineg
invokestatic OS/Memory.poke(II)V
sipush 18096
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18097
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18098
sipush 32687
invokestatic OS/Memory.poke(II)V
sipush 18099
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18100
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18123
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18124
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18125
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 18126
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 18127
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18128
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18129
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18130
sipush 145
ineg
invokestatic OS/Memory.poke(II)V
sipush 18131
iconst_3
ineg
invokestatic OS/Memory.poke(II)V
sipush 18132
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18155
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18156
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18157
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 18158
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 18159
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18160
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18161
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18162
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18163
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18164
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18187
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18188
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18189
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 18190
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 18191
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18192
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18193
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18194
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18195
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18196
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18219
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18220
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18221
sipush 10241
ineg
invokestatic OS/Memory.poke(II)V
sipush 18222
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 18223
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18224
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18225
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18226
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18227
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18228
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18251
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18252
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18253
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 18254
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 18255
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18256
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18257
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18258
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18259
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18260
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18283
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18284
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18285
sipush 8225
ineg
invokestatic OS/Memory.poke(II)V
sipush 18286
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 18287
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18288
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18289
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18290
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18291
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 18292
bipush 63
invokestatic OS/Memory.poke(II)V
sipush 18315
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18316
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18317
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 18318
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 18319
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18320
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18321
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18322
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18323
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18324
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18347
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18348
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18349
sipush 8195
ineg
invokestatic OS/Memory.poke(II)V
sipush 18350
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 18351
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18352
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18353
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18354
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18355
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18356
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18379
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18380
bipush 63
invokestatic OS/Memory.poke(II)V
sipush 18381
sipush 12289
ineg
invokestatic OS/Memory.poke(II)V
sipush 18382
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 18383
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18384
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18385
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18386
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18387
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18388
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18411
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18412
bipush 63
invokestatic OS/Memory.poke(II)V
sipush 18413
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 18414
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 18415
sipush 312
ineg
invokestatic OS/Memory.poke(II)V
sipush 18416
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18417
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18418
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18419
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18420
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18443
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18444
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18445
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 18446
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 18447
bipush 56
ineg
invokestatic OS/Memory.poke(II)V
sipush 18448
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18449
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18450
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18451
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18452
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18475
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18476
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18477
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 18478
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 18479
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18480
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18481
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18482
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18483
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18484
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18507
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18508
sipush 16257
ineg
invokestatic OS/Memory.poke(II)V
sipush 18509
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 18510
sipush 4095
invokestatic OS/Memory.poke(II)V
sipush 18511
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18512
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18513
bipush 32
ineg
invokestatic OS/Memory.poke(II)V
sipush 18514
bipush 81
ineg
invokestatic OS/Memory.poke(II)V
sipush 18515
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18516
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18539
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18540
sipush 8065
ineg
invokestatic OS/Memory.poke(II)V
sipush 18541
sipush 8257
ineg
invokestatic OS/Memory.poke(II)V
sipush 18542
sipush 8191
invokestatic OS/Memory.poke(II)V
sipush 18543
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18544
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18545
bipush 16
ineg
invokestatic OS/Memory.poke(II)V
sipush 18546
sipush 529
ineg
invokestatic OS/Memory.poke(II)V
sipush 18547
sipush 513
ineg
invokestatic OS/Memory.poke(II)V
sipush 18548
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18571
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18572
sipush 3969
ineg
invokestatic OS/Memory.poke(II)V
sipush 18573
sipush 12289
ineg
invokestatic OS/Memory.poke(II)V
sipush 18574
sipush 32767
invokestatic OS/Memory.poke(II)V
sipush 18575
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18576
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18577
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18578
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18579
sipush 517
ineg
invokestatic OS/Memory.poke(II)V
sipush 18580
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18603
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18604
sipush 897
ineg
invokestatic OS/Memory.poke(II)V
sipush 18605
sipush 8209
ineg
invokestatic OS/Memory.poke(II)V
sipush 18606
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18607
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18608
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18609
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 18610
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18611
sipush 517
ineg
invokestatic OS/Memory.poke(II)V
sipush 18612
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18635
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18636
sipush 385
ineg
invokestatic OS/Memory.poke(II)V
sipush 18637
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 18638
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18639
bipush 7
ineg
invokestatic OS/Memory.poke(II)V
sipush 18640
sipush 16382
invokestatic OS/Memory.poke(II)V
sipush 18641
sipush 32767
invokestatic OS/Memory.poke(II)V
sipush 18642
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18643
sipush 517
ineg
invokestatic OS/Memory.poke(II)V
sipush 18644
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18667
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18668
sipush 129
ineg
invokestatic OS/Memory.poke(II)V
sipush 18669
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 18670
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18671
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18672
sipush 16394
ineg
invokestatic OS/Memory.poke(II)V
sipush 18673
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18674
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 18675
sipush 781
ineg
invokestatic OS/Memory.poke(II)V
sipush 18676
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18699
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18700
sipush 513
ineg
invokestatic OS/Memory.poke(II)V
sipush 18701
sipush 8193
ineg
invokestatic OS/Memory.poke(II)V
sipush 18702
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18703
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18704
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 18705
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18706
bipush 29
ineg
invokestatic OS/Memory.poke(II)V
sipush 18707
sipush 781
ineg
invokestatic OS/Memory.poke(II)V
sipush 18708
bipush 125
invokestatic OS/Memory.poke(II)V
sipush 18731
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18732
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18733
sipush 26625
ineg
invokestatic OS/Memory.poke(II)V
sipush 18734
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
sipush 18735
sipush 129
ineg
invokestatic OS/Memory.poke(II)V
sipush 18736
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 18737
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18738
bipush 29
ineg
invokestatic OS/Memory.poke(II)V
sipush 18739
sipush 781
ineg
invokestatic OS/Memory.poke(II)V
sipush 18740
bipush 125
invokestatic OS/Memory.poke(II)V
sipush 18763
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18764
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18765
sipush 8191
invokestatic OS/Memory.poke(II)V
sipush 18766
sipush 129
ineg
invokestatic OS/Memory.poke(II)V
sipush 18767
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18768
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 18769
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18770
bipush 31
ineg
invokestatic OS/Memory.poke(II)V
sipush 18771
sipush 909
ineg
invokestatic OS/Memory.poke(II)V
sipush 18772
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18795
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18796
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18797
sipush 8191
invokestatic OS/Memory.poke(II)V
sipush 18798
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
sipush 18799
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18800
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 18801
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18802
bipush 16
ineg
invokestatic OS/Memory.poke(II)V
sipush 18803
sipush 925
ineg
invokestatic OS/Memory.poke(II)V
sipush 18804
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18827
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18828
sipush 257
ineg
invokestatic OS/Memory.poke(II)V
sipush 18829
sipush 4095
invokestatic OS/Memory.poke(II)V
sipush 18830
bipush 16
ineg
invokestatic OS/Memory.poke(II)V
sipush 18831
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18832
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 18833
sipush 16383
invokestatic OS/Memory.poke(II)V
sipush 18834
bipush 64
ineg
invokestatic OS/Memory.poke(II)V
sipush 18835
sipush 925
ineg
invokestatic OS/Memory.poke(II)V
sipush 18836
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18859
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18860
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18861
sipush 511
invokestatic OS/Memory.poke(II)V
sipush 18862
bipush 16
ineg
invokestatic OS/Memory.poke(II)V
sipush 18863
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18864
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 18865
sipush 8191
invokestatic OS/Memory.poke(II)V
sipush 18866
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18867
sipush 925
ineg
invokestatic OS/Memory.poke(II)V
sipush 18868
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18891
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18892
sipush 2049
ineg
invokestatic OS/Memory.poke(II)V
sipush 18893
sipush 511
invokestatic OS/Memory.poke(II)V
sipush 18894
bipush 64
ineg
invokestatic OS/Memory.poke(II)V
sipush 18895
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18896
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
sipush 18897
sipush 4095
invokestatic OS/Memory.poke(II)V
sipush 18898
sipush 256
ineg
invokestatic OS/Memory.poke(II)V
sipush 18899
sipush 1023
ineg
invokestatic OS/Memory.poke(II)V
sipush 18900
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18923
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18924
sipush 513
ineg
invokestatic OS/Memory.poke(II)V
sipush 18925
sipush 255
invokestatic OS/Memory.poke(II)V
sipush 18926
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 18927
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18928
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
sipush 18929
sipush 1023
invokestatic OS/Memory.poke(II)V
sipush 18930
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18931
sipush 1021
ineg
invokestatic OS/Memory.poke(II)V
sipush 18932
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18955
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18956
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18957
bipush 63
invokestatic OS/Memory.poke(II)V
sipush 18958
sipush 256
ineg
invokestatic OS/Memory.poke(II)V
sipush 18959
sipush 32767
invokestatic OS/Memory.poke(II)V
sipush 18960
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
sipush 18961
sipush 511
invokestatic OS/Memory.poke(II)V
sipush 18962
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
sipush 18963
sipush 1021
ineg
invokestatic OS/Memory.poke(II)V
sipush 18964
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 18987
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18988
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 18989
bipush 31
invokestatic OS/Memory.poke(II)V
sipush 18990
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 18991
sipush 15359
invokestatic OS/Memory.poke(II)V
sipush 18992
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
sipush 18993
sipush 255
invokestatic OS/Memory.poke(II)V
sipush 18994
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
sipush 18995
sipush 1021
ineg
invokestatic OS/Memory.poke(II)V
sipush 18996
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 19019
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
sipush 19020
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 19021
bipush 15
invokestatic OS/Memory.poke(II)V
sipush 19022
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
sipush 19023
sipush 8191
invokestatic OS/Memory.poke(II)V
sipush 19024
bipush 32
ineg
invokestatic OS/Memory.poke(II)V
sipush 19025
bipush 63
invokestatic OS/Memory.poke(II)V
sipush 19026
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
sipush 19027
sipush 1023
ineg
invokestatic OS/Memory.poke(II)V
sipush 19028
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 19051
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 19052
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 19053
iconst_3
invokestatic OS/Memory.poke(II)V
sipush 19054
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
sipush 19055
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 19056
sipush 16448
ineg
invokestatic OS/Memory.poke(II)V
sipush 19057
bipush 31
invokestatic OS/Memory.poke(II)V
sipush 19058
sipush 16384
sipush 16384
iadd
invokestatic OS/Memory.poke(II)V
sipush 19059
sipush 1021
ineg
invokestatic OS/Memory.poke(II)V
sipush 19060
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 19083
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 19084
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
sipush 19086
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
sipush 19087
sipush 1023
invokestatic OS/Memory.poke(II)V
sipush 19088
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
sipush 19089
bipush 15
invokestatic OS/Memory.poke(II)V
sipush 19091
sipush 1022
ineg
invokestatic OS/Memory.poke(II)V
sipush 19092
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 19115
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
sipush 19116
sipush 32767
invokestatic OS/Memory.poke(II)V
sipush 19118
sipush 16384
sipush 16384
iadd
invokestatic OS/Memory.poke(II)V
sipush 19119
sipush 511
invokestatic OS/Memory.poke(II)V
sipush 19120
sipush 8704
ineg
invokestatic OS/Memory.poke(II)V
sipush 19121
iconst_3
invokestatic OS/Memory.poke(II)V
sipush 19123
sipush 3072
ineg
invokestatic OS/Memory.poke(II)V
sipush 19124
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 19147
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
sipush 19148
sipush 16191
invokestatic OS/Memory.poke(II)V
sipush 19151
bipush 126
invokestatic OS/Memory.poke(II)V
sipush 19152
sipush 7168
ineg
invokestatic OS/Memory.poke(II)V
sipush 19153
iconst_1
invokestatic OS/Memory.poke(II)V
sipush 19155
sipush 3072
ineg
invokestatic OS/Memory.poke(II)V
sipush 19156
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 19179
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
sipush 19180
sipush 8191
invokestatic OS/Memory.poke(II)V
sipush 19183
bipush 12
invokestatic OS/Memory.poke(II)V
sipush 19184
sipush 8192
invokestatic OS/Memory.poke(II)V
sipush 19187
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
sipush 19188
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 19211
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 19212
sipush 2047
invokestatic OS/Memory.poke(II)V
sipush 19216
sipush 8192
invokestatic OS/Memory.poke(II)V
sipush 19219
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 19220
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 19243
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 19244
sipush 1023
invokestatic OS/Memory.poke(II)V
sipush 19251
sipush 5120
ineg
invokestatic OS/Memory.poke(II)V
sipush 19252
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 19275
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 19276
sipush 511
invokestatic OS/Memory.poke(II)V
sipush 19283
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
sipush 19284
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 19307
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 19308
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 19315
sipush 7168
ineg
invokestatic OS/Memory.poke(II)V
sipush 19316
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 19339
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 19340
bipush 63
invokestatic OS/Memory.poke(II)V
sipush 19347
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
sipush 19348
bipush 127
invokestatic OS/Memory.poke(II)V
sipush 19371
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 19372
bipush 31
invokestatic OS/Memory.poke(II)V
sipush 19379
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
sipush 19380
bipush 79
invokestatic OS/Memory.poke(II)V
sipush 19403
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
sipush 19404
bipush 7
invokestatic OS/Memory.poke(II)V
sipush 19411
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
sipush 19412
bipush 95
invokestatic OS/Memory.poke(II)V
sipush 19435
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
sipush 19436
iconst_3
invokestatic OS/Memory.poke(II)V
sipush 19443
sipush 16384
sipush 16384
iadd
invokestatic OS/Memory.poke(II)V
sipush 19444
bipush 63
invokestatic OS/Memory.poke(II)V
sipush 19467
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
sipush 19468
iconst_1
invokestatic OS/Memory.poke(II)V
sipush 19476
bipush 126
invokestatic OS/Memory.poke(II)V
sipush 19499
sipush 30720
invokestatic OS/Memory.poke(II)V
sipush 19508
bipush 124
invokestatic OS/Memory.poke(II)V
sipush 19531
sipush 12288
invokestatic OS/Memory.poke(II)V
sipush 19540
bipush 120
invokestatic OS/Memory.poke(II)V
sipush 19563
sipush 6144
invokestatic OS/Memory.poke(II)V
sipush 19572
bipush 32
invokestatic OS/Memory.poke(II)V
sipush 19595
sipush 1024
invokestatic OS/Memory.poke(II)V
sipush 19820
sipush 15872
invokestatic OS/Memory.poke(II)V
sipush 19821
sipush 3074
ineg
invokestatic OS/Memory.poke(II)V
sipush 19822
sipush 12385
ineg
invokestatic OS/Memory.poke(II)V
sipush 19823
sipush 32759
invokestatic OS/Memory.poke(II)V
sipush 19824
sipush 3073
ineg
invokestatic OS/Memory.poke(II)V
sipush 19825
sipush 24769
ineg
invokestatic OS/Memory.poke(II)V
sipush 19826
bipush 113
ineg
invokestatic OS/Memory.poke(II)V
sipush 19827
bipush 62
invokestatic OS/Memory.poke(II)V
sipush 19852
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 19853
sipush 3073
ineg
invokestatic OS/Memory.poke(II)V
sipush 19854
sipush 12481
ineg
invokestatic OS/Memory.poke(II)V
sipush 19855
sipush 32759
invokestatic OS/Memory.poke(II)V
sipush 19856
sipush 6145
ineg
invokestatic OS/Memory.poke(II)V
sipush 19857
sipush 24833
ineg
invokestatic OS/Memory.poke(II)V
sipush 19858
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 19859
bipush 62
invokestatic OS/Memory.poke(II)V
sipush 19884
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 19885
sipush 3073
ineg
invokestatic OS/Memory.poke(II)V
sipush 19886
sipush 12481
ineg
invokestatic OS/Memory.poke(II)V
sipush 19887
sipush 32759
invokestatic OS/Memory.poke(II)V
sipush 19888
sipush 6145
ineg
invokestatic OS/Memory.poke(II)V
sipush 19889
sipush 24833
ineg
invokestatic OS/Memory.poke(II)V
sipush 19890
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 19891
bipush 62
invokestatic OS/Memory.poke(II)V
sipush 19916
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 19917
sipush 3073
ineg
invokestatic OS/Memory.poke(II)V
sipush 19918
sipush 12481
ineg
invokestatic OS/Memory.poke(II)V
sipush 19919
sipush 32759
invokestatic OS/Memory.poke(II)V
sipush 19920
sipush 6145
ineg
invokestatic OS/Memory.poke(II)V
sipush 19921
sipush 16641
ineg
invokestatic OS/Memory.poke(II)V
sipush 19922
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 19923
bipush 62
invokestatic OS/Memory.poke(II)V
sipush 19948
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 19949
sipush 3129
ineg
invokestatic OS/Memory.poke(II)V
sipush 19950
sipush 12484
ineg
invokestatic OS/Memory.poke(II)V
sipush 19951
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 19952
sipush 6241
ineg
invokestatic OS/Memory.poke(II)V
sipush 19953
sipush 16655
ineg
invokestatic OS/Memory.poke(II)V
sipush 19954
sipush 3601
ineg
invokestatic OS/Memory.poke(II)V
sipush 19955
bipush 62
invokestatic OS/Memory.poke(II)V
sipush 19980
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 19981
sipush 3129
ineg
invokestatic OS/Memory.poke(II)V
sipush 19982
sipush 12544
ineg
invokestatic OS/Memory.poke(II)V
sipush 19983
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 19984
sipush 8161
ineg
invokestatic OS/Memory.poke(II)V
sipush 19985
sipush 271
ineg
invokestatic OS/Memory.poke(II)V
sipush 19986
sipush 3601
ineg
invokestatic OS/Memory.poke(II)V
sipush 19987
bipush 62
invokestatic OS/Memory.poke(II)V
sipush 20012
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 20013
sipush 3129
ineg
invokestatic OS/Memory.poke(II)V
sipush 20014
sipush 12544
ineg
invokestatic OS/Memory.poke(II)V
sipush 20015
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20016
sipush 8161
ineg
invokestatic OS/Memory.poke(II)V
sipush 20017
sipush 271
ineg
invokestatic OS/Memory.poke(II)V
sipush 20018
sipush 3601
ineg
invokestatic OS/Memory.poke(II)V
sipush 20019
bipush 62
invokestatic OS/Memory.poke(II)V
sipush 20044
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 20045
sipush 3129
ineg
invokestatic OS/Memory.poke(II)V
sipush 20046
sipush 12544
ineg
invokestatic OS/Memory.poke(II)V
sipush 20047
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20048
sipush 8161
ineg
invokestatic OS/Memory.poke(II)V
sipush 20049
sipush 271
ineg
invokestatic OS/Memory.poke(II)V
sipush 20050
sipush 3601
ineg
invokestatic OS/Memory.poke(II)V
sipush 20051
bipush 62
invokestatic OS/Memory.poke(II)V
sipush 20076
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 20077
sipush 3129
ineg
invokestatic OS/Memory.poke(II)V
sipush 20078
sipush 4352
ineg
invokestatic OS/Memory.poke(II)V
sipush 20079
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20080
sipush 8161
ineg
invokestatic OS/Memory.poke(II)V
sipush 20081
sipush 259
ineg
invokestatic OS/Memory.poke(II)V
sipush 20082
sipush 3601
ineg
invokestatic OS/Memory.poke(II)V
sipush 20083
bipush 62
invokestatic OS/Memory.poke(II)V
sipush 20108
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 20109
sipush 3129
ineg
invokestatic OS/Memory.poke(II)V
sipush 20110
sipush 256
ineg
invokestatic OS/Memory.poke(II)V
sipush 20111
sipush 3971
invokestatic OS/Memory.poke(II)V
sipush 20112
sipush 7681
ineg
invokestatic OS/Memory.poke(II)V
sipush 20113
sipush 385
ineg
invokestatic OS/Memory.poke(II)V
sipush 20114
sipush 3601
ineg
invokestatic OS/Memory.poke(II)V
sipush 20115
bipush 62
invokestatic OS/Memory.poke(II)V
sipush 20140
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 20141
sipush 3073
ineg
invokestatic OS/Memory.poke(II)V
sipush 20142
sipush 256
ineg
invokestatic OS/Memory.poke(II)V
sipush 20143
sipush 3969
invokestatic OS/Memory.poke(II)V
sipush 20144
sipush 7681
ineg
invokestatic OS/Memory.poke(II)V
sipush 20145
sipush 449
ineg
invokestatic OS/Memory.poke(II)V
sipush 20146
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 20147
bipush 62
invokestatic OS/Memory.poke(II)V
sipush 20172
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 20173
sipush 3073
ineg
invokestatic OS/Memory.poke(II)V
sipush 20174
sipush 32512
invokestatic OS/Memory.poke(II)V
sipush 20175
sipush 3968
invokestatic OS/Memory.poke(II)V
sipush 20176
sipush 7681
ineg
invokestatic OS/Memory.poke(II)V
sipush 20177
sipush 497
ineg
invokestatic OS/Memory.poke(II)V
sipush 20178
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 20179
bipush 62
invokestatic OS/Memory.poke(II)V
sipush 20204
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 20205
sipush 3073
ineg
invokestatic OS/Memory.poke(II)V
sipush 20206
sipush 256
ineg
invokestatic OS/Memory.poke(II)V
sipush 20207
sipush 3969
invokestatic OS/Memory.poke(II)V
sipush 20208
sipush 7681
ineg
invokestatic OS/Memory.poke(II)V
sipush 20209
sipush 449
ineg
invokestatic OS/Memory.poke(II)V
sipush 20210
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 20211
bipush 62
invokestatic OS/Memory.poke(II)V
sipush 20236
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 20237
sipush 3073
ineg
invokestatic OS/Memory.poke(II)V
sipush 20238
sipush 256
ineg
invokestatic OS/Memory.poke(II)V
sipush 20239
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20240
sipush 8161
ineg
invokestatic OS/Memory.poke(II)V
sipush 20241
sipush 257
ineg
invokestatic OS/Memory.poke(II)V
sipush 20242
bipush 17
ineg
invokestatic OS/Memory.poke(II)V
sipush 20243
bipush 30
invokestatic OS/Memory.poke(II)V
sipush 20268
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 20269
sipush 3121
ineg
invokestatic OS/Memory.poke(II)V
sipush 20270
sipush 4352
ineg
invokestatic OS/Memory.poke(II)V
sipush 20271
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20272
sipush 8161
ineg
invokestatic OS/Memory.poke(II)V
sipush 20273
sipush 259
ineg
invokestatic OS/Memory.poke(II)V
sipush 20274
sipush 1041
ineg
invokestatic OS/Memory.poke(II)V
sipush 20275
bipush 30
invokestatic OS/Memory.poke(II)V
sipush 20300
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 20301
sipush 3129
ineg
invokestatic OS/Memory.poke(II)V
sipush 20302
sipush 12484
ineg
invokestatic OS/Memory.poke(II)V
sipush 20303
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20304
sipush 6241
ineg
invokestatic OS/Memory.poke(II)V
sipush 20305
sipush 271
ineg
invokestatic OS/Memory.poke(II)V
sipush 20306
sipush 3601
ineg
invokestatic OS/Memory.poke(II)V
sipush 20307
sipush 3902
invokestatic OS/Memory.poke(II)V
sipush 20332
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 20333
sipush 3129
ineg
invokestatic OS/Memory.poke(II)V
sipush 20334
sipush 12484
ineg
invokestatic OS/Memory.poke(II)V
sipush 20335
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20336
sipush 6241
ineg
invokestatic OS/Memory.poke(II)V
sipush 20337
sipush 8463
ineg
invokestatic OS/Memory.poke(II)V
sipush 20338
sipush 3601
ineg
invokestatic OS/Memory.poke(II)V
sipush 20339
sipush 3902
invokestatic OS/Memory.poke(II)V
sipush 20364
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
sipush 20365
sipush 3129
ineg
invokestatic OS/Memory.poke(II)V
sipush 20366
sipush 12483
ineg
invokestatic OS/Memory.poke(II)V
sipush 20367
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20368
sipush 6209
ineg
invokestatic OS/Memory.poke(II)V
sipush 20369
sipush 8463
ineg
invokestatic OS/Memory.poke(II)V
sipush 20370
sipush 3601
ineg
invokestatic OS/Memory.poke(II)V
sipush 20371
sipush 3966
invokestatic OS/Memory.poke(II)V
sipush 20396
sipush 16772
ineg
invokestatic OS/Memory.poke(II)V
sipush 20397
sipush 3129
ineg
invokestatic OS/Memory.poke(II)V
sipush 20398
sipush 12481
ineg
invokestatic OS/Memory.poke(II)V
sipush 20399
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20400
sipush 6145
ineg
invokestatic OS/Memory.poke(II)V
sipush 20401
sipush 8463
ineg
invokestatic OS/Memory.poke(II)V
sipush 20402
sipush 3601
ineg
invokestatic OS/Memory.poke(II)V
sipush 20403
sipush 4094
invokestatic OS/Memory.poke(II)V
sipush 20428
sipush 16776
ineg
invokestatic OS/Memory.poke(II)V
sipush 20429
sipush 3129
ineg
invokestatic OS/Memory.poke(II)V
sipush 20430
sipush 12481
ineg
invokestatic OS/Memory.poke(II)V
sipush 20431
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20432
sipush 6146
ineg
invokestatic OS/Memory.poke(II)V
sipush 20433
sipush 24847
ineg
invokestatic OS/Memory.poke(II)V
sipush 20434
sipush 3601
ineg
invokestatic OS/Memory.poke(II)V
sipush 20435
sipush 4092
invokestatic OS/Memory.poke(II)V
sipush 20460
sipush 16776
ineg
invokestatic OS/Memory.poke(II)V
sipush 20461
sipush 7225
ineg
invokestatic OS/Memory.poke(II)V
sipush 20462
sipush 12481
ineg
invokestatic OS/Memory.poke(II)V
sipush 20463
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20464
sipush 6148
ineg
invokestatic OS/Memory.poke(II)V
sipush 20465
sipush 25359
ineg
invokestatic OS/Memory.poke(II)V
sipush 20466
sipush 3601
ineg
invokestatic OS/Memory.poke(II)V
sipush 20467
sipush 4088
invokestatic OS/Memory.poke(II)V
sipush 20492
sipush 16248
invokestatic OS/Memory.poke(II)V
sipush 20493
sipush 15418
ineg
invokestatic OS/Memory.poke(II)V
sipush 20494
sipush 12737
ineg
invokestatic OS/Memory.poke(II)V
sipush 20495
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20496
sipush 6152
ineg
invokestatic OS/Memory.poke(II)V
sipush 20497
sipush 26383
ineg
invokestatic OS/Memory.poke(II)V
sipush 20498
sipush 3697
ineg
invokestatic OS/Memory.poke(II)V
sipush 20499
sipush 4080
invokestatic OS/Memory.poke(II)V
sipush 20524
sipush 16376
invokestatic OS/Memory.poke(II)V
sipush 20525
sipush 31804
ineg
invokestatic OS/Memory.poke(II)V
sipush 20526
sipush 13249
ineg
invokestatic OS/Memory.poke(II)V
sipush 20527
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20528
sipush 30736
ineg
invokestatic OS/Memory.poke(II)V
sipush 20529
sipush 32527
ineg
invokestatic OS/Memory.poke(II)V
sipush 20530
sipush 3825
ineg
invokestatic OS/Memory.poke(II)V
sipush 20531
sipush 4064
invokestatic OS/Memory.poke(II)V
sipush 20556
sipush 16376
invokestatic OS/Memory.poke(II)V
sipush 20557
sipush 960
invokestatic OS/Memory.poke(II)V
sipush 20558
sipush 16322
ineg
invokestatic OS/Memory.poke(II)V
sipush 20559
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20560
sipush 1984
invokestatic OS/Memory.poke(II)V
sipush 20561
sipush 32527
ineg
invokestatic OS/Memory.poke(II)V
sipush 20562
sipush 4081
ineg
invokestatic OS/Memory.poke(II)V
sipush 20563
sipush 3968
invokestatic OS/Memory.poke(II)V
sipush 20588
sipush 8184
invokestatic OS/Memory.poke(II)V
sipush 20589
sipush 960
invokestatic OS/Memory.poke(II)V
sipush 20590
sipush 16324
ineg
invokestatic OS/Memory.poke(II)V
sipush 20591
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20592
sipush 1920
invokestatic OS/Memory.poke(II)V
sipush 20593
sipush 32528
ineg
invokestatic OS/Memory.poke(II)V
sipush 20594
sipush 4081
ineg
invokestatic OS/Memory.poke(II)V
sipush 20595
sipush 3840
invokestatic OS/Memory.poke(II)V
sipush 20620
sipush 2016
invokestatic OS/Memory.poke(II)V
sipush 20621
sipush 960
invokestatic OS/Memory.poke(II)V
sipush 20622
sipush 16328
ineg
invokestatic OS/Memory.poke(II)V
sipush 20623
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20624
sipush 1792
invokestatic OS/Memory.poke(II)V
sipush 20625
sipush 240
invokestatic OS/Memory.poke(II)V
sipush 20626
sipush 4081
ineg
invokestatic OS/Memory.poke(II)V
sipush 20627
sipush 3584
invokestatic OS/Memory.poke(II)V
sipush 20652
sipush 960
invokestatic OS/Memory.poke(II)V
sipush 20653
sipush 896
invokestatic OS/Memory.poke(II)V
sipush 20654
bipush 48
invokestatic OS/Memory.poke(II)V
sipush 20655
sipush 3975
invokestatic OS/Memory.poke(II)V
sipush 20656
sipush 1536
invokestatic OS/Memory.poke(II)V
sipush 20657
sipush 240
invokestatic OS/Memory.poke(II)V
sipush 20658
sipush 8180
ineg
invokestatic OS/Memory.poke(II)V
sipush 20659
sipush 3072
invokestatic OS/Memory.poke(II)V
sipush 20684
sipush 384
invokestatic OS/Memory.poke(II)V
sipush 20685
sipush 768
invokestatic OS/Memory.poke(II)V
sipush 20687
sipush 3590
invokestatic OS/Memory.poke(II)V
sipush 20689
sipush 192
invokestatic OS/Memory.poke(II)V
sipush 20690
sipush 16376
ineg
invokestatic OS/Memory.poke(II)V
sipush 20719
sipush 3076
invokestatic OS/Memory.poke(II)V
sipush 20721
sipush 128
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawDogma()V
.limit stack 10
.limit locals 2
iconst_0
istore 0
iconst_0
istore 1
bipush 30
istore 0
sipush 2000
istore 1
iconst_0
invokestatic OS/Screen.setColor(Z)V
iconst_0
iconst_0
sipush 511
sipush 255
invokestatic OS/Screen.drawRectangle(IIII)V
new OS/String
dup
bipush 38
invokespecial OS/String.<init>(I)V
bipush 73
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 102
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 44
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 102
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 98
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
iload 0
iload 1
invokestatic MainMenu.fadeString(LOS/String;II)V
sipush 800
invokestatic OS/Sys.wait(I)V
new OS/String
dup
bipush 34
invokespecial OS/String.<init>(I)V
bipush 87
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 119
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 102
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
iload 0
iload 1
invokestatic MainMenu.fadeString(LOS/String;II)V
sipush 800
invokestatic OS/Sys.wait(I)V
new OS/String
dup
bipush 10
invokespecial OS/String.<init>(I)V
bipush 79
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
iload 0
iload 1
invokestatic MainMenu.fadeString(LOS/String;II)V
sipush 800
invokestatic OS/Sys.wait(I)V
new OS/String
dup
bipush 39
invokespecial OS/String.<init>(I)V
bipush 72
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 102
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
iload 0
iload 1
invokestatic MainMenu.fadeString(LOS/String;II)V
sipush 800
invokestatic OS/Sys.wait(I)V
new OS/String
dup
bipush 41
invokespecial OS/String.<init>(I)V
bipush 73
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 118
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 102
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
iload 0
iload 1
invokestatic MainMenu.fadeString(LOS/String;II)V
sipush 800
invokestatic OS/Sys.wait(I)V
new OS/String
dup
bipush 52
invokespecial OS/String.<init>(I)V
bipush 65
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 119
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 98
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 98
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 98
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
iload 0
iload 1
invokestatic MainMenu.fadeString(LOS/String;II)V
sipush 800
invokestatic OS/Sys.wait(I)V
new OS/String
dup
bipush 61
invokespecial OS/String.<init>(I)V
bipush 83
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 107
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 118
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 107
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 119
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 119
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
iload 0
iload 1
invokestatic MainMenu.fadeString(LOS/String;II)V
sipush 800
invokestatic OS/Sys.wait(I)V
new OS/String
dup
bipush 54
invokespecial OS/String.<init>(I)V
bipush 65
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 98
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 102
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 119
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
iload 0
iload 1
invokestatic MainMenu.fadeString(LOS/String;II)V
sipush 800
invokestatic OS/Sys.wait(I)V
new OS/String
dup
bipush 16
invokespecial OS/String.<init>(I)V
bipush 84
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 68
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 83
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
iload 0
sipush 8000
invokestatic MainMenu.fadeString(LOS/String;II)V
return
.end method
.method public static fadeString(LOS/String;II)V
.limit stack 10
.limit locals 7
iconst_0
istore 3
iconst_0
istore 4
iconst_0
istore 5
iconst_0
istore 6
aload 0
invokevirtual OS/String.length()I
bipush 8
imul
iconst_4
iadd
istore 5
sipush 256
iload 5
iconst_2
idiv
isub
istore 3
sipush 256
iload 5
iconst_2
idiv
iadd
istore 4
bipush 32
aload 0
invokevirtual OS/String.length()I
iconst_2
idiv
isub
istore 6
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
iload 3
iload 4
iconst_4
iconst_1
invokestatic MainMenu.drawDitheredQuad(IIII)V
iload 1
invokestatic OS/Sys.wait(I)V
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
iload 3
iload 4
iconst_3
iconst_1
invokestatic MainMenu.drawDitheredQuad(IIII)V
iload 1
invokestatic OS/Sys.wait(I)V
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
iload 3
iload 4
iconst_2
iconst_1
invokestatic MainMenu.drawDitheredQuad(IIII)V
iload 1
invokestatic OS/Sys.wait(I)V
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
iload 3
iload 4
iconst_1
iconst_1
invokestatic MainMenu.drawDitheredQuad(IIII)V
iload 1
invokestatic OS/Sys.wait(I)V
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
iload 3
iload 4
iconst_1
iconst_2
invokestatic MainMenu.drawDitheredQuad(IIII)V
iload 1
invokestatic OS/Sys.wait(I)V
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
iload 3
iload 4
iconst_1
iconst_3
invokestatic MainMenu.drawDitheredQuad(IIII)V
iload 1
invokestatic OS/Sys.wait(I)V
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
iload 3
iload 4
iconst_1
iconst_4
invokestatic MainMenu.drawDitheredQuad(IIII)V
iload 1
invokestatic OS/Sys.wait(I)V
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
iload 3
iload 4
iconst_1
iconst_5
invokestatic MainMenu.drawDitheredQuad(IIII)V
iload 1
invokestatic OS/Sys.wait(I)V
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
sipush 2000
invokestatic OS/Sys.wait(I)V
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
iload 3
iload 4
iconst_1
iconst_5
invokestatic MainMenu.drawDitheredQuad(IIII)V
iload 1
invokestatic OS/Sys.wait(I)V
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
iload 3
iload 4
iconst_1
iconst_4
invokestatic MainMenu.drawDitheredQuad(IIII)V
iload 1
invokestatic OS/Sys.wait(I)V
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
iload 3
iload 4
iconst_1
iconst_3
invokestatic MainMenu.drawDitheredQuad(IIII)V
iload 1
invokestatic OS/Sys.wait(I)V
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
iload 3
iload 4
iconst_1
iconst_2
invokestatic MainMenu.drawDitheredQuad(IIII)V
iload 1
invokestatic OS/Sys.wait(I)V
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
iload 3
iload 4
iconst_1
iconst_1
invokestatic MainMenu.drawDitheredQuad(IIII)V
iload 1
invokestatic OS/Sys.wait(I)V
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
iload 3
iload 4
iconst_2
iconst_1
invokestatic MainMenu.drawDitheredQuad(IIII)V
iload 1
invokestatic OS/Sys.wait(I)V
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
iload 3
iload 4
iconst_3
iconst_1
invokestatic MainMenu.drawDitheredQuad(IIII)V
iload 1
invokestatic OS/Sys.wait(I)V
bipush 11
iload 6
invokestatic OS/Output.moveCursor(II)V
aload 0
invokestatic OS/Output.printString(LOS/String;)V
iload 3
iload 4
iconst_4
iconst_1
invokestatic MainMenu.drawDitheredQuad(IIII)V
iload 1
invokestatic OS/Sys.wait(I)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
iload 3
bipush 121
iload 4
sipush 132
invokestatic OS/Screen.drawRectangle(IIII)V
return
.end method
.method public static drawDitheredQuad(IIII)V
.limit stack 20
.limit locals 10
iconst_0
istore 4
iconst_0
istore 5
iconst_0
istore 1
iconst_0
istore 7
iconst_0
istore 0
iconst_0
istore 9
iconst_0
istore 9
iconst_0
invokestatic OS/Screen.setColor(Z)V
whileL5:
iload 5
bipush 11
if_icmpge jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq whileL4
iload 0
iload 9
iload 2
iload 3
iadd
iconst_1
isub
imul
iadd
istore 4
whileL7:
iload 4
iload 1
if_icmpge jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq whileL6
iload 4
bipush 121
iload 5
iadd
iload 4
iload 2
iadd
iconst_1
isub
bipush 121
iload 5
iadd
invokestatic OS/Screen.drawLine(IIII)V
iload 4
iload 2
iadd
iload 3
iadd
istore 4
goto whileL7
whileL6:
iconst_1
iload 9
isub
istore 9
iload 5
iconst_1
iadd
istore 5
goto whileL5
whileL4:
return
.end method
