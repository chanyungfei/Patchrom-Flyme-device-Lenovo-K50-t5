.class public Lcom/mediatek/media/MediaPlayerEx;
.super Ljava/lang/Object;
.source "MediaPlayerEx.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.media.MediaPlayer"

.field private static final METHOD_NAME:Ljava/lang/String; = "setContext"

.field private static final TAG:Ljava/lang/String; = "MediaPlayerEx"

.field private static sSetContext:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 58
    :try_start_0
    const-string/jumbo v2, "android.media.MediaPlayer"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setContext"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/mediatek/media/MediaPlayerEx;->sSetContext:Ljava/lang/reflect/Method;

    .line 59
    sget-object v2, Lcom/mediatek/media/MediaPlayerEx;->sSetContext:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 60
    sget-object v2, Lcom/mediatek/media/MediaPlayerEx;->sSetContext:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v2, "@M_MediaPlayerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ClassNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "@M_MediaPlayerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NoSuchMethodException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
