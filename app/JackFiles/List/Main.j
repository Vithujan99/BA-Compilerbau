.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 2
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
new List
dup
iconst_5
aconst_null
invokespecial List.<init>(ILList;)V
astore 1
new List
dup
iconst_2
new List
dup
iconst_3
aload 1
invokespecial List.<init>(ILList;)V
invokespecial List.<init>(ILList;)V
astore 1
aload 1
invokevirtual List.print()V
aload 1
invokevirtual List.dispose()V
return
.end method
