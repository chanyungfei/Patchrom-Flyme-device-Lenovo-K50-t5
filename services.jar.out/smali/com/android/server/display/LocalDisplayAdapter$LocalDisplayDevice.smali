.class final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalDisplayDevice"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private mActiveModeId:I

.field private mActiveModeInvalid:Z

.field private final mBacklight:Lcom/android/server/lights/Light;

.field private mBrightness:I

.field private final mBuiltInDisplayId:I

.field private mDefaultModeId:I

.field private mHavePendingChanges:Z

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mState:I

.field private final mSupportedModes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-assertionsDisabled:Z

    .line 147
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;I[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "builtInDisplayId"    # I
    .param p4, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p5, "activeDisplayInfo"    # I

    .prologue
    const/4 v3, 0x0

    .line 160
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "local:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 150
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 154
    iput v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 155
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    .line 163
    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    .line 164
    invoke-virtual {p0, p4, p5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)Z

    .line 165
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    if-nez v1, :cond_0

    .line 166
    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    .line 167
    .local v0, "lights":Lcom/android/server/lights/LightsManager;
    invoke-virtual {v0, v3}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    .line 161
    .end local v0    # "lights":Lcom/android/server/lights/LightsManager;
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    goto :goto_0
.end method

.method private findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .locals 3
    .param p1, "info"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 237
    .local v1, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v2, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-virtual {v2, p1}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->equals(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    return-object v1

    .line 235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private updateDeviceInfoLocked()V
    .locals 2

    .prologue
    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 440
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 438
    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 245
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 430
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBuiltInDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 254
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v4, :cond_4

    .line 255
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v1, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .line 256
    .local v1, "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    new-instance v4, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v4}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 257
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 258
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 259
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 260
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 261
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/Display$Mode;

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 263
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 264
    .local v2, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v5, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    aput-object v5, v4, v0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v2    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-wide v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    iput-wide v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 267
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-wide v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    iput-wide v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 268
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 269
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 273
    iget-boolean v4, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    if-eqz v4, :cond_1

    .line 274
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v5, 0xc

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 278
    :cond_1
    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    if-nez v4, :cond_5

    .line 279
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v4}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 280
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 281
    const v5, 0x10404bf

    .line 280
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 282
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x3

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 284
    const v4, 0x112009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 285
    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v5, "goldfish"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 286
    const-string/jumbo v4, "ro.emulator.circular"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 284
    if-eqz v4, :cond_3

    .line 287
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 289
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v9, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 290
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    const/high16 v6, 0x43200000    # 160.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 291
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 292
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 293
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v9, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 315
    .end local v0    # "i":I
    .end local v1    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v4

    .line 295
    .restart local v0    # "i":I
    .restart local v1    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_5
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 296
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 297
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 298
    const v6, 0x10404c0

    .line 297
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 299
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 300
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget v6, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 304
    const-string/jumbo v4, "portrait"

    const-string/jumbo v5, "persist.demo.hdmirotation"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 305
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v5, 0x3

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 310
    :cond_6
    const-string/jumbo v4, "persist.demo.hdmirotates"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 311
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_1
.end method

.method public requestDisplayStateLocked(II)Ljava/lang/Runnable;
    .locals 9
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 321
    sget-boolean v3, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 323
    :cond_2
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    if-eq v0, p1, :cond_6

    const/4 v8, 0x1

    .line 324
    .local v8, "stateChanged":Z
    :goto_1
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    if-eq v0, p2, :cond_7

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    if-eqz v0, :cond_7

    const/4 v4, 0x1

    .line 325
    .local v4, "brightnessChanged":Z
    :goto_2
    if-nez v8, :cond_3

    if-eqz v4, :cond_8

    .line 326
    :cond_3
    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    .line 327
    .local v6, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v7

    .line 328
    .local v7, "token":Landroid/os/IBinder;
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 330
    .local v2, "oldState":I
    if-eqz v8, :cond_4

    .line 331
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 332
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 335
    :cond_4
    if-eqz v4, :cond_5

    .line 336
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    .line 342
    :cond_5
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIZIILandroid/os/IBinder;)V

    return-object v0

    .line 323
    .end local v2    # "oldState":I
    .end local v4    # "brightnessChanged":Z
    .end local v6    # "displayId":I
    .end local v7    # "token":Landroid/os/IBinder;
    .end local v8    # "stateChanged":Z
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "stateChanged":Z
    goto :goto_1

    .line 324
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "brightnessChanged":Z
    goto :goto_2

    .line 406
    :cond_8
    return-object v5
.end method

.method public requestModeInTransactionLocked(I)V
    .locals 5
    .param p1, "modeId"    # I

    .prologue
    const/4 v4, 0x0

    .line 411
    if-nez p1, :cond_2

    .line 412
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 418
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    if-ne v1, p1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    if-eqz v1, :cond_3

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 422
    .local v0, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mPhysIndex:I

    invoke-static {v1, v2}, Landroid/view/SurfaceControl;->setActiveConfig(Landroid/os/IBinder;I)Z

    .line 423
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 424
    iput-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 425
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 410
    return-void

    .line 413
    .end local v0    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 414
    const-string/jumbo v1, "LocalDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requested mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not supported by this display,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 415
    const-string/jumbo v3, " reverting to default display mode."

    .line 414
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    goto :goto_0

    .line 419
    :cond_3
    return-void
.end method

.method public updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)Z
    .locals 11
    .param p1, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p2, "activeDisplayInfo"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 176
    const/4 v3, 0x0

    .line 177
    .local v3, "modesAdded":Z
    const/4 v0, 0x0

    .line 178
    .local v0, "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v6, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;>;"
    const/4 v1, 0x0

    .end local v0    # "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .local v1, "i":I
    :goto_0
    array-length v7, p1

    if-ge v1, v7, :cond_2

    .line 180
    aget-object v2, p1, v1

    .line 181
    .local v2, "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    move-result-object v4

    .line 182
    .local v4, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    if-eqz v4, :cond_1

    .line 183
    iput v1, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mPhysIndex:I

    .line 188
    :goto_1
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    if-ne v1, p2, :cond_0

    .line 190
    move-object v0, v4

    .line 179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_1
    new-instance v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .end local v4    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-direct {v4, v2, v1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)V

    .line 186
    .restart local v4    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    const/4 v3, 0x1

    goto :goto_1

    .line 195
    .end local v2    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v4    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_2
    iget v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    if-eqz v7, :cond_3

    .line 196
    iget v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    iget-object v8, v0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getModeId()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 197
    iput-boolean v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 198
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v7}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 203
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ne v7, v8, :cond_4

    if-eqz v3, :cond_5

    .line 207
    :cond_4
    iput-boolean v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 208
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 209
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "record$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 210
    .restart local v4    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget-object v8, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getModeId()I

    move-result v8

    invoke-virtual {v7, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 204
    .end local v4    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .end local v5    # "record$iterator":Ljava/util/Iterator;
    :cond_5
    return v9

    .line 213
    .restart local v5    # "record$iterator":Ljava/util/Iterator;
    :cond_6
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_8

    .line 214
    iget v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    if-eqz v7, :cond_7

    .line 215
    const-string/jumbo v7, "LocalDisplayAdapter"

    const-string/jumbo v8, "Default display mode no longer available, using currently active mode as default."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_7
    iget-object v7, v0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getModeId()I

    move-result v7

    iput v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 221
    :cond_8
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_a

    .line 222
    iget v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    if-eqz v7, :cond_9

    .line 223
    const-string/jumbo v7, "LocalDisplayAdapter"

    const-string/jumbo v8, "Active display mode no longer available, reverting to default mode."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_9
    iget v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iput v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 227
    iput-boolean v10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 230
    :cond_a
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v7}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 231
    return v10
.end method
