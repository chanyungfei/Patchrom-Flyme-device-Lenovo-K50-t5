.class public Lcom/lenovo/memoryclean/LoadMethod;
.super Ljava/lang/Object;
.source "LoadMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Load(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 64
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    .line 65
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 66
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 67
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 69
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static Load(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 77
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 78
    invoke-static {p3}, Lcom/lenovo/memoryclean/LoadMethod;->getMethodTypesClass([Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v2

    .line 79
    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 80
    invoke-static {p3, p4}, Lcom/lenovo/memoryclean/LoadMethod;->getMethodParamObject([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    .line 81
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 82
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 84
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static MethodInvoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 92
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 96
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 97
    invoke-virtual {v0, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 99
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getMethodParamObject([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 162
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 163
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 183
    return-object v1

    .line 164
    :cond_0
    aget-object v2, p1, v0

    if-nez v2, :cond_2

    .line 163
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_2
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    aget-object v2, p0, v0

    const-string/jumbo v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    :cond_3
    new-instance v2, Ljava/lang/Integer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    goto :goto_1

    .line 165
    :cond_4
    aget-object v2, p0, v0

    const-string/jumbo v3, "Integer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 168
    aget-object v2, p0, v0

    const-string/jumbo v3, "float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 169
    :cond_5
    new-instance v2, Ljava/lang/Float;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    goto :goto_1

    .line 168
    :cond_6
    aget-object v2, p0, v0

    const-string/jumbo v3, "Float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 171
    aget-object v2, p0, v0

    const-string/jumbo v3, "double"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 172
    :cond_7
    new-instance v2, Ljava/lang/Double;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    goto :goto_1

    .line 171
    :cond_8
    aget-object v2, p0, v0

    const-string/jumbo v3, "Double"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 174
    aget-object v2, p0, v0

    const-string/jumbo v3, "boolean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 176
    :cond_9
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    goto/16 :goto_1

    .line 174
    :cond_a
    aget-object v2, p0, v0

    const-string/jumbo v3, "Boolean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 179
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    goto/16 :goto_1
.end method

.method public static getMethodTypesClass([Ljava/lang/String;)[Ljava/lang/Class;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 138
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Class;

    .line 139
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 158
    return-object v1

    .line 140
    :cond_0
    aget-object v2, p0, v0

    if-nez v2, :cond_2

    .line 139
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_2
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    aget-object v2, p0, v0

    const-string/jumbo v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 142
    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    goto :goto_1

    .line 141
    :cond_4
    aget-object v2, p0, v0

    const-string/jumbo v3, "Integer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 144
    aget-object v2, p0, v0

    const-string/jumbo v3, "float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 145
    :cond_5
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    goto :goto_1

    .line 144
    :cond_6
    aget-object v2, p0, v0

    const-string/jumbo v3, "Float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 147
    aget-object v2, p0, v0

    const-string/jumbo v3, "double"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 148
    :cond_7
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    goto :goto_1

    .line 147
    :cond_8
    aget-object v2, p0, v0

    const-string/jumbo v3, "Double"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 150
    aget-object v2, p0, v0

    const-string/jumbo v3, "boolean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 151
    :cond_9
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    goto :goto_1

    .line 150
    :cond_a
    aget-object v2, p0, v0

    const-string/jumbo v3, "Boolean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-class v2, Ljava/lang/String;

    .line 154
    aput-object v2, v1, v0

    goto/16 :goto_1
.end method

.method public static getObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 116
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 121
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 122
    return-object v0
.end method

.method public static isClassExisted(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 22
    return v2

    .line 20
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 22
    :catch_0
    move-exception v0

    .line 16
    :try_start_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    return v2

    :catchall_0
    move-exception v0

    return v2
.end method

.method public static isFieldExisted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 39
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 45
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public static isMethodExisted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 29
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 32
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 33
    return v2
.end method

.method public static varargs isMethodExisted(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 2

    .prologue
    .line 52
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 56
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public static setBooleanValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 105
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 107
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 108
    invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 110
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setObjectValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 128
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 131
    invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 133
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method
