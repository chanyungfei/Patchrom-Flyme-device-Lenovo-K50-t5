.class public Lcom/android/server/am/AppPcService;
.super Lcom/android/internal/app/IAppPcService$Stub;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPcService$AppPcServiceResources;,
        Lcom/android/server/am/AppPcService$FirewallRule;,
        Lcom/android/server/am/AppPcService$FirewallRuleSet;,
        Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;,
        Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;,
        Lcom/android/server/am/AppPcService$PermControlService;,
        Lcom/android/server/am/AppPcService$LongDistancePrefix;,
        Lcom/android/server/am/AppPcService$PmInstallApkMsg;
    }
.end annotation


# static fields
.field private static final ACTION_APPWIDGET:Ljava/lang/String; = "android.appwidget.action"

.field private static final ACTION_TELEPHONY:Ljava/lang/String; = "android.provider.Telephony"

.field private static final APPPCSERVICE_VERSION:Ljava/lang/String; = "201604121745"

.field private static final BLACKNUM_NUMBER:Ljava/lang/String; = "number"

.field private static final BLACKNUM_TYPE:Ljava/lang/String; = "type"

.field private static final BLACKNUM_TYPE_AD:I = 0x1

.field private static final BLACKNUM_TYPE_BLACKLIST:I = -0x2

.field private static final BLACKNUM_TYPE_CUSTOM:I = -0x1

.field private static final BLACKNUM_TYPE_EXPRESS:I = 0x4

.field private static final BLACKNUM_TYPE_FRAUD:I = 0x3

.field private static final BLACKNUM_TYPE_HARASSMENT:I = 0x2

.field private static final BLACKNUM_TYPE_INSURANCE_FINANCE:I = 0x7

.field private static final BLACKNUM_TYPE_NORMAL:I = 0x0

.field private static final BLACKNUM_TYPE_REALTOR:I = 0x6

.field private static final BLACKNUM_TYPE_TAKEOUT:I = 0x5

.field private static final BLOCKED_CALL_LOG_URI:Landroid/net/Uri;

.field public static final DEBUG:Z

.field private static final E2E_SYSTEM_URI:Landroid/net/Uri;

.field private static final E2E_SYSTEM_URI_STRING:Ljava/lang/String; = "content://com.lenovo.lsf.bwprovider/sys_annoy_block"

.field private static final E2E_URI:Landroid/net/Uri;

.field private static final E2E_URI_STRING:Ljava/lang/String; = "content://com.lenovo.lsf.bwprovider/usr_annoy_block"

.field private static final EXTRA_SECURITY_INTENT:Ljava/lang/String; = "security_intent"

.field private static final EXTRA_SECURITY_PACKAGE:Ljava/lang/String; = "security_package"

.field private static final EXTRA_SECURITY_TOKEN:Ljava/lang/String; = "security_token"

.field private static final HARASS_CALL_CHECK_URI:Landroid/net/Uri;

.field private static final HARASS_CALL_CHECK_URI_STRING:Ljava/lang/String; = "content://com.lenovo.security.harassintercept.HarassCallCheckProvider"

.field public static final INCOMING_TYPE:I = 0x1

.field private static final INSTRUCTION_SMS_LENGTH:I = 0x9

.field private static final INSTRUCTION_SMS_PASSWORD_LENGTH:I = 0x6

.field private static final KEY_ACCOUNT_COMP_NAME:Ljava/lang/String; = "account_comp_name"

.field private static final KEY_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field private static final KEY_DATE:Ljava/lang/String; = "date"

.field private static final KEY_FEATURES:Ljava/lang/String; = "features"

.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final MSG_BASE:I = 0x1

.field private static final MSG_PM_INSTALL_APK:I = 0x9

.field private static final MSG_SEND_ORDERED_BROADCAST_AS_USER:I = 0x7

.field private static final MSG_SET_APPLICATION_ENABLED_SETTING:I = 0x3

.field private static final MSG_SET_NOTIFICATIONS_ENABLED_FOR_PACKAGE:I = 0x4

.field private static final MSG_SET_UID_POLICY:I = 0x5

.field private static final MSG_START_ACTIVITY_FOR_RESULT:I = 0x6

.field private static final MSG_STOP_SERVICE:I = 0x2

.field private static final PRE_SECURITY_APP_LOCK:Ljava/lang/String; = "security_app_lock"

.field public static final SERVICE_NAME:Ljava/lang/String; = "lenovopermission"

.field public static final TAG:Ljava/lang/String; = "Security_AppPcService"

.field private static final mNotInRunningControlSCode:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSwitchCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSecurityPkg:Ljava/lang/String;


# instance fields
.field private final CHECK_BACKGROUND_GPS_ENABLE:Z

.field private final FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

.field private final FEATURE_NEW_HARASSMENT_INTERCEPT_ENABLE:Z

.field private final HARASSMENT_INTERCEPTION_ENABLED_MIN_VER:I

.field private final IS_SECURITY_APP_EXIST:Z

.field private final NEW_HARASSMENT_INTERCEPTION_ENABLED_MIN_VER:I

.field private final RECORD_CHECK_HISTORY_ENABLE:Z

.field private final RECORD_CHECK_HISTORY_ENABLE_MIN_VER:I

.field private mAppLockInfo:Landroid/content/pm/ActivityInfo;

.field private mBootCompleted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIAppPcPermCheckCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIAppPcPermissionListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/app/IAppPcPermissionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNetworkBlockToastTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPackageName:Ljava/lang/String;

.field private mNetworkBlockSocketServer:Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0x9

    const/4 v2, 0x1

    const/16 v5, 0xe

    const/4 v1, 0x0

    const-string/jumbo v0, "eng"

    .line 125
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/am/AppPcService;->DEBUG:Z

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    .line 267
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/AppPcService;->mNotInRunningControlSCode:Ljava/util/HashSet;

    const-string/jumbo v0, "com.lenovo.security"

    .line 279
    sput-object v0, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    .line 284
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/android/server/am/AppPcService;->mNotInRunningControlSCode:Ljava/util/HashSet;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Lcom/android/server/am/AppPcService;->mNotInRunningControlSCode:Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lcom/android/server/am/AppPcService;->mNotInRunningControlSCode:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lcom/android/server/am/AppPcService;->mNotInRunningControlSCode:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Lcom/android/server/am/AppPcService;->mNotInRunningControlSCode:Ljava/util/HashSet;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "content://com.lenovo.lsf.bwprovider/usr_annoy_block"

    .line 937
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService;->E2E_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.lenovo.lsf.bwprovider/sys_annoy_block"

    .line 939
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService;->E2E_SYSTEM_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://blocked-mms-sms/block_calllog"

    .line 955
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService;->BLOCKED_CALL_LOG_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.lenovo.security.harassintercept.HarassCallCheckProvider"

    .line 1044
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService;->HARASS_CALL_CHECK_URI:Landroid/net/Uri;

    return-void

    :cond_1
    const-string/jumbo v0, "userdebug"

    .line 125
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const v7, 0x4c4db10

    const v6, 0x4c4b400

    const v5, 0x42c6ba0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 328
    invoke-direct {p0}, Lcom/android/internal/app/IAppPcService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService;->mLastNetworkBlockToastTimes:Ljava/util/HashMap;

    .line 257
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;

    .line 258
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;

    .line 269
    iput v5, p0, Lcom/android/server/am/AppPcService;->HARASSMENT_INTERCEPTION_ENABLED_MIN_VER:I

    .line 271
    iput v7, p0, Lcom/android/server/am/AppPcService;->NEW_HARASSMENT_INTERCEPTION_ENABLED_MIN_VER:I

    .line 273
    iput v6, p0, Lcom/android/server/am/AppPcService;->RECORD_CHECK_HISTORY_ENABLE_MIN_VER:I

    .line 368
    iput-boolean v1, p0, Lcom/android/server/am/AppPcService;->mBootCompleted:Z

    .line 369
    new-instance v0, Lcom/android/server/am/AppPcService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppPcService$1;-><init>(Lcom/android/server/am/AppPcService;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1283
    new-instance v0, Lcom/android/server/am/AppPcService$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppPcService$5;-><init>(Lcom/android/server/am/AppPcService;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v3, "init AppPcService"

    .line 329
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iput-object p1, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    .line 331
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 333
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    sget-object v3, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    const-string/jumbo v4, "com.lenovo.security.applock.AppsLockActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    invoke-static {}, Lcom/lenovo/common/AppPcUtils;->init()V

    .line 348
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getVersionCodeFromSecurityApp(Landroid/content/Context;)I

    move-result v3

    const/4 v0, -0x1

    .line 349
    if-ne v3, v0, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    .line 351
    if-ge v3, v5, :cond_1

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    .line 352
    if-ge v3, v7, :cond_2

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/server/am/AppPcService;->FEATURE_NEW_HARASSMENT_INTERCEPT_ENABLE:Z

    .line 353
    if-ge v3, v6, :cond_3

    :goto_4
    iput-boolean v1, p0, Lcom/android/server/am/AppPcService;->RECORD_CHECK_HISTORY_ENABLE:Z

    .line 354
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->RECORD_CHECK_HISTORY_ENABLE:Z

    iput-boolean v0, p0, Lcom/android/server/am/AppPcService;->CHECK_BACKGROUND_GPS_ENABLE:Z

    .line 355
    return-void

    .line 337
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v3, "Bad ComponentName while traversing activity parent metadata"

    .line 336
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v0, v2

    .line 349
    goto :goto_1

    :cond_1
    move v0, v2

    .line 351
    goto :goto_2

    :cond_2
    move v0, v2

    .line 352
    goto :goto_3

    :cond_3
    move v1, v2

    .line 353
    goto :goto_4
.end method

.method static synthetic access$000(Lcom/android/server/am/AppPcService;)Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/am/AppPcService;Z)Z
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/am/AppPcService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/server/am/AppPcService;->BLOCKED_CALL_LOG_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/AppPcService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleStopService(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleSetApplicationEnabledSetting(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleSetNotificationsEnabledForPackage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleStartActivityForResult(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleSetUidPolicy(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handleSendOrderedBroadcastAsUser(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->handlePmInstallApk(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/AppPcService;)Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->CHECK_BACKGROUND_GPS_ENABLE:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/am/AppPcService;)Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->RECORD_CHECK_HISTORY_ENABLE:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/am/AppPcService;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/am/AppPcService;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/am/AppPcService;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/am/AppPcService;)Lcom/android/server/am/AppPcService$PermControlService;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/am/AppPcService;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mLastNetworkBlockToastTimes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    return-object v0
.end method

.method private checkOperationAsyncBySwitchCode(ILjava/lang/String;IIZ)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 444
    sget-boolean v0, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-nez v0, :cond_2

    :goto_0
    const/4 v0, -0x1

    .line 446
    if-eq v0, p1, :cond_3

    .line 451
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v2, p2

    :goto_1
    const-string/jumbo v0, "android"

    .line 459
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 462
    invoke-direct {p0, v2}, Lcom/android/server/am/AppPcService;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_8

    .line 466
    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService;->isSupportRunningTimePackage(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    .line 467
    if-nez v0, :cond_9

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-nez v0, :cond_f

    .line 491
    :cond_1
    return v3

    :cond_2
    const-string/jumbo v0, "Security_AppPcService"

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkOperationAsyncBySwitchCode packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";switchCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    :cond_3
    return v3

    .line 452
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-nez v0, :cond_5

    move-object v2, p2

    goto :goto_1

    .line 453
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0, p3, p4}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageName(II)Ljava/lang/String;

    move-result-object p2

    .line 454
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object v2, p2

    goto :goto_1

    .line 455
    :cond_6
    return v3

    .line 460
    :cond_7
    return v3

    .line 464
    :cond_8
    return v3

    .line 467
    :cond_9
    sget-object v0, Lcom/android/server/am/AppPcService;->mNotInRunningControlSCode:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    if-nez p1, :cond_c

    .line 471
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-nez v0, :cond_d

    .line 480
    :cond_b
    :goto_2
    return v3

    .line 468
    :cond_c
    if-eqz p1, :cond_a

    goto :goto_2

    .line 471
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    if-eqz v0, :cond_b

    .line 472
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService;->access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppPcDataManager;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 475
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckBackgroundCase(ILjava/lang/String;IIZ)Z

    move-result v0

    return v0

    .line 473
    :cond_e
    return v3

    .line 482
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService;->access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppPcDataManager;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 486
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckCase(ILjava/lang/String;IIZ)Z

    move-result v0

    return v0

    .line 484
    :cond_10
    return v3
.end method

.method private checkPermission()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 607
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 610
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v4, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 611
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 613
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 615
    return v0
.end method

.method private getControllableSystemApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "/etc/com_lenovo_security/controllable_system_apps"

    .line 1317
    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService;->parseFileByLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 1363
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 1366
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "Security_AppPcService"

    .line 1367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 1368
    return-object v0
.end method

.method private handlePmInstallApk(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 906
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppPcService$PmInstallApkMsg;

    .line 910
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    .line 911
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string/jumbo v3, "LenovoSecurityLocalServerSocket"

    invoke-direct {v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 913
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 916
    iget-object v3, v0, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mPath:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 918
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 919
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const-string/jumbo v3, "Security_AppPcService"

    .line 920
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 922
    iput v2, v0, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mResult:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 928
    iget-object v1, v0, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 929
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 930
    monitor-exit v1

    .line 932
    :goto_0
    return-void

    .line 930
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 931
    :catch_0
    move-exception v1

    .line 926
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 928
    iget-object v1, v0, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 929
    :try_start_3
    iget-object v0, v0, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 930
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 931
    :catchall_2
    move-exception v1

    .line 928
    iget-object v2, v0, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 929
    :try_start_4
    iget-object v0, v0, Lcom/android/server/am/AppPcService$PmInstallApkMsg;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 930
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method private handleSendOrderedBroadcastAsUser(Landroid/os/Message;)V
    .locals 10

    .prologue
    const-string/jumbo v1, "Security_AppPcService"

    const-string/jumbo v2, "handleSendOrderedBroadcastAsUser resultReceiver"

    .line 695
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;

    move-object v6, v0

    .line 699
    new-instance v5, Lcom/android/server/am/AppPcService$3;

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/AppPcService$3;-><init>(Lcom/android/server/am/AppPcService;Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)V

    .line 714
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$500(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Landroid/content/Intent;

    move-result-object v2

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mUser:Landroid/os/UserHandle;
    invoke-static {v6}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$600(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Landroid/os/UserHandle;

    move-result-object v3

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mReceiverPermission:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$700(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mInitialCode:I
    invoke-static {v6}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$800(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)I

    move-result v7

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mInitialData:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$900(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Ljava/lang/String;

    move-result-object v8

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mInitialExtras:Landroid/os/Bundle;
    invoke-static {v6}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$1000(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Landroid/os/Bundle;

    move-result-object v9

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :goto_0
    return-void

    .line 719
    :catch_0
    move-exception v1

    .line 718
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleSetApplicationEnabledSetting(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 649
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 650
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 651
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 652
    iget-object v3, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 654
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleSetNotificationsEnabledForPackage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 732
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 733
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 734
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eq v3, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string/jumbo v3, "notification"

    .line 735
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 737
    invoke-interface {v3, v0, v2, v1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 739
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleSetUidPolicy(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 753
    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 754
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 755
    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    .line 756
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :goto_0
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 758
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleShowNetworkBlockToast(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 1274
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1275
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1276
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1277
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->permission_block_network:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1278
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    :goto_0
    return-void

    .line 1281
    :catch_0
    move-exception v0

    .line 1280
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleStartActivityForResult(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 772
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 773
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 774
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_0
    return-void

    .line 777
    :catch_0
    move-exception v0

    .line 776
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleStopService(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 632
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 633
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v0

    .line 635
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isSupportRunningTimePackage(Landroid/content/pm/PackageInfo;)Z
    .locals 2

    .prologue
    .line 1356
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    .line 1359
    const/4 v0, 0x1

    return v0

    .line 1357
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private parseFileByLines(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1329
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string/jumbo v3, ""

    .line 1338
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-nez v3, :cond_2

    .line 1345
    if-nez v1, :cond_3

    .line 1350
    :cond_0
    :goto_1
    return-object v2

    .line 1324
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1332
    :catch_0
    move-exception v0

    .line 1331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 1339
    :cond_2
    :try_start_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1349
    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "Security_AppPcService"

    .line 1342
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1345
    if-eqz v1, :cond_0

    .line 1346
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1348
    :catch_2
    move-exception v0

    goto :goto_1

    .line 1346
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 1348
    :catch_3
    move-exception v0

    goto :goto_1

    .line 1349
    :catchall_0
    move-exception v0

    .line 1345
    if-nez v1, :cond_4

    .line 1348
    :goto_2
    throw v0

    .line 1346
    :cond_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 1348
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private switchPermissionCode(I)I
    .locals 2

    .prologue
    .line 1377
    sget-object v0, Lcom/android/server/am/AppPcService;->mSwitchCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1378
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1204
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    .line 1205
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1206
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1207
    invoke-static {v0}, Lcom/android/server/am/AppPcService$LongDistancePrefix;->queryLongDistacePrefix(Ljava/lang/String;)I

    move-result v1

    .line 1208
    if-nez v1, :cond_1

    .line 1211
    :goto_0
    if-nez v0, :cond_2

    .line 1212
    :cond_0
    return-object v4

    .line 1209
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1211
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1214
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_4

    const-string/jumbo v1, "0"

    .line 1222
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1227
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-gt v1, v2, :cond_7

    .line 1231
    :cond_3
    :goto_1
    return-object v0

    :cond_4
    const-string/jumbo v1, "+86"

    .line 1216
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    .line 1219
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v1, 0x3

    .line 1217
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "0086"

    .line 1224
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 1225
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1229
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public accessLockPattern(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 600
    if-nez p1, :cond_0

    .line 604
    :goto_0
    return-void

    .line 601
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public addBlockedCallLog(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1011
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-eqz v0, :cond_1

    .line 1016
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "Security_AppPcService"

    const-string/jumbo v2, "addBlockedCallLog() Enter!"

    .line 1018
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "number"

    .line 1020
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "type"

    .line 1021
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "features"

    .line 1022
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1023
    cmp-long v1, v6, p3

    if-nez v1, :cond_0

    .line 1024
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    :cond_0
    const-string/jumbo v1, "date"

    .line 1026
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "duration"

    .line 1027
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "subscription_component_name"

    .line 1028
    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "subscription_id"

    .line 1029
    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "new"

    .line 1030
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "is_read"

    .line 1031
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1033
    new-instance v1, Lcom/android/server/am/AppPcService$4;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/AppPcService$4;-><init>(Lcom/android/server/am/AppPcService;Landroid/content/ContentValues;)V

    invoke-virtual {v1}, Lcom/android/server/am/AppPcService$4;->start()V

    .line 1041
    return-void

    :cond_1
    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v1, "addBlockedCallLog(): Interception Disabled!"

    .line 1012
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    return-void
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 781
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "appops"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v2, 0xb

    .line 786
    invoke-virtual {v0, v2, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    .line 782
    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    .line 786
    goto :goto_0

    :catch_0
    move-exception v0

    .line 789
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 791
    return v1
.end method

.method public changeAppPcPermissionBackgroundStatus(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    const-string/jumbo v0, "AppPcPermissionItem"

    .line 897
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcPermissionItem;

    .line 898
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermControlService;->access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/AppPcDataManager;->changeAppPcPermissionBackgroundStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z

    move-result v0

    return v0
.end method

.method public changeAppPcPermissionStatus(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    const-string/jumbo v0, "AppPcPermissionItem"

    .line 892
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcPermissionItem;

    .line 893
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermControlService;->access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/AppPcDataManager;->changeAppPcPermissionStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z

    move-result v0

    return v0
.end method

.method public checkAppLock(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 539
    if-nez p1, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-object p1

    .line 539
    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 540
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 541
    if-eqz v6, :cond_0

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService;->access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppPcDataManager;->isAnyAppLockOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Security_AppPcService"

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkAppLock appInfo.packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mLockPackageName;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 546
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 547
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/AppPcService$PermControlService;->getUidByPackageName(Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/android/server/am/AppPcService$PermControlService;->access$300(Lcom/android/server/am/AppPcService$PermControlService;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 548
    if-nez v1, :cond_5

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    const/16 v1, 0x16

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckCase(ILjava/lang/String;IIZ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "security_app_lock"

    .line 554
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 561
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    const-string/jumbo v0, "security_app_lock"

    .line 562
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 545
    :cond_4
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 548
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_3

    const-string/jumbo v2, "Security_AppPcService"

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkAppLock oldUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ";uid.intValue()="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return-object p1

    :cond_6
    const-string/jumbo v0, "Security_AppPcService"

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkAppLock lock appInfo.packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "security_package"

    .line 556
    iget-object v1, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "security_intent"

    .line 557
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 558
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 559
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public checkAppLockForTask(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 575
    if-nez p1, :cond_1

    .line 595
    :cond_0
    return-object v6

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mAppLockInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService;->access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppPcDataManager;->isAnyAppLockOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Security_AppPcService"

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkAppLockForTask packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mLockPackageName;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sget-object v0, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 583
    iput-object v6, p0, Lcom/android/server/am/AppPcService;->mLockPackageName:Ljava/lang/String;

    .line 585
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    const/16 v1, 0x16

    const/4 v5, 0x1

    move-object v2, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckCase(ILjava/lang/String;IIZ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Security_AppPcService"

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkAppLockForTask lock appInfo.packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 588
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    const-string/jumbo v3, "com.lenovo.security.applock.AppsLockActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "security_package"

    .line 589
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "security_token"

    .line 590
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 591
    return-object v0

    .line 580
    :cond_2
    return-object v6
.end method

.method public checkAutoStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 495
    sget-boolean v1, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-nez v1, :cond_1

    .line 497
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    if-eqz v1, :cond_2

    .line 500
    if-nez p1, :cond_3

    :cond_0
    return v5

    :cond_1
    const-string/jumbo v1, "Security_AppPcService"

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkAutoStart packageName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ";callerApp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ";action="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    :cond_2
    return v5

    .line 500
    :cond_3
    if-eqz p3, :cond_0

    const-string/jumbo v1, "android.appwidget.action"

    .line 501
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "android.provider.Telephony"

    .line 502
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 512
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-nez v0, :cond_9

    .line 534
    :cond_5
    return v5

    .line 501
    :cond_6
    return v5

    .line 503
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v1

    .line 505
    if-nez v1, :cond_8

    .line 508
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 509
    return v5

    .line 506
    :cond_8
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 513
    :cond_9
    if-nez p2, :cond_b

    .line 525
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0, p1, v3, v3}, Lcom/android/server/am/AppPcService$PermControlService;->inWhiteList(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 526
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    const/16 v1, 0x11

    move-object v2, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckCase(ILjava/lang/String;IIZ)Z

    move-result v0

    .line 528
    if-nez v0, :cond_d

    .line 531
    :goto_3
    return v0

    .line 514
    :cond_b
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 518
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # invokes: Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService;->access$200(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/lang/String;

    move-result-object v0

    .line 519
    if-eqz v0, :cond_a

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "Security_AppPcService"

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkAutoStart top visible packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";callerApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v1, "checkAutoStart the callerApp is the same as the starting App"

    .line 515
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return v5

    :cond_d
    const-string/jumbo v1, "Security_AppPcService"

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAutoStart granted packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";callerApp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public checkIncomingCall(Landroid/content/Intent;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 1054
    iget-boolean v1, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "number"

    .line 1060
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "features"

    .line 1061
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v1, "date"

    const-wide/16 v4, 0x0

    .line 1062
    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v1, "account_id"

    .line 1063
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "account_comp_name"

    .line 1064
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "Security_AppPcService"

    .line 1066
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkIncomingCall(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-boolean v1, p0, Lcom/android/server/am/AppPcService;->FEATURE_NEW_HARASSMENT_INTERCEPT_ENABLE:Z

    if-nez v1, :cond_2

    .line 1091
    invoke-virtual {p0, v2}, Lcom/android/server/am/AppPcService;->isBlacklistNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1097
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "Security_AppPcService"

    const-string/jumbo v2, "checkIncomingCall(): Interception Disabled!"

    .line 1055
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    return v0

    .line 1071
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "Security_AppPcService"

    const-string/jumbo v10, "checkIncomingCall(): FEATURE_NEW_HARASSMENT_INTERCEPT_ENABLE"

    .line 1073
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "number"

    .line 1075
    invoke-virtual {v1, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "features"

    .line 1076
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "date"

    .line 1077
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "account_comp_name"

    .line 1078
    invoke-virtual {v1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "account_id"

    .line 1079
    invoke-virtual {v1, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/AppPcService;->HARASS_CALL_CHECK_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1083
    if-eqz v1, :cond_0

    move v0, v8

    .line 1084
    goto :goto_0

    .line 1088
    :catch_0
    move-exception v1

    .line 1087
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    move-object v1, p0

    .line 1092
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppPcService;->addBlockedCallLog(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 1093
    goto :goto_0
.end method

.method public checkMMSPushIntent(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1140
    iget-boolean v1, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Security_AppPcService"

    .line 1145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LSC MMS Intercept: checkMMSPushIntent(): number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppPcService;->isBlacklistNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "Security_AppPcService"

    const-string/jumbo v2, "LSC MMS Intercept: Is Normal number!!"

    .line 1156
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "Security_AppPcService"

    const-string/jumbo v2, "checkMMSPushIntent(): Interception Disabled!"

    .line 1141
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    return v0

    :cond_1
    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v1, "LSC MMS Intercept: Is blacklist number!!"

    .line 1148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    const-string/jumbo v2, "com.lenovo.security.harassintercept.PrivilegedBlacklistMessageReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "com.lenovo.ideafriend.BLACKLIST.MMS"

    .line 1151
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1154
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkOperation(IIILcom/android/internal/app/IAppPcCallback;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 391
    return v0
.end method

.method public checkOperationAsync(ILjava/lang/String;II)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 396
    sget-boolean v0, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-nez v0, :cond_1

    :goto_0
    const/16 v0, 0x2710

    .line 399
    if-lt p3, v0, :cond_2

    .line 403
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->switchPermissionCode(I)I

    move-result v1

    const/4 v0, -0x1

    .line 404
    if-eq v0, v1, :cond_3

    .line 409
    if-nez v1, :cond_4

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-nez v0, :cond_5

    .line 415
    :goto_1
    return v5

    :cond_1
    const-string/jumbo v0, "Security_AppPcService"

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkOperationAsync packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :cond_2
    return v5

    .line 406
    :cond_3
    return v5

    .line 409
    :cond_4
    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 418
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppPcService;->checkOperationAsyncBySwitchCode(ILjava/lang/String;IIZ)Z

    move-result v0

    return v0

    .line 413
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/server/am/AppPcService$PermControlService;->recordCheckHistory(ILjava/lang/String;II)V

    goto :goto_1
.end method

.method public checkOperationAsyncBySwitchCode(ILjava/lang/String;II)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x2710

    .line 423
    if-lt p3, v0, :cond_1

    .line 427
    if-nez p1, :cond_2

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 429
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppPcService;->checkOperationAsyncBySwitchCode(ILjava/lang/String;IIZ)Z

    move-result v0

    return v0

    .line 424
    :cond_1
    return v6

    .line 427
    :cond_2
    if-eqz p1, :cond_0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v6

    .line 431
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppPcService;->checkOperationAsyncBySwitchCode(ILjava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method public checkSMSIntent(Landroid/content/Intent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1106
    iget-boolean v1, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-eqz v1, :cond_1

    .line 1111
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1112
    :cond_0
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 1114
    if-nez v1, :cond_3

    .line 1132
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "Security_AppPcService"

    const-string/jumbo v2, "checkSMSIntent(): Interception Disabled!"

    .line 1107
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    return v0

    .line 1111
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.MOMS_SMS_RECEIVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1115
    :cond_3
    aget-object v2, v1, v0

    .line 1116
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Security_AppPcService"

    .line 1117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sms Intercept: number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-virtual {p0, v2}, Lcom/android/server/am/AppPcService;->isBlacklistNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v1, "Sms Intercept: Is blacklist number or Anti-theft Instruction!!"

    .line 1120
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;

    const-string/jumbo v2, "com.lenovo.security.harassintercept.PrivilegedBlacklistMessageReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "com.lenovo.ideafriend.BLACKLIST.SMS"

    .line 1122
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1125
    const/4 v0, 0x1

    goto :goto_0

    .line 1119
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppPcService;->isInstructionSMS([Landroid/telephony/SmsMessage;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "Security_AppPcService"

    const-string/jumbo v2, "Sms Intercept: Is Normal number!!"

    .line 1127
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearCheckHistorys(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-nez v0, :cond_0

    .line 1173
    :goto_0
    return-void

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->clearCheckHistorys(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAppPcPermissionItemsByCode(I)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService;->access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppPcDataManager;->getAppPcPermissionItemsByCode(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getAppPcPermissionItemsByPackageName(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService;->access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppPcDataManager;->getAppPcPermissionItemsByPackageName(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getCheckHistorys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1163
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-nez v0, :cond_0

    .line 1166
    return-object v1

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0}, Lcom/android/server/am/AppPcService$PermControlService;->getCheckHistorys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public inWhiteList(ILjava/lang/String;II)Z
    .locals 3

    .prologue
    .line 379
    sget-boolean v0, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-nez v0, :cond_1

    .line 381
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-nez v0, :cond_2

    .line 385
    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "Security_AppPcService"

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "inWhiteLis packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/am/AppPcService$PermControlService;->inWhiteList(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public isBlacklistNumber(Ljava/lang/String;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 961
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-eqz v0, :cond_1

    .line 967
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 969
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v9, v7

    :cond_0
    const/4 v0, -0x2

    .line 1001
    if-eq v0, v9, :cond_8

    .line 1005
    return v7

    :cond_1
    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v1, "isBlacklistNumber(): Interception Disabled!"

    .line 962
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return v7

    :cond_2
    const/4 v0, 0x2

    .line 970
    new-array v13, v0, [Landroid/net/Uri;

    sget-object v0, Lcom/android/server/am/AppPcService;->E2E_URI:Landroid/net/Uri;

    aput-object v0, v13, v7

    sget-object v0, Lcom/android/server/am/AppPcService;->E2E_SYSTEM_URI:Landroid/net/Uri;

    aput-object v0, v13, v11

    move v6, v7

    move v8, v7

    move v9, v7

    .line 973
    :goto_0
    array-length v0, v13

    if-ge v6, v0, :cond_0

    if-nez v8, :cond_0

    .line 975
    aget-object v1, v13, v6

    .line 978
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "type"

    aput-object v4, v2, v3

    const-string/jumbo v3, "number=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 984
    if-nez v1, :cond_5

    .line 994
    :cond_3
    if-nez v1, :cond_6

    :cond_4
    move v1, v8

    move v2, v9

    .line 973
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v8, v1

    move v9, v2

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    .line 985
    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 986
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "type"

    .line 987
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    move v8, v11

    .line 988
    goto :goto_2

    .line 995
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_3
    move v1, v8

    move v2, v9

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v10

    :goto_4
    :try_start_2
    const-string/jumbo v2, "Security_AppPcService"

    .line 992
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BlacklistNumber Query failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 994
    if-eqz v1, :cond_4

    .line 995
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v10

    .line 994
    :goto_5
    if-nez v1, :cond_7

    .line 995
    :goto_6
    throw v0

    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 1002
    :cond_8
    return v11

    .line 995
    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method public isInControllableSystemApps(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1320
    invoke-static {p1}, Lcom/lenovo/common/AppPcUtils;->isInControllableSystemApps(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInstructionSMS([Landroid/telephony/SmsMessage;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1238
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->FEATURE_HARASSMENT_INTERCEPT_ENABLE:Z

    if-eqz v0, :cond_1

    .line 1243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1246
    array-length v3, p1

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_2

    .line 1251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Security_AppPcService"

    .line 1252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isInstructionSMS(): messageBody="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-eq v3, v2, :cond_4

    .line 1268
    :cond_0
    :goto_1
    return v1

    :cond_1
    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v2, "isInstructionSMS(): Interception Disabled!"

    .line 1239
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    return v1

    .line 1246
    :cond_2
    aget-object v4, p1, v0

    .line 1247
    if-nez v4, :cond_3

    .line 1246
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1248
    :cond_3
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/4 v2, 0x6

    .line 1254
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Security_AppPcService"

    .line 1255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isInstructionSMS(): digits="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1258
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "#xh"

    .line 1259
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1264
    :cond_5
    const/4 v0, 0x1

    return v0

    :cond_6
    const-string/jumbo v2, "#bf"

    .line 1259
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "#sd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "#bj"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "#dw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1
.end method

.method public maybeNetworkBlock(I)V
    .locals 1

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    if-eqz v0, :cond_0

    .line 799
    :try_start_0
    new-instance v0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;-><init>(Lcom/android/server/am/AppPcService;I)V

    invoke-virtual {v0}, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :goto_0
    return-void

    .line 796
    :cond_0
    return-void

    .line 802
    :catch_0
    move-exception v0

    .line 801
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public pmInstallApk(IILjava/lang/String;)I
    .locals 5

    .prologue
    :try_start_0
    const-string/jumbo v0, "com.lenovo.security.packageinstall.SilentInstallProvider"

    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/pminstall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 810
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "UID"

    .line 811
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "PID"

    .line 812
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "PATH"

    .line 813
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 816
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    .line 818
    return v0
.end method

.method public pmInstallApkWithCode(IILjava/lang/String;)I
    .locals 5

    .prologue
    :try_start_0
    const-string/jumbo v0, "com.lenovo.security.packageinstall.SilentInstallProvider"

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/pminstall2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 826
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "UID"

    .line 827
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "PID"

    .line 828
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "PATH"

    .line 829
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 832
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const v0, 0xffff

    .line 834
    return v0
.end method

.method public registerAppPcPermCheckCallback(Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;)V
    .locals 2

    .prologue
    .line 838
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;

    monitor-enter v1

    .line 839
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 840
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 841
    monitor-exit v1

    .line 843
    return-void

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerPermissionListener(Lcom/android/internal/app/IAppPcPermissionListener;)V
    .locals 3

    .prologue
    .line 852
    if-eqz p1, :cond_0

    .line 855
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 856
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;

    monitor-enter v1

    .line 857
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 858
    monitor-exit v1

    .line 860
    return-void

    .line 853
    :cond_0
    return-void

    .line 858
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v1, "sendOrderedBroadcastAsUser"

    .line 664
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    if-eqz p4, :cond_0

    .line 670
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    new-instance v4, Lcom/android/server/am/AppPcService$2;

    invoke-direct {v4, p0, p4}, Lcom/android/server/am/AppPcService$2;-><init>(Lcom/android/server/am/AppPcService;Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;)V

    .line 690
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 692
    return-void

    :cond_0
    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v1, "sendOrderedBroadcastAsUser resultCallback = null"

    .line 667
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-void

    :cond_1
    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v1, "sendOrderedBroadcastAsUser checkPermission = false"

    .line 671
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-void
.end method

.method public setAppPermissionResult(ILjava/lang/String;II)V
    .locals 3

    .prologue
    const-string/jumbo v0, "Security_AppPcService"

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAppPermissionResult uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    if-nez v0, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService;->IS_SECURITY_APP_EXIST:Z

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/AppPcService$PermControlService;->setAppPermissionResult(ILjava/lang/String;II)V

    goto :goto_0
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 645
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 646
    return-void

    .line 642
    :cond_0
    return-void
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 724
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    if-nez p3, :cond_1

    :goto_0
    invoke-virtual {v1, v2, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 728
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 729
    return-void

    .line 725
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 727
    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 2

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 749
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 750
    return-void

    .line 746
    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 764
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 768
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 769
    return-void

    .line 765
    :cond_0
    return-void
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 620
    if-eqz p1, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/android/server/am/AppPcService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 628
    const/4 v0, 0x1

    return v0

    .line 621
    :cond_0
    return v1

    .line 624
    :cond_1
    return v1
.end method

.method public systemReady()V
    .locals 3

    .prologue
    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v1, "systemReady"

    .line 357
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService;

    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppPcService$PermControlService;-><init>(Lcom/android/server/am/AppPcService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;

    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v1, "AppPcService Version:201604121745"

    .line 360
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v1, 0x3e8

    .line 364
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    return-void
.end method

.method public unregisterAppPcPermCheckCallback(Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;)V
    .locals 2

    .prologue
    .line 846
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;

    monitor-enter v1

    .line 847
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 848
    monitor-exit v1

    .line 849
    return-void

    .line 848
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterPermissionListener(Lcom/android/internal/app/IAppPcPermissionListener;)V
    .locals 3

    .prologue
    .line 863
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 864
    iget-object v1, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;

    monitor-enter v1

    .line 865
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 866
    monitor-exit v1

    .line 867
    return-void

    .line 866
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
