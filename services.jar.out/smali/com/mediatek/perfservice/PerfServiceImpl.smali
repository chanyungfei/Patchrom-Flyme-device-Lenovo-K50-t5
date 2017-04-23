.class public Lcom/mediatek/perfservice/PerfServiceImpl;
.super Lcom/mediatek/perfservice/IPerfService$Stub;
.source "PerfServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/perfservice/PerfServiceImpl$PerfServiceBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerfService"


# instance fields
.field final mContext:Landroid/content/Context;

.field private perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;


# direct methods
.method static synthetic -get0(Lcom/mediatek/perfservice/PerfServiceImpl;)Lcom/mediatek/perfservice/IPerfServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/perfservice/PerfServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/perfservice/IPerfServiceManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/mediatek/perfservice/IPerfServiceManager;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/mediatek/perfservice/IPerfService$Stub;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    .line 76
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/mediatek/perfservice/PerfServiceImpl$PerfServiceBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/mediatek/perfservice/PerfServiceImpl$PerfServiceBroadcastReceiver;-><init>(Lcom/mediatek/perfservice/PerfServiceImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string/jumbo v0, "@M_PerfService"

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

    .line 221
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string/jumbo v0, "@M_PerfService"

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

    .line 225
    return-void
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 1
    .param p1, "scenario"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1}, Lcom/mediatek/perfservice/IPerfServiceManager;->boostDisable(I)V

    .line 90
    return-void
.end method

.method public boostEnable(I)V
    .locals 1
    .param p1, "scenario"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1}, Lcom/mediatek/perfservice/IPerfServiceManager;->boostEnable(I)V

    .line 85
    return-void
.end method

.method public boostEnableTimeout(II)V
    .locals 1
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/perfservice/IPerfServiceManager;->boostEnableTimeout(II)V

    .line 95
    return-void
.end method

.method public boostEnableTimeoutMs(II)V
    .locals 1
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/perfservice/IPerfServiceManager;->boostEnableTimeoutMs(II)V

    .line 100
    return-void
.end method

.method public dumpAll()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0}, Lcom/mediatek/perfservice/IPerfServiceManager;->dumpAll()V

    .line 181
    return-void
.end method

.method public getLastBoostPid()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0}, Lcom/mediatek/perfservice/IPerfServiceManager;->getLastBoostPid()I

    move-result v0

    return v0
.end method

.method public getPackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0}, Lcom/mediatek/perfservice/IPerfServiceManager;->getPackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyAppState(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "pid"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mediatek/perfservice/IPerfServiceManager;->notifyAppState(Ljava/lang/String;Ljava/lang/String;II)V

    .line 106
    return-void
.end method

.method public notifyDisplayType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1}, Lcom/mediatek/perfservice/IPerfServiceManager;->notifyDisplayType(I)V

    .line 201
    return-void
.end method

.method public notifyFrameUpdate(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1}, Lcom/mediatek/perfservice/IPerfServiceManager;->notifyFrameUpdate(I)V

    .line 196
    return-void
.end method

.method public notifyUserStatus(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "status"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/perfservice/IPerfServiceManager;->notifyUserStatus(II)V

    .line 216
    return-void
.end method

.method public restorePolicy(I)V
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1}, Lcom/mediatek/perfservice/IPerfServiceManager;->restorePolicy(I)V

    .line 191
    return-void
.end method

.method public setFavorPid(I)V
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1}, Lcom/mediatek/perfservice/IPerfServiceManager;->setFavorPid(I)V

    .line 186
    return-void
.end method

.method public userDisable(I)V
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1}, Lcom/mediatek/perfservice/IPerfServiceManager;->userDisable(I)V

    .line 161
    return-void
.end method

.method public userDisableAll()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0}, Lcom/mediatek/perfservice/IPerfServiceManager;->userDisableAll()V

    .line 171
    return-void
.end method

.method public userEnable(I)V
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1}, Lcom/mediatek/perfservice/IPerfServiceManager;->userEnable(I)V

    .line 146
    return-void
.end method

.method public userEnableTimeout(II)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/perfservice/IPerfServiceManager;->userEnableTimeout(II)V

    .line 151
    return-void
.end method

.method public userEnableTimeoutMs(II)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/perfservice/IPerfServiceManager;->userEnableTimeoutMs(II)V

    .line 156
    return-void
.end method

.method public userGetCapability(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1}, Lcom/mediatek/perfservice/IPerfServiceManager;->userGetCapability(I)I

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
    .line 113
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mediatek/perfservice/IPerfServiceManager;->userReg(IIII)I

    move-result v0

    return v0
.end method

.method public userRegBigLittle(IIIIII)I
    .locals 7
    .param p1, "scn_core_big"    # I
    .param p2, "scn_freq_big"    # I
    .param p3, "scn_core_little"    # I
    .param p4, "scn_freq_little"    # I
    .param p5, "pid"    # I
    .param p6, "tid"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfServiceManager;->userRegBigLittle(IIIIII)I

    move-result v0

    return v0
.end method

.method public userRegScn(II)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "tid"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/perfservice/IPerfServiceManager;->userRegScn(II)I

    move-result v0

    return v0
.end method

.method public userRegScnConfig(IIIIII)V
    .locals 7
    .param p1, "handle"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfServiceManager;->userRegScnConfig(IIIIII)V

    .line 136
    return-void
.end method

.method public userResetAll()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0}, Lcom/mediatek/perfservice/IPerfServiceManager;->userResetAll()V

    .line 166
    return-void
.end method

.method public userRestoreAll()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0}, Lcom/mediatek/perfservice/IPerfServiceManager;->userRestoreAll()V

    .line 176
    return-void
.end method

.method public userUnreg(I)V
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1}, Lcom/mediatek/perfservice/IPerfServiceManager;->userUnreg(I)V

    .line 121
    return-void
.end method

.method public userUnregScn(I)V
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1}, Lcom/mediatek/perfservice/IPerfServiceManager;->userUnregScn(I)V

    .line 141
    return-void
.end method
