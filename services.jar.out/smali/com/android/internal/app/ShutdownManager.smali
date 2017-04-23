.class public final Lcom/android/internal/app/ShutdownManager;
.super Ljava/lang/Object;
.source "ShutdownManager.java"


# static fields
.field private static final IPOWiFiEnable:Ljava/lang/String; = "persist.sys.ipo.wifi"

.field private static final TAG:Ljava/lang/String; = "ShutdownManager"

.field private static airplaneModeState:I

.field private static doAudioUnmute:Z

.field private static isBSPPackage:Z

.field static final mHardCodePrebootKillList:[Ljava/lang/String;

.field static final mHardCodeShutdownList:[Ljava/lang/String;

.field private static mMerged:Z

.field private static mPowerManager:Landroid/os/PowerManager;

.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/internal/app/ShutdownManager;

.field static sPrebootKillList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sShutdownWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sdState:I

.field private static setMusicMuted:Z

.field private static wifiState:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 118
    sput-boolean v1, Lcom/android/internal/app/ShutdownManager;->doAudioUnmute:Z

    .line 119
    sput-boolean v1, Lcom/android/internal/app/ShutdownManager;->setMusicMuted:Z

    .line 121
    sput-boolean v1, Lcom/android/internal/app/ShutdownManager;->mMerged:Z

    .line 122
    sput-boolean v1, Lcom/android/internal/app/ShutdownManager;->isBSPPackage:Z

    .line 124
    sput-object v7, Lcom/android/internal/app/ShutdownManager;->sInstance:Lcom/android/internal/app/ShutdownManager;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    const/16 v0, 0x8

    .line 133
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "system"

    aput-object v2, v0, v1

    const-string/jumbo v2, "com.mediatek.bluetooth"

    aput-object v2, v0, v6

    const-string/jumbo v2, "com.android.phone"

    aput-object v2, v0, v4

    const-string/jumbo v2, "android.process.acore"

    aput-object v2, v0, v5

    const/4 v2, 0x4

    const-string/jumbo v3, "com.android.wallpaper"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "com.android.systemui"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "com.mediatek.mobilelog"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "com.mediatek.atci.service"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/internal/app/ShutdownManager;->mHardCodeShutdownList:[Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    const/4 v0, 0x4

    .line 145
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "com.google.android.setupwizard"

    aput-object v2, v0, v1

    const-string/jumbo v2, "com.android.phone"

    aput-object v2, v0, v6

    const-string/jumbo v2, "com.mediatek.ims"

    aput-object v2, v0, v4

    const-string/jumbo v2, "com.mediatek.wfo.impl"

    aput-object v2, v0, v5

    sput-object v0, Lcom/android/internal/app/ShutdownManager;->mHardCodePrebootKillList:[Ljava/lang/String;

    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v2, "ShutdownManager constructor is called"

    .line 162
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 163
    :goto_0
    sget-object v2, Lcom/android/internal/app/ShutdownManager;->mHardCodeShutdownList:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    const-string/jumbo v0, "persist.ipo.shutdown.process.wl"

    .line 167
    invoke-static {v0, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    if-nez v0, :cond_3

    :cond_0
    move v0, v1

    .line 188
    :goto_1
    sget-object v2, Lcom/android/internal/app/ShutdownManager;->mHardCodePrebootKillList:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_8

    const-string/jumbo v0, "persist.ipo.prebootkill.list"

    .line 191
    invoke-static {v0, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    if-nez v0, :cond_9

    :cond_1
    const-string/jumbo v0, "ro.mtk_bsp_package"

    .line 210
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/ShutdownManager;->isBSPPackage:Z

    .line 211
    new-instance v0, Lcom/android/internal/app/ShutdownManager$1;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownManager$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownManager;->sHandler:Landroid/os/Handler;

    .line 212
    return-void

    .line 164
    :cond_2
    sget-object v2, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/internal/app/ShutdownManager;->mHardCodeShutdownList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "ShutdownManager"

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Process whitelist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "/"

    .line 171
    invoke-static {v2, v0, v3}, Lcom/android/internal/app/ShutdownManager;->parseStringIntoArrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    move v2, v1

    .line 173
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 174
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    .line 173
    :cond_4
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    const-string/jumbo v4, "!"

    .line 176
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    const-string/jumbo v4, "!"

    .line 179
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "^\\s*$"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 181
    sget-object v4, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 176
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_6

    sget-object v4, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 178
    sget-object v4, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 189
    :cond_8
    sget-object v2, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/internal/app/ShutdownManager;->mHardCodePrebootKillList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v2, "ShutdownManager"

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Process PrebootKillList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "/"

    .line 195
    invoke-static {v3, v0, v2}, Lcom/android/internal/app/ShutdownManager;->parseStringIntoArrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 197
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 198
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_b

    .line 197
    :cond_a
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    const-string/jumbo v3, "!"

    .line 200
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    const-string/jumbo v3, "!"

    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "^\\s*$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 205
    sget-object v3, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 200
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_c

    sget-object v3, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 202
    sget-object v3, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetMasterMute()I
.end method

.method public static native GetStreamMute(I)I
.end method

.method public static native SetMasterMute(Z)I
.end method

.method public static native SetStreamMute(IZ)I
.end method

.method public static addPrebootKillProcess(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 262
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "ShutdownManager"

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add PrebootKill: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v0, 0x1

    return v0

    .line 263
    :cond_0
    return v1
.end method

.method public static addShutdownWhiteList(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 221
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "ShutdownManager"

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "ShutdownManager"

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "duplicated whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return v3
.end method

.method private static copyFileTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 762
    if-nez p0, :cond_1

    .line 763
    :cond_0
    return-void

    .line 762
    :cond_1
    if-eqz p1, :cond_0

    .line 765
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 766
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 769
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 770
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 776
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 777
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x1400

    .line 778
    new-array v2, v2, [B

    .line 780
    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_3

    .line 783
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 784
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 793
    :goto_1
    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v0, "ShutdownManager"

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not exist..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_3
    const/4 v5, 0x0

    .line 781
    :try_start_2
    invoke-virtual {v0, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 792
    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "ShutdownManager"

    .line 787
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 791
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    .line 792
    :catch_1
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "ShutdownManager"

    .line 789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IO exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 791
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    .line 792
    :catchall_0
    move-exception v0

    .line 791
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method public static getInstance()Lcom/android/internal/app/ShutdownManager;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sInstance:Lcom/android/internal/app/ShutdownManager;

    if-eqz v0, :cond_0

    .line 298
    :goto_0
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sInstance:Lcom/android/internal/app/ShutdownManager;

    return-object v0

    .line 296
    :cond_0
    new-instance v0, Lcom/android/internal/app/ShutdownManager;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownManager;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownManager;->sInstance:Lcom/android/internal/app/ShutdownManager;

    goto :goto_0
.end method

.method public static inShutdownWhiteList(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 252
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private muteSystem(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 302
    sget-boolean v0, Lcom/android/internal/app/ShutdownManager;->isBSPPackage:Z

    if-eqz v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->GetMasterMute()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 306
    sput-boolean v1, Lcom/android/internal/app/ShutdownManager;->doAudioUnmute:Z

    .line 307
    invoke-static {v1}, Lcom/android/internal/app/ShutdownManager;->SetMasterMute(Z)I

    goto :goto_0

    .line 304
    :cond_1
    sput-boolean v2, Lcom/android/internal/app/ShutdownManager;->doAudioUnmute:Z

    goto :goto_0
.end method

.method private static parseStringIntoArrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    .line 156
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 159
    return-void

    .line 157
    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static prebootKillProcessListSize()I
    .locals 1

    .prologue
    .line 370
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static removePrebootKillProcess(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 277
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    return v1

    .line 278
    :cond_0
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v0, "ShutdownManager"

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove PrebootKill: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public static removeShutdownWhiteList(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 237
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    return v1

    .line 238
    :cond_0
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v0, "ShutdownManager"

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public static startFtraceCapture()V
    .locals 4

    .prologue
    const-string/jumbo v0, "sys.shutdown.ftrace"

    .line 836
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v1, "shutdown ftrace enabled!"

    .line 837
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.shutdown.ftrace.size"

    .line 838
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "^\\d+$"

    .line 839
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ShutdownManager"

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "buffer_size_kb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", restore to 11MB"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "11256"

    :goto_1
    const-string/jumbo v1, "/sys/kernel/debug/tracing/buffer_size_kb"

    .line 846
    invoke-static {v1, v0}, Lcom/android/internal/app/ShutdownManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "/sys/kernel/debug/tracing/trace"

    const-string/jumbo v1, ""

    .line 847
    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "ShutdownManager"

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "buffer_size_kb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static stopFtraceCapture()V
    .locals 2

    .prologue
    const-string/jumbo v0, "sys.shutdown.ftrace"

    .line 826
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v1, "stop ftrace"

    .line 827
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "/sys/kernel/debug/tracing/tracing_on"

    const-string/jumbo v1, "0"

    .line 828
    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v1, "saving ftrace to /data/misc/shutdown_ftrace.txt"

    .line 829
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "/sys/kernel/debug/tracing/trace"

    const-string/jumbo v1, "/data/misc/shutdown_ftrace.txt"

    .line 830
    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownManager;->copyFileTo(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v1, "ftrace saving done, restart ftrace"

    .line 831
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "/sys/kernel/debug/tracing/tracing_on"

    const-string/jumbo v1, "1"

    .line 832
    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unmuteSystem(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    sget-boolean v0, Lcom/android/internal/app/ShutdownManager;->isBSPPackage:Z

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    sget-boolean v0, Lcom/android/internal/app/ShutdownManager;->doAudioUnmute:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-static {v1}, Lcom/android/internal/app/ShutdownManager;->SetMasterMute(Z)I

    goto :goto_0
.end method

.method private static writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 796
    if-eqz p0, :cond_0

    .line 798
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 801
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 802
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 805
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 807
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 813
    if-nez v1, :cond_1

    .line 820
    :goto_0
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 822
    :goto_1
    return-void

    .line 797
    :cond_0
    return-void

    .line 815
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 818
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShutdownManager"

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IO exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 821
    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    const-string/jumbo v2, "ShutdownManager"

    .line 809
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 813
    if-nez v1, :cond_2

    .line 820
    :goto_3
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    .line 815
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 818
    :catch_2
    move-exception v0

    const-string/jumbo v1, "ShutdownManager"

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IO exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 821
    :catch_3
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_5
    const-string/jumbo v2, "ShutdownManager"

    .line 811
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 813
    if-nez v1, :cond_3

    .line 820
    :goto_5
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    .line 815
    :cond_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    .line 818
    :catch_4
    move-exception v0

    const-string/jumbo v1, "ShutdownManager"

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IO exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 821
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 813
    :goto_6
    if-nez v1, :cond_4

    .line 820
    :goto_7
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 815
    :cond_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    .line 818
    :catch_5
    move-exception v1

    const-string/jumbo v2, "ShutdownManager"

    .line 817
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IO exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 821
    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method public ShutdownManager()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public enterShutdown(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 660
    sget-boolean v0, Lcom/android/internal/app/ShutdownManager;->isBSPPackage:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, "activity"

    .line 668
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    const-string/jumbo v1, "ShutdownManager"

    const-string/jumbo v2, "Force-stop GMap"

    .line 670
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v1, "com.google.android.apps.maps"

    const/4 v2, -0x1

    .line 672
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->forceKillPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_1
    return-void

    .line 660
    :cond_1
    invoke-static {v2}, Lcom/android/internal/app/ShutdownManager;->GetStreamMute(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 661
    sput-boolean v1, Lcom/android/internal/app/ShutdownManager;->setMusicMuted:Z

    .line 662
    invoke-static {v2, v1}, Lcom/android/internal/app/ShutdownManager;->SetStreamMute(IZ)I

    goto :goto_0

    .line 675
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShutdownManager"

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RemoteExcepiton while forcekill google maps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public finishShutdown(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 688
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-nez v0, :cond_2

    .line 701
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/app/ShutdownManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ShutdownManager$2;-><init>(Lcom/android/internal/app/ShutdownManager;Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 707
    sget-boolean v0, Lcom/android/internal/app/ShutdownManager;->isBSPPackage:Z

    if-eqz v0, :cond_3

    .line 711
    :cond_1
    :goto_1
    return-void

    .line 690
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const-string/jumbo v1, "ShutdownManager"

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    if-eqz v0, :cond_0

    .line 694
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 697
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShutdownManager"

    const-string/jumbo v2, "Couldn\'t switch user."

    .line 696
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 707
    :cond_3
    sget-boolean v0, Lcom/android/internal/app/ShutdownManager;->setMusicMuted:Z

    if-eqz v0, :cond_1

    .line 708
    sput-boolean v4, Lcom/android/internal/app/ShutdownManager;->setMusicMuted:Z

    const/4 v0, 0x3

    .line 709
    invoke-static {v0, v4}, Lcom/android/internal/app/ShutdownManager;->SetStreamMute(IZ)I

    goto :goto_1
.end method

.method public forceStopKillPackages(Landroid/content/Context;)V
    .locals 17

    .prologue
    const-string/jumbo v0, "activity"

    .line 397
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v7

    const-string/jumbo v0, "package"

    .line 400
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v8

    const-string/jumbo v0, "wallpaper"

    .line 403
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    .line 406
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    if-nez v8, :cond_2

    .line 589
    :cond_0
    :goto_1
    return-void

    .line 406
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "ShutdownManager"

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "whitelist = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    :cond_2
    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    .line 412
    :try_start_0
    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getWallpaperInfoWithIpo()Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 413
    if-nez v2, :cond_8

    const/4 v0, 0x0

    move-object v1, v0

    .line 414
    :goto_2
    if-nez v2, :cond_9

    const/4 v0, 0x0

    move-object v2, v0

    .line 415
    :goto_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-interface {v8, v1, v0}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v0, "ShutdownManager"

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Current Wallpaper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ShutdownManager;->getCurrentIME(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const/4 v3, -0x1

    const-string/jumbo v0, "ShutdownManager"

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current IME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1e

    const/4 v4, 0x0

    .line 424
    invoke-interface {v7, v0, v4}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;

    move-result-object v0

    .line 425
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 440
    invoke-interface {v7}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 441
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ShutdownManager;->getAccessibilityServices(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v11

    .line 443
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.HOME"

    .line 446
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 447
    invoke-interface {v8, v0, v12, v1, v6}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 449
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_b

    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v1, "query home activity fail!"

    .line 469
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    move v6, v3

    .line 480
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 553
    :goto_6
    invoke-static {}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->inBooting()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v1, "Stop killing recentTaskList"

    .line 571
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_7
    invoke-interface {v7}, Landroid/app/IActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0

    .line 576
    if-nez v0, :cond_28

    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v1, "No process in error state"

    .line 583
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 587
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShutdownManager"

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 413
    :cond_8
    :try_start_1
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    .line 414
    :cond_9
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object v2, v0

    goto/16 :goto_3

    .line 425
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 426
    iget-wide v12, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v14, 0x0

    cmp-long v5, v14, v12

    if-eqz v5, :cond_3

    .line 429
    sget-object v5, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    iget-object v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "ShutdownManager"

    .line 434
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "force stop the scheduling service:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v11, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, -0x1

    invoke-interface {v7, v0, v5}, Landroid/app/IActivityManager;->forceKillPackage(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 450
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 451
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_d

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object v1, v0

    .line 452
    :goto_8
    iget-object v0, v1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v1, "query home process name fail!"

    .line 465
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 451
    :cond_d
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v1, v0

    goto :goto_8

    :cond_e
    const-string/jumbo v0, "ShutdownManager"

    .line 453
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "home process: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 455
    iget-object v13, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v14, v1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const-string/jumbo v1, "ShutdownManager"

    const-string/jumbo v12, "found running home process shown in above log"

    .line 456
    invoke-static {v1, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 458
    invoke-interface {v4, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 459
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 472
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 473
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 474
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const-string/jumbo v1, "ShutdownManager"

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current IME uid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    .line 476
    goto/16 :goto_5

    .line 480
    :cond_11
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 481
    const/4 v4, 0x1

    .line 482
    const/4 v3, 0x0

    const-string/jumbo v1, "ShutdownManager"

    .line 484
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "processName: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v13, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v13, " pid: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v13, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v13, " uid: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v13, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget-object v1, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 492
    :cond_12
    const/4 v4, 0x0

    .line 494
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    move v1, v4

    .line 528
    :goto_9
    if-nez v1, :cond_21

    .line 539
    :cond_13
    if-nez v3, :cond_24

    .line 546
    :goto_a
    invoke-static {}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->inBooting()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v1, "stop killing for IPO boot"

    .line 547
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 485
    :cond_14
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v5, "com.google.android.apps.genie.geniewidget"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 500
    :cond_15
    :goto_b
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v5, 0x3e8

    if-eq v1, v5, :cond_19

    .line 504
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-eq v1, v9, :cond_1a

    const/4 v1, -0x1

    .line 510
    if-ne v6, v1, :cond_1c

    .line 517
    :cond_16
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-interface {v8, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 518
    if-eqz v13, :cond_1e

    array-length v1, v13

    :goto_c
    const/4 v5, 0x0

    .line 519
    :goto_d
    if-lt v5, v1, :cond_1f

    move v1, v4

    goto :goto_9

    .line 485
    :cond_17
    if-eqz v2, :cond_15

    const-string/jumbo v1, "com.google.android.apps.maps:MapsWallpaper"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_b

    .line 495
    :cond_18
    const/4 v1, 0x1

    move v3, v1

    move v1, v4

    goto :goto_9

    :cond_19
    const-string/jumbo v1, "ShutdownManager"

    .line 503
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "process = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v13, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_9

    .line 505
    :cond_1a
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v4

    goto/16 :goto_9

    :cond_1b
    const-string/jumbo v1, "ShutdownManager"

    .line 506
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wallpaper related process = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v3, 0x0

    .line 508
    const/4 v1, 0x1

    move/from16 v16, v1

    move v1, v3

    move/from16 v3, v16

    goto/16 :goto_9

    .line 510
    :cond_1c
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v1, v6, :cond_16

    .line 511
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move v1, v4

    goto/16 :goto_9

    :cond_1d
    const-string/jumbo v1, "ShutdownManager"

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IME related process = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v3, 0x0

    .line 514
    const/4 v1, 0x1

    move/from16 v16, v1

    move v1, v3

    move/from16 v3, v16

    goto/16 :goto_9

    :cond_1e
    const/4 v1, 0x0

    .line 518
    goto/16 :goto_c

    .line 520
    :cond_1f
    sget-object v14, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    aget-object v15, v13, v5

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_20

    .line 519
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_d

    :cond_20
    const-string/jumbo v1, "ShutdownManager"

    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "uid-process = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v14, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, ", whitelist item = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_21
    const/4 v1, 0x0

    .line 529
    :goto_e
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_13

    .line 530
    if-nez v11, :cond_23

    :cond_22
    const-string/jumbo v4, "ShutdownManager"

    .line 533
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "forceStopPackage: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v13, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v13, " pid: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v13, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, -0x1

    invoke-interface {v7, v4, v5}, Landroid/app/IActivityManager;->forceKillPackage(Ljava/lang/String;I)V

    .line 529
    :goto_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 530
    :cond_23
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string/jumbo v4, "ShutdownManager"

    .line 531
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "skip accessibility service: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v13, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v13, v13, v1

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_24
    const-string/jumbo v1, "ShutdownManager"

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "killProcess: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_a

    :cond_25
    const/16 v0, 0x1e

    const/16 v1, 0xf

    const/4 v2, -0x2

    .line 554
    invoke-interface {v7, v0, v1, v2}, Landroid/app/IActivityManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    .line 559
    :goto_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 560
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_27

    .line 559
    :cond_26
    :goto_11
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 561
    :cond_27
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 562
    sget-object v3, Lcom/android/internal/app/ShutdownManager;->sShutdownWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string/jumbo v3, "ShutdownManager"

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "forceStopPackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in recentTaskList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    .line 565
    invoke-interface {v7, v0, v3}, Landroid/app/IActivityManager;->forceKillPackage(Ljava/lang/String;I)V

    goto :goto_11

    .line 577
    :cond_28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    const-string/jumbo v2, "ShutdownManager"

    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "killProcess "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget v0, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_12
.end method

.method public getAccessibilityServices(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v1, "no accessibility services exist"

    .line 348
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-object v3

    :cond_1
    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v1, "accessibility is disabled"

    .line 340
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-object v3

    :cond_2
    const-string/jumbo v1, ""

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 354
    invoke-virtual {v1, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 366
    return-object v0

    .line 357
    :cond_4
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 358
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 361
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 362
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "ShutdownManager"

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AccessibilityService Package Name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getCurrentIME(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    if-nez v1, :cond_0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v2, "/"

    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public preRestoreStates(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 742
    invoke-direct {p0, p1}, Lcom/android/internal/app/ShutdownManager;->unmuteSystem(Landroid/content/Context;)V

    .line 743
    return-void
.end method

.method public prebootKillProcess(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-string/jumbo v0, "activity"

    .line 374
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    .line 377
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    if-nez v1, :cond_2

    .line 394
    :cond_0
    :goto_1
    return-void

    .line 377
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "ShutdownManager"

    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PrebootKill = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    :cond_2
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 383
    :try_start_0
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 385
    sget-object v2, Lcom/android/internal/app/ShutdownManager;->sPrebootKillList:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ShutdownManager"

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "killProcess: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 392
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShutdownManager"

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public recoverSystem(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public restoreStates(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-string/jumbo v0, "wifi"

    .line 747
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    .line 750
    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v1, " can not get the IWifiManager binder"

    .line 753
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :goto_0
    return-void

    .line 751
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->setWifiEnabledForIPO(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 757
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShutdownManager"

    .line 756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wi-Fi operation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveStates(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string/jumbo v0, "wifi"

    .line 715
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    .line 719
    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v1, " can not get the IWifiManager binder"

    .line 723
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v0, "wifi"

    .line 731
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 732
    if-nez v0, :cond_1

    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v1, " can not get WifiManager"

    .line 736
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :goto_1
    return-void

    .line 721
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->setWifiEnabledForIPO(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShutdownManager"

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wi-Fi operation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 733
    :cond_1
    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v1, " Turn off WIFI AP"

    .line 734
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public shutdown(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 593
    invoke-direct {p0, p1}, Lcom/android/internal/app/ShutdownManager;->muteSystem(Landroid/content/Context;)V

    .line 595
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.black.mode"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "_black_mode"

    .line 596
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 597
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 598
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-string/jumbo v0, "power"

    .line 601
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/internal/app/ShutdownManager;->mPowerManager:Landroid/os/PowerManager;

    .line 602
    sget-object v0, Lcom/android/internal/app/ShutdownManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 607
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "accelerometer_rotation"

    const/4 v6, 0x1

    const/4 v7, -0x2

    invoke-static {v0, v3, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    const-string/jumbo v3, "window"

    .line 609
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 612
    if-nez v3, :cond_4

    :cond_0
    :goto_1
    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v3, "start ipod"

    .line 629
    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v3, "ipod"

    .line 630
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_2
    const/4 v3, 0x5

    .line 632
    if-lt v0, v3, :cond_5

    :cond_1
    const-wide/16 v6, 0x5dc

    .line 648
    add-long/2addr v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    .line 649
    cmp-long v0, v4, v6

    if-gtz v0, :cond_6

    :goto_3
    if-nez v2, :cond_2

    :try_start_1
    const-string/jumbo v0, "ShutdownManager"

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sleep "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms for ipowin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 657
    :cond_2
    :goto_4
    return-void

    :cond_3
    move v0, v2

    .line 607
    goto :goto_0

    .line 613
    :cond_4
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 614
    :try_start_2
    invoke-interface {v3, v0}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 615
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "accelerometer_rotation"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v0, v3, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 617
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "accelerometer_rotation_restore"

    const/4 v6, 0x1

    const/4 v7, -0x2

    invoke-static {v0, v3, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 626
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ShutdownManager"

    const-string/jumbo v3, "check Rotation: context object is null when get Rotation"

    .line 623
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 626
    :catch_1
    move-exception v0

    .line 625
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "init.svc.ipod"

    .line 634
    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "running"

    .line 635
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "ShutdownManager"

    .line 638
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "waiting ipod ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x14

    .line 640
    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 632
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 643
    :catch_2
    move-exception v3

    const-string/jumbo v6, "ShutdownManager"

    .line 642
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "interrupted while waiting ipod: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    move v2, v1

    .line 649
    goto/16 :goto_3

    .line 655
    :catch_3
    move-exception v0

    const-string/jumbo v1, "ShutdownManager"

    const-string/jumbo v2, "Thread sleep exception: "

    .line 654
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method
