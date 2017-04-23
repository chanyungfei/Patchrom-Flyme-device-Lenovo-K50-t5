.class public abstract Lcom/mediatek/sef/service/FeatureServiceBase;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final SEF_VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    invoke-direct {p0}, Lcom/mediatek/sef/service/FeatureServiceBase;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/sef/service/FeatureServiceBase;->b:Z

    const-string/jumbo v0, "FeatureServiceBase"

    const-string/jumbo v1, "FeatureServiceBase class constructor"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FeatureServiceBase construction: Class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", SEF_VERSION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/sef/service/FeatureServiceBase;->a(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 62
    if-nez p1, :cond_1

    .line 63
    :cond_0
    return-void

    .line 62
    :cond_1
    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 66
    invoke-virtual {p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 68
    array-length v6, v5

    move v3, v2

    :goto_0
    if-lt v3, v6, :cond_2

    .line 80
    return-void

    .line 68
    :cond_2
    aget-object v7, v5, v3

    .line 71
    array-length v8, v4

    move v1, v2

    move v0, v2

    :goto_1
    if-lt v1, v8, :cond_3

    .line 75
    if-eqz v0, :cond_5

    .line 68
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 71
    :cond_3
    aget-object v9, v4, v1

    .line 72
    invoke-direct {p0, v7, v9}, Lcom/mediatek/sef/service/FeatureServiceBase;->a(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 71
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    .line 73
    goto :goto_2

    .line 76
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "API version Compatibility Check Fail! Method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is not found in current API version."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-boolean v0, p0, Lcom/mediatek/sef/service/FeatureServiceBase;->b:Z

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/data/data/sef_log.txt"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 151
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 155
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    :goto_0
    new-instance v2, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 166
    :goto_1
    if-nez v2, :cond_2

    .line 171
    :goto_2
    return-void

    .line 146
    :cond_0
    return-void

    .line 156
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 162
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    goto :goto_1

    .line 167
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 170
    :catch_1
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 163
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    .line 121
    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    .line 122
    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    .line 123
    aput-object v2, v0, v1

    const-string/jumbo v1, "android.os.SystemProperties"

    .line 124
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "get"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x2

    .line 126
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "persist.mtk.sef.debug"

    .line 127
    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "0"

    .line 128
    aput-object v3, v1, v2

    .line 129
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "1"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return v4

    .line 133
    :cond_0
    return v5

    .line 139
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 90
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 92
    array-length v0, v2

    array-length v4, v3

    if-ne v0, v4, :cond_1

    .line 95
    array-length v4, v2

    move v0, v1

    .line 97
    :goto_0
    if-lt v0, v4, :cond_2

    const-string/jumbo v0, "asInterface"

    .line 103
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 107
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 108
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 110
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    return v7

    .line 86
    :cond_0
    return v1

    .line 93
    :cond_1
    return v1

    .line 98
    :cond_2
    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_3
    return v1

    .line 104
    :cond_4
    return v7

    .line 111
    :cond_5
    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    const-string/jumbo v0, "FeatureServiceBase"

    const-string/jumbo v1, "onBind"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 30
    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v0, "FeatureServiceBase"

    const-string/jumbo v1, "onCreate"

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string/jumbo v0, "FeatureServiceBase"

    const-string/jumbo v1, "onDestroy"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public registerService(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "FeatureServiceBase"

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register SEF service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FeatureServiceBase registerService: serviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", SEF_VERSION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/sef/service/FeatureServiceBase;->a(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/mediatek/sef/service/FeatureServiceBase;->a:Ljava/lang/String;

    .line 38
    invoke-direct {p0, p3, p4}, Lcom/mediatek/sef/service/FeatureServiceBase;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    const/4 v0, 0x2

    .line 42
    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    .line 43
    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/os/IBinder;

    .line 44
    aput-object v2, v0, v1

    const-string/jumbo v1, "android.os.ServiceManager"

    .line 45
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "addService"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x2

    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 48
    iget-object v3, p0, Lcom/mediatek/sef/service/FeatureServiceBase;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 49
    aput-object p2, v1, v2

    .line 50
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "registerService Fail!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
