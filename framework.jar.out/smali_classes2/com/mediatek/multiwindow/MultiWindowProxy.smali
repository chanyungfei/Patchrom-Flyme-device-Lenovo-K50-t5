.class public Lcom/mediatek/multiwindow/MultiWindowProxy;
.super Ljava/lang/Object;
.source "MultiWindowProxy.java"


# static fields
.field private static final FEATURE_SUPPORTED:Z

.field public static final FLOATING_WINDOW_DIALOG:I = 0x2

.field public static final FLOATING_WINDOW_FULL:I = 0x1

.field public static final MODE_FLOATING:I = 0x0

.field public static final MODE_SPLIT_SCREEN_TWO:I = 0x1

.field public static final NOT_FLOATING_WINDOW:I = 0x0

.field public static final PLACE_LEFT_OR_TOP:I = 0x0

.field public static final PLACE_NULL:I = -0x1

.field public static final PLACE_RIGHT_OR_BOTTOM:I = 0x1

.field public static final STACK_NULL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MultiWindowProxy"

.field private static sBlackListManager:Lcom/mediatek/common/multiwindow/IMWBlackList;

.field private static sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

.field private static sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;


# instance fields
.field private mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const-string/jumbo v0, "ro.mtk_multiwindow"

    .line 37
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string/jumbo v1, "1"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->FEATURE_SUPPORTED:Z

    .line 40
    sput-object v2, Lcom/mediatek/multiwindow/MultiWindowProxy;->sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    .line 41
    sput-object v2, Lcom/mediatek/multiwindow/MultiWindowProxy;->sBlackListManager:Lcom/mediatek/common/multiwindow/IMWBlackList;

    .line 43
    sput-object v2, Lcom/mediatek/multiwindow/MultiWindowProxy;->sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowType:I

    .line 61
    return-void
.end method

.method public static adjustFloatingIntent(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 135
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    return-void
.end method

.method private static getBlackListManager()Lcom/mediatek/common/multiwindow/IMWBlackList;
    .locals 2

    .prologue
    .line 94
    sget-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sBlackListManager:Lcom/mediatek/common/multiwindow/IMWBlackList;

    if-nez v1, :cond_0

    .line 95
    const-string/jumbo v1, "mw_blacklist"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 96
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/multiwindow/IMWBlackList$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMWBlackList;

    move-result-object v1

    sput-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sBlackListManager:Lcom/mediatek/common/multiwindow/IMWBlackList;

    .line 99
    :cond_0
    sget-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sBlackListManager:Lcom/mediatek/common/multiwindow/IMWBlackList;

    return-object v1
.end method

.method public static getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;
    .locals 2

    .prologue
    .line 68
    const-class v1, Lcom/mediatek/multiwindow/MultiWindowProxy;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/mediatek/multiwindow/MultiWindowProxy;

    invoke-direct {v0}, Lcom/mediatek/multiwindow/MultiWindowProxy;-><init>()V

    sput-object v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

    .line 72
    :cond_0
    sget-object v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMaxFrontFloatingSize()I
    .locals 1

    .prologue
    .line 805
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    const/4 v0, 0x2

    return v0

    .line 808
    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method private static getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    .locals 2

    .prologue
    .line 81
    sget-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    if-nez v1, :cond_0

    .line 82
    const-string/jumbo v1, "multiwindow"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 83
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    sput-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    .line 86
    :cond_0
    sget-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    return-object v1
.end method

.method public static isFloatingIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 120
    if-nez p0, :cond_0

    .line 121
    return v1

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_1
    return v1
.end method

.method public static isSplitMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 786
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSplitModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 787
    return v4

    .line 790
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 791
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_1

    .line 792
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    return v4

    .line 795
    :cond_1
    invoke-interface {v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isSplitMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "isSplitMode failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    return v4
.end method

.method public static isSplitModeEnabled()Z
    .locals 1

    .prologue
    .line 781
    sget-boolean v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->FEATURE_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 779
    const/4 v0, 0x1

    .line 781
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 3

    .prologue
    .line 110
    const-string/jumbo v1, "persist.sys.mtk.disable.mw"

    const/4 v2, 0x0

    .line 109
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 110
    const/4 v2, 0x1

    .line 109
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 111
    .local v0, "disableMultiWindow":Z
    :goto_0
    sget-boolean v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->FEATURE_SUPPORTED:Z

    return v1

    .line 109
    .end local v0    # "disableMultiWindow":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "disableMultiWindow":Z
    goto :goto_0
.end method


# virtual methods
.method public activityCreated(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "appToken"    # Landroid/os/IBinder;

    .prologue
    .line 546
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 547
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 548
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return-void

    .line 551
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->activityCreated(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "activityCreated failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addIntoWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 686
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getBlackListManager()Lcom/mediatek/common/multiwindow/IMWBlackList;

    move-result-object v0

    .line 687
    .local v0, "blManager":Lcom/mediatek/common/multiwindow/IMWBlackList;
    if-nez v0, :cond_0

    .line 688
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getBlackListManager failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return-void

    .line 691
    :cond_0
    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMWBlackList;->addIntoWhiteList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    .end local v0    # "blManager":Lcom/mediatek/common/multiwindow/IMWBlackList;
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v1

    .line 693
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "addIntoWhiteList failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addMoreIntoWhiteList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getBlackListManager()Lcom/mediatek/common/multiwindow/IMWBlackList;

    move-result-object v0

    .line 703
    .local v0, "blManager":Lcom/mediatek/common/multiwindow/IMWBlackList;
    if-nez v0, :cond_0

    .line 704
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getBlackListManager failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return-void

    .line 707
    :cond_0
    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMWBlackList;->addMoreIntoWhiteList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    .end local v0    # "blManager":Lcom/mediatek/common/multiwindow/IMWBlackList;
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v1

    .line 709
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "addMoreIntoWhiteList(List failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addToken(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "winToken"    # Landroid/os/IBinder;
    .param p2, "appToken"    # Landroid/os/IBinder;

    .prologue
    .line 585
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 586
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 587
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void

    .line 590
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->addToken(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "addToken failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adjustActivityConfig(Landroid/content/res/Configuration;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/Configuration;
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 747
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 748
    .local v1, "widthDp":I
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 750
    .local v0, "heightDp":I
    iput v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 751
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 752
    iget v2, p2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eqz v2, :cond_0

    .line 753
    iget v2, p2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 754
    :cond_0
    iput v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 755
    if-ge v1, v0, :cond_1

    .line 756
    div-int/lit8 v2, v0, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 757
    div-int/lit8 v2, v1, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 772
    :goto_0
    const-string/jumbo v2, "MultiWindowProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "adjustActivityConfig, apply override config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-object p1

    .line 759
    :cond_1
    div-int/lit8 v2, v1, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 760
    div-int/lit8 v2, v0, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    goto :goto_0

    .line 763
    :cond_2
    const/4 v2, 0x1

    iput v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 764
    if-ge v1, v0, :cond_3

    .line 765
    div-int/lit8 v2, v1, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 766
    div-int/lit8 v2, v0, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    goto :goto_0

    .line 768
    :cond_3
    div-int/lit8 v2, v0, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 769
    div-int/lit8 v2, v1, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    goto :goto_0
.end method

.method public closeWindow(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "appToken"    # Landroid/os/IBinder;

    .prologue
    .line 325
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 326
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 327
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void

    .line 330
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->closeWindow(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "closeWindow failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public computeStackPosition(I)I
    .locals 5
    .param p1, "stackId"    # I

    .prologue
    const/4 v4, -0x1

    .line 872
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSplitMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 873
    return v4

    .line 875
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 876
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_1

    .line 877
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    return v4

    .line 880
    :cond_1
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->computeStackPosition(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 881
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "computeStackPosition failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    return v4
.end method

.method public createFloatingStack(I)V
    .locals 4
    .param p1, "stackId"    # I

    .prologue
    .line 252
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 253
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 254
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 257
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->addStack(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "createFloatingStack failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableFocusedFrame(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 507
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 508
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 509
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void

    .line 512
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->enableFocusedFrame(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "enableFocusedFrame failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getNextFloatStack(I)I
    .locals 5
    .param p1, "curStackId"    # I

    .prologue
    const/4 v4, -0x1

    .line 901
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSplitMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 902
    return v4

    .line 904
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 905
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_1

    .line 906
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return v4

    .line 909
    :cond_1
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->getNextFloatStack(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 910
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getNextFloatStack failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    return v4
.end method

.method public getStackPosition(I)I
    .locals 5
    .param p1, "stackId"    # I

    .prologue
    const/4 v4, -0x1

    .line 856
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 857
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 858
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return v4

    .line 861
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->getStackPosition(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 862
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getStackPosition failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 866
    return v4
.end method

.method public getWhiteList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 651
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getBlackListManager()Lcom/mediatek/common/multiwindow/IMWBlackList;

    move-result-object v0

    .line 652
    .local v0, "blManager":Lcom/mediatek/common/multiwindow/IMWBlackList;
    if-nez v0, :cond_0

    .line 653
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getBlackListManager failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-object v4

    .line 656
    :cond_0
    invoke-interface {v0}, Lcom/mediatek/common/multiwindow/IMWBlackList;->getWhiteList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 657
    .end local v0    # "blManager":Lcom/mediatek/common/multiwindow/IMWBlackList;
    :catch_0
    move-exception v1

    .line 658
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getWhiteList failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 660
    return-object v4
.end method

.method public inWhiteList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 669
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getBlackListManager()Lcom/mediatek/common/multiwindow/IMWBlackList;

    move-result-object v0

    .line 670
    .local v0, "blManager":Lcom/mediatek/common/multiwindow/IMWBlackList;
    if-nez v0, :cond_0

    .line 671
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getBlackListManager failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return v4

    .line 674
    :cond_0
    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMWBlackList;->inWhiteList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 675
    .end local v0    # "blManager":Lcom/mediatek/common/multiwindow/IMWBlackList;
    :catch_0
    move-exception v1

    .line 676
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "inWhiteList failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 678
    return v4
.end method

.method public isFloating(Landroid/os/IBinder;I)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "type"    # I

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    const/4 v0, 0x0

    return v0

    .line 239
    :cond_0
    const/16 v0, 0x3e8

    if-lt p2, v0, :cond_1

    .line 240
    const/16 v0, 0x7cf

    if-gt p2, v0, :cond_1

    .line 241
    invoke-virtual {p0, p1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingByWinToken(Landroid/os/IBinder;)Z

    move-result v0

    return v0

    .line 243
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingByAppToken(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public isFloatingByAppToken(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "appToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 220
    if-nez p1, :cond_0

    .line 221
    return v4

    .line 223
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 224
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_1

    .line 225
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v4

    .line 228
    :cond_1
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isFloatingByAppToken(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 229
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "isFloatingByAppToken failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    return v4
.end method

.method public isFloatingByWinToken(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "winToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 204
    if-nez p1, :cond_0

    .line 205
    return v4

    .line 207
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 208
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_1

    .line 209
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v4

    .line 212
    :cond_1
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isFloatingByWinToken(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 213
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "isFloatingByWinToken failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    return v4
.end method

.method public isFloatingStack(I)Z
    .locals 5
    .param p1, "stackId"    # I

    .prologue
    const/4 v4, 0x0

    .line 191
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 192
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 193
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return v4

    .line 196
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isFloatingStack(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 197
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "isFloatingStack failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    return v4
.end method

.method public isInMiniMax(I)Z
    .locals 5
    .param p1, "taskId"    # I

    .prologue
    const/4 v4, 0x0

    .line 434
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 435
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 436
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return v4

    .line 439
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isInMiniMax(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 440
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "isInMiniMax failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    return v4
.end method

.method public isStickStack(I)Z
    .locals 5
    .param p1, "stackId"    # I

    .prologue
    const/4 v4, 0x0

    .line 415
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 416
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 417
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return v4

    .line 420
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isStickStack(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 421
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "isStickStack failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    return v4
.end method

.method public isSticky(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "appToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 377
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 378
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 379
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return v4

    .line 382
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isSticky(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 383
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "isSticky failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    return v4
.end method

.method public miniMaxTask(I)V
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    .line 453
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 454
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 455
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-void

    .line 458
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->miniMaxTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "miniMaxTask failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public moveActivityTaskToFront(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "appToken"    # Landroid/os/IBinder;

    .prologue
    .line 397
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 398
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 399
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void

    .line 402
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->moveActivityTaskToFront(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "moveActivityTaskToFront failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public moveFloatingWindow(II)V
    .locals 4
    .param p1, "disX"    # I
    .param p2, "disY"    # I

    .prologue
    .line 471
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 472
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 473
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void

    .line 476
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->moveFloatingWindow(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "moveFloatingWindow failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onAppTokenAdded(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .prologue
    .line 559
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 560
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 561
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void

    .line 564
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->onAppTokenAdded(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "onAppTokenAdded failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onAppTokenRemoved(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .prologue
    .line 572
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 573
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 574
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void

    .line 577
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->onAppTokenRemoved(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "onAppTokenRemoved failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onTaskAdded(II)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 289
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 290
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 291
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 294
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->onTaskAdded(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "onTaskAdded failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onTaskRemoved(II)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 309
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 310
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 311
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 314
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->onTaskRemoved(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "onTaskRemoved failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeFloatingStack(I)V
    .locals 4
    .param p1, "stackId"    # I

    .prologue
    .line 268
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 269
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 270
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void

    .line 273
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->removeStack(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "onStackDetached failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeFromWhiteList(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 718
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getBlackListManager()Lcom/mediatek/common/multiwindow/IMWBlackList;

    move-result-object v0

    .line 719
    .local v0, "blManager":Lcom/mediatek/common/multiwindow/IMWBlackList;
    if-nez v0, :cond_0

    .line 720
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getBlackListManager failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return-void

    .line 723
    :cond_0
    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMWBlackList;->removeFromWhiteList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    .end local v0    # "blManager":Lcom/mediatek/common/multiwindow/IMWBlackList;
    :goto_0
    return-void

    .line 724
    :catch_0
    move-exception v1

    .line 725
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "removeFromWhiteList failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeToken(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "winToken"    # Landroid/os/IBinder;

    .prologue
    .line 598
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 599
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 600
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-void

    .line 603
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->removeToken(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "addToken failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetStackPosition(I)V
    .locals 4
    .param p1, "stackId"    # I

    .prologue
    .line 889
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 890
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 891
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    return-void

    .line 894
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->resetStackPosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "resetStackPosition failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resizeAndMoveStack(I)V
    .locals 4
    .param p1, "stackId"    # I

    .prologue
    .line 842
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 843
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 844
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return-void

    .line 847
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->resizeAndMoveStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 848
    :catch_0
    move-exception v0

    .line 849
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "resizeAndMoveStack failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resizeFloatingWindow(III)V
    .locals 4
    .param p1, "direction"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 489
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 490
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 491
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void

    .line 494
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->resizeFloatingWindow(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "resizeFloatingWindow failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public restoreWindow(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "toMax"    # Z

    .prologue
    .line 342
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 343
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 344
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void

    .line 347
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->restoreWindow(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "restoreWindow failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAMSCallback(Lcom/mediatek/common/multiwindow/IMWAmsCallback;)V
    .locals 4
    .param p1, "cb"    # Lcom/mediatek/common/multiwindow/IMWAmsCallback;

    .prologue
    .line 142
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 143
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 144
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 147
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->setAMSCallback(Lcom/mediatek/common/multiwindow/IMWAmsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "setAMSCallback failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSystemUiCallback(Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;)V
    .locals 4
    .param p1, "cb"    # Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;

    .prologue
    .line 174
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 175
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 176
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void

    .line 179
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->setSystemUiCallback(Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "setSystemUiCallback failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setWMSCallback(Lcom/mediatek/common/multiwindow/IMWWmsCallback;)V
    .locals 4
    .param p1, "cb"    # Lcom/mediatek/common/multiwindow/IMWWmsCallback;

    .prologue
    .line 158
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 159
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 160
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 163
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->setWMSCallback(Lcom/mediatek/common/multiwindow/IMWWmsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "setWMSCallback failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public shouldChangeConfig(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 616
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getBlackListManager()Lcom/mediatek/common/multiwindow/IMWBlackList;

    move-result-object v0

    .line 617
    .local v0, "blManager":Lcom/mediatek/common/multiwindow/IMWBlackList;
    if-nez v0, :cond_0

    .line 618
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getBlackListManager failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return v4

    .line 621
    :cond_0
    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMWBlackList;->shouldChangeConfig(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 622
    .end local v0    # "blManager":Lcom/mediatek/common/multiwindow/IMWBlackList;
    :catch_0
    move-exception v1

    .line 623
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "shouldChangeConfig failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    return v4
.end method

.method public shouldRestartWhenMiniMax(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 634
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getBlackListManager()Lcom/mediatek/common/multiwindow/IMWBlackList;

    move-result-object v0

    .line 635
    .local v0, "blManager":Lcom/mediatek/common/multiwindow/IMWBlackList;
    if-nez v0, :cond_0

    .line 636
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getBlackListManager failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return v4

    .line 639
    :cond_0
    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMWBlackList;->shouldRestartWhenMiniMax(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 640
    .end local v0    # "blManager":Lcom/mediatek/common/multiwindow/IMWBlackList;
    :catch_0
    move-exception v1

    .line 641
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "shouldRestartWhenMiniMax failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    return v4
.end method

.method public showRestoreButton(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 525
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 526
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 527
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void

    .line 530
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->showRestoreButton(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "showRestoreButton failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stickWindow(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "isSticky"    # Z

    .prologue
    .line 359
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 360
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_0

    .line 361
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void

    .line 364
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->stickWindow(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "stickWindow failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public switchMode(Z)V
    .locals 4
    .param p1, "toSplit"    # Z

    .prologue
    .line 814
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSplitModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 815
    return-void

    .line 818
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getServiceInstance()Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    .line 819
    .local v1, "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    if-nez v1, :cond_1

    .line 820
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "getServiceInstance failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void

    .line 823
    :cond_1
    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->switchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    .end local v1    # "service":Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :goto_0
    return-void

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MultiWindowProxy"

    const-string/jumbo v3, "switchMode failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public switchToFloatingMode()V
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/multiwindow/MultiWindowProxy;->switchMode(Z)V

    .line 835
    return-void
.end method

.method public switchToSplitMode()V
    .locals 1

    .prologue
    .line 831
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/multiwindow/MultiWindowProxy;->switchMode(Z)V

    .line 830
    return-void
.end method
