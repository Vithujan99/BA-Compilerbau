.class public Trig
.super java/lang/Object
.field FIX_POINT I
.field sin LOS/Array;
.field cos LOS/Array;
.field tan LOS/Array;
.field itan LOS/Array;
.method public <init>()V
.limit stack 10
.limit locals 1
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield Trig.FIX_POINT I
aload 0
bipush 100
putfield Trig.FIX_POINT I
aload 0
invokevirtual Trig.initTrigTable()V
return
.end method
.method public FIX_POINT()I
.limit stack 10
.limit locals 1
aload 0
getfield Trig.FIX_POINT I
ireturn
.end method
.method public sin(I)I
.limit stack 10
.limit locals 2
aload 0
getfield Trig.sin LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
ireturn
.end method
.method public cos(I)I
.limit stack 10
.limit locals 2
aload 0
getfield Trig.cos LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
ireturn
.end method
.method public tan(I)I
.limit stack 10
.limit locals 2
aload 0
getfield Trig.tan LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
ireturn
.end method
.method public itan(I)I
.limit stack 10
.limit locals 2
aload 0
getfield Trig.itan LOS/Array;
iload 1
invokevirtual OS/Array.get(I)I
ireturn
.end method
.method public initTrigTable()V
.limit stack 10
.limit locals 1
aload 0
new OS/Array
dup
sipush 360
invokespecial OS/Array.<init>(I)V
putfield Trig.sin LOS/Array;
aload 0
getfield Trig.sin LOS/Array;
iconst_0
iconst_0
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
iconst_1
iconst_2
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
iconst_2
iconst_3
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
iconst_3
iconst_5
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
iconst_4
bipush 7
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
iconst_5
bipush 9
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 6
bipush 10
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 7
bipush 12
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 8
bipush 14
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 9
bipush 16
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 10
bipush 17
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 11
bipush 19
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 12
bipush 21
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 13
bipush 22
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 14
bipush 24
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 15
bipush 26
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 16
bipush 28
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 17
bipush 29
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 18
bipush 31
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 19
bipush 33
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 20
bipush 34
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 21
bipush 36
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 22
bipush 37
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 23
bipush 39
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 24
bipush 41
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 25
bipush 42
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 26
bipush 44
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 27
bipush 45
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 28
bipush 47
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 29
bipush 48
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 30
bipush 50
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 31
bipush 52
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 32
bipush 53
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 33
bipush 54
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 34
bipush 56
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 35
bipush 57
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 36
bipush 59
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 37
bipush 60
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 38
bipush 62
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 39
bipush 63
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 40
bipush 64
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 41
bipush 66
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 42
bipush 67
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 43
bipush 68
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 44
bipush 69
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 45
bipush 71
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 46
bipush 72
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 47
bipush 73
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 48
bipush 74
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 49
bipush 75
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 50
bipush 77
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 51
bipush 78
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 52
bipush 79
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 53
bipush 80
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 54
bipush 81
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 55
bipush 82
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 56
bipush 83
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 57
bipush 84
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 58
bipush 85
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 59
bipush 86
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 60
bipush 87
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 61
bipush 87
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 62
bipush 88
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 63
bipush 89
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 64
bipush 90
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 65
bipush 91
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 66
bipush 91
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 67
bipush 92
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 68
bipush 93
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 69
bipush 93
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 70
bipush 94
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 71
bipush 95
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 72
bipush 95
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 73
bipush 96
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 74
bipush 96
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 75
bipush 97
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 76
bipush 97
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 77
bipush 97
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 78
bipush 98
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 79
bipush 98
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 80
bipush 98
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 81
bipush 99
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 82
bipush 99
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 83
bipush 99
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 84
bipush 99
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 85
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 86
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 87
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 88
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 89
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 90
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 91
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 92
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 93
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 94
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 95
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 96
bipush 99
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 97
bipush 99
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 98
bipush 99
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 99
bipush 99
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 100
bipush 98
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 101
bipush 98
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 102
bipush 98
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 103
bipush 97
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 104
bipush 97
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 105
bipush 97
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 106
bipush 96
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 107
bipush 96
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 108
bipush 95
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 109
bipush 95
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 110
bipush 94
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 111
bipush 93
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 112
bipush 93
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 113
bipush 92
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 114
bipush 91
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 115
bipush 91
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 116
bipush 90
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 117
bipush 89
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 118
bipush 88
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 119
bipush 87
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 120
bipush 87
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 121
bipush 86
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 122
bipush 85
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 123
bipush 84
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 124
bipush 83
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 125
bipush 82
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 126
bipush 81
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
bipush 127
bipush 80
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 128
bipush 79
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 129
bipush 78
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 130
bipush 77
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 131
bipush 75
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 132
bipush 74
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 133
bipush 73
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 134
bipush 72
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 135
bipush 71
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 136
bipush 69
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 137
bipush 68
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 138
bipush 67
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 139
bipush 66
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 140
bipush 64
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 141
bipush 63
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 142
bipush 62
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 143
bipush 60
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 144
bipush 59
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 145
bipush 57
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 146
bipush 56
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 147
bipush 54
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 148
bipush 53
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 149
bipush 52
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 150
bipush 50
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 151
bipush 48
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 152
bipush 47
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 153
bipush 45
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 154
bipush 44
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 155
bipush 42
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 156
bipush 41
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 157
bipush 39
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 158
bipush 37
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 159
bipush 36
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 160
bipush 34
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 161
bipush 33
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 162
bipush 31
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 163
bipush 29
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 164
bipush 28
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 165
bipush 26
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 166
bipush 24
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 167
bipush 22
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 168
bipush 21
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 169
bipush 19
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 170
bipush 17
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 171
bipush 16
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 172
bipush 14
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 173
bipush 12
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 174
bipush 10
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 175
bipush 9
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 176
bipush 7
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 177
iconst_5
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 178
iconst_3
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 179
iconst_2
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 180
iconst_0
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 181
iconst_2
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 182
iconst_3
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 183
iconst_5
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 184
bipush 7
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 185
bipush 9
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 186
bipush 10
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 187
bipush 12
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 188
bipush 14
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 189
bipush 16
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 190
bipush 17
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 191
bipush 19
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 192
bipush 21
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 193
bipush 22
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 194
bipush 24
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 195
bipush 26
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 196
bipush 28
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 197
bipush 29
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 198
bipush 31
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 199
bipush 33
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 200
bipush 34
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 201
bipush 36
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 202
bipush 37
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 203
bipush 39
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 204
bipush 41
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 205
bipush 42
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 206
bipush 44
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 207
bipush 45
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 208
bipush 47
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 209
bipush 48
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 210
bipush 50
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 211
bipush 52
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 212
bipush 53
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 213
bipush 54
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 214
bipush 56
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 215
bipush 57
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 216
bipush 59
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 217
bipush 60
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 218
bipush 62
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 219
bipush 63
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 220
bipush 64
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 221
bipush 66
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 222
bipush 67
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 223
bipush 68
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 224
bipush 69
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 225
bipush 71
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 226
bipush 72
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 227
bipush 73
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 228
bipush 74
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 229
bipush 75
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 230
bipush 77
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 231
bipush 78
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 232
bipush 79
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 233
bipush 80
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 234
bipush 81
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 235
bipush 82
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 236
bipush 83
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 237
bipush 84
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 238
bipush 85
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 239
bipush 86
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 240
bipush 87
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 241
bipush 87
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 242
bipush 88
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 243
bipush 89
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 244
bipush 90
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 245
bipush 91
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 246
bipush 91
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 247
bipush 92
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 248
bipush 93
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 249
bipush 93
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 250
bipush 94
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 251
bipush 95
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 252
bipush 95
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 253
bipush 96
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 254
bipush 96
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 255
bipush 97
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 256
bipush 97
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 257
bipush 97
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 258
bipush 98
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 259
bipush 98
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 260
bipush 98
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 261
bipush 99
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 262
bipush 99
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 263
bipush 99
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 264
bipush 99
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 265
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 266
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 267
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 268
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 269
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 270
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 271
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 272
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 273
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 274
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 275
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 276
bipush 99
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 277
bipush 99
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 278
bipush 99
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 279
bipush 99
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 280
bipush 98
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 281
bipush 98
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 282
bipush 98
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 283
bipush 97
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 284
bipush 97
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 285
bipush 97
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 286
bipush 96
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 287
bipush 96
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 288
bipush 95
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 289
bipush 95
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 290
bipush 94
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 291
bipush 93
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 292
bipush 93
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 293
bipush 92
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 294
bipush 91
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 295
bipush 91
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 296
bipush 90
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 297
bipush 89
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 298
bipush 88
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 299
bipush 87
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 300
bipush 87
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 301
bipush 86
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 302
bipush 85
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 303
bipush 84
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 304
bipush 83
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 305
bipush 82
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 306
bipush 81
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 307
bipush 80
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 308
bipush 79
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 309
bipush 78
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 310
bipush 77
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 311
bipush 75
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 312
bipush 74
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 313
bipush 73
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 314
bipush 72
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 315
bipush 71
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 316
bipush 69
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 317
bipush 68
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 318
bipush 67
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 319
bipush 66
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 320
bipush 64
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 321
bipush 63
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 322
bipush 62
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 323
bipush 60
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 324
bipush 59
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 325
bipush 57
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 326
bipush 56
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 327
bipush 54
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 328
bipush 53
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 329
bipush 52
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 330
bipush 50
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 331
bipush 48
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 332
bipush 47
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 333
bipush 45
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 334
bipush 44
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 335
bipush 42
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 336
bipush 41
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 337
bipush 39
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 338
bipush 37
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 339
bipush 36
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 340
bipush 34
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 341
bipush 33
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 342
bipush 31
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 343
bipush 29
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 344
bipush 28
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 345
bipush 26
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 346
bipush 24
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 347
bipush 22
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 348
bipush 21
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 349
bipush 19
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 350
bipush 17
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 351
bipush 16
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 352
bipush 14
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 353
bipush 12
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 354
bipush 10
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 355
bipush 9
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 356
bipush 7
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 357
iconst_5
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 358
iconst_3
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.sin LOS/Array;
sipush 359
iconst_2
ineg
invokevirtual OS/Array.set(II)V
aload 0
new OS/Array
dup
sipush 360
invokespecial OS/Array.<init>(I)V
putfield Trig.cos LOS/Array;
aload 0
getfield Trig.cos LOS/Array;
iconst_0
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
iconst_1
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
iconst_2
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
iconst_3
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
iconst_4
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
iconst_5
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 6
bipush 99
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 7
bipush 99
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 8
bipush 99
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 9
bipush 99
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 10
bipush 98
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 11
bipush 98
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 12
bipush 98
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 13
bipush 97
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 14
bipush 97
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 15
bipush 97
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 16
bipush 96
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 17
bipush 96
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 18
bipush 95
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 19
bipush 95
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 20
bipush 94
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 21
bipush 93
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 22
bipush 93
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 23
bipush 92
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 24
bipush 91
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 25
bipush 91
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 26
bipush 90
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 27
bipush 89
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 28
bipush 88
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 29
bipush 87
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 30
bipush 87
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 31
bipush 86
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 32
bipush 85
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 33
bipush 84
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 34
bipush 83
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 35
bipush 82
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 36
bipush 81
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 37
bipush 80
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 38
bipush 79
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 39
bipush 78
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 40
bipush 77
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 41
bipush 75
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 42
bipush 74
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 43
bipush 73
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 44
bipush 72
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 45
bipush 71
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 46
bipush 69
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 47
bipush 68
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 48
bipush 67
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 49
bipush 66
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 50
bipush 64
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 51
bipush 63
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 52
bipush 62
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 53
bipush 60
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 54
bipush 59
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 55
bipush 57
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 56
bipush 56
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 57
bipush 54
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 58
bipush 53
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 59
bipush 52
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 60
bipush 50
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 61
bipush 48
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 62
bipush 47
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 63
bipush 45
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 64
bipush 44
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 65
bipush 42
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 66
bipush 41
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 67
bipush 39
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 68
bipush 37
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 69
bipush 36
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 70
bipush 34
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 71
bipush 33
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 72
bipush 31
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 73
bipush 29
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 74
bipush 28
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 75
bipush 26
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 76
bipush 24
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 77
bipush 22
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 78
bipush 21
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 79
bipush 19
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 80
bipush 17
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 81
bipush 16
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 82
bipush 14
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 83
bipush 12
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 84
bipush 10
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 85
bipush 9
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 86
bipush 7
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 87
iconst_5
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 88
iconst_3
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 89
iconst_2
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 90
iconst_0
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 91
iconst_2
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 92
iconst_3
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 93
iconst_5
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 94
bipush 7
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 95
bipush 9
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 96
bipush 10
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 97
bipush 12
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 98
bipush 14
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 99
bipush 16
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 100
bipush 17
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 101
bipush 19
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 102
bipush 21
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 103
bipush 22
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 104
bipush 24
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 105
bipush 26
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 106
bipush 28
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 107
bipush 29
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 108
bipush 31
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 109
bipush 33
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 110
bipush 34
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 111
bipush 36
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 112
bipush 37
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 113
bipush 39
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 114
bipush 41
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 115
bipush 42
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 116
bipush 44
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 117
bipush 45
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 118
bipush 47
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 119
bipush 48
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 120
bipush 50
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 121
bipush 52
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 122
bipush 53
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 123
bipush 54
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 124
bipush 56
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 125
bipush 57
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 126
bipush 59
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
bipush 127
bipush 60
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 128
bipush 62
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 129
bipush 63
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 130
bipush 64
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 131
bipush 66
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 132
bipush 67
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 133
bipush 68
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 134
bipush 69
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 135
bipush 71
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 136
bipush 72
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 137
bipush 73
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 138
bipush 74
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 139
bipush 75
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 140
bipush 77
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 141
bipush 78
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 142
bipush 79
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 143
bipush 80
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 144
bipush 81
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 145
bipush 82
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 146
bipush 83
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 147
bipush 84
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 148
bipush 85
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 149
bipush 86
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 150
bipush 87
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 151
bipush 87
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 152
bipush 88
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 153
bipush 89
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 154
bipush 90
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 155
bipush 91
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 156
bipush 91
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 157
bipush 92
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 158
bipush 93
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 159
bipush 93
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 160
bipush 94
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 161
bipush 95
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 162
bipush 95
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 163
bipush 96
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 164
bipush 96
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 165
bipush 97
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 166
bipush 97
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 167
bipush 97
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 168
bipush 98
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 169
bipush 98
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 170
bipush 98
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 171
bipush 99
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 172
bipush 99
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 173
bipush 99
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 174
bipush 99
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 175
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 176
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 177
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 178
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 179
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 180
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 181
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 182
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 183
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 184
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 185
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 186
bipush 99
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 187
bipush 99
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 188
bipush 99
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 189
bipush 99
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 190
bipush 98
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 191
bipush 98
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 192
bipush 98
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 193
bipush 97
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 194
bipush 97
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 195
bipush 97
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 196
bipush 96
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 197
bipush 96
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 198
bipush 95
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 199
bipush 95
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 200
bipush 94
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 201
bipush 93
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 202
bipush 93
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 203
bipush 92
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 204
bipush 91
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 205
bipush 91
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 206
bipush 90
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 207
bipush 89
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 208
bipush 88
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 209
bipush 87
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 210
bipush 87
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 211
bipush 86
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 212
bipush 85
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 213
bipush 84
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 214
bipush 83
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 215
bipush 82
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 216
bipush 81
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 217
bipush 80
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 218
bipush 79
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 219
bipush 78
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 220
bipush 77
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 221
bipush 75
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 222
bipush 74
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 223
bipush 73
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 224
bipush 72
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 225
bipush 71
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 226
bipush 69
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 227
bipush 68
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 228
bipush 67
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 229
bipush 66
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 230
bipush 64
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 231
bipush 63
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 232
bipush 62
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 233
bipush 60
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 234
bipush 59
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 235
bipush 57
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 236
bipush 56
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 237
bipush 54
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 238
bipush 53
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 239
bipush 52
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 240
bipush 50
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 241
bipush 48
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 242
bipush 47
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 243
bipush 45
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 244
bipush 44
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 245
bipush 42
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 246
bipush 41
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 247
bipush 39
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 248
bipush 37
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 249
bipush 36
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 250
bipush 34
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 251
bipush 33
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 252
bipush 31
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 253
bipush 29
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 254
bipush 28
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 255
bipush 26
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 256
bipush 24
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 257
bipush 22
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 258
bipush 21
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 259
bipush 19
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 260
bipush 17
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 261
bipush 16
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 262
bipush 14
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 263
bipush 12
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 264
bipush 10
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 265
bipush 9
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 266
bipush 7
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 267
iconst_5
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 268
iconst_3
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 269
iconst_2
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 270
iconst_0
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 271
iconst_2
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 272
iconst_3
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 273
iconst_5
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 274
bipush 7
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 275
bipush 9
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 276
bipush 10
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 277
bipush 12
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 278
bipush 14
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 279
bipush 16
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 280
bipush 17
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 281
bipush 19
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 282
bipush 21
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 283
bipush 22
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 284
bipush 24
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 285
bipush 26
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 286
bipush 28
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 287
bipush 29
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 288
bipush 31
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 289
bipush 33
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 290
bipush 34
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 291
bipush 36
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 292
bipush 37
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 293
bipush 39
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 294
bipush 41
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 295
bipush 42
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 296
bipush 44
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 297
bipush 45
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 298
bipush 47
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 299
bipush 48
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 300
bipush 50
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 301
bipush 52
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 302
bipush 53
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 303
bipush 54
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 304
bipush 56
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 305
bipush 57
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 306
bipush 59
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 307
bipush 60
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 308
bipush 62
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 309
bipush 63
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 310
bipush 64
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 311
bipush 66
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 312
bipush 67
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 313
bipush 68
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 314
bipush 69
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 315
bipush 71
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 316
bipush 72
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 317
bipush 73
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 318
bipush 74
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 319
bipush 75
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 320
bipush 77
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 321
bipush 78
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 322
bipush 79
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 323
bipush 80
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 324
bipush 81
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 325
bipush 82
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 326
bipush 83
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 327
bipush 84
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 328
bipush 85
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 329
bipush 86
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 330
bipush 87
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 331
bipush 87
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 332
bipush 88
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 333
bipush 89
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 334
bipush 90
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 335
bipush 91
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 336
bipush 91
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 337
bipush 92
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 338
bipush 93
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 339
bipush 93
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 340
bipush 94
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 341
bipush 95
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 342
bipush 95
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 343
bipush 96
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 344
bipush 96
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 345
bipush 97
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 346
bipush 97
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 347
bipush 97
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 348
bipush 98
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 349
bipush 98
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 350
bipush 98
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 351
bipush 99
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 352
bipush 99
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 353
bipush 99
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 354
bipush 99
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 355
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 356
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 357
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 358
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.cos LOS/Array;
sipush 359
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
new OS/Array
dup
sipush 360
invokespecial OS/Array.<init>(I)V
putfield Trig.tan LOS/Array;
aload 0
getfield Trig.tan LOS/Array;
iconst_0
iconst_0
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
iconst_1
iconst_2
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
iconst_2
iconst_3
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
iconst_3
iconst_5
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
iconst_4
bipush 7
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
iconst_5
bipush 9
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 6
bipush 11
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 7
bipush 12
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 8
bipush 14
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 9
bipush 16
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 10
bipush 18
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 11
bipush 19
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 12
bipush 21
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 13
bipush 23
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 14
bipush 25
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 15
bipush 27
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 16
bipush 29
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 17
bipush 31
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 18
bipush 32
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 19
bipush 34
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 20
bipush 36
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 21
bipush 38
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 22
bipush 40
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 23
bipush 42
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 24
bipush 45
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 25
bipush 47
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 26
bipush 49
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 27
bipush 51
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 28
bipush 53
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 29
bipush 55
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 30
bipush 58
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 31
bipush 60
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 32
bipush 62
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 33
bipush 65
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 34
bipush 67
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 35
bipush 70
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 36
bipush 73
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 37
bipush 75
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 38
bipush 78
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 39
bipush 81
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 40
bipush 84
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 41
bipush 87
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 42
bipush 90
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 43
bipush 93
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 44
bipush 97
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 45
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 46
bipush 104
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 47
bipush 107
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 48
bipush 111
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 49
bipush 115
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 50
bipush 119
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 51
bipush 123
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 52
sipush 128
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 53
sipush 133
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 54
sipush 138
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 55
sipush 143
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 56
sipush 148
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 57
sipush 154
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 58
sipush 160
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 59
sipush 166
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 60
sipush 173
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 61
sipush 180
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 62
sipush 188
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 63
sipush 196
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 64
sipush 205
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 65
sipush 214
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 66
sipush 225
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 67
sipush 236
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 68
sipush 248
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 69
sipush 261
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 70
sipush 275
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 71
sipush 290
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 72
sipush 308
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 73
sipush 327
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 74
sipush 349
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 75
sipush 373
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 76
sipush 401
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 77
sipush 433
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 78
sipush 470
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 79
sipush 514
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 80
sipush 567
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 81
sipush 631
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 82
sipush 712
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 83
sipush 814
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 84
sipush 951
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 85
sipush 1143
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 86
sipush 1430
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 87
sipush 1908
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 88
sipush 2864
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 89
sipush 5729
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 90
sipush 32767
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 91
sipush 5729
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 92
sipush 2864
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 93
sipush 1908
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 94
sipush 1430
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 95
sipush 1143
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 96
sipush 951
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 97
sipush 814
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 98
sipush 712
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 99
sipush 631
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 100
sipush 567
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 101
sipush 514
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 102
sipush 470
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 103
sipush 433
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 104
sipush 401
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 105
sipush 373
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 106
sipush 349
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 107
sipush 327
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 108
sipush 308
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 109
sipush 290
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 110
sipush 275
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 111
sipush 261
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 112
sipush 248
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 113
sipush 236
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 114
sipush 225
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 115
sipush 214
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 116
sipush 205
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 117
sipush 196
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 118
sipush 188
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 119
sipush 180
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 120
sipush 173
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 121
sipush 166
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 122
sipush 160
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 123
sipush 154
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 124
sipush 148
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 125
sipush 143
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 126
sipush 138
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
bipush 127
sipush 133
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 128
sipush 128
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 129
bipush 123
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 130
bipush 119
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 131
bipush 115
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 132
bipush 111
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 133
bipush 107
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 134
bipush 104
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 135
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 136
bipush 97
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 137
bipush 93
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 138
bipush 90
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 139
bipush 87
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 140
bipush 84
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 141
bipush 81
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 142
bipush 78
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 143
bipush 75
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 144
bipush 73
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 145
bipush 70
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 146
bipush 67
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 147
bipush 65
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 148
bipush 62
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 149
bipush 60
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 150
bipush 58
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 151
bipush 55
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 152
bipush 53
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 153
bipush 51
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 154
bipush 49
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 155
bipush 47
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 156
bipush 45
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 157
bipush 42
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 158
bipush 40
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 159
bipush 38
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 160
bipush 36
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 161
bipush 34
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 162
bipush 32
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 163
bipush 31
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 164
bipush 29
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 165
bipush 27
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 166
bipush 25
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 167
bipush 23
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 168
bipush 21
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 169
bipush 19
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 170
bipush 18
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 171
bipush 16
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 172
bipush 14
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 173
bipush 12
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 174
bipush 11
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 175
bipush 9
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 176
bipush 7
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 177
iconst_5
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 178
iconst_3
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 179
iconst_2
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 180
iconst_0
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 181
iconst_2
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 182
iconst_3
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 183
iconst_5
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 184
bipush 7
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 185
bipush 9
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 186
bipush 11
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 187
bipush 12
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 188
bipush 14
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 189
bipush 16
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 190
bipush 18
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 191
bipush 19
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 192
bipush 21
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 193
bipush 23
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 194
bipush 25
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 195
bipush 27
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 196
bipush 29
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 197
bipush 31
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 198
bipush 32
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 199
bipush 34
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 200
bipush 36
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 201
bipush 38
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 202
bipush 40
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 203
bipush 42
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 204
bipush 45
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 205
bipush 47
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 206
bipush 49
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 207
bipush 51
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 208
bipush 53
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 209
bipush 55
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 210
bipush 58
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 211
bipush 60
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 212
bipush 62
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 213
bipush 65
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 214
bipush 67
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 215
bipush 70
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 216
bipush 73
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 217
bipush 75
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 218
bipush 78
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 219
bipush 81
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 220
bipush 84
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 221
bipush 87
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 222
bipush 90
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 223
bipush 93
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 224
bipush 97
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 225
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 226
bipush 104
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 227
bipush 107
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 228
bipush 111
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 229
bipush 115
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 230
bipush 119
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 231
bipush 123
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 232
sipush 128
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 233
sipush 133
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 234
sipush 138
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 235
sipush 143
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 236
sipush 148
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 237
sipush 154
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 238
sipush 160
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 239
sipush 166
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 240
sipush 173
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 241
sipush 180
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 242
sipush 188
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 243
sipush 196
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 244
sipush 205
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 245
sipush 214
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 246
sipush 225
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 247
sipush 236
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 248
sipush 248
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 249
sipush 261
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 250
sipush 275
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 251
sipush 290
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 252
sipush 308
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 253
sipush 327
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 254
sipush 349
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 255
sipush 373
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 256
sipush 401
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 257
sipush 433
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 258
sipush 470
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 259
sipush 514
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 260
sipush 567
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 261
sipush 631
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 262
sipush 712
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 263
sipush 814
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 264
sipush 951
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 265
sipush 1143
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 266
sipush 1430
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 267
sipush 1908
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 268
sipush 2864
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 269
sipush 5729
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 270
sipush 32767
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 271
sipush 5729
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 272
sipush 2864
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 273
sipush 1908
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 274
sipush 1430
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 275
sipush 1143
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 276
sipush 951
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 277
sipush 814
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 278
sipush 712
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 279
sipush 631
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 280
sipush 567
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 281
sipush 514
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 282
sipush 470
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 283
sipush 433
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 284
sipush 401
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 285
sipush 373
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 286
sipush 349
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 287
sipush 327
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 288
sipush 308
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 289
sipush 290
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 290
sipush 275
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 291
sipush 261
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 292
sipush 248
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 293
sipush 236
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 294
sipush 225
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 295
sipush 214
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 296
sipush 205
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 297
sipush 196
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 298
sipush 188
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 299
sipush 180
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 300
sipush 173
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 301
sipush 166
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 302
sipush 160
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 303
sipush 154
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 304
sipush 148
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 305
sipush 143
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 306
sipush 138
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 307
sipush 133
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 308
sipush 128
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 309
bipush 123
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 310
bipush 119
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 311
bipush 115
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 312
bipush 111
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 313
bipush 107
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 314
bipush 104
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 315
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 316
bipush 97
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 317
bipush 93
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 318
bipush 90
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 319
bipush 87
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 320
bipush 84
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 321
bipush 81
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 322
bipush 78
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 323
bipush 75
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 324
bipush 73
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 325
bipush 70
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 326
bipush 67
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 327
bipush 65
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 328
bipush 62
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 329
bipush 60
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 330
bipush 58
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 331
bipush 55
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 332
bipush 53
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 333
bipush 51
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 334
bipush 49
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 335
bipush 47
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 336
bipush 45
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 337
bipush 42
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 338
bipush 40
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 339
bipush 38
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 340
bipush 36
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 341
bipush 34
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 342
bipush 32
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 343
bipush 31
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 344
bipush 29
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 345
bipush 27
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 346
bipush 25
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 347
bipush 23
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 348
bipush 21
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 349
bipush 19
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 350
bipush 18
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 351
bipush 16
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 352
bipush 14
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 353
bipush 12
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 354
bipush 11
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 355
bipush 9
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 356
bipush 7
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 357
iconst_5
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 358
iconst_3
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.tan LOS/Array;
sipush 359
iconst_2
ineg
invokevirtual OS/Array.set(II)V
aload 0
new OS/Array
dup
sipush 360
invokespecial OS/Array.<init>(I)V
putfield Trig.itan LOS/Array;
aload 0
getfield Trig.itan LOS/Array;
iconst_0
sipush 32767
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
iconst_1
sipush 5729
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
iconst_2
sipush 2864
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
iconst_3
sipush 1908
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
iconst_4
sipush 1430
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
iconst_5
sipush 1143
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 6
sipush 951
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 7
sipush 814
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 8
sipush 712
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 9
sipush 631
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 10
sipush 567
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 11
sipush 514
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 12
sipush 470
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 13
sipush 433
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 14
sipush 401
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 15
sipush 373
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 16
sipush 349
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 17
sipush 327
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 18
sipush 308
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 19
sipush 290
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 20
sipush 275
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 21
sipush 261
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 22
sipush 248
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 23
sipush 236
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 24
sipush 225
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 25
sipush 214
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 26
sipush 205
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 27
sipush 196
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 28
sipush 188
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 29
sipush 180
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 30
sipush 173
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 31
sipush 166
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 32
sipush 160
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 33
sipush 154
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 34
sipush 148
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 35
sipush 143
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 36
sipush 138
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 37
sipush 133
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 38
sipush 128
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 39
bipush 123
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 40
bipush 119
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 41
bipush 115
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 42
bipush 111
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 43
bipush 107
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 44
bipush 104
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 45
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 46
bipush 97
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 47
bipush 93
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 48
bipush 90
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 49
bipush 87
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 50
bipush 84
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 51
bipush 81
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 52
bipush 78
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 53
bipush 75
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 54
bipush 73
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 55
bipush 70
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 56
bipush 67
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 57
bipush 65
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 58
bipush 62
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 59
bipush 60
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 60
bipush 58
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 61
bipush 55
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 62
bipush 53
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 63
bipush 51
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 64
bipush 49
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 65
bipush 47
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 66
bipush 45
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 67
bipush 42
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 68
bipush 40
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 69
bipush 38
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 70
bipush 36
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 71
bipush 34
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 72
bipush 32
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 73
bipush 31
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 74
bipush 29
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 75
bipush 27
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 76
bipush 25
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 77
bipush 23
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 78
bipush 21
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 79
bipush 19
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 80
bipush 18
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 81
bipush 16
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 82
bipush 14
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 83
bipush 12
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 84
bipush 11
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 85
bipush 9
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 86
bipush 7
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 87
iconst_5
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 88
iconst_3
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 89
iconst_2
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 90
iconst_0
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 91
iconst_2
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 92
iconst_3
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 93
iconst_5
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 94
bipush 7
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 95
bipush 9
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 96
bipush 11
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 97
bipush 12
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 98
bipush 14
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 99
bipush 16
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 100
bipush 18
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 101
bipush 19
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 102
bipush 21
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 103
bipush 23
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 104
bipush 25
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 105
bipush 27
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 106
bipush 29
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 107
bipush 31
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 108
bipush 32
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 109
bipush 34
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 110
bipush 36
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 111
bipush 38
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 112
bipush 40
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 113
bipush 42
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 114
bipush 45
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 115
bipush 47
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 116
bipush 49
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 117
bipush 51
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 118
bipush 53
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 119
bipush 55
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 120
bipush 58
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 121
bipush 60
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 122
bipush 62
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 123
bipush 65
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 124
bipush 67
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 125
bipush 70
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 126
bipush 73
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
bipush 127
bipush 75
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 128
bipush 78
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 129
bipush 81
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 130
bipush 84
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 131
bipush 87
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 132
bipush 90
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 133
bipush 93
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 134
bipush 97
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 135
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 136
bipush 104
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 137
bipush 107
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 138
bipush 111
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 139
bipush 115
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 140
bipush 119
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 141
bipush 123
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 142
sipush 128
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 143
sipush 133
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 144
sipush 138
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 145
sipush 143
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 146
sipush 148
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 147
sipush 154
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 148
sipush 160
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 149
sipush 166
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 150
sipush 173
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 151
sipush 180
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 152
sipush 188
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 153
sipush 196
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 154
sipush 205
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 155
sipush 214
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 156
sipush 225
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 157
sipush 236
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 158
sipush 248
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 159
sipush 261
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 160
sipush 275
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 161
sipush 290
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 162
sipush 308
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 163
sipush 327
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 164
sipush 349
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 165
sipush 373
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 166
sipush 401
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 167
sipush 433
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 168
sipush 470
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 169
sipush 514
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 170
sipush 567
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 171
sipush 631
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 172
sipush 712
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 173
sipush 814
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 174
sipush 951
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 175
sipush 1143
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 176
sipush 1430
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 177
sipush 1908
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 178
sipush 2864
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 179
sipush 5729
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 180
sipush 32767
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 181
sipush 5729
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 182
sipush 2864
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 183
sipush 1908
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 184
sipush 1430
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 185
sipush 1143
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 186
sipush 951
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 187
sipush 814
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 188
sipush 712
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 189
sipush 631
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 190
sipush 567
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 191
sipush 514
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 192
sipush 470
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 193
sipush 433
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 194
sipush 401
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 195
sipush 373
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 196
sipush 349
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 197
sipush 327
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 198
sipush 308
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 199
sipush 290
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 200
sipush 275
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 201
sipush 261
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 202
sipush 248
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 203
sipush 236
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 204
sipush 225
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 205
sipush 214
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 206
sipush 205
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 207
sipush 196
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 208
sipush 188
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 209
sipush 180
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 210
sipush 173
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 211
sipush 166
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 212
sipush 160
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 213
sipush 154
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 214
sipush 148
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 215
sipush 143
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 216
sipush 138
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 217
sipush 133
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 218
sipush 128
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 219
bipush 123
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 220
bipush 119
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 221
bipush 115
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 222
bipush 111
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 223
bipush 107
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 224
bipush 104
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 225
bipush 100
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 226
bipush 97
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 227
bipush 93
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 228
bipush 90
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 229
bipush 87
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 230
bipush 84
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 231
bipush 81
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 232
bipush 78
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 233
bipush 75
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 234
bipush 73
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 235
bipush 70
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 236
bipush 67
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 237
bipush 65
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 238
bipush 62
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 239
bipush 60
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 240
bipush 58
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 241
bipush 55
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 242
bipush 53
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 243
bipush 51
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 244
bipush 49
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 245
bipush 47
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 246
bipush 45
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 247
bipush 42
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 248
bipush 40
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 249
bipush 38
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 250
bipush 36
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 251
bipush 34
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 252
bipush 32
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 253
bipush 31
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 254
bipush 29
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 255
bipush 27
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 256
bipush 25
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 257
bipush 23
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 258
bipush 21
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 259
bipush 19
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 260
bipush 18
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 261
bipush 16
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 262
bipush 14
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 263
bipush 12
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 264
bipush 11
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 265
bipush 9
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 266
bipush 7
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 267
iconst_5
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 268
iconst_3
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 269
iconst_2
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 270
iconst_0
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 271
iconst_2
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 272
iconst_3
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 273
iconst_5
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 274
bipush 7
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 275
bipush 9
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 276
bipush 11
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 277
bipush 12
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 278
bipush 14
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 279
bipush 16
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 280
bipush 18
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 281
bipush 19
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 282
bipush 21
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 283
bipush 23
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 284
bipush 25
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 285
bipush 27
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 286
bipush 29
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 287
bipush 31
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 288
bipush 32
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 289
bipush 34
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 290
bipush 36
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 291
bipush 38
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 292
bipush 40
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 293
bipush 42
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 294
bipush 45
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 295
bipush 47
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 296
bipush 49
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 297
bipush 51
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 298
bipush 53
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 299
bipush 55
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 300
bipush 58
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 301
bipush 60
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 302
bipush 62
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 303
bipush 65
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 304
bipush 67
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 305
bipush 70
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 306
bipush 73
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 307
bipush 75
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 308
bipush 78
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 309
bipush 81
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 310
bipush 84
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 311
bipush 87
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 312
bipush 90
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 313
bipush 93
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 314
bipush 97
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 315
bipush 100
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 316
bipush 104
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 317
bipush 107
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 318
bipush 111
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 319
bipush 115
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 320
bipush 119
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 321
bipush 123
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 322
sipush 128
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 323
sipush 133
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 324
sipush 138
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 325
sipush 143
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 326
sipush 148
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 327
sipush 154
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 328
sipush 160
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 329
sipush 166
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 330
sipush 173
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 331
sipush 180
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 332
sipush 188
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 333
sipush 196
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 334
sipush 205
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 335
sipush 214
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 336
sipush 225
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 337
sipush 236
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 338
sipush 248
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 339
sipush 261
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 340
sipush 275
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 341
sipush 290
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 342
sipush 308
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 343
sipush 327
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 344
sipush 349
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 345
sipush 373
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 346
sipush 401
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 347
sipush 433
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 348
sipush 470
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 349
sipush 514
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 350
sipush 567
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 351
sipush 631
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 352
sipush 712
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 353
sipush 814
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 354
sipush 951
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 355
sipush 1143
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 356
sipush 1430
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 357
sipush 1908
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 358
sipush 2864
ineg
invokevirtual OS/Array.set(II)V
aload 0
getfield Trig.itan LOS/Array;
sipush 359
sipush 5729
ineg
invokevirtual OS/Array.set(II)V
return
.end method
