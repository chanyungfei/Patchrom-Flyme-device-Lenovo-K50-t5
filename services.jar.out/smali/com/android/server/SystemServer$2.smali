.class Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->startOtherServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$appIconThemeServiceF:Ltheme/content/res/AppIconThemeServices;

.field final synthetic val$appPcServiceF:Lcom/android/server/am/AppPcService;

.field final synthetic val$atlasF:Lcom/android/server/AssetAtlasService;

.field final synthetic val$audioServiceF:Lcom/android/server/audio/AudioService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

.field final synthetic val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

.field final synthetic val$momF:Lcom/mediatek/mom/MobileManagerService;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkScoreF:Lcom/android/server/NetworkScoreService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$perfServiceF:Lcom/mediatek/perfservice/IPerfServiceManager;

.field final synthetic val$recoveryF:Lcom/mediatek/recovery/RecoveryManagerService;

.field final synthetic val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;Lcom/mediatek/mom/MobileManagerService;Lcom/android/server/am/AppPcService;Ltheme/content/res/AppIconThemeServices;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/mediatek/perfservice/IPerfServiceManager;Lcom/mediatek/recovery/RecoveryManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/SystemServer;
    .param p2, "val$momF"    # Lcom/mediatek/mom/MobileManagerService;
    .param p3, "val$appPcServiceF"    # Lcom/android/server/am/AppPcService;
    .param p4, "val$appIconThemeServiceF"    # Ltheme/content/res/AppIconThemeServices;
    .param p5, "val$context"    # Landroid/content/Context;
    .param p6, "val$networkScoreF"    # Lcom/android/server/NetworkScoreService;
    .param p7, "val$networkManagementF"    # Lcom/android/server/NetworkManagementService;
    .param p8, "val$networkStatsF"    # Lcom/android/server/net/NetworkStatsService;
    .param p9, "val$networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p10, "val$connectivityF"    # Lcom/android/server/ConnectivityService;
    .param p11, "val$audioServiceF"    # Lcom/android/server/audio/AudioService;
    .param p12, "val$wallpaperF"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p13, "val$immF"    # Lcom/android/server/InputMethodManagerService;
    .param p14, "val$statusBarF"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p15, "val$locationF"    # Lcom/android/server/LocationManagerService;
    .param p16, "val$countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p17, "val$networkTimeUpdaterF"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p18, "val$commonTimeMgmtServiceF"    # Lcom/android/server/CommonTimeManagementService;
    .param p19, "val$textServiceManagerServiceF"    # Lcom/android/server/TextServicesManagerService;
    .param p20, "val$atlasF"    # Lcom/android/server/AssetAtlasService;
    .param p21, "val$inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p22, "val$telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p23, "val$mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p24, "val$mmsServiceF"    # Lcom/android/server/MmsServiceBroker;
    .param p25, "val$perfServiceF"    # Lcom/mediatek/perfservice/IPerfServiceManager;
    .param p26, "val$recoveryF"    # Lcom/mediatek/recovery/RecoveryManagerService;

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    iput-object p2, p0, Lcom/android/server/SystemServer$2;->val$momF:Lcom/mediatek/mom/MobileManagerService;

    iput-object p3, p0, Lcom/android/server/SystemServer$2;->val$appPcServiceF:Lcom/android/server/am/AppPcService;

    iput-object p4, p0, Lcom/android/server/SystemServer$2;->val$appIconThemeServiceF:Ltheme/content/res/AppIconThemeServices;

    iput-object p5, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    iput-object p7, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p8, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p9, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p10, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p11, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Lcom/android/server/audio/AudioService;

    iput-object p12, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p13, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    iput-object p14, p0, Lcom/android/server/SystemServer$2;->val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$perfServiceF:Lcom/mediatek/perfservice/IPerfServiceManager;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$recoveryF:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1408
    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v2, "Making services ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$momF:Lcom/mediatek/mom/MobileManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$momF:Lcom/mediatek/mom/MobileManagerService;

    invoke-virtual {v1}, Lcom/mediatek/mom/MobileManagerService;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$appPcServiceF:Lcom/android/server/am/AppPcService;

    if-eqz v1, :cond_1

    .line 1421
    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v2, "appPcServiceF systemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$appPcServiceF:Lcom/android/server/am/AppPcService;

    invoke-virtual {v1}, Lcom/android/server/am/AppPcService;->systemReady()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1430
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v1}, Lcom/android/server/SystemServer;->-get1(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v1

    .line 1431
    const/16 v2, 0x226

    .line 1430
    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1434
    :try_start_2
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v1}, Lcom/android/server/SystemServer;->-get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1439
    :goto_2
    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v2, "WebViewFactory preparation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer()V

    .line 1445
    :try_start_3
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$appIconThemeServiceF:Ltheme/content/res/AppIconThemeServices;

    if-eqz v1, :cond_2

    .line 1446
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$appIconThemeServiceF:Ltheme/content/res/AppIconThemeServices;

    invoke-virtual {v1}, Ltheme/content/res/AppIconThemeServices;->systemReady()V

    .line 1447
    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v2, "AppIconThemeService systemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1456
    :cond_2
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1461
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1466
    :cond_3
    :goto_5
    :try_start_6
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 1471
    :cond_4
    :goto_6
    :try_start_7
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 1476
    :cond_5
    :goto_7
    :try_start_8
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 1481
    :cond_6
    :goto_8
    :try_start_9
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 1486
    :cond_7
    :goto_9
    :try_start_a
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Lcom/android/server/audio/AudioService;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->systemReady()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 1490
    :cond_8
    :goto_a
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/Watchdog;->start()V

    .line 1494
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v1}, Lcom/android/server/SystemServer;->-get1(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v1

    .line 1495
    const/16 v2, 0x258

    .line 1494
    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1498
    :try_start_b
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemRunning()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 1503
    :cond_9
    :goto_b
    :try_start_c
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer$2;->val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 1508
    :cond_a
    :goto_c
    :try_start_d
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 1513
    :cond_b
    :goto_d
    const-string/jumbo v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string/jumbo v1, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_e
    if-nez v1, :cond_c

    .line 1514
    const-string/jumbo v1, "persist.sys.anr_sys_key"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1513
    if-eqz v1, :cond_c

    .line 1515
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/server/SystemServer$2$1;

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/server/SystemServer$2$1;-><init>(Lcom/android/server/SystemServer$2;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1523
    :cond_c
    :try_start_e
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v1}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    .line 1528
    :cond_d
    :goto_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v1}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 1533
    :cond_e
    :goto_10
    :try_start_10
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v1, :cond_f

    .line 1534
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v1}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    .line 1540
    :cond_f
    :goto_11
    :try_start_11
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v1, :cond_10

    .line 1541
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService;->systemRunning()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    .line 1546
    :cond_10
    :goto_12
    :try_start_12
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    invoke-virtual {v1}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    .line 1552
    :cond_11
    :goto_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    .line 1557
    :cond_12
    :goto_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14

    .line 1562
    :cond_13
    :goto_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15

    .line 1568
    :cond_14
    :goto_16
    :try_start_16
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v1}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_16

    .line 1574
    :cond_15
    :goto_17
    const-string/jumbo v1, "ro.mtk_perfservice_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1577
    :try_start_17
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$perfServiceF:Lcom/mediatek/perfservice/IPerfServiceManager;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$perfServiceF:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfServiceManager;->systemReady()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_17

    .line 1586
    :cond_16
    :goto_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$recoveryF:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$recoveryF:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v1}, Lcom/mediatek/recovery/RecoveryManagerService;->systemReady()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_18

    .line 1407
    :cond_17
    :goto_19
    return-void

    .line 1413
    :catch_0
    move-exception v0

    .line 1414
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "making MobileManagerService ready"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1424
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1425
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v2, "appPcServiceF systemReady failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1435
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 1436
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "observing native crashes"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1449
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 1450
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v2, "AppIconThemeService systemReady failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1457
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v0

    .line 1458
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "starting System UI"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1462
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v0

    .line 1463
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "making Network Score Service ready"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1467
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v0

    .line 1468
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "making Network Managment Service ready"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1472
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v0

    .line 1473
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "making Network Stats Service ready"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1477
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v0

    .line 1478
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "making Network Policy Service ready"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1482
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v0

    .line 1483
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "making Connectivity Service ready"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1487
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v0

    .line 1488
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying AudioService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 1499
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v0

    .line 1500
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying WallpaperService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 1504
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v0

    .line 1505
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying InputMethodService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 1509
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v0

    .line 1510
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying Location Service running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 1513
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_18
    const/4 v1, 0x1

    goto/16 :goto_e

    .line 1524
    :catch_e
    move-exception v0

    .line 1525
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying CountryDetectorService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 1529
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v0

    .line 1530
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying NetworkTimeService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 1536
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v0

    .line 1537
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying CommonTimeManagementService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 1542
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v0

    .line 1543
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying TextServicesManagerService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 1547
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v0

    .line 1548
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying AssetAtlasService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 1553
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v0

    .line 1554
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying InputManagerService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 1558
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v0

    .line 1559
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying TelephonyRegistry running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 1563
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v0

    .line 1564
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying MediaRouterService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 1569
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v0

    .line 1570
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "Notifying MmsService running"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1578
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v0

    .line 1579
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "making PerfServiceManager ready"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 1587
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v0

    .line 1588
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v2, "making RecoveryManagerService ready"

    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19
.end method
