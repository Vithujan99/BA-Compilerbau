.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 2
new List
dup
bipush 5
aconst_null
invokespecial List.<init>(ILList;)V
astore 1
new List
dup
bipush 2
new List
dup
bipush 3
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