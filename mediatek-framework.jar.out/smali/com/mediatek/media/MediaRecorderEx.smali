.class public Lcom/mediatek/media/MediaRecorderEx;
.super Ljava/lang/Object;
.source "MediaRecorderEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/media/MediaRecorderEx$HDRecordMode;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.media.MediaRecorder"

.field private static final METHOD_NAME:Ljava/lang/String; = "setParameter"

.field private static final METHOD_TYPES:[Ljava/lang/Class;

.field private static final TAG:Ljava/lang/String; = "MediaRecorderEx"

.field private static sSetParameter:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 52
    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sput-object v3, Lcom/mediatek/media/MediaRecorderEx;->METHOD_TYPES:[Ljava/lang/Class;

    .line 56
    :try_start_0
    const-string/jumbo v3, "android.media.MediaRecorder"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 57
    .local v0, "cls":Ljava/lang/Class;
    const-string/jumbo v3, "setParameter"

    sget-object v4, Lcom/mediatek/media/MediaRecorderEx;->METHOD_TYPES:[Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/mediatek/media/MediaRecorderEx;->sSetParameter:Ljava/lang/reflect/Method;

    .line 58
    sget-object v3, Lcom/mediatek/media/MediaRecorderEx;->sSetParameter:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 59
    sget-object v3, Lcom/mediatek/media/MediaRecorderEx;->sSetParameter:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v3, "@M_MediaRecorderEx"

    const-string/jumbo v4, "ClassNotFoundException: android.media.MediaRecorder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v3, "@M_MediaRecorderEx"

    const-string/jumbo v4, "NoSuchMethodException: setParameter"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pause(Landroid/media/MediaRecorder;)V
    .locals 2
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p0, :cond_0

    .line 96
    const-string/jumbo v0, "@M_MediaRecorderEx"

    const-string/jumbo v1, "Null MediaRecorder!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 99
    :cond_0
    const-string/jumbo v0, "media-param-pause=1"

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setParametersExtra(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static setAlbumTag(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .locals 2
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "album"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "media-param-tag-album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public static setArtistTag(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .locals 2
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "artist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "media-param-tag-artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static setHDRecordMode(Landroid/media/MediaRecorder;IZ)V
    .locals 3
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "mode"    # I
    .param p2, "isVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 131
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal HDRecord mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    if-eqz p2, :cond_2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audio-param-hdrecvideomode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 138
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audio-param-hdrecvoicemode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .locals 7
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "nameValuePair"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-object v4, Lcom/mediatek/media/MediaRecorderEx;->sSetParameter:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 71
    :try_start_0
    sget-object v4, Lcom/mediatek/media/MediaRecorderEx;->sSetParameter:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "@M_MediaRecorderEx"

    const-string/jumbo v5, "NullPointerException!"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 76
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 77
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "@M_MediaRecorderEx"

    const-string/jumbo v5, "IllegalArgumentException!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 74
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 75
    .local v3, "te":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "@M_MediaRecorderEx"

    const-string/jumbo v5, "InvocationTargetException!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 72
    .end local v3    # "te":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 73
    .local v0, "ae":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "@M_MediaRecorderEx"

    const-string/jumbo v5, "IllegalAccessException!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 82
    .end local v0    # "ae":Ljava/lang/IllegalAccessException;
    :cond_0
    const-string/jumbo v4, "@M_MediaRecorderEx"

    const-string/jumbo v5, "setParameter: Null method!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setPreprocessEffect(Landroid/media/MediaRecorder;I)V
    .locals 2
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "effectOption"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audio-param-preprocesseffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static setVideoBitOffSet(Landroid/media/MediaRecorder;IZ)V
    .locals 3
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "offset"    # I
    .param p2, "video"    # Z

    .prologue
    .line 188
    if-eqz p2, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "param-use-64bit-offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v0, "@M_MediaRecorderEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoBitOffSet is true,offset= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    return-void
.end method
