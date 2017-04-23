.class public Lcom/mediatek/mmsdk/CameraEffectManager;
.super Ljava/lang/Object;
.source "CameraEffectManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraEffectManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIEffectFactory:Lcom/mediatek/mmsdk/IEffectFactory;

.field private mIFeatureManager:Lcom/mediatek/mmsdk/IFeatureManager;

.field private mIMmsdkService:Lcom/mediatek/mmsdk/IMMSdkService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/mediatek/mmsdk/CameraEffectManager;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method private createEffectHalClient(Lcom/mediatek/mmsdk/EffectHalVersion;)Lcom/mediatek/mmsdk/IEffectHalClient;
    .locals 4
    .param p1, "version"    # Lcom/mediatek/mmsdk/EffectHalVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/mmsdk/CameraEffectHalException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectManager;->getEffectFactory()Lcom/mediatek/mmsdk/IEffectFactory;

    .line 282
    new-instance v1, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v1}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 284
    .local v1, "effectHalClientHolder":Landroid/hardware/camera2/utils/BinderHolder;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectManager;->mIEffectFactory:Lcom/mediatek/mmsdk/IEffectFactory;

    invoke-interface {v2, p1, v1}, Lcom/mediatek/mmsdk/IEffectFactory;->createEffectHalClient(Lcom/mediatek/mmsdk/EffectHalVersion;Landroid/hardware/camera2/utils/BinderHolder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/BinderHolder;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/mmsdk/IEffectHalClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectHalClient;

    move-result-object v2

    return-object v2

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/mediatek/mmsdk/CameraEffectHalException;

    const/16 v3, 0x69

    invoke-direct {v2, v3}, Lcom/mediatek/mmsdk/CameraEffectHalException;-><init>(I)V

    throw v2
.end method

.method private getEffectFactory()Lcom/mediatek/mmsdk/IEffectFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/mmsdk/CameraEffectHalException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectManager;->getFeatureManager()Lcom/mediatek/mmsdk/IFeatureManager;

    .line 266
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectManager;->mIEffectFactory:Lcom/mediatek/mmsdk/IEffectFactory;

    if-nez v2, :cond_0

    .line 267
    new-instance v1, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v1}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 269
    .local v1, "effectFactoryHolder":Landroid/hardware/camera2/utils/BinderHolder;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectManager;->mIFeatureManager:Lcom/mediatek/mmsdk/IFeatureManager;

    invoke-interface {v2, v1}, Lcom/mediatek/mmsdk/IFeatureManager;->getEffectFactory(Landroid/hardware/camera2/utils/BinderHolder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/BinderHolder;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/mmsdk/IEffectFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IEffectFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectManager;->mIEffectFactory:Lcom/mediatek/mmsdk/IEffectFactory;

    .line 276
    .end local v1    # "effectFactoryHolder":Landroid/hardware/camera2/utils/BinderHolder;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectManager;->mIEffectFactory:Lcom/mediatek/mmsdk/IEffectFactory;

    return-object v2

    .line 270
    .restart local v1    # "effectFactoryHolder":Landroid/hardware/camera2/utils/BinderHolder;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/mediatek/mmsdk/CameraEffectHalException;

    .line 272
    const/16 v3, 0x67

    .line 271
    invoke-direct {v2, v3}, Lcom/mediatek/mmsdk/CameraEffectHalException;-><init>(I)V

    throw v2
.end method

.method private getFeatureManager()Lcom/mediatek/mmsdk/IFeatureManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/mmsdk/CameraEffectHalException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectManager;->getMmSdkService()Lcom/mediatek/mmsdk/IMMSdkService;

    .line 251
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectManager;->mIFeatureManager:Lcom/mediatek/mmsdk/IFeatureManager;

    if-nez v2, :cond_0

    .line 252
    new-instance v1, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v1}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 254
    .local v1, "featureManagerHolder":Landroid/hardware/camera2/utils/BinderHolder;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectManager;->mIMmsdkService:Lcom/mediatek/mmsdk/IMMSdkService;

    invoke-interface {v2, v1}, Lcom/mediatek/mmsdk/IMMSdkService;->connectFeatureManager(Landroid/hardware/camera2/utils/BinderHolder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/BinderHolder;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/mmsdk/IFeatureManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IFeatureManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectManager;->mIFeatureManager:Lcom/mediatek/mmsdk/IFeatureManager;

    .line 261
    .end local v1    # "featureManagerHolder":Landroid/hardware/camera2/utils/BinderHolder;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectManager;->mIFeatureManager:Lcom/mediatek/mmsdk/IFeatureManager;

    return-object v2

    .line 255
    .restart local v1    # "featureManagerHolder":Landroid/hardware/camera2/utils/BinderHolder;
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/mediatek/mmsdk/CameraEffectHalException;

    .line 257
    const/16 v3, 0x66

    .line 256
    invoke-direct {v2, v3}, Lcom/mediatek/mmsdk/CameraEffectHalException;-><init>(I)V

    throw v2
.end method

.method private getMmSdkService()Lcom/mediatek/mmsdk/IMMSdkService;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/mmsdk/CameraEffectHalException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectManager;->mIMmsdkService:Lcom/mediatek/mmsdk/IMMSdkService;

    if-nez v1, :cond_1

    .line 237
    const-string/jumbo v1, "media.mmsdk"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 239
    .local v0, "mmsdkService":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 240
    new-instance v1, Lcom/mediatek/mmsdk/CameraEffectHalException;

    .line 241
    const/16 v2, 0x65

    .line 240
    invoke-direct {v1, v2}, Lcom/mediatek/mmsdk/CameraEffectHalException;-><init>(I)V

    throw v1

    .line 243
    :cond_0
    invoke-static {v0}, Lcom/mediatek/mmsdk/IMMSdkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IMMSdkService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectManager;->mIMmsdkService:Lcom/mediatek/mmsdk/IMMSdkService;

    .line 246
    .end local v0    # "mmsdkService":Landroid/os/IBinder;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/mmsdk/CameraEffectManager;->mIMmsdkService:Lcom/mediatek/mmsdk/IMMSdkService;

    return-object v1
.end method

.method private openEffect(Lcom/mediatek/mmsdk/EffectHalVersion;Lcom/mediatek/mmsdk/CameraEffect$StateCallback;Landroid/os/Handler;)Lcom/mediatek/mmsdk/CameraEffect;
    .locals 12
    .param p1, "version"    # Lcom/mediatek/mmsdk/EffectHalVersion;
    .param p2, "callback"    # Lcom/mediatek/mmsdk/CameraEffect$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/mmsdk/CameraEffectHalException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 186
    .local v0, "cameraEffect":Lcom/mediatek/mmsdk/CameraEffect;
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectManager;->getMmSdkService()Lcom/mediatek/mmsdk/IMMSdkService;

    .line 188
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectManager;->getFeatureManager()Lcom/mediatek/mmsdk/IFeatureManager;

    .line 191
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectManager;->getEffectFactory()Lcom/mediatek/mmsdk/IEffectFactory;

    .line 194
    invoke-direct {p0, p1}, Lcom/mediatek/mmsdk/CameraEffectManager;->createEffectHalClient(Lcom/mediatek/mmsdk/EffectHalVersion;)Lcom/mediatek/mmsdk/IEffectHalClient;

    move-result-object v4

    .line 197
    .local v4, "effectHalClient":Lcom/mediatek/mmsdk/IEffectHalClient;
    const/4 v7, -0x1

    .line 200
    .local v7, "initValue":I
    :try_start_0
    invoke-interface {v4}, Lcom/mediatek/mmsdk/IEffectHalClient;->init()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 207
    new-instance v1, Lcom/mediatek/mmsdk/CameraEffectImpl;

    invoke-direct {v1, p2, p3}, Lcom/mediatek/mmsdk/CameraEffectImpl;-><init>(Lcom/mediatek/mmsdk/CameraEffect$StateCallback;Landroid/os/Handler;)V

    .line 210
    .local v1, "cameraEffectImpl":Lcom/mediatek/mmsdk/CameraEffectImpl;
    invoke-virtual {v1}, Lcom/mediatek/mmsdk/CameraEffectImpl;->getEffectHalListener()Lcom/mediatek/mmsdk/CameraEffectImpl$EffectHalClientListener;

    move-result-object v5

    .line 211
    .local v5, "effectListener":Lcom/mediatek/mmsdk/IEffectListener;
    const/4 v8, -0x1

    .line 213
    .local v8, "setListenerValue":I
    :try_start_1
    invoke-interface {v4, v5}, Lcom/mediatek/mmsdk/IEffectHalClient;->setEffectListener(Lcom/mediatek/mmsdk/IEffectListener;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 225
    invoke-virtual {v1, v4}, Lcom/mediatek/mmsdk/CameraEffectImpl;->setRemoteCameraEffect(Lcom/mediatek/mmsdk/IEffectHalClient;)V

    .line 227
    move-object v0, v1

    .line 229
    .local v0, "cameraEffect":Lcom/mediatek/mmsdk/CameraEffect;
    const-string/jumbo v9, "CameraEffectManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[openEffect],version = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",initValue = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 230
    const-string/jumbo v11, ",setListenerValue = "

    .line 229
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 230
    const-string/jumbo v11, ",cameraEffect = "

    .line 229
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-object v0

    .line 201
    .end local v1    # "cameraEffectImpl":Lcom/mediatek/mmsdk/CameraEffectImpl;
    .end local v5    # "effectListener":Lcom/mediatek/mmsdk/IEffectListener;
    .end local v8    # "setListenerValue":I
    .local v0, "cameraEffect":Lcom/mediatek/mmsdk/CameraEffect;
    :catch_0
    move-exception v3

    .line 202
    .local v3, "e1":Landroid/os/RemoteException;
    const-string/jumbo v9, "CameraEffectManager"

    const-string/jumbo v10, "RemoteException during init"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    new-instance v9, Lcom/mediatek/mmsdk/CameraEffectHalException;

    const/16 v10, 0xc9

    invoke-direct {v9, v10}, Lcom/mediatek/mmsdk/CameraEffectHalException;-><init>(I)V

    throw v9

    .line 214
    .end local v3    # "e1":Landroid/os/RemoteException;
    .restart local v1    # "cameraEffectImpl":Lcom/mediatek/mmsdk/CameraEffectImpl;
    .restart local v5    # "effectListener":Lcom/mediatek/mmsdk/IEffectListener;
    .restart local v8    # "setListenerValue":I
    :catch_1
    move-exception v2

    .line 215
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "CameraEffectManager"

    const-string/jumbo v10, "RemoteException during setEffectListener"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    new-instance v6, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;

    .line 218
    const/16 v9, 0x6a

    .line 217
    invoke-direct {v6, v9}, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;-><init>(I)V

    .line 219
    .local v6, "exception":Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;
    invoke-virtual {v1, v6}, Lcom/mediatek/mmsdk/CameraEffectImpl;->setRemoteCameraEffectFail(Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;)V

    .line 221
    invoke-virtual {v6}, Lcom/mediatek/mmsdk/CameraEffectHalRuntimeException;->asChecked()Lcom/mediatek/mmsdk/CameraEffectHalException;

    move-result-object v9

    throw v9
.end method


# virtual methods
.method public getSupportedVersion(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "effectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mmsdk/EffectHalVersion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/mmsdk/CameraEffectHalException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v1, "version":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/mmsdk/EffectHalVersion;>;"
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectManager;->getEffectFactory()Lcom/mediatek/mmsdk/IEffectFactory;

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mmsdk/CameraEffectManager;->mIEffectFactory:Lcom/mediatek/mmsdk/IEffectFactory;

    invoke-interface {v2, p1, v1}, Lcom/mediatek/mmsdk/IEffectFactory;->getSupportedVersion(Ljava/lang/String;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CameraEffectManager"

    const-string/jumbo v3, "RemoteException during getSupportedVersion"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEffectHalSupported()Z
    .locals 4

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 173
    .local v1, "isSupport":Z
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectManager;->getEffectFactory()Lcom/mediatek/mmsdk/IEffectFactory;
    :try_end_0
    .catch Lcom/mediatek/mmsdk/CameraEffectHalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 177
    :goto_0
    return v1

    .line 173
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Lcom/mediatek/mmsdk/CameraEffectHalException;
    const-string/jumbo v2, "CameraEffectManager"

    const-string/jumbo v3, "Current not support Effect HAl"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public openEffectHal(Lcom/mediatek/mmsdk/EffectHalVersion;Lcom/mediatek/mmsdk/CameraEffect$StateCallback;Landroid/os/Handler;)Lcom/mediatek/mmsdk/CameraEffect;
    .locals 2
    .param p1, "version"    # Lcom/mediatek/mmsdk/EffectHalVersion;
    .param p2, "callback"    # Lcom/mediatek/mmsdk/CameraEffect$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/mmsdk/CameraEffectHalException;
        }
    .end annotation

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "effect version is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    if-nez p3, :cond_1

    .line 101
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    new-instance p3, Landroid/os/Handler;

    .end local p3    # "handler":Landroid/os/Handler;
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 108
    .restart local p3    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/mmsdk/CameraEffectManager;->openEffect(Lcom/mediatek/mmsdk/EffectHalVersion;Lcom/mediatek/mmsdk/CameraEffect$StateCallback;Landroid/os/Handler;)Lcom/mediatek/mmsdk/CameraEffect;

    move-result-object v0

    return-object v0

    .line 104
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Looper doesn\'t exist in the calling thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFeatureParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/mmsdk/CameraEffectHalException;
        }
    .end annotation

    .prologue
    .line 149
    const-string/jumbo v1, "CameraEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[setFeatureParameter] featureName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 151
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    .line 152
    const-string/jumbo v2, "setFeatureParameter exception,preferences is not be allowed to null"

    .line 151
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectManager;->getMmSdkService()Lcom/mediatek/mmsdk/IMMSdkService;

    .line 157
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffectManager;->getFeatureManager()Lcom/mediatek/mmsdk/IFeatureManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/mediatek/mmsdk/IFeatureManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "CameraEffectManager"

    const-string/jumbo v2, "RemoteException during setFeatureParameter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
