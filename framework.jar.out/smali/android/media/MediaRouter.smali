.class public Landroid/media/MediaRouter;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$Static;,
        Landroid/media/MediaRouter$RouteInfo;,
        Landroid/media/MediaRouter$UserRouteInfo;,
        Landroid/media/MediaRouter$RouteGroup;,
        Landroid/media/MediaRouter$RouteCategory;,
        Landroid/media/MediaRouter$CallbackInfo;,
        Landroid/media/MediaRouter$Callback;,
        Landroid/media/MediaRouter$SimpleCallback;,
        Landroid/media/MediaRouter$VolumeCallbackInfo;,
        Landroid/media/MediaRouter$VolumeCallback;,
        Landroid/media/MediaRouter$VolumeChangeReceiver;,
        Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final AVAILABILITY_FLAG_IGNORE_DEFAULT_ROUTE:I = 0x1

.field public static final CALLBACK_FLAG_PASSIVE_DISCOVERY:I = 0x8

.field public static final CALLBACK_FLAG_PERFORM_ACTIVE_SCAN:I = 0x1

.field public static final CALLBACK_FLAG_REQUEST_DISCOVERY:I = 0x4

.field public static final CALLBACK_FLAG_UNFILTERED_EVENTS:I = 0x2

.field private static final DEBUG:Z = true

.field static final ROUTE_TYPE_ANY:I = 0x800007

.field public static final ROUTE_TYPE_LIVE_AUDIO:I = 0x1

.field public static final ROUTE_TYPE_LIVE_VIDEO:I = 0x2

.field public static final ROUTE_TYPE_REMOTE_DISPLAY:I = 0x4

.field public static final ROUTE_TYPE_USER:I = 0x800000

.field private static final TAG:Ljava/lang/String; = "MediaRouter"

.field static final sRouters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/media/MediaRouter;",
            ">;"
        }
    .end annotation
.end field

.field static sStatic:Landroid/media/MediaRouter$Static;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/media/MediaRouter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/media/MediaRouter;->-assertionsDisabled:Z

    .line 700
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaRouter;->sRouters:Ljava/util/HashMap;

    .line 66
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    const-class v2, Landroid/media/MediaRouter$Static;

    monitor-enter v2

    .line 722
    :try_start_0
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    if-nez v1, :cond_0

    .line 723
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 724
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Landroid/media/MediaRouter$Static;

    invoke-direct {v1, v0}, Landroid/media/MediaRouter$Static;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    .line 725
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v1, v0}, Landroid/media/MediaRouter$Static;->startMonitoringRoutes(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "appContext":Landroid/content/Context;
    :cond_0
    monitor-exit v2

    .line 720
    return-void

    .line 721
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1060
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    .line 1061
    .local v0, "cat":Landroid/media/MediaRouter$RouteCategory;
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1062
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteCategory;->isGroupable()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, p0, Landroid/media/MediaRouter$RouteGroup;

    if-eqz v2, :cond_2

    .line 1074
    :cond_1
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1059
    :goto_0
    return-void

    .line 1066
    :cond_2
    new-instance v1, Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaRouter$RouteGroup;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 1067
    .local v1, "group":Landroid/media/MediaRouter$RouteGroup;
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    iput v2, v1, Landroid/media/MediaRouter$RouteGroup;->mSupportedTypes:I

    .line 1068
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    invoke-static {v1}, Landroid/media/MediaRouter;->dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1070
    invoke-virtual {v1, p0}, Landroid/media/MediaRouter$RouteGroup;->addRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1072
    move-object p0, v1

    .line 1064
    goto :goto_0
.end method

.method static dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1301
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1302
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1303
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 1300
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1265
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    invoke-static {p0, v0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 1264
    return-void
.end method

.method static dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 8
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p1, "oldSupportedTypes"    # I

    .prologue
    .line 1269
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 1270
    .local v2, "newSupportedTypes":I
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1276
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(I)Z

    move-result v4

    .line 1277
    .local v4, "oldVisibility":Z
    invoke-virtual {v0, v2}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(I)Z

    move-result v3

    .line 1279
    .local v3, "newVisibility":Z
    const-string/jumbo v5, "MediaRouter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dispatchRouteChanged oldVisibility: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1280
    const-string/jumbo v7, "newVisibility: "

    .line 1279
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    .line 1283
    iget-object v5, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v6, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v5, v6, p0}, Landroid/media/MediaRouter$Callback;->onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    .line 1284
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1285
    iget-object v5, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v6, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v5, v6, v2, p0}, Landroid/media/MediaRouter$Callback;->onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    .line 1288
    :cond_1
    if-nez v4, :cond_2

    if-eqz v3, :cond_3

    .line 1289
    :cond_2
    iget-object v5, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v6, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v5, v6, p0}, Landroid/media/MediaRouter$Callback;->onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    .line 1291
    :cond_3
    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    .line 1292
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1293
    iget-object v5, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v6, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v5, v6, p1, p0}, Landroid/media/MediaRouter$Callback;->onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    .line 1295
    :cond_4
    iget-object v5, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v6, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v5, v6, p0}, Landroid/media/MediaRouter$Callback;->onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 1268
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    .end local v3    # "newVisibility":Z
    .end local v4    # "oldVisibility":Z
    :cond_5
    return-void
.end method

.method static dispatchRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p1, "group"    # Landroid/media/MediaRouter$RouteGroup;
    .param p2, "index"    # I

    .prologue
    .line 1317
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1318
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1319
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1, p2}, Landroid/media/MediaRouter$Callback;->onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V

    goto :goto_0

    .line 1316
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1341
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1342
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1343
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 1340
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1309
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1310
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1311
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 1308
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteSelected(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 5
    .param p0, "type"    # I
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1244
    const-string/jumbo v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dispatchRouteSelected info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1247
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1248
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 1242
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p1, "group"    # Landroid/media/MediaRouter$RouteGroup;

    .prologue
    .line 1325
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1326
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1327
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V

    goto :goto_0

    .line 1324
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteUnselected(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 5
    .param p0, "type"    # I
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1255
    const-string/jumbo v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dispatchRouteUnselected info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1258
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1259
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 1253
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1333
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1334
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1335
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 1332
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method private findCallbackInfo(Landroid/media/MediaRouter$Callback;)I
    .locals 4
    .param p1, "cb"    # Landroid/media/MediaRouter$Callback;

    .prologue
    .line 870
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 871
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 872
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$CallbackInfo;

    .line 873
    .local v2, "info":Landroid/media/MediaRouter$CallbackInfo;
    iget-object v3, v2, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    if-ne v3, p1, :cond_0

    .line 874
    return v1

    .line 871
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    .end local v2    # "info":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private static findWifiDisplay([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 3
    .param p0, "displays"    # [Landroid/hardware/display/WifiDisplay;
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1523
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1524
    aget-object v0, p0, v1

    .line 1525
    .local v0, "d":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1526
    return-object v0

    .line 1523
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1529
    .end local v0    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static findWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;)Landroid/media/MediaRouter$RouteInfo;
    .locals 5
    .param p0, "d"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 1533
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1534
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1535
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 1536
    .local v2, "info":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1537
    return-object v2

    .line 1534
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1540
    .end local v2    # "info":Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method static getRouteAtStatic(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 1182
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static getRouteCountStatic()I
    .locals 1

    .prologue
    .line 1178
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method static getWifiDisplayStatusCode(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)I
    .locals 4
    .param p0, "d"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "wfdStatus"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    .line 1440
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1441
    const/4 v1, 0x1

    .line 1449
    .local v1, "newStatus":I
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1450
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    .line 1451
    .local v0, "activeState":I
    packed-switch v0, :pswitch_data_0

    .line 1464
    .end local v0    # "activeState":I
    :cond_0
    :goto_1
    return v1

    .line 1442
    .end local v1    # "newStatus":I
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1443
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1444
    const/4 v1, 0x3

    .restart local v1    # "newStatus":I
    goto :goto_0

    .end local v1    # "newStatus":I
    :cond_2
    const/4 v1, 0x5

    .restart local v1    # "newStatus":I
    goto :goto_0

    .line 1446
    .end local v1    # "newStatus":I
    :cond_3
    const/4 v1, 0x4

    .restart local v1    # "newStatus":I
    goto :goto_0

    .line 1453
    .restart local v0    # "activeState":I
    :pswitch_0
    const/4 v1, 0x6

    .line 1454
    goto :goto_1

    .line 1456
    :pswitch_1
    const/4 v1, 0x2

    .line 1457
    goto :goto_1

    .line 1459
    :pswitch_2
    const-string/jumbo v2, "MediaRouter"

    const-string/jumbo v3, "Active display is not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static isWifiDisplayEnabled(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Z
    .locals 1
    .param p0, "d"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "wfdStatus"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    .line 1468
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Landroid/media/MediaRouter$RouteInfo;
    .locals 3
    .param p0, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "wfdStatus"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    .line 1472
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 1473
    .local v0, "newRoute":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    .line 1474
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 1476
    const/4 v1, 0x0

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 1477
    const/4 v1, 0x1

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 1479
    invoke-static {p0, p1}, Landroid/media/MediaRouter;->getWifiDisplayStatusCode(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    .line 1480
    invoke-static {p0, p1}, Landroid/media/MediaRouter;->isWifiDisplayEnabled(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 1481
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 1482
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    .line 1483
    const v2, 0x10404b3

    .line 1482
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 1484
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 1485
    return-object v0
.end method

.method static matchesDeviceAddress(Landroid/hardware/display/WifiDisplay;Landroid/media/MediaRouter$RouteInfo;)Z
    .locals 3
    .param p0, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1029
    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1030
    .local v0, "routeHasAddress":Z
    :goto_0
    if-nez p0, :cond_0

    if-eqz v0, :cond_2

    .line 1034
    :cond_0
    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    .line 1035
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1029
    .end local v0    # "routeHasAddress":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "routeHasAddress":Z
    goto :goto_0

    .line 1031
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 1037
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method static removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 6
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1114
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1115
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v4

    .line 1116
    .local v4, "removingCat":Landroid/media/MediaRouter$RouteCategory;
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1117
    .local v1, "count":I
    const/4 v2, 0x0

    .line 1118
    .local v2, "found":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1119
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    .line 1120
    .local v0, "cat":Landroid/media/MediaRouter$RouteCategory;
    if-ne v4, v0, :cond_4

    .line 1121
    const/4 v2, 0x1

    .line 1125
    .end local v0    # "cat":Landroid/media/MediaRouter$RouteCategory;
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1127
    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    .line 1129
    :cond_1
    if-nez v2, :cond_2

    .line 1130
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1132
    :cond_2
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1113
    .end local v1    # "count":I
    .end local v2    # "found":Z
    .end local v3    # "i":I
    .end local v4    # "removingCat":Landroid/media/MediaRouter$RouteCategory;
    :cond_3
    return-void

    .line 1118
    .restart local v0    # "cat":Landroid/media/MediaRouter$RouteCategory;
    .restart local v1    # "count":I
    .restart local v2    # "found":Z
    .restart local v3    # "i":I
    .restart local v4    # "removingCat":Landroid/media/MediaRouter$RouteCategory;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static selectDefaultRouteStatic()V
    .locals 4

    .prologue
    const v3, 0x800007

    const/4 v2, 0x0

    .line 1016
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eq v0, v1, :cond_0

    .line 1017
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0}, Landroid/media/MediaRouter$Static;->isBluetoothA2dpOn()Z

    move-result v0

    .line 1016
    if-eqz v0, :cond_0

    .line 1018
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v3, v0, v2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 1014
    :goto_0
    return-void

    .line 1020
    :cond_0
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v3, v0, v2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    goto :goto_0
.end method

.method static selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V
    .locals 13
    .param p0, "types"    # I
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "explicit"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 908
    sget-boolean v10, Landroid/media/MediaRouter;->-assertionsDisabled:Z

    if-nez v10, :cond_1

    if-eqz p1, :cond_0

    move v10, v8

    :goto_0
    if-nez v10, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_0
    move v10, v9

    goto :goto_0

    .line 910
    :cond_1
    const-string/jumbo v10, "MediaRouter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "selectRouteStatic types: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " route: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " explicit: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    sget-object v10, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v4, v10, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 916
    .local v4, "oldRoute":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {p1, p0}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 917
    const-string/jumbo v8, "MediaRouter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "selectRoute ignored; cannot select route with supported types "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 918
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v10

    invoke-static {v10}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v10

    .line 917
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 918
    const-string/jumbo v10, " into route types "

    .line 917
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 919
    invoke-static {p0}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v10

    .line 917
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return-void

    .line 922
    :cond_2
    sget-object v10, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v10, v10, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v10}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 924
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    if-eqz v4, :cond_8

    iget-object v10, v4, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v10, :cond_8

    const/4 v5, 0x1

    .line 925
    .local v5, "oldRouteHasAddress":Z
    :goto_1
    iget-object v10, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v10, :cond_9

    const/4 v3, 0x1

    .line 926
    .local v3, "newRouteHasAddress":Z
    :goto_2
    const/4 v6, 0x0

    .line 927
    .local v6, "shouldConnectWfd":Z
    const/4 v7, 0x0

    .line 928
    .local v7, "shouldDisconnectWfd":Z
    if-nez v0, :cond_3

    if-nez v5, :cond_3

    if-eqz v3, :cond_5

    .line 929
    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v0, p1}, Landroid/media/MediaRouter;->matchesDeviceAddress(Landroid/hardware/display/WifiDisplay;Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 936
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v3, :cond_c

    .line 941
    :cond_5
    :goto_3
    const-string/jumbo v10, "MediaRouter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "selectRouteStatic shouldConnectWfd: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 942
    const-string/jumbo v12, " shouldDisconnectWfd: "

    .line 941
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    if-ne v4, p1, :cond_e

    .line 946
    if-nez v6, :cond_6

    if-eqz v7, :cond_d

    .line 947
    :cond_6
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_7

    .line 948
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_e

    .line 951
    :cond_7
    const-string/jumbo v8, "MediaRouter"

    const-string/jumbo v9, "selectRouteStatic route1 is already selected, skip it"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void

    .line 924
    .end local v3    # "newRouteHasAddress":Z
    .end local v5    # "oldRouteHasAddress":Z
    .end local v6    # "shouldConnectWfd":Z
    .end local v7    # "shouldDisconnectWfd":Z
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "oldRouteHasAddress":Z
    goto :goto_1

    .line 925
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "newRouteHasAddress":Z
    goto :goto_2

    .line 930
    .restart local v6    # "shouldConnectWfd":Z
    .restart local v7    # "shouldDisconnectWfd":Z
    :cond_a
    sget-object v10, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-boolean v10, v10, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    if-eqz v10, :cond_b

    .line 931
    const/4 v6, 0x1

    goto :goto_3

    .line 933
    :cond_b
    const-string/jumbo v10, "MediaRouter"

    const-string/jumbo v11, "Cannot connect to wifi displays because this process is not allowed to do so."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 937
    :cond_c
    const/4 v7, 0x1

    goto :goto_3

    .line 958
    :cond_d
    const-string/jumbo v8, "MediaRouter"

    const-string/jumbo v9, "selectRouteStatic route2 is already selected, skip it"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    return-void

    .line 964
    :cond_e
    sget-object v10, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v10, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 965
    .local v1, "btRoute":Landroid/media/MediaRouter$RouteInfo;
    if-eqz v1, :cond_10

    and-int/lit8 v10, p0, 0x1

    if-eqz v10, :cond_10

    .line 966
    if-eq p1, v1, :cond_f

    sget-object v10, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v10, v10, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-ne p1, v10, :cond_10

    .line 970
    :cond_f
    :try_start_0
    sget-object v10, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v10, v10, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v10}, Landroid/media/IAudioService;->isBluetoothA2dpOn()Z

    move-result v10

    if-nez v10, :cond_10

    .line 971
    const-string/jumbo v10, "MediaRouter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "selectRouteStatic: a2dp off with btRoute = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    sget-object v10, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v10, v10, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    if-ne p1, v1, :cond_16

    :goto_4
    invoke-interface {v10, v8}, Landroid/media/IAudioService;->setBluetoothA2dpOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :cond_10
    :goto_5
    if-eqz v6, :cond_17

    .line 980
    sget-object v8, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v8, v8, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    iget-object v9, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 985
    :cond_11
    :goto_6
    sget-object v8, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v8, p1, p2}, Landroid/media/MediaRouter$Static;->setSelectedRoute(Landroid/media/MediaRouter$RouteInfo;Z)V

    .line 987
    if-eqz v4, :cond_12

    .line 989
    const-string/jumbo v8, "MediaRouter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "selectRouteStatic oldRoute: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v8

    and-int/2addr v8, p0

    invoke-static {v8, v4}, Landroid/media/MediaRouter;->dispatchRouteUnselected(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 992
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->resolveStatusCode()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 993
    invoke-static {v4}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 996
    :cond_12
    if-eqz p1, :cond_15

    .line 998
    const-string/jumbo v8, "MediaRouter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "selectRouteStatic newRoute: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    if-nez v6, :cond_13

    if-eqz v7, :cond_18

    .line 1001
    :cond_13
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->resolveStatusCodeForWfd()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1002
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1007
    :cond_14
    :goto_7
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v8

    and-int/2addr v8, p0

    invoke-static {v8, p1}, Landroid/media/MediaRouter;->dispatchRouteSelected(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 1011
    :cond_15
    sget-object v8, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v8}, Landroid/media/MediaRouter$Static;->updateDiscoveryRequest()V

    .line 907
    return-void

    :cond_16
    move v8, v9

    .line 972
    goto :goto_4

    .line 974
    :catch_0
    move-exception v2

    .line 975
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "MediaRouter"

    const-string/jumbo v9, "Error changing Bluetooth A2DP state"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 981
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_17
    if-eqz v7, :cond_11

    .line 982
    sget-object v8, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v8, v8, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v8}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V

    goto :goto_6

    .line 1004
    :cond_18
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->resolveStatusCode()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1005
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_7
.end method

.method private static shouldShowWifiDisplay(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;)Z
    .locals 1
    .param p0, "d"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "activeDisplay"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 1435
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static systemVolumeChanged(I)V
    .locals 4
    .param p0, "newValue"    # I

    .prologue
    .line 1349
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v2, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 1350
    .local v1, "selectedRoute":Landroid/media/MediaRouter$RouteInfo;
    if-nez v1, :cond_0

    return-void

    .line 1352
    :cond_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eq v1, v2, :cond_1

    .line 1353
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-ne v1, v2, :cond_2

    .line 1354
    :cond_1
    invoke-static {v1}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1348
    :goto_0
    return-void

    .line 1355
    :cond_2
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_4

    .line 1357
    :try_start_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v2}, Landroid/media/IAudioService;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1358
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 1357
    :goto_1
    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1359
    :catch_0
    move-exception v0

    .line 1360
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaRouter"

    const-string/jumbo v3, "Error checking Bluetooth A2DP state to report volume change"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1358
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1363
    :cond_4
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method static typesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "types"    # I

    .prologue
    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 705
    const-string/jumbo v1, "ROUTE_TYPE_LIVE_AUDIO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 708
    const-string/jumbo v1, "ROUTE_TYPE_LIVE_VIDEO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 711
    const-string/jumbo v1, "ROUTE_TYPE_REMOTE_DISPLAY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    :cond_2
    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_3

    .line 714
    const-string/jumbo v1, "ROUTE_TYPE_USER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static updateRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1239
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1238
    return-void
.end method

.method private static updateWifiDisplayRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;Z)V
    .locals 6
    .param p0, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "wfdStatus"    # Landroid/hardware/display/WifiDisplayStatus;
    .param p3, "disconnected"    # Z

    .prologue
    .line 1491
    const/4 v0, 0x0

    .line 1492
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 1493
    .local v2, "newName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1494
    iput-object v2, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 1495
    const/4 v0, 0x1

    .line 1498
    :cond_0
    invoke-static {p1, p2}, Landroid/media/MediaRouter;->isWifiDisplayEnabled(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Z

    move-result v1

    .line 1499
    .local v1, "enabled":Z
    iget-boolean v3, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    if-eq v3, v1, :cond_4

    const/4 v3, 0x1

    :goto_0
    or-int/2addr v0, v3

    .line 1500
    .local v0, "changed":Z
    iput-boolean v1, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 1506
    const-string/jumbo v3, "MediaRouter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateWifiDisplayRoute changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1507
    const-string/jumbo v5, "  route.isSelected(): "

    .line 1506
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1507
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v5

    .line 1506
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1507
    const-string/jumbo v5, " route: "

    .line 1506
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    invoke-static {p1, p2}, Landroid/media/MediaRouter;->getWifiDisplayStatusCode(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCodeForWfd(I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1512
    if-eqz v0, :cond_1

    .line 1513
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1516
    :cond_1
    if-eqz v1, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1518
    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    .line 1490
    :cond_3
    return-void

    .line 1499
    .local v0, "changed":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static updateWifiDisplayStatus(Landroid/hardware/display/WifiDisplayStatus;)V
    .locals 13
    .param p0, "status"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    const/4 v12, 0x0

    .line 1369
    const-string/jumbo v9, "MediaRouter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateWifiDisplayStatus status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    .line 1374
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v5

    .line 1375
    .local v5, "displays":[Landroid/hardware/display/WifiDisplay;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 1381
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    sget-object v9, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-boolean v9, v9, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    if-nez v9, :cond_0

    .line 1382
    if-eqz v0, :cond_2

    .line 1383
    const/4 v9, 0x1

    new-array v5, v9, [Landroid/hardware/display/WifiDisplay;

    .end local v5    # "displays":[Landroid/hardware/display/WifiDisplay;
    aput-object v0, v5, v12

    .line 1392
    .end local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .restart local v5    # "displays":[Landroid/hardware/display/WifiDisplay;
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 1393
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    .line 1396
    :goto_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v9, v5

    if-ge v6, v9, :cond_7

    .line 1397
    aget-object v3, v5, v6

    .line 1399
    .local v3, "d":Landroid/hardware/display/WifiDisplay;
    const-string/jumbo v9, "MediaRouter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateWifiDisplayStatus display: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    invoke-static {v3, v0}, Landroid/media/MediaRouter;->shouldShowWifiDisplay(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1402
    invoke-static {v3}, Landroid/media/MediaRouter;->findWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v8

    .line 1403
    .local v8, "route":Landroid/media/MediaRouter$RouteInfo;
    if-nez v8, :cond_5

    .line 1404
    invoke-static {v3, p0}, Landroid/media/MediaRouter;->makeWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v8

    .line 1405
    invoke-static {v8}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1412
    :goto_3
    invoke-virtual {v3, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1413
    invoke-virtual {v8}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v9

    invoke-static {v9, v8, v12}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 1396
    .end local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1385
    .end local v3    # "d":Landroid/hardware/display/WifiDisplay;
    .end local v6    # "i":I
    .restart local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_2
    sget-object v5, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    goto :goto_0

    .line 1389
    .end local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v5    # "displays":[Landroid/hardware/display/WifiDisplay;
    :cond_3
    sget-object v5, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    .line 1390
    .restart local v5    # "displays":[Landroid/hardware/display/WifiDisplay;
    const/4 v0, 0x0

    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    goto :goto_0

    .line 1393
    .end local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_4
    const/4 v1, 0x0

    .local v1, "activeDisplayAddress":Ljava/lang/String;
    goto :goto_1

    .line 1407
    .end local v1    # "activeDisplayAddress":Ljava/lang/String;
    .restart local v3    # "d":Landroid/hardware/display/WifiDisplay;
    .restart local v6    # "i":I
    .restart local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_5
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    .line 1408
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1409
    sget-object v9, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v9, v9, Landroid/media/MediaRouter$Static;->mPreviousActiveWifiDisplayAddress:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1410
    :goto_4
    invoke-static {v8, v3, p0, v4}, Landroid/media/MediaRouter;->updateWifiDisplayRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;Z)V

    goto :goto_3

    .line 1408
    :cond_6
    const/4 v4, 0x0

    .local v4, "disconnected":Z
    goto :goto_4

    .line 1419
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "d":Landroid/hardware/display/WifiDisplay;
    .end local v4    # "disconnected":Z
    .end local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_7
    sget-object v9, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v9, v9, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v6

    .end local v6    # "i":I
    .local v7, "i":I
    :goto_5
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    if-lez v7, :cond_a

    .line 1420
    sget-object v9, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v9, v9, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaRouter$RouteInfo;

    .line 1421
    .restart local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v9, v8, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 1422
    iget-object v9, v8, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v5, v9}, Landroid/media/MediaRouter;->findWifiDisplay([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    .line 1423
    .restart local v3    # "d":Landroid/hardware/display/WifiDisplay;
    if-eqz v3, :cond_9

    invoke-static {v3, v0}, Landroid/media/MediaRouter;->shouldShowWifiDisplay(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;)Z

    move-result v9

    if-eqz v9, :cond_9

    .end local v3    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_8
    :goto_6
    move v7, v6

    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_5

    .line 1424
    .end local v7    # "i":I
    .restart local v3    # "d":Landroid/hardware/display/WifiDisplay;
    .restart local v6    # "i":I
    :cond_9
    invoke-static {v8}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_6

    .line 1431
    .end local v3    # "d":Landroid/hardware/display/WifiDisplay;
    .end local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_a
    sget-object v9, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iput-object v1, v9, Landroid/media/MediaRouter$Static;->mPreviousActiveWifiDisplayAddress:Ljava/lang/String;

    .line 1367
    return-void
.end method


# virtual methods
.method public addCallback(ILandroid/media/MediaRouter$Callback;)V
    .locals 1
    .param p1, "types"    # I
    .param p2, "cb"    # Landroid/media/MediaRouter$Callback;

    .prologue
    .line 821
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 820
    return-void
.end method

.method public addCallback(ILandroid/media/MediaRouter$Callback;I)V
    .locals 3
    .param p1, "types"    # I
    .param p2, "cb"    # Landroid/media/MediaRouter$Callback;
    .param p3, "flags"    # I

    .prologue
    .line 842
    invoke-direct {p0, p2}, Landroid/media/MediaRouter;->findCallbackInfo(Landroid/media/MediaRouter$Callback;)I

    move-result v0

    .line 843
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 844
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$CallbackInfo;

    .line 845
    .local v1, "info":Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v1, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v2, p1

    iput v2, v1, Landroid/media/MediaRouter$CallbackInfo;->type:I

    .line 846
    iget v2, v1, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    or-int/2addr v2, p3

    iput v2, v1, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    .line 851
    :goto_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v2}, Landroid/media/MediaRouter$Static;->updateDiscoveryRequest()V

    .line 840
    return-void

    .line 848
    .end local v1    # "info":Landroid/media/MediaRouter$CallbackInfo;
    :cond_0
    new-instance v1, Landroid/media/MediaRouter$CallbackInfo;

    invoke-direct {v1, p2, p1, p3, p0}, Landroid/media/MediaRouter$CallbackInfo;-><init>(Landroid/media/MediaRouter$Callback;IILandroid/media/MediaRouter;)V

    .line 849
    .restart local v1    # "info":Landroid/media/MediaRouter$CallbackInfo;
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addRouteInt(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1056
    invoke-static {p1}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1055
    return-void
.end method

.method public addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$UserRouteInfo;

    .prologue
    .line 1049
    invoke-static {p1}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1048
    return-void
.end method

.method public clearUserRoutes()V
    .locals 3

    .prologue
    .line 1095
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1096
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$RouteInfo;

    .line 1099
    .local v1, "info":Landroid/media/MediaRouter$RouteInfo;
    instance-of v2, v1, Landroid/media/MediaRouter$UserRouteInfo;

    if-nez v2, :cond_0

    instance-of v2, v1, Landroid/media/MediaRouter$RouteGroup;

    if-eqz v2, :cond_1

    .line 1100
    :cond_0
    invoke-static {v1}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1101
    add-int/lit8 v0, v0, -0x1

    .line 1095
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1094
    .end local v1    # "info":Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    return-void
.end method

.method public createRouteCategory(IZ)Landroid/media/MediaRouter$RouteCategory;
    .locals 2
    .param p1, "nameResId"    # I
    .param p2, "isGroupable"    # Z

    .prologue
    .line 1218
    new-instance v0, Landroid/media/MediaRouter$RouteCategory;

    const/high16 v1, 0x800000

    invoke-direct {v0, p1, v1, p2}, Landroid/media/MediaRouter$RouteCategory;-><init>(IIZ)V

    return-object v0
.end method

.method public createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "isGroupable"    # Z

    .prologue
    .line 1207
    new-instance v0, Landroid/media/MediaRouter$RouteCategory;

    const/high16 v1, 0x800000

    invoke-direct {v0, p1, v1, p2}, Landroid/media/MediaRouter$RouteCategory;-><init>(Ljava/lang/CharSequence;IZ)V

    return-object v0
.end method

.method public createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;
    .locals 1
    .param p1, "category"    # Landroid/media/MediaRouter$RouteCategory;

    .prologue
    .line 1196
    new-instance v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-direct {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    return-object v0
.end method

.method public getCategoryAt(I)Landroid/media/MediaRouter$RouteCategory;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1154
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteCategory;

    return-object v0
.end method

.method public getCategoryCount()I
    .locals 1

    .prologue
    .line 1143
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 739
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1174
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getRouteCount()I
    .locals 1

    .prologue
    .line 1164
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 751
    const v0, 0x800007

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 761
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 762
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget v0, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 765
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object v0

    .line 766
    :cond_0
    const/high16 v0, 0x800000

    if-ne p1, v0, :cond_1

    .line 769
    return-object v1

    .line 773
    :cond_1
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getSystemCategory()Landroid/media/MediaRouter$RouteCategory;
    .locals 1

    .prologue
    .line 746
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    return-object v0
.end method

.method public isRouteAvailable(II)Z
    .locals 5
    .param p1, "types"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 793
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 794
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 795
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 796
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 797
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_0

    .line 798
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-eq v2, v3, :cond_1

    .line 799
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 794
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 805
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    return v4
.end method

.method public rebindAsUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1235
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$Static;->rebindAsUser(I)V

    .line 1234
    return-void
.end method

.method public removeCallback(Landroid/media/MediaRouter$Callback;)V
    .locals 4
    .param p1, "cb"    # Landroid/media/MediaRouter$Callback;

    .prologue
    .line 860
    invoke-direct {p0, p1}, Landroid/media/MediaRouter;->findCallbackInfo(Landroid/media/MediaRouter$Callback;)I

    move-result v0

    .line 861
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 862
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 863
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v1}, Landroid/media/MediaRouter$Static;->updateDiscoveryRequest()V

    .line 859
    :goto_0
    return-void

    .line 865
    :cond_0
    const-string/jumbo v1, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeCallback("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): callback not registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeRouteInt(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1110
    invoke-static {p1}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1109
    return-void
.end method

.method public removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$UserRouteInfo;

    .prologue
    .line 1086
    invoke-static {p1}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1085
    return-void
.end method

.method public selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "types"    # I
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 894
    if-nez p2, :cond_0

    .line 895
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Route cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 893
    return-void
.end method

.method public selectRouteInt(ILandroid/media/MediaRouter$RouteInfo;Z)V
    .locals 0
    .param p1, "types"    # I
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p3, "explicit"    # Z

    .prologue
    .line 904
    invoke-static {p1, p2, p3}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 903
    return-void
.end method
