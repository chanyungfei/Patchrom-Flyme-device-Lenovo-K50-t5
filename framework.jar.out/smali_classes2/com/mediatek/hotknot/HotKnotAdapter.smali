.class public final Lcom/mediatek/hotknot/HotKnotAdapter;
.super Ljava/lang/Object;
.source "HotKnotAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;,
        Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;,
        Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "com.mediatek.hotknot.action.ADAPTER_STATE_CHANGED"

.field public static final ACTION_HOTKNOT_SETTINGS:Ljava/lang/String; = "mediatek.settings.HOTKNOT_SETTINGS"

.field public static final ACTION_MESSAGE_DISCOVERED:Ljava/lang/String; = "com.mediatek.hotknot.action.MESSAGE_DISCOVERED"

.field public static final ERROR_DATA_TOO_LARGE:I = 0x1

.field public static final ERROR_SUCCESS:I = 0x0

.field public static final EXTRA_ADAPTER_STATE:Ljava/lang/String; = "com.mediatek.hotknot.extra.ADAPTER_STATE"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.mediatek.hotknot.extra.DATA"

.field static final HOTKNOT_SERVICE:Ljava/lang/String; = "hotknot_service"

.field public static final STATE_DISABLED:I = 0x1

.field public static final STATE_ENABLED:I = 0x2

.field static final TAG:Ljava/lang/String; = "HotKnot"

.field private static sDefaultService:Lcom/mediatek/hotknot/IHotKnotAdapter;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

.field mService:Lcom/mediatek/hotknot/IHotKnotAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/hotknot/HotKnotAdapter;->sLock:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mContext:Landroid/content/Context;

    .line 204
    new-instance v0, Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-direct {v0, p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;-><init>(Lcom/mediatek/hotknot/HotKnotAdapter;)V

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    .line 202
    return-void
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Lcom/mediatek/hotknot/HotKnotAdapter;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 170
    if-nez p0, :cond_0

    .line 171
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "context cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 175
    if-nez p0, :cond_1

    .line 176
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 177
    const-string/jumbo v4, "context not associated with any application (using a mock context?)"

    .line 176
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 180
    :cond_1
    sget-object v4, Lcom/mediatek/hotknot/HotKnotAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 181
    :try_start_0
    sget-object v3, Lcom/mediatek/hotknot/HotKnotAdapter;->sDefaultService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    if-nez v3, :cond_3

    .line 184
    new-instance v2, Lcom/mediatek/hotknot/HotKnotAdapter$1;

    invoke-direct {v2}, Lcom/mediatek/hotknot/HotKnotAdapter$1;-><init>()V

    .line 187
    .local v2, "sef":Lcom/mediatek/sef/proxy/FeatureProxyBase;
    const-string/jumbo v3, "hotknot_service"

    invoke-virtual {v2, v3}, Lcom/mediatek/sef/proxy/FeatureProxyBase;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 188
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_2

    monitor-exit v4

    .line 189
    return-object v5

    .line 191
    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/mediatek/hotknot/IHotKnotAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/hotknot/IHotKnotAdapter;

    move-result-object v3

    sput-object v3, Lcom/mediatek/hotknot/HotKnotAdapter;->sDefaultService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    .line 192
    sget-object v3, Lcom/mediatek/hotknot/HotKnotAdapter;->sDefaultService:Lcom/mediatek/hotknot/IHotKnotAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_3

    monitor-exit v4

    .line 193
    return-object v5

    .line 196
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "sef":Lcom/mediatek/sef/proxy/FeatureProxyBase;
    :cond_3
    :try_start_2
    new-instance v0, Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-direct {v0, p0}, Lcom/mediatek/hotknot/HotKnotAdapter;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, "adapter":Lcom/mediatek/hotknot/HotKnotAdapter;
    sget-object v3, Lcom/mediatek/hotknot/HotKnotAdapter;->sDefaultService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    iput-object v3, v0, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/IHotKnotAdapter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 198
    return-object v0

    .line 180
    .end local v0    # "adapter":Lcom/mediatek/hotknot/HotKnotAdapter;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public disable()Z
    .locals 3

    .prologue
    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/mediatek/hotknot/IHotKnotAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public enable()Z
    .locals 2

    .prologue
    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    invoke-interface {v1}, Lcom/mediatek/hotknot/IHotKnotAdapter;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    invoke-interface {v1}, Lcom/mediatek/hotknot/IHotKnotAdapter;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public setHotKnotBeamUris([Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 5
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 542
    if-nez p2, :cond_0

    .line 543
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 545
    :cond_0
    if-eqz p1, :cond_4

    .line 546
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, p1, v2

    .line 547
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Uri not allowed to be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 549
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string/jumbo v4, "file"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 551
    const-string/jumbo v4, "content"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 546
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI needs to have either scheme file or scheme content"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 557
    .end local v0    # "scheme":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v2, p2, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotContent(Landroid/app/Activity;[Landroid/net/Uri;)V

    .line 541
    return-void
.end method

.method public setHotKnotBeamUrisCallback(Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;Landroid/app/Activity;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 614
    if-nez p2, :cond_0

    .line 615
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v0, p2, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotContentCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;)V

    .line 613
    return-void
.end method

.method public setHotKnotMessage(Lcom/mediatek/hotknot/HotKnotMessage;Landroid/app/Activity;I)V
    .locals 2
    .param p1, "message"    # Lcom/mediatek/hotknot/HotKnotMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I

    .prologue
    .line 350
    if-nez p2, :cond_0

    .line 351
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v0, p2, p1, p3}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessage(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotMessage;I)V

    .line 349
    return-void
.end method

.method public varargs setHotKnotMessage(Lcom/mediatek/hotknot/HotKnotMessage;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 6
    .param p1, "message"    # Lcom/mediatek/hotknot/HotKnotMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 330
    if-nez p2, :cond_0

    .line 331
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/IllegalStateException;
    throw v1

    .line 333
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p1, v4}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessage(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotMessage;I)V

    .line 334
    array-length v3, p3

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p3, v2

    .line 335
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 336
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activities cannot contain null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 338
    :cond_1
    iget-object v4, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, p1, v5}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessage(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotMessage;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    .end local v0    # "a":Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method public setHotKnotMessageCallback(Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;Landroid/app/Activity;I)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I

    .prologue
    .line 425
    if-nez p2, :cond_0

    .line 426
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v0, p2, p1, p3}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessageCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;I)V

    .line 424
    return-void
.end method

.method public varargs setHotKnotMessageCallback(Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 6
    .param p1, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 404
    if-nez p2, :cond_0

    .line 405
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/IllegalStateException;
    throw v1

    .line 407
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p1, v4}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessageCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;I)V

    .line 408
    array-length v3, p3

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p3, v2

    .line 409
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 410
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activities cannot contain null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    :cond_1
    iget-object v4, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, p1, v5}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessageCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    .end local v0    # "a":Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method public varargs setOnHotKnotCompleteCallback(Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 5
    .param p1, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;

    .prologue
    .line 470
    if-nez p2, :cond_0

    .line 471
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/IllegalStateException;
    throw v1

    .line 473
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v2, p2, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setOnHotKnotCompleteCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;)V

    .line 474
    const/4 v2, 0x0

    array-length v3, p3

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p3, v2

    .line 475
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 476
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activities cannot contain null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 478
    :cond_1
    iget-object v4, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v4, v0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setOnHotKnotCompleteCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 474
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    .end local v0    # "a":Landroid/app/Activity;
    :cond_2
    return-void
.end method
