.class public Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;
.super Lcom/android/internal/telephony/uicc/IccCardProxy;
.source "SvlteIccCardProxy.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_APP_READY:I = 0x6

.field private static final EVENT_ICC_LOCKED:I = 0x5

.field private static final EVENT_SVLTE_ICC_LOCKED:I = 0x67

.field private static final LOG_TAG:Ljava/lang/String; = "SvlteIccCardProxy"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mPhoneId:Ljava/lang/Integer;

.field private mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mSvlteUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mPhoneId:Ljava/lang/Integer;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    .line 55
    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 56
    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ctor: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 64
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mPhoneId:Ljava/lang/Integer;

    .line 66
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 59
    return-void
.end method

.method private getRemoteSimPinAppType()I
    .locals 1

    .prologue
    .line 268
    const-string/jumbo v0, "RemoteSimPinAppType is 3GPP."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method private isSvlteCT4G()Z
    .locals 2

    .prologue
    .line 264
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isRemoteSimSlot(I)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 280
    const-string/jumbo v0, "SvlteIccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 284
    const-string/jumbo v0, "SvlteIccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method private refreshUiccApplication()V
    .locals 4

    .prologue
    .line 250
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 251
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->getRemoteSimPinAppType()I

    move-result v3

    .line 250
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 252
    .local v0, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 254
    const-string/jumbo v1, "Icc app changed. Reregestering."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->unregisterUiccCardEvents()V

    .line 257
    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 258
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->registerUiccCardEvents()V

    .line 260
    :cond_0
    const-string/jumbo v1, "refreshUiccApplication() to 3GPP done."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private registerUiccCardEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v1, 0x67

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 237
    :cond_0
    return-void
.end method

.method private supplyPinFail(Landroid/os/Message;Ljava/lang/String;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "functionName"    # Ljava/lang/String;

    .prologue
    .line 273
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fail to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", hasIccCard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->hasIccCard()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 275
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 276
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 272
    return-void
.end method

.method private unregisterUiccCardEvents()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->isSvlteCT4G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->refreshUiccApplication()V

    .line 195
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 191
    return-void

    .line 198
    :cond_1
    if-eqz p3, :cond_0

    .line 199
    :try_start_1
    const-string/jumbo v0, "changeIccLockPassword"

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->supplyPinFail(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 200
    return-void

    .line 203
    :cond_2
    :try_start_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 71
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    const-string/jumbo v0, "Disposing"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 77
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dispose()V

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SvlteIccCardProxyAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSvlteUiccController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSvlteUiccApplication: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public getIccLockEnabled()Z
    .locals 4

    .prologue
    .line 210
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 211
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->isSvlteCT4G()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->refreshUiccApplication()V

    .line 214
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccLockEnabled()Z

    move-result v1

    .line 214
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 216
    .local v0, "retValue":Ljava/lang/Boolean;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIccLockEnabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 215
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 219
    :cond_1
    :try_start_1
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccLockEnabled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receive message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 98
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->handleMessage(Landroid/os/Message;)V

    .line 81
    :goto_0
    return-void

    .line 86
    :sswitch_0
    const-string/jumbo v0, "receive EVENT_SVLTE_ICC_LOCKED "

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x5

    iput v0, p1, Landroid/os/Message;->what:I

    .line 88
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 91
    :sswitch_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->isSvlteCT4G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string/jumbo v0, "receive EVENT_ICC_LOCKED, SVLTE CT 4G is true, so do nothing"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Try to setIccLockEnabled enabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " onComplete = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->log(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->isSvlteCT4G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->refreshUiccApplication()V

    .line 177
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 172
    return-void

    .line 179
    :cond_1
    if-eqz p3, :cond_0

    .line 180
    :try_start_1
    const-string/jumbo v0, "setIccLockEnabled"

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->supplyPinFail(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 181
    return-void

    .line 184
    :cond_2
    :try_start_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->isSvlteCT4G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->refreshUiccApplication()V

    .line 108
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 104
    return-void

    .line 110
    :cond_1
    if-eqz p2, :cond_0

    .line 111
    :try_start_1
    const-string/jumbo v0, "supplyPin"

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->supplyPinFail(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 112
    return-void

    .line 115
    :cond_2
    :try_start_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 139
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->isSvlteCT4G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->refreshUiccApplication()V

    .line 142
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 138
    return-void

    .line 144
    :cond_1
    if-eqz p2, :cond_0

    .line 145
    :try_start_1
    const-string/jumbo v0, "supplyPin2"

    invoke-direct {p0, p2, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->supplyPinFail(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 146
    return-void

    .line 149
    :cond_2
    :try_start_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->isSvlteCT4G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->refreshUiccApplication()V

    .line 125
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 121
    return-void

    .line 127
    :cond_1
    if-eqz p3, :cond_0

    .line 128
    :try_start_1
    const-string/jumbo v0, "supplyPuk"

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->supplyPinFail(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 129
    return-void

    .line 132
    :cond_2
    :try_start_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->isSvlteCT4G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->refreshUiccApplication()V

    .line 159
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->mSvlteUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 155
    return-void

    .line 161
    :cond_1
    if-eqz p3, :cond_0

    .line 162
    :try_start_1
    const-string/jumbo v0, "supplyPuk2"

    invoke-direct {p0, p3, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteIccCardProxy;->supplyPinFail(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 163
    return-void

    .line 166
    :cond_2
    :try_start_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
