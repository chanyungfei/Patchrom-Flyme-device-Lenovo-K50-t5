.class Lcom/mediatek/mom/PermissionController;
.super Lcom/mediatek/mom/MultiUserControllerBase;
.source "PermissionController.java"

# interfaces
.implements Lcom/mediatek/mom/IPermissionController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/PermissionController$1;,
        Lcom/mediatek/mom/PermissionController$PreBootReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PREBOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_PREBOOT_IPO"

.field private static DEBUG:Z = false

.field public static final ID:I = 0x0

.field public static final PARAM_DATA:Ljava/lang/String; = "param_data"

.field public static final PARAM_FLAG:Ljava/lang/String; = "param_flag"

.field public static final PARAM_PACKAGE:Ljava/lang/String; = "param_package"

.field public static final PARAM_PERMISSION_RECORD:Ljava/lang/String; = "param_permission_record"

.field public static final PARAM_UID:Ljava/lang/String; = "param_uid"

.field public static final TAG:Ljava/lang/String; = "PermissionController"

.field private static mInstance:Lcom/mediatek/mom/ControllerBase;


# instance fields
.field private mAM:Landroid/app/IActivityManager;

.field private mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

.field private mCacheInitDone:Z

.field private mContext:Landroid/content/Context;

.field mFilter:Landroid/content/IntentFilter;

.field private mHistoryHelper:Lcom/mediatek/mom/PermissionHistoryHelper;

.field private mIdentityHelper:Lcom/mediatek/mom/ManagerIdentityHelper;

.field private mManagerCtlTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mom/ManagerControlToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPM:Landroid/content/pm/IPackageManager;

.field private mPackageController:Lcom/mediatek/mom/PackageController;

.field private mPendingSetting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private mUM:Landroid/os/IUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/mom/PermissionController;->DEBUG:Z

    const/4 v0, 0x0

    .line 91
    sput-object v0, Lcom/mediatek/mom/PermissionController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    return-void
.end method

.method private constructor <init>(Lcom/mediatek/mom/PackageController;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Lcom/mediatek/mom/MultiUserControllerBase;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mAM:Landroid/app/IActivityManager;

    .line 85
    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mPM:Landroid/content/pm/IPackageManager;

    .line 86
    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mUM:Landroid/os/IUserManager;

    .line 87
    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mContext:Landroid/content/Context;

    .line 88
    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

    .line 89
    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mHistoryHelper:Lcom/mediatek/mom/PermissionHistoryHelper;

    .line 90
    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mIdentityHelper:Lcom/mediatek/mom/ManagerIdentityHelper;

    .line 92
    iput-boolean v1, p0, Lcom/mediatek/mom/PermissionController;->mCacheInitDone:Z

    .line 93
    iput-boolean v1, p0, Lcom/mediatek/mom/PermissionController;->mSystemReady:Z

    .line 94
    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mPackageController:Lcom/mediatek/mom/PackageController;

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mFilter:Landroid/content/IntentFilter;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mPendingSetting:Ljava/util/Map;

    .line 105
    invoke-static {}, Lcom/mediatek/mom/PermissionRecordHelper;->getInstance()Lcom/mediatek/mom/PermissionRecordHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

    .line 106
    invoke-static {}, Lcom/mediatek/mom/PermissionHistoryHelper;->getInstance()Lcom/mediatek/mom/PermissionHistoryHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mHistoryHelper:Lcom/mediatek/mom/PermissionHistoryHelper;

    .line 107
    invoke-static {}, Lcom/mediatek/mom/ManagerIdentityHelper;->getInstance()Lcom/mediatek/mom/ManagerIdentityHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mIdentityHelper:Lcom/mediatek/mom/ManagerIdentityHelper;

    .line 108
    invoke-static {}, Lcom/mediatek/mom/PermissionController;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mPM:Landroid/content/pm/IPackageManager;

    .line 109
    invoke-static {}, Lcom/mediatek/mom/PermissionController;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mAM:Landroid/app/IActivityManager;

    .line 110
    invoke-static {}, Lcom/mediatek/mom/PermissionController;->getUserManagerService()Landroid/os/IUserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/PermissionController;->mUM:Landroid/os/IUserManager;

    .line 111
    iput-object p1, p0, Lcom/mediatek/mom/PermissionController;->mPackageController:Lcom/mediatek/mom/PackageController;

    .line 114
    invoke-direct {p0}, Lcom/mediatek/mom/PermissionController;->initCacheForAllUser()V

    .line 115
    return-void
.end method

.method public static PRINT_DEBUG_LOG(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 824
    sget-boolean v0, Lcom/mediatek/mom/PermissionController;->DEBUG:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 831
    :goto_0
    return-void

    .line 825
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PermissionController"

    .line 829
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static PRINT_DEBUG_LOG(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 820
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(IILjava/lang/String;Ljava/lang/String;)V

    .line 821
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mom/PermissionController;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/mom/PermissionController;->requestAttachment()V

    return-void
.end method

.method private broadcastAttachment(III)V
    .locals 3

    .prologue
    .line 545
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mom.action.MGR_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mom.action.extra.status"

    .line 546
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "mom.action.extra.uid"

    .line 547
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    iget-object v1, p0, Lcom/mediatek/mom/PermissionController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 549
    return-void
.end method

.method private checkPermission(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 674
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/mom/PermissionController;->getManagerApListener(I)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mPM:Landroid/content/pm/IPackageManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_1

    .line 686
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 690
    iget-object v1, p0, Lcom/mediatek/mom/PermissionController;->mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2, p1, v0}, Lcom/mediatek/mom/PermissionRecordHelper;->getStrictPermissionForUid(ILjava/lang/String;[Ljava/lang/String;)Lcom/mediatek/common/mom/PermissionRecord;

    move-result-object v0

    .line 691
    if-nez v0, :cond_3

    const-string/jumbo v0, "checkPermission UNMONITORED"

    .line 694
    invoke-static {p2, p1, v0}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 696
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/PermissionController;->onPermissionCheckResultIfExist(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    move v0, v6

    .line 703
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "checkPermission GRANTED because listener from MOMA is null"

    .line 675
    invoke-static {p2, p1, v0}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 676
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/PermissionController;->onPermissionCheckResultIfExist(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    .line 677
    return v6

    :cond_1
    const-string/jumbo v0, "checkPermission UNMONITORED"

    .line 682
    invoke-static {p2, p1, v0}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 683
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/PermissionController;->onPermissionCheckResultIfExist(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    .line 684
    return v6

    :cond_2
    const/4 v1, 0x0

    .line 687
    aget-object v1, v0, v1

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/PermissionController;->checkPermission(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I

    move-result v0

    goto :goto_0

    .line 692
    :cond_3
    iget-object v1, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/PermissionController;->checkPermission(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    const-string/jumbo v0, "getPackagesForUid() faild!"

    .line 700
    invoke-static {p2, p1, v0}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-direct {p0, p4, p1, p2, v6}, Lcom/mediatek/mom/PermissionController;->onPermissionCheckResultIfExist(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    move v0, v6

    goto :goto_0
.end method

.method private checkPermission(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 708
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v2, p1, p3}, Lcom/mediatek/mom/PermissionRecordHelper;->searchPermissionCache(ILjava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;

    move-result-object v3

    .line 709
    new-instance v2, Lcom/mediatek/common/mom/PermissionRecord;

    invoke-direct {v2, p1, p3, v7}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 711
    if-nez v3, :cond_0

    const-string/jumbo v0, "checkPermission UNMONITORED"

    .line 760
    invoke-static {p2, p3, v0}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-direct {p0, p5, p3, p2, v7}, Lcom/mediatek/mom/PermissionController;->onPermissionCheckResultIfExist(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    .line 763
    :goto_0
    return v7

    .line 712
    :cond_0
    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v0

    .line 714
    iget-object v4, p0, Lcom/mediatek/mom/PermissionController;->mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/mom/PermissionRecordHelper;->isUserConfirmPermission(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 720
    :goto_1
    invoke-virtual {v2, v0}, Lcom/mediatek/common/mom/PermissionRecord;->setStatus(I)V

    .line 722
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkPermission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/mediatek/mom/PermissionController;->status2String(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, p3, v4}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 725
    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "PermissionController"

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown permission status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    :goto_2
    move v7, v0

    .line 758
    goto :goto_0

    .line 715
    :cond_1
    invoke-virtual {v3, v1}, Lcom/mediatek/common/mom/Permission;->setStatus(I)V

    move v0, v1

    .line 716
    goto :goto_1

    .line 728
    :pswitch_0
    invoke-direct {p0, p5, p3, p2, v7}, Lcom/mediatek/mom/PermissionController;->onPermissionCheckResultIfExist(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    move v0, v7

    .line 729
    goto :goto_2

    .line 732
    :pswitch_1
    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/PermissionController;->triggerSyncCheck(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)I

    .line 734
    invoke-direct {p0, p5, p3, p2, v6}, Lcom/mediatek/mom/PermissionController;->onPermissionCheckResultIfExist(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    move v0, v6

    .line 735
    goto :goto_2

    .line 737
    :pswitch_2
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 738
    invoke-virtual {v2, v1}, Lcom/mediatek/common/mom/PermissionRecord;->setStatus(I)V

    .line 739
    iget-object v1, p0, Lcom/mediatek/mom/PermissionController;->mHistoryHelper:Lcom/mediatek/mom/PermissionHistoryHelper;

    invoke-virtual {v1, v4, p1, p3}, Lcom/mediatek/mom/PermissionHistoryHelper;->isPackageChecking(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 745
    iget-object v1, p0, Lcom/mediatek/mom/PermissionController;->mHistoryHelper:Lcom/mediatek/mom/PermissionHistoryHelper;

    invoke-virtual {v1, v4, p1, p3, v0}, Lcom/mediatek/mom/PermissionHistoryHelper;->addHistory(ILjava/lang/String;Ljava/lang/String;I)V

    .line 747
    if-nez p5, :cond_3

    .line 751
    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/PermissionController;->triggerSyncCheck(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)I

    move-result v0

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "checkPermission DENIED because checking is still ongoing"

    .line 740
    invoke-static {p2, p3, v0}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-direct {p0, p5, p3, p2, v6}, Lcom/mediatek/mom/PermissionController;->onPermissionCheckResultIfExist(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    move v0, v6

    .line 743
    goto :goto_2

    .line 748
    :cond_3
    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v3

    invoke-interface {p5}, Lcom/mediatek/common/mom/IRequestedPermissionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/mom/PermissionController;->triggerAsyncCheck(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;Landroid/os/IBinder;)V

    move v0, v7

    goto :goto_2

    .line 725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private clearControlToken(I)V
    .locals 4

    .prologue
    .line 536
    iget-object v1, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    monitor-enter v1

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    :goto_0
    monitor-exit v1

    .line 542
    return-void

    :cond_0
    const-string/jumbo v0, "PermissionController"

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Clear control token(s) for User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private excludeControlToken(IZ)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 482
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 484
    iget-object v2, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    monitor-enter v2

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 486
    if-nez v0, :cond_1

    .line 505
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "PermissionController"

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Broadcast ATTACHED a permission manager("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-direct {p0, v7, p1, v1}, Lcom/mediatek/mom/PermissionController;->broadcastAttachment(III)V

    .line 509
    return-void

    .line 487
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 488
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerControlToken;

    .line 490
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->getUid()I

    move-result v4

    if-eq v4, p1, :cond_2

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->isEnabled()Z

    move-result v4

    if-ne v4, v8, :cond_2

    .line 492
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/mediatek/mom/ManagerControlToken;->setEnable(Z)V

    .line 494
    if-eq p2, v8, :cond_3

    :goto_1
    const-string/jumbo v4, "PermissionController"

    .line 500
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Broadcast DETACHED a permission manager("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") at User("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    .line 501
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->getUid()I

    move-result v0

    invoke-direct {p0, v4, v0, v1}, Lcom/mediatek/mom/PermissionController;->broadcastAttachment(III)V

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :try_start_2
    const-string/jumbo v4, "PermissionController"

    .line 495
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[MoMS >> MoMA] onConnectionEnded() start with uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " identity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->getIdentity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->notifyConnectionEnded()Z

    const-string/jumbo v4, "PermissionController"

    .line 497
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[MoMS << MoMA] onConnectionEnded() end with uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " identity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->getIdentity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private findControlToken(IZ)Lcom/mediatek/mom/ManagerControlToken;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 432
    iget-object v2, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    monitor-enter v2

    .line 433
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 434
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 435
    iget-object v3, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 436
    if-nez v0, :cond_1

    move-object v0, v1

    .line 446
    :cond_0
    :goto_0
    monitor-exit v2

    .line 447
    return-object v0

    .line 437
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 438
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 439
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerControlToken;

    .line 440
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->isEnabled()Z

    move-result v4

    if-eq v4, p2, :cond_0

    goto :goto_1

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final getInstance(Lcom/mediatek/mom/PackageController;)Lcom/mediatek/mom/ControllerBase;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/mediatek/mom/PermissionController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    sget-object v0, Lcom/mediatek/mom/PermissionController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Lcom/mediatek/mom/PermissionController;

    invoke-direct {v0, p0}, Lcom/mediatek/mom/PermissionController;-><init>(Lcom/mediatek/mom/PackageController;)V

    sput-object v0, Lcom/mediatek/mom/PermissionController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    const-string/jumbo v0, "PermissionController"

    const-string/jumbo v1, "Create MobileManagerController: PermissionController"

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleInitCache(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const-string/jumbo v0, "PermissionController"

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleInitCache("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") at User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0, p2}, Lcom/mediatek/mom/PermissionController;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-boolean v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheInitDone:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "PermissionController"

    const-string/jumbo v1, "handleInitCache() not ready!"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return-void

    .line 281
    :cond_0
    return-void

    .line 285
    :cond_1
    invoke-static {p2, p1}, Lcom/mediatek/mom/PackageController;->getPackageInfoByUser(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 286
    if-nez v0, :cond_2

    const-string/jumbo v0, "PermissionController"

    const-string/jumbo v1, "null pkgInfo when package added / removed"

    .line 293
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :cond_2
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/mediatek/mom/PackageController;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "PermissionController"

    const-string/jumbo v1, "Ignore system application"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :cond_3
    iget-object v1, p0, Lcom/mediatek/mom/PermissionController;->mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

    invoke-virtual {v1, p2, v0}, Lcom/mediatek/mom/PermissionRecordHelper;->updatePermissionCache(ILandroid/content/pm/PackageInfo;)V

    goto :goto_0
.end method

.method private initCacheForAllUser()V
    .locals 5

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mUM:Landroid/os/IUserManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 121
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :goto_1
    return-void

    .line 122
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 123
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Lcom/mediatek/mom/PackageController;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/mom/PermissionController;->initPermissionCache(ILjava/util/List;)V

    const-string/jumbo v2, "PermissionController"

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initCacheForAllUser() for User("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    const-string/jumbo v1, "PermissionController"

    const-string/jumbo v2, "getUsers() failed! "

    .line 127
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private initPermControlApInner(I)V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string/jumbo v0, "PermissionController"

    const-string/jumbo v1, "initPermControlAp() failed due to null context"

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mIdentityHelper:Lcom/mediatek/mom/ManagerIdentityHelper;

    invoke-static {p1}, Lcom/mediatek/mom/ManagerIdentityHelper;->getManagerPackage(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/mediatek/mom/PermissionController;->mIdentityHelper:Lcom/mediatek/mom/ManagerIdentityHelper;

    invoke-static {p1}, Lcom/mediatek/mom/ManagerIdentityHelper;->getManagerInitService(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v0}, Lcom/mediatek/mom/PackageController;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const-string/jumbo v1, "PermissionController"

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initPermControlAp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") skipped!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_2
    if-eqz v1, :cond_1

    .line 178
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 179
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/mediatek/mom/PermissionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string/jumbo v1, "PermissionController"

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initPermControlAp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initPermissionCache(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/PermissionRecordHelper;->initPkgPermissionCache(ILjava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheInitDone:Z

    .line 557
    return-void
.end method

.method private initTriggerParams(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 807
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "param_package"

    .line 808
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "param_permission_record"

    .line 809
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "param_flag"

    .line 810
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "param_uid"

    .line 811
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "param_data"

    .line 812
    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 813
    return-object v0
.end method

.method private onPermissionCheckResultIfExist(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 768
    if-nez p1, :cond_0

    .line 779
    :goto_0
    return-void

    .line 769
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "checkPermission MoMS >> Caller with result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 771
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 772
    invoke-interface {p1, p2, p3, p4}, Lcom/mediatek/common/mom/IRequestedPermissionCallback;->onPermissionCheckResult(Ljava/lang/String;II)V

    .line 773
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v0, "checkPermission MoMS << Caller"

    .line 777
    invoke-static {p3, p2, v0}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    const-string/jumbo v1, "PermissionController"

    const-string/jumbo v2, "onPermissionCheckResult() failed"

    .line 775
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private purnPermissionCache(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/PermissionRecordHelper;->purnPkgPermissionCache(ILjava/util/List;)V

    .line 553
    return-void
.end method

.method private requestAttachment()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mIdentityHelper:Lcom/mediatek/mom/ManagerIdentityHelper;

    invoke-static {}, Lcom/mediatek/mom/ManagerIdentityHelper;->getPermControlIdentityList()Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 162
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    return-void

    .line 163
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/mom/PermissionController;->initPermControlApInner(I)V

    goto :goto_0
.end method

.method public static result2String(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 861
    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    const-string/jumbo v1, "PermissionController"

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mapResult2String() with unknown result code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "GRANTED"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "DENIED"

    goto :goto_0

    .line 861
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resumeControlToken(I)V
    .locals 6

    .prologue
    .line 512
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string/jumbo v1, "PermissionController"

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Broadcast DETACHED a permission manager("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 516
    invoke-direct {p0, v1, p1, v0}, Lcom/mediatek/mom/PermissionController;->broadcastAttachment(III)V

    .line 518
    iget-object v1, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    monitor-enter v1

    .line 519
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 520
    if-nez v0, :cond_1

    .line 532
    :cond_0
    monitor-exit v1

    .line 533
    return-void

    .line 521
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 522
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerControlToken;

    .line 524
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->getUid()I

    move-result v3

    if-eq v3, p1, :cond_2

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "PermissionController"

    .line 526
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[MoMS >> MoMA] onConnectionResume() start with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->getIdentity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->notifyConnectionResume()Z

    const-string/jumbo v3, "PermissionController"

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[MoMS << MoMA] onConnectionResume() end with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->getIdentity()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static status2String(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 878
    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    const-string/jumbo v1, "PermissionController"

    .line 890
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mapResult2String() with unknown status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "GRANTED"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "DENIED"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "CHECKING"

    goto :goto_0

    .line 878
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private triggerAsyncCheck(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 798
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 799
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/PermissionController;->initTriggerParams(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 800
    invoke-static {}, Lcom/mediatek/mom/ListenerTriggerHelper;->getInstance()Lcom/mediatek/mom/ListenerTriggerHelper;

    invoke-virtual {p0, v0}, Lcom/mediatek/mom/PermissionController;->getManagerApListener(I)Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v3, v0, v1, v2, p6}, Lcom/mediatek/mom/ListenerTriggerHelper;->triggerListenerAsync(ILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V

    .line 804
    return-void
.end method

.method private triggerSyncCheck(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 785
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 786
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/PermissionController;->initTriggerParams(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 787
    invoke-static {}, Lcom/mediatek/mom/ListenerTriggerHelper;->getInstance()Lcom/mediatek/mom/ListenerTriggerHelper;

    invoke-virtual {p0, v0}, Lcom/mediatek/mom/PermissionController;->getManagerApListener(I)Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v3, v0, v1, v2}, Lcom/mediatek/mom/ListenerTriggerHelper;->triggerListener(ILandroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    .line 791
    return v0
.end method


# virtual methods
.method public attach(Lcom/mediatek/common/mom/IMobileConnectionCallback;III)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 335
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 336
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 338
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mIdentityHelper:Lcom/mediatek/mom/ManagerIdentityHelper;

    invoke-static {p4}, Lcom/mediatek/mom/ManagerIdentityHelper;->isPermControlIdentity(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PermissionController"

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attach failed with invalid uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " identity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 395
    :goto_0
    return v0

    .line 339
    :cond_0
    iget-object v5, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    monitor-enter v5

    .line 340
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/mediatek/mom/PermissionController;->findControlToken(IZ)Lcom/mediatek/mom/ManagerControlToken;

    move-result-object v3

    .line 341
    if-nez v3, :cond_1

    .line 345
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 346
    if-eqz v0, :cond_2

    move-object v4, v0

    .line 352
    :goto_1
    if-gt p4, p3, :cond_3

    .line 368
    if-eq p4, p3, :cond_5

    const-string/jumbo v0, "PermissionController"

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attach failed due to minor identity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/mom/PermissionController;->findControlToken(IZ)Lcom/mediatek/mom/ManagerControlToken;

    move-result-object v0

    .line 383
    if-nez v0, :cond_7

    .line 387
    new-instance v0, Lcom/mediatek/mom/ManagerControlToken;

    invoke-direct {v0, p2, p4, p1}, Lcom/mediatek/mom/ManagerControlToken;-><init>(IILcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 388
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 391
    :goto_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "PermissionController"

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Already attached from uid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    monitor-exit v5

    return v2

    .line 347
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    iget-object v6, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    goto :goto_1

    .line 353
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/mediatek/mom/PermissionController;->excludeControlToken(IZ)V

    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/mom/PermissionController;->findControlToken(IZ)Lcom/mediatek/mom/ManagerControlToken;

    move-result-object v0

    .line 355
    if-nez v0, :cond_4

    const-string/jumbo v0, "PermissionController"

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attach a new manager control token from uid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " with identity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v0, Lcom/mediatek/mom/ManagerControlToken;

    invoke-direct {v0, p2, p4, p1}, Lcom/mediatek/mom/ManagerControlToken;-><init>(IILcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 364
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :goto_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/ManagerControlToken;->setEnable(Z)V

    move v0, v2

    .line 367
    goto :goto_2

    :cond_4
    const-string/jumbo v1, "PermissionController"

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attach an exist manager control token from uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with identity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v0, p1}, Lcom/mediatek/mom/ManagerControlToken;->setCallback(Lcom/mediatek/common/mom/IMobileConnectionCallback;)V

    goto :goto_3

    .line 369
    :cond_5
    if-nez v3, :cond_6

    const-string/jumbo v0, "PermissionController"

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attach new uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " with existing identity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v0, Lcom/mediatek/mom/ManagerControlToken;

    invoke-direct {v0, p2, p4, p1}, Lcom/mediatek/mom/ManagerControlToken;-><init>(IILcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 375
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    :goto_4
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/ManagerControlToken;->setEnable(Z)V

    move v0, v2

    .line 378
    goto/16 :goto_2

    .line 370
    :cond_6
    invoke-virtual {v3, p1}, Lcom/mediatek/mom/ManagerControlToken;->setCallback(Lcom/mediatek/common/mom/IMobileConnectionCallback;)V

    move-object v0, v3

    goto :goto_4

    .line 384
    :cond_7
    invoke-virtual {v0, p1}, Lcom/mediatek/mom/ManagerControlToken;->setCallback(Lcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 385
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/mom/ManagerControlToken;->setEnable(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto/16 :goto_2
.end method

.method public checkAttachment(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 418
    const/4 v0, 0x0

    .line 420
    iget-object v2, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    monitor-enter v2

    .line 421
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, v3}, Lcom/mediatek/mom/PermissionController;->findControlToken(IZ)Lcom/mediatek/mom/ManagerControlToken;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v1, "PermissionController"

    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkAttachment() failed with uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_0
    monitor-exit v2

    .line 427
    return v0

    :cond_0
    move v0, v1

    .line 422
    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkPermission(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 636
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/mom/PermissionController;->isControllerEnabled(I)Z

    move-result v1

    if-eq v1, v2, :cond_1

    .line 645
    :cond_0
    :goto_0
    return v0

    .line 636
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/mom/PermissionController;->mCacheInitDone:Z

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "checkPermission START"

    .line 638
    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-gt v1, v2, :cond_2

    const-string/jumbo v1, "checkPermision GRANTED with system uid"

    .line 642
    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 640
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/mom/PermissionController;->checkPermission(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I

    move-result v0

    goto :goto_0
.end method

.method public checkPermissionAsync(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 651
    if-eqz p4, :cond_1

    .line 655
    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionController;->isControllerEnabled()Z

    move-result v0

    if-eq v0, v1, :cond_2

    .line 665
    :cond_0
    invoke-direct {p0, p4, p1, p2, v2}, Lcom/mediatek/mom/PermissionController;->onPermissionCheckResultIfExist(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    .line 667
    :goto_0
    return-void

    .line 652
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Async check with null callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheInitDone:Z

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "checkPermissionAsync START"

    .line 657
    invoke-static {p2, p1, v0}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_3

    const-string/jumbo v0, "checkPermisionAsync GRANTED with system uid"

    .line 661
    invoke-static {p2, p1, v0}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-direct {p0, p4, p1, p2, v2}, Lcom/mediatek/mom/PermissionController;->onPermissionCheckResultIfExist(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    goto :goto_0

    .line 659
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/mom/PermissionController;->checkPermission(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I

    goto :goto_0
.end method

.method public detach(I)V
    .locals 6

    .prologue
    .line 399
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 401
    iget-object v2, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    monitor-enter v2

    .line 402
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/mediatek/mom/PermissionController;->findControlToken(IZ)Lcom/mediatek/mom/ManagerControlToken;

    move-result-object v3

    .line 403
    if-nez v3, :cond_1

    .line 414
    :cond_0
    :goto_0
    monitor-exit v2

    .line 415
    return-void

    :cond_1
    const-string/jumbo v0, "PermissionController"

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "detach control token from uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mediatek/mom/ManagerControlToken;->getIdentity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 408
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 409
    invoke-direct {p0, p1}, Lcom/mediatek/mom/PermissionController;->resumeControlToken(I)V

    .line 410
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump()V
    .locals 7

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheInitDone:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :goto_0
    const-string/jumbo v0, "PermissionController"

    const-string/jumbo v1, "[Dump Current Attach Status]"

    .line 839
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v1, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    monitor-enter v1

    .line 842
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 843
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 855
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionRecordHelper;->dump()V

    goto :goto_0

    .line 844
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v3, "PermissionController"

    .line 845
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "User: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v3, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 847
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 848
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 849
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerControlToken;

    const-string/jumbo v4, "PermissionController"

    .line 851
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 855
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized enableController(Z)V
    .locals 3

    .prologue
    monitor-enter p0

    .line 307
    :try_start_0
    invoke-super {p0, p1}, Lcom/mediatek/mom/MultiUserControllerBase;->enableController(Z)V

    const-string/jumbo v0, "PermissionController"

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " enableController() enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionController;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 314
    :cond_0
    sput-boolean p1, Lcom/mediatek/mom/PermissionController;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 315
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 311
    if-ne p1, v0, :cond_0

    .line 312
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Enable permission controller without register listener!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentControlToken(I)Lcom/mediatek/mom/ManagerControlToken;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 465
    iget-object v2, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    monitor-enter v2

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mManagerCtlTokens:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 467
    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 477
    :cond_1
    :goto_0
    monitor-exit v2

    .line 478
    return-object v0

    .line 467
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 468
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 469
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 470
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ManagerControlToken;

    .line 471
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->isEnabled()Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentIdentity(I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 453
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 455
    invoke-virtual {p0, v1}, Lcom/mediatek/mom/PermissionController;->getCurrentControlToken(I)Lcom/mediatek/mom/ManagerControlToken;

    move-result-object v1

    .line 456
    if-nez v1, :cond_0

    .line 459
    :goto_0
    return v0

    .line 457
    :cond_0
    invoke-virtual {v1}, Lcom/mediatek/mom/ManagerControlToken;->getIdentity()I

    move-result v0

    goto :goto_0
.end method

.method public getPackageGrantedPermissions(ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 564
    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v1, "PermissionController"

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    return-object v0

    .line 564
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/PermissionRecordHelper;->getPackageCachePermissions(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getParentPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 623
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/PermissionRecordHelper;->getParentPermission(Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    .line 624
    if-nez v0, :cond_0

    .line 627
    return-object v1

    .line 625
    :cond_0
    iget-object v0, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserConfirmTime(IJ)J
    .locals 6

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mHistoryHelper:Lcom/mediatek/mom/PermissionHistoryHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/mom/PermissionHistoryHelper;->getInteractionTime(IJ)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 323
    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_0

    const-string/jumbo v2, "PermissionController"

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserConfirmTime() fix extending time from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    .line 327
    :cond_0
    return-wide v0

    .line 323
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public initPermControlAp(I)V
    .locals 1

    .prologue
    .line 168
    invoke-static {p1}, Lcom/mediatek/mom/ManagerIdentityHelper;->isPermControlIdentity(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/PermissionController;->initPermControlApInner(I)V

    goto :goto_0
.end method

.method public onPackageStatusChange(ILjava/lang/String;I)V
    .locals 5

    .prologue
    .line 221
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string/jumbo v0, "PermissionController"

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPackageStatusChange() status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0, v1}, Lcom/mediatek/mom/PermissionController;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    packed-switch p3, :pswitch_data_0

    const-string/jumbo v0, "PermissionController"

    const-string/jumbo v1, "Unkown package status!"

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 226
    :cond_1
    return-void

    .line 232
    :pswitch_1
    invoke-direct {p0, p2, v1}, Lcom/mediatek/mom/PermissionController;->handleInitCache(Ljava/lang/String;I)V

    goto :goto_0

    .line 235
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/PermissionRecordHelper;->removePermissionCache(ILjava/lang/String;)V

    const-string/jumbo v0, "PermissionController"

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remove cache for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0, v1}, Lcom/mediatek/mom/PermissionController;->getCurrentControlToken(I)Lcom/mediatek/mom/ManagerControlToken;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/mediatek/mom/ManagerControlToken;->getIdentity()I

    move-result v0

    .line 242
    invoke-static {v0}, Lcom/mediatek/mom/ManagerIdentityHelper;->getManagerPackage(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PermissionController"

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Uninstall Permission Control App: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/PermissionController;->detach(I)V

    goto :goto_0

    .line 250
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/PermissionRecordHelper;->getPackageCachePermissions(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0, p2, v1}, Lcom/mediatek/mom/PermissionController;->handleInitCache(Ljava/lang/String;I)V

    .line 253
    iget-object v2, p0, Lcom/mediatek/mom/PermissionController;->mPendingSetting:Ljava/util/Map;

    monitor-enter v2

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mPendingSetting:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    :goto_1
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "PermissionController"

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set pending settings for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mPendingSetting:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 258
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mPendingSetting:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 259
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    .line 260
    invoke-virtual {p0, v1, v0}, Lcom/mediatek/mom/PermissionController;->setPermissionRecord(ILcom/mediatek/common/mom/PermissionRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onUserStatusChange(II)V
    .locals 3

    .prologue
    .line 193
    packed-switch p2, :pswitch_data_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 197
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/PermissionController;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PermissionController"

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Purn cache for User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {p1}, Lcom/mediatek/mom/PackageController;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/mom/PermissionController;->purnPermissionCache(ILjava/util/List;)V

    goto :goto_0

    .line 203
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/PermissionController;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PermissionController"

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Init cache for User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {p1}, Lcom/mediatek/mom/PackageController;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/mom/PermissionController;->initPermissionCache(ILjava/util/List;)V

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/PermissionController;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PermissionController"

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove cache for User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/PermissionRecordHelper;->removePermissionCacheByUser(I)V

    .line 212
    invoke-direct {p0, p1}, Lcom/mediatek/mom/PermissionController;->clearControlToken(I)V

    goto/16 :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public resetCache(I)V
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/PermissionController;->isValidUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/PermissionRecordHelper;->resetPermissionCache(I)V

    goto :goto_0
.end method

.method public setPermissionRecord(ILcom/mediatek/common/mom/PermissionRecord;)V
    .locals 4

    .prologue
    .line 573
    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v0, "PermissionController"

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "setPermissionRecord() with null record!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :goto_0
    return-void

    .line 573
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/PermissionController;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mCacheHelper:Lcom/mediatek/mom/PermissionRecordHelper;

    iget-object v1, p2, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/mediatek/mom/PermissionRecordHelper;->searchPermissionCache(ILjava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    .line 575
    if-nez v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mPackageController:Lcom/mediatek/mom/PackageController;

    iget-object v0, p2, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/mom/PackageController;->isPendingPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "PermissionController"

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown permission setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const-string/jumbo v0, "PermissionController"

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignore setting user-confirm permission record:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 577
    :cond_3
    invoke-virtual {p2}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/common/mom/Permission;->setStatus(I)V

    const-string/jumbo v0, "PermissionController"

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Set User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "PermissionController"

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Set pending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v1, p0, Lcom/mediatek/mom/PermissionController;->mPendingSetting:Ljava/util/Map;

    monitor-enter v1

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mPendingSetting:Ljava/util/Map;

    iget-object v2, p2, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 592
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v2, p0, Lcom/mediatek/mom/PermissionController;->mPendingSetting:Ljava/util/Map;

    iget-object v3, p2, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :goto_1
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 588
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mPendingSetting:Ljava/util/Map;

    iget-object v2, p2, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 589
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setPermissionRecord(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 605
    if-nez p2, :cond_1

    const-string/jumbo v0, "PermissionController"

    const-string/jumbo v1, "setPermissionCache() with null setting!"

    .line 612
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    return-void

    .line 606
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 607
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    .line 609
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/mom/PermissionController;->setPermissionRecord(ILcom/mediatek/common/mom/PermissionRecord;)V

    goto :goto_0
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 151
    iput-object p1, p0, Lcom/mediatek/mom/PermissionController;->mContext:Landroid/content/Context;

    .line 152
    invoke-direct {p0}, Lcom/mediatek/mom/PermissionController;->requestAttachment()V

    .line 153
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/mediatek/mom/PermissionController$PreBootReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/mom/PermissionController$PreBootReceiver;-><init>(Lcom/mediatek/mom/PermissionController;Lcom/mediatek/mom/PermissionController$1;)V

    iget-object v1, p0, Lcom/mediatek/mom/PermissionController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/PermissionController;->mSystemReady:Z

    .line 156
    return-void
.end method
