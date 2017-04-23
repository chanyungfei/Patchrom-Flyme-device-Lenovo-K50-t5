.class final Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrorDialog$1;,
        Lcom/android/server/am/AppErrorDialog$2;
    }
.end annotation


# static fields
.field private static final CRASH_BY_PERMISSION_DETAIL:I = 0x1

.field private static final CRASH_BY_PERMISSION_NONE:I = 0x0

.field private static final CRASH_BY_PERMISSION_TRY:I = 0x2

.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_REPORT:I = 0x1

.field private static final FREE_SPACE:I = 0xa

.field private static final PERMISSION_SETTINGS:I = 0xb

.field private static final SECURITY_EXCEPTION:Ljava/lang/String; = "SecurityException"

.field private static final SECURITY_SUB_OR:Ljava/lang/String; = " or "

.field private static final SECURITY_SUB_PERMISSION_DENIAL:Ljava/lang/String; = "Permission Denial"

.field private static final SECURITY_SUB_REQUIRES:Ljava/lang/String; = " requires "

.field private static final TAG:Ljava/lang/String; = "AppErrorDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mExceptionMsg:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private mResultType:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTargetProcess:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/am/AppErrorDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/AppErrorDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/AppErrorDialog;->mResultType:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/AppErrorDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/AppErrorDialog;->mResultType:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 92
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 70
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/am/AppErrorDialog;->mResultType:I

    .line 76
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/am/AppErrorDialog;->mTargetProcess:Z

    .line 260
    new-instance v12, Lcom/android/server/am/AppErrorDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 302
    new-instance v12, Lcom/android/server/am/AppErrorDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/server/am/AppErrorDialog$2;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 93
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 96
    .local v10, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 97
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 98
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 103
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    invoke-virtual {v12}, Lcom/android/server/am/AppErrorResult;->getExceptionMsg()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog;->mExceptionMsg:Ljava/lang/String;

    .line 107
    const-class v12, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-static {v12}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 108
    .local v5, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    invoke-interface {v5}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryCriticalLow()Z

    move-result v4

    .line 110
    .local v4, "criticalLow":Z
    const/4 v3, 0x0

    .line 111
    .local v3, "crashByMustHavePermission":I
    const/4 v9, 0x0

    .line 112
    .local v9, "permissionTitled":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v12

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/AppErrorDialog;->mExceptionMsg:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/AppErrorDialog;->mExceptionMsg:Ljava/lang/String;

    const-string/jumbo v13, "SecurityException"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 112
    if-eqz v12, :cond_4

    .line 114
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSION:Z

    if-eqz v12, :cond_0

    .line 115
    const-string/jumbo v12, "AppErrorDialog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "AppErrorDialog mExceptionMsg = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/AppErrorDialog;->mExceptionMsg:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/AppErrorDialog;->mExceptionMsg:Ljava/lang/String;

    const-string/jumbo v13, "Permission Denial"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 118
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/AppErrorDialog;->mExceptionMsg:Ljava/lang/String;

    const-string/jumbo v13, " requires "

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 119
    const-string/jumbo v13, " requires "

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    .line 118
    add-int v11, v12, v13

    .line 120
    .local v11, "startIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/AppErrorDialog;->mExceptionMsg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrorDialog;->mExceptionMsg:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "parseResult":Ljava/lang/String;
    const-string/jumbo v12, " or "

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 122
    const-string/jumbo v12, " or "

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 123
    const-string/jumbo v13, " or "

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    .line 122
    add-int v11, v12, v13

    .line 124
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 127
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8}, Lcom/android/server/am/AppErrorDialog;->getPermissionTitle(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, "permissionTitled":Ljava/lang/String;
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSION:Z

    if-eqz v12, :cond_2

    .line 131
    const-string/jumbo v12, "AppErrorDialog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "AppErrorDialog parseResult = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 132
    const-string/jumbo v14, "and permissionTitled = "

    .line 131
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_2
    if-eqz v9, :cond_3

    .line 135
    const/4 v3, 0x1

    .line 138
    .end local v8    # "parseResult":Ljava/lang/String;
    .end local v9    # "permissionTitled":Ljava/lang/String;
    .end local v11    # "startIndex":I
    :cond_3
    if-nez v3, :cond_4

    .line 139
    const/4 v3, 0x2

    .line 143
    :cond_4
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .local v7, "name":Ljava/lang/CharSequence;
    if-eqz v7, :cond_b

    .line 145
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/am/AppErrorDialog;->mTargetProcess:Z

    .line 146
    if-eqz v3, :cond_9

    .line 148
    const/4 v12, 0x1

    if-ne v3, v12, :cond_8

    .line 149
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    .line 151
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v9, v12, v13

    .line 150
    const v13, 0x80500e0

    .line 149
    invoke-virtual {v10, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "message":Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 201
    :goto_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    .line 204
    if-eqz v3, :cond_11

    .line 206
    const v12, 0x1040360

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v15, 0xb

    invoke-virtual {v13, v15, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 205
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12, v13}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 215
    :goto_2
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v12, :cond_5

    .line 217
    const v12, 0x1040361

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 216
    const/4 v14, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12, v13}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 221
    :cond_5
    if-eqz v3, :cond_12

    .line 224
    const/high16 v12, 0x1040000

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 223
    const/4 v14, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12, v13}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 233
    :cond_6
    :goto_3
    const v12, 0x1040358

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 235
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Application Error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v12, v12, 0x110

    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 239
    move-object/from16 v0, p4

    iget-boolean v12, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v12, :cond_7

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/16 v13, 0x7da

    invoke-virtual {v12, v13}, Landroid/view/Window;->setType(I)V

    .line 244
    :cond_7
    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/am/AppErrorDialog;->mTargetProcess:Z

    if-eqz v12, :cond_13

    .line 245
    const-string/jumbo v12, "AppErrorDialog"

    const-string/jumbo v13, "do not show the error dialog!"

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 248
    const-wide/16 v14, 0x0

    .line 246
    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 257
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/AppErrorDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/am/AppErrorDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 91
    return-void

    .line 153
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_8
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 155
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 154
    const v13, 0x80500e1

    .line 153
    invoke-virtual {v10, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 157
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_9
    if-eqz v4, :cond_a

    .line 158
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    .line 160
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v14, 0x1

    aput-object v13, v12, v14

    .line 159
    const v13, 0x8050039

    .line 158
    invoke-virtual {v10, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 162
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_a
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    .line 164
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v14, 0x1

    aput-object v13, v12, v14

    .line 163
    const v13, 0x1040359

    .line 162
    invoke-virtual {v10, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 168
    .end local v6    # "message":Ljava/lang/CharSequence;
    .end local v7    # "name":Ljava/lang/CharSequence;
    :cond_b
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 170
    .restart local v7    # "name":Ljava/lang/CharSequence;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "com.mediatek.bluetooth"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_c

    .line 171
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "android.process.acore"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_d

    .line 172
    :cond_c
    const-string/jumbo v12, "AppErrorDialog"

    const-string/jumbo v13, "got target error process"

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/am/AppErrorDialog;->mTargetProcess:Z

    .line 178
    :goto_5
    if-eqz v3, :cond_f

    .line 180
    const/4 v12, 0x1

    if-ne v3, v12, :cond_e

    .line 181
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    .line 183
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v9, v12, v13

    .line 182
    const v13, 0x80500e0

    .line 181
    invoke-virtual {v10, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 198
    .restart local v6    # "message":Ljava/lang/CharSequence;
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 175
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_d
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/am/AppErrorDialog;->mTargetProcess:Z

    goto :goto_5

    .line 185
    :cond_e
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 187
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 186
    const v13, 0x80500e1

    .line 185
    invoke-virtual {v10, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/CharSequence;
    goto :goto_6

    .line 189
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_f
    if-eqz v4, :cond_10

    .line 190
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 192
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 191
    const v13, 0x805003a

    .line 190
    invoke-virtual {v10, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/CharSequence;
    goto :goto_6

    .line 194
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_10
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 196
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 195
    const v13, 0x104035a

    .line 194
    invoke-virtual {v10, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/CharSequence;
    goto :goto_6

    .line 210
    :cond_11
    const v12, 0x1040360

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 209
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12, v13}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    goto/16 :goto_2

    .line 226
    :cond_12
    if-eqz v4, :cond_6

    .line 228
    const v12, 0x8050047

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 227
    const/4 v14, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12, v13}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    goto/16 :goto_3

    .line 251
    .restart local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 252
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 253
    const-wide/32 v14, 0x493e0

    .line 251
    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4
.end method

.method private getPermissionTitle(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 316
    const/4 v2, 0x0

    .line 317
    .local v2, "info":Landroid/content/pm/PackageItemInfo;
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSION:Z

    if-eqz v5, :cond_0

    .line 318
    const-string/jumbo v5, "AppErrorDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPermissionTitle, permission = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 322
    .local v4, "permissionInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v4, :cond_6

    .line 323
    iget v3, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 324
    .local v3, "level":I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_4

    .line 325
    iget-object v1, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 326
    .local v1, "group":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 343
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "info":Landroid/content/pm/PackageItemInfo;
    .end local v3    # "level":I
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_7

    .line 344
    :cond_2
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSION:Z

    if-eqz v5, :cond_3

    .line 345
    const-string/jumbo v5, "AppErrorDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t find info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_3
    return-object v8

    .line 328
    .restart local v2    # "info":Landroid/content/pm/PackageItemInfo;
    .restart local v3    # "level":I
    :cond_4
    :try_start_1
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSION:Z

    if-eqz v5, :cond_1

    .line 329
    const-string/jumbo v5, "AppErrorDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not a runtime permission"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 337
    .end local v3    # "level":I
    .end local v4    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSION:Z

    if-eqz v5, :cond_5

    .line 339
    const-string/jumbo v5, "AppErrorDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t find permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_5
    return-object v8

    .line 333
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :cond_6
    :try_start_2
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSION:Z

    if-eqz v5, :cond_1

    .line 334
    const-string/jumbo v5, "AppErrorDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "permissionInfo is null, permission = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 349
    .end local v2    # "info":Landroid/content/pm/PackageItemInfo;
    :cond_7
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    iget-boolean v0, v0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 298
    :cond_0
    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->dismiss()V

    .line 293
    return-void
.end method
