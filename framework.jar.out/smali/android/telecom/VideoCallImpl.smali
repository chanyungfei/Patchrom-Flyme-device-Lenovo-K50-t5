.class public Landroid/telecom/VideoCallImpl;
.super Landroid/telecom/InCallService$VideoCall;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;,
        Landroid/telecom/VideoCallImpl$MessageHandler;,
        Landroid/telecom/VideoCallImpl$1;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

.field private mCall:Landroid/telecom/Call;

.field private mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mHandler:Landroid/os/Handler;

.field private final mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private mVideoQuality:I


# direct methods
.method static synthetic -get0(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;
    .locals 1

    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Landroid/telecom/VideoCallImpl;)Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method static synthetic -set0(Landroid/telecom/VideoCallImpl;I)I
    .locals 0

    iput p1, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    return p1
.end method

.method constructor <init>(Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Call;)V
    .locals 3
    .param p1, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p2, "call"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-direct {p0}, Landroid/telecom/InCallService$VideoCall;-><init>()V

    .line 49
    iput v2, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    .line 52
    new-instance v0, Landroid/telecom/VideoCallImpl$1;

    invoke-direct {v0, p0}, Landroid/telecom/VideoCallImpl$1;-><init>(Landroid/telecom/VideoCallImpl;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 215
    iput-object p1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 216
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 218
    new-instance v0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;-><init>(Landroid/telecom/VideoCallImpl;Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    .line 219
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->addVideoCallback(Landroid/os/IBinder;)V

    .line 220
    iput-object p2, p0, Landroid/telecom/VideoCallImpl;->mCall:Landroid/telecom/Call;

    .line 214
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 375
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 224
    const-string/jumbo v0, "[destroy]"

    invoke-direct {p0, v0}, Landroid/telecom/VideoCallImpl;->logv(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    invoke-virtual {p0, v0}, Landroid/telecom/VideoCallImpl;->unregisterCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V

    .line 223
    return-void
.end method

.method public registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;

    .prologue
    .line 230
    const-string/jumbo v0, "[registerCallback]"

    invoke-direct {p0, v0}, Landroid/telecom/VideoCallImpl;->logv(Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telecom/VideoCallImpl;->registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;Landroid/os/Handler;)V

    .line 229
    return-void
.end method

.method public registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 236
    iput-object p1, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    .line 237
    if-nez p2, :cond_0

    .line 238
    new-instance v0, Landroid/telecom/VideoCallImpl$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$MessageHandler;-><init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    .line 235
    :goto_0
    return-void

    .line 240
    :cond_0
    new-instance v0, Landroid/telecom/VideoCallImpl$MessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$MessageHandler;-><init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public requestCallDataUsage()V
    .locals 2

    .prologue
    .line 347
    const-string/jumbo v1, "[requestCallDataUsage]"

    invoke-direct {p0, v1}, Landroid/telecom/VideoCallImpl;->logv(Ljava/lang/String;)V

    .line 349
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestCameraCapabilities()V
    .locals 2

    .prologue
    .line 338
    const-string/jumbo v1, "[requestCameraCapabilities]"

    invoke-direct {p0, v1}, Landroid/telecom/VideoCallImpl;->logv(Ljava/lang/String;)V

    .line 340
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 317
    :try_start_0
    new-instance v1, Landroid/telecom/VideoProfile;

    iget-object v2, p0, Landroid/telecom/VideoCallImpl;->mCall:Landroid/telecom/Call;

    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v2

    .line 318
    iget v3, p0, Landroid/telecom/VideoCallImpl;->mVideoQuality:I

    .line 317
    invoke-direct {v1, v2, v3}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 320
    .local v1, "originalProfile":Landroid/telecom/VideoProfile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[sendSessionModifyRequest]current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 321
    const-string/jumbo v3, ", requesting: "

    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/telecom/VideoCallImpl;->logv(Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v2, v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v1    # "originalProfile":Landroid/telecom/VideoProfile;
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[sendSessionModifyResponse]response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telecom/VideoCallImpl;->logv(Ljava/lang/String;)V

    .line 331
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setCamera]cameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telecom/VideoCallImpl;->logv(Ljava/lang/String;)V

    .line 262
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setCamera(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setDeviceOrientation]rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telecom/VideoCallImpl;->logv(Ljava/lang/String;)V

    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setDisplaySurface]display = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telecom/VideoCallImpl;->logv(Ljava/lang/String;)V

    .line 280
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setPauseImage]uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telecom/VideoCallImpl;->logv(Ljava/lang/String;)V

    .line 358
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setPreviewSurface]preview = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telecom/VideoCallImpl;->logv(Ljava/lang/String;)V

    .line 271
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setUIMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setUIMode]mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telecom/VideoCallImpl;->logv(Ljava/lang/String;)V

    .line 368
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setUIMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setZoom(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setZoom]value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telecom/VideoCallImpl;->logv(Ljava/lang/String;)V

    .line 298
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public unregisterCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;

    .prologue
    .line 246
    const-string/jumbo v1, "[unregisterCallback]"

    invoke-direct {p0, v1}, Landroid/telecom/VideoCallImpl;->logv(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    if-eq p1, v1, :cond_0

    .line 248
    return-void

    .line 251
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    .line 253
    :try_start_0
    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v2, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IVideoProvider;->removeVideoCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
