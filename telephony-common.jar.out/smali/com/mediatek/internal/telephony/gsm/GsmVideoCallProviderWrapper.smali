.class public Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;
.super Landroid/telecom/Connection$VideoProvider;
.source "GsmVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;,
        Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$1;,
        Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;
    }
.end annotation


# static fields
.field private static final MSG_CHANGE_CALL_DATA_USAGE:I = 0x5

.field private static final MSG_CHANGE_CAMERA_CAPABILITIES:I = 0x6

.field private static final MSG_CHANGE_PEER_DIMENSIONS:I = 0x4

.field private static final MSG_CHANGE_PEER_DIMENSIONS_WITH_ANGLE:I = 0x64

.field private static final MSG_CHANGE_VIDEO_QUALITY:I = 0x7

.field private static final MSG_HANDLE_CALL_SESSION_EVENT:I = 0x3

.field private static final MSG_MTK_BASE:I = 0x64

.field private static final MSG_RECEIVE_SESSION_MODIFY_REQUEST:I = 0x1

.field private static final MSG_RECEIVE_SESSION_MODIFY_RESPONSE:I = 0x2

.field static final TAG:Ljava/lang/String; = "GsmVideoCallProviderWrapper"


# instance fields
.field private final mBinder:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mHandler:Landroid/os/Handler;

.field private final mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;


# direct methods
.method static synthetic -get0(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    return-object v0
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;)V
    .locals 3
    .param p1, "VideoProvider"    # Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0}, Landroid/telecom/Connection$VideoProvider;-><init>()V

    .line 63
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$1;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 134
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$2;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mHandler:Landroid/os/Handler;

    .line 204
    const-string/jumbo v0, "GsmVideoCallProviderWrapper"

    const-string/jumbo v1, "New GsmVideoCallProviderWrapper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    .line 206
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 208
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mBinder:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;

    .line 209
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mBinder:Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper$GsmVideoCallCallback;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setCallback(Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;)V

    .line 203
    return-void
.end method


# virtual methods
.method public onRequestCameraCapabilities()V
    .locals 2

    .prologue
    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onRequestConnectionDataUsage()V
    .locals 2

    .prologue
    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setCamera(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSetDeviceOrientation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSetUIMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setUIMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSetZoom(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProviderWrapper;->mVideoCallProvider:Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
