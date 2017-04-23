.class public Lcom/mediatek/perfservice/PerfServiceManager;
.super Ljava/lang/Object;
.source "PerfServiceManager.java"

# interfaces
.implements Lcom/mediatek/perfservice/IPerfServiceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;,
        Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    }
.end annotation


# static fields
.field private static final HEAP_UTILIZATION_DURING_FRAME_UPDATE:F = 0.5f

.field private static final RENDER_AWARE_DURATION_MS:I = 0xbb8

.field private static final RENDER_BIT:I = 0x800000

.field private static final TAG:Ljava/lang/String; = "PerfServiceManager"

.field private static final UI_UPDATE_DURATION_MS:I = 0x1f4


# instance fields
.field private bDuringTouch:Z

.field private bRenderAwareValid:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultUtilization:F

.field private mDisplayType:I

.field private mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRuntime:Ldalvik/system/VMRuntime;

.field final mTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/mediatek/perfservice/PerfServiceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/perfservice/PerfServiceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bRenderAwareValid:Z

    return v0
.end method

.method static synthetic -get2(Lcom/mediatek/perfservice/PerfServiceManager;)F
    .locals 1

    iget v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDefaultUtilization:F

    return v0
.end method

.method static synthetic -get3(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bRenderAwareValid:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mContext:Landroid/content/Context;

    .line 120
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "PerfServiceManager"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 121
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 122
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 123
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 124
    new-instance v1, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;-><init>(Lcom/mediatek/perfservice/PerfServiceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    .line 126
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    .line 127
    iput-boolean v4, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    .line 128
    iput-boolean v4, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bRenderAwareValid:Z

    .line 129
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    .line 130
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;

    .line 131
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDefaultUtilization:F

    .line 132
    const-string/jumbo v1, "Created and started PerfService thread"

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 688
    const-string/jumbo v0, "@M_PerfServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[PerfService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 692
    const-string/jumbo v0, "@M_PerfServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[PerfService] ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-void
.end method

.method public static native nativePerfBoostDisable(I)I
.end method

.method public static native nativePerfBoostEnable(I)I
.end method

.method public static native nativePerfDumpAll()I
.end method

.method public static native nativePerfGetLastBoostPid()I
.end method

.method public static native nativePerfGetPackName()Ljava/lang/String;
.end method

.method public static native nativePerfLevelBoost(I)I
.end method

.method public static native nativePerfNotifyAppState(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public static native nativePerfNotifyDisplayType(I)I
.end method

.method public static native nativePerfNotifyUserStatus(II)I
.end method

.method public static native nativePerfRestorePolicy(I)I
.end method

.method public static native nativePerfSetFavorPid(I)I
.end method

.method public static native nativePerfUserGetCapability(I)I
.end method

.method public static native nativePerfUserRegScn(II)I
.end method

.method public static native nativePerfUserRegScnConfig(IIIIII)I
.end method

.method public static native nativePerfUserScnDisable(I)I
.end method

.method public static native nativePerfUserScnDisableAll()I
.end method

.method public static native nativePerfUserScnEnable(I)I
.end method

.method public static native nativePerfUserScnReg(IIII)I
.end method

.method public static native nativePerfUserScnRegBigLittle(IIIIII)I
.end method

.method public static native nativePerfUserScnResetAll()I
.end method

.method public static native nativePerfUserScnRestoreAll()I
.end method

.method public static native nativePerfUserScnUnreg(I)I
.end method

.method public static native nativePerfUserUnregScn(I)I
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 2
    .param p1, "scenario"    # I

    .prologue
    .line 155
    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager;->touchDisable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap2(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 161
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 162
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 163
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 164
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 153
    return-void
.end method

.method public boostEnable(I)V
    .locals 2
    .param p1, "scenario"    # I

    .prologue
    .line 141
    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager;->touchEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap2(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 147
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 148
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 149
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 150
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void
.end method

.method public boostEnableTimeout(II)V
    .locals 2
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 169
    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager;->touchEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap2(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 175
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 176
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 177
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 178
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 179
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 167
    return-void
.end method

.method public boostEnableTimeoutMs(II)V
    .locals 3
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    const/4 v2, 0x3

    .line 184
    if-ne v2, p1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager;->touchEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap2(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 190
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 191
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 192
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 193
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 194
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 182
    return-void
.end method

.method public dumpAll()V
    .locals 0

    .prologue
    .line 296
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfDumpAll()I

    .line 295
    return-void
.end method

.method public getLastBoostPid()I
    .locals 2

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getLastBoostPid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfGetLastBoostPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfGetLastBoostPid()I

    move-result v0

    return v0
.end method

.method public getPackName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPackName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfGetPackName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfGetPackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyAppState(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "pid"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 200
    .local v6, "msg":Landroid/os/Message;
    const/4 v0, 0x4

    iput v0, v6, Landroid/os/Message;->what:I

    .line 201
    new-instance v0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;-><init>(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 197
    return-void
.end method

.method public notifyDisplayType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyDisplayType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 327
    iput p1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    .line 328
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfNotifyDisplayType(I)I

    .line 325
    return-void
.end method

.method public notifyFrameUpdate(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x5

    .line 308
    if-eqz p1, :cond_0

    .line 309
    const/high16 v1, 0x800000

    or-int/2addr v1, p1

    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfSetFavorPid(I)I

    .line 311
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bRenderAwareValid:Z

    if-nez v1, :cond_1

    .line 312
    return-void

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap2(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 318
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 319
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 320
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 321
    const/16 v1, 0x1f4

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 322
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 307
    return-void
.end method

.method public notifyUserStatus(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "status"    # I

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyUserStatus - type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public restorePolicy(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 304
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfRestorePolicy(I)I

    .line 303
    return-void
.end method

.method public setFavorPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 300
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfSetFavorPid(I)I

    .line 299
    return-void
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 136
    const-string/jumbo v0, "systemReady, register ACTION_BOOT_COMPLETED"

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public touchDisable()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 364
    const/4 v0, 0x4

    invoke-static {v0, v2}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfNotifyUserStatus(II)I

    .line 366
    iput-boolean v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    .line 368
    iget v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v0, v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap2(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 370
    iput-boolean v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bRenderAwareValid:Z

    .line 371
    return v1

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap0(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public touchEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 352
    invoke-static {v0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfNotifyUserStatus(II)I

    .line 354
    iget v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    if-nez v0, :cond_0

    .line 355
    return v2

    .line 357
    :cond_0
    iput-boolean v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    .line 358
    iput-boolean v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bRenderAwareValid:Z

    .line 359
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap1(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;)V

    .line 360
    return v1
.end method

.method public userDisable(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 247
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap3(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 249
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 250
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 251
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 252
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 246
    return-void
.end method

.method public userDisableAll()V
    .locals 2

    .prologue
    .line 284
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 285
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 286
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 283
    return-void
.end method

.method public userEnable(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 237
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap3(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 238
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 240
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 241
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 242
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 243
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    return-void
.end method

.method public userEnableTimeout(II)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 256
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap3(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 257
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 259
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x12

    iput v1, v0, Landroid/os/Message;->what:I

    .line 261
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 262
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 263
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 255
    return-void
.end method

.method public userEnableTimeoutMs(II)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 267
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap3(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 268
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 270
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 271
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 272
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 273
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 274
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 266
    return-void
.end method

.method public userGetCapability(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 218
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserGetCapability(I)I

    move-result v0

    return v0
.end method

.method public userReg(IIII)I
    .locals 1
    .param p1, "scn_core"    # I
    .param p2, "scn_freq"    # I
    .param p3, "pid"    # I
    .param p4, "tid"    # I

    .prologue
    .line 206
    invoke-static {p1, p2, p3, p4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnReg(IIII)I

    move-result v0

    return v0
.end method

.method public userRegBigLittle(IIIIII)I
    .locals 1
    .param p1, "scn_core_big"    # I
    .param p2, "scn_freq_big"    # I
    .param p3, "scn_core_little"    # I
    .param p4, "scn_freq_little"    # I
    .param p5, "pid"    # I
    .param p6, "tid"    # I

    .prologue
    .line 210
    invoke-static/range {p1 .. p6}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnRegBigLittle(IIIIII)I

    move-result v0

    return v0
.end method

.method public userRegScn(II)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "tid"    # I

    .prologue
    .line 222
    invoke-static {p1, p2}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserRegScn(II)I

    move-result v0

    return v0
.end method

.method public userRegScnConfig(IIIIII)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .prologue
    .line 226
    invoke-static/range {p1 .. p6}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserRegScnConfig(IIIIII)I

    .line 225
    return-void
.end method

.method public userResetAll()V
    .locals 2

    .prologue
    .line 278
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 279
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 280
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 277
    return-void
.end method

.method public userRestoreAll()V
    .locals 2

    .prologue
    .line 290
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 291
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    .line 292
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 289
    return-void
.end method

.method public userUnreg(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 214
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnUnreg(I)I

    .line 213
    return-void
.end method

.method public userUnregScn(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 230
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 231
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 232
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 233
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 229
    return-void
.end method
