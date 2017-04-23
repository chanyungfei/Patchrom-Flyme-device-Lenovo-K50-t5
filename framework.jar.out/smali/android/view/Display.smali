.class public final Landroid/view/Display;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$Mode;
    }
.end annotation


# static fields
.field private static final CACHED_APP_SIZE_DURATION_MILLIS:I = 0x14

.field private static final DEBUG:Z = false

.field public static final DEFAULT_DISPLAY:I = 0x0

.field public static final FLAG_PRESENTATION:I = 0x8

.field public static final FLAG_PRIVATE:I = 0x4

.field public static final FLAG_ROUND:I = 0x10

.field public static final FLAG_SCALING_DISABLED:I = 0x40000000

.field public static final FLAG_SECURE:I = 0x2

.field public static final FLAG_SUPPORTS_PROTECTED_BUFFERS:I = 0x1

.field public static final INVALID_DISPLAY:I = -0x1

.field public static final STATE_DOZE:I = 0x3

.field public static final STATE_DOZE_SUSPEND:I = 0x4

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x2

.field public static final STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Display"

.field public static final TYPE_BUILT_IN:I = 0x1

.field public static final TYPE_HDMI:I = 0x2

.field public static final TYPE_OVERLAY:I = 0x4

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_VIRTUAL:I = 0x5

.field public static final TYPE_WIFI:I = 0x3


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private mCachedAppHeightCompat:I

.field private mCachedAppWidthCompat:I

.field private final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mDisplayId:I

.field private mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mFlags:I

.field private final mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private mIsValid:Z

.field private mLastCachedAppSizeUpdate:J

.field private final mLayerStack:I

.field private final mOwnerPackageName:Ljava/lang/String;

.field private final mOwnerUid:I

.field private final mTempMetrics:Landroid/util/DisplayMetrics;

.field private final mType:I


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;)V
    .locals 1
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "displayId"    # I
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "daj"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    .line 290
    iput-object p1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 291
    iput p2, p0, Landroid/view/Display;->mDisplayId:I

    .line 292
    iput-object p3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 293
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0, p4}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    iput-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Display;->mIsValid:Z

    .line 297
    iget v0, p3, Landroid/view/DisplayInfo;->layerStack:I

    iput v0, p0, Landroid/view/Display;->mLayerStack:I

    .line 298
    iget v0, p3, Landroid/view/DisplayInfo;->flags:I

    iput v0, p0, Landroid/view/Display;->mFlags:I

    .line 299
    iget v0, p3, Landroid/view/DisplayInfo;->type:I

    iput v0, p0, Landroid/view/Display;->mType:I

    .line 300
    iget-object v0, p3, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/Display;->mAddress:Ljava/lang/String;

    .line 301
    iget v0, p3, Landroid/view/DisplayInfo;->ownerUid:I

    iput v0, p0, Landroid/view/Display;->mOwnerUid:I

    .line 302
    iget-object v0, p3, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public static hasAccess(III)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "flags"    # I
    .param p2, "ownerUid"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 799
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    .line 800
    if-ne p0, p2, :cond_1

    .line 799
    :cond_0
    :goto_0
    return v0

    .line 801
    :cond_1
    const/16 v2, 0x3e8

    if-eq p0, v2, :cond_0

    .line 802
    if-eqz p0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isSuspendedState(I)Z
    .locals 2
    .param p0, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 907
    if-eq p0, v0, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 885
    packed-switch p0, :pswitch_data_0

    .line 897
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 887
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 889
    :pswitch_1
    const-string/jumbo v0, "OFF"

    return-object v0

    .line 891
    :pswitch_2
    const-string/jumbo v0, "ON"

    return-object v0

    .line 893
    :pswitch_3
    const-string/jumbo v0, "DOZE"

    return-object v0

    .line 895
    :pswitch_4
    const-string/jumbo v0, "DOZE_SUSPEND"

    return-object v0

    .line 885
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 863
    packed-switch p0, :pswitch_data_0

    .line 877
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 865
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 867
    :pswitch_1
    const-string/jumbo v0, "BUILT_IN"

    return-object v0

    .line 869
    :pswitch_2
    const-string/jumbo v0, "HDMI"

    return-object v0

    .line 871
    :pswitch_3
    const-string/jumbo v0, "WIFI"

    return-object v0

    .line 873
    :pswitch_4
    const-string/jumbo v0, "OVERLAY"

    return-object v0

    .line 875
    :pswitch_5
    const-string/jumbo v0, "VIRTUAL"

    return-object v0

    .line 863
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateCachedAppSizeIfNeededLocked()V
    .locals 6

    .prologue
    .line 838
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 839
    .local v0, "now":J
    iget-wide v2, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    const-wide/16 v4, 0x14

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 840
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 841
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget-object v4, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v2, v3, v4}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 842
    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Landroid/view/Display;->mCachedAppWidthCompat:I

    .line 843
    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Landroid/view/Display;->mCachedAppHeightCompat:I

    .line 844
    iput-wide v0, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    .line 837
    :cond_0
    return-void
.end method

.method private updateDisplayInfoLocked()V
    .locals 3

    .prologue
    .line 816
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v2, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 817
    .local v0, "newInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_1

    .line 819
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v1, :cond_0

    .line 820
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    iput-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 828
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-nez v1, :cond_0

    .line 829
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    goto :goto_0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Landroid/view/Display;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVsyncOffsetNanos()J
    .locals 2

    .prologue
    .line 691
    monitor-enter p0

    .line 692
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 693
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v0, v0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outSmallestSize"    # Landroid/graphics/Point;
    .param p2, "outLargestSize"    # Landroid/graphics/Point;

    .prologue
    .line 530
    monitor-enter p0

    .line 531
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 532
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 533
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 534
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 535
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v0, p2, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 529
    return-void

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Landroid/view/Display;->mDisplayId:I

    return v0
.end method

.method public getDisplayInfo(Landroid/view/DisplayInfo;)Z
    .locals 1
    .param p1, "outDisplayInfo"    # Landroid/view/DisplayInfo;

    .prologue
    .line 344
    monitor-enter p0

    .line 345
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 346
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 347
    iget-boolean v0, p0, Landroid/view/Display;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Landroid/view/Display;->mFlags:I

    return v0
.end method

.method public getHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 567
    monitor-enter p0

    .line 568
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    .line 569
    iget v0, p0, Landroid/view/Display;->mCachedAppHeightCompat:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLayerStack()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Landroid/view/Display;->mLayerStack:I

    return v0
.end method

.method public getMaximumSizeDimension()I
    .locals 2

    .prologue
    .line 545
    monitor-enter p0

    .line 546
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 547
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMetrics(Landroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 730
    monitor-enter p0

    .line 731
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 732
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, p1, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 729
    return-void

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMode()Landroid/view/Display$Mode;
    .locals 1

    .prologue
    .line 664
    monitor-enter p0

    .line 665
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 666
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    monitor-enter p0

    .line 451
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 452
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOrientation()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public getOverscanInsets(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 580
    monitor-enter p0

    .line 581
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 582
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanTop:I

    .line 583
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->overscanRight:I

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 582
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 579
    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOwnerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerUid()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Landroid/view/Display;->mOwnerUid:I

    return v0
.end method

.method public getPixelFormat()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 631
    const/4 v0, 0x1

    return v0
.end method

.method public getPresentationDeadlineNanos()J
    .locals 2

    .prologue
    .line 709
    monitor-enter p0

    .line 710
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 711
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v0, v0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRealMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 768
    monitor-enter p0

    .line 769
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 770
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 771
    sget-object v1, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 772
    iget-object v2, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 770
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 767
    return-void

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRealSize(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 749
    monitor-enter p0

    .line 750
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 751
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 752
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 748
    return-void

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRectSize(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outSize"    # Landroid/graphics/Rect;

    .prologue
    .line 492
    monitor-enter p0

    .line 493
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 494
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 495
    iget-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 491
    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRefreshRate()F
    .locals 1

    .prologue
    .line 638
    monitor-enter p0

    .line 639
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 640
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 606
    monitor-enter p0

    .line 607
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 608
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 477
    monitor-enter p0

    .line 478
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 479
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 480
    iget-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 481
    iget-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 476
    return-void

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 783
    monitor-enter p0

    .line 784
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 785
    iget-boolean v0, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupportedModes()[Landroid/view/Display$Mode;
    .locals 2

    .prologue
    .line 674
    monitor-enter p0

    .line 675
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 676
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 677
    .local v0, "modes":[Landroid/view/Display$Mode;
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display$Mode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 674
    .end local v0    # "modes":[Landroid/view/Display$Mode;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSupportedRefreshRates()[F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 654
    monitor-enter p0

    .line 655
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 656
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Landroid/view/Display;->mType:I

    return v0
.end method

.method public getWidth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 556
    monitor-enter p0

    .line 557
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    .line 558
    iget v0, p0, Landroid/view/Display;->mCachedAppWidthCompat:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasAccess(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 794
    iget v0, p0, Landroid/view/Display;->mFlags:I

    iget v1, p0, Landroid/view/Display;->mOwnerUid:I

    invoke-static {p1, v0, v1}, Landroid/view/Display;->hasAccess(III)Z

    move-result v0

    return v0
.end method

.method public isPublicPresentation()Z
    .locals 2

    .prologue
    .line 810
    iget v0, p0, Landroid/view/Display;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    .line 811
    const/16 v1, 0x8

    .line 810
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 330
    monitor-enter p0

    .line 331
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 332
    iget-boolean v0, p0, Landroid/view/Display;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 851
    monitor-enter p0

    .line 852
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 853
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Display id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 855
    const-string/jumbo v1, ", "

    .line 854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 855
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    .line 854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 855
    const-string/jumbo v1, ", isValid="

    .line 854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 855
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    .line 854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 851
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
