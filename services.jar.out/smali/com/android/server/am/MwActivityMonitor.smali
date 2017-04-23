.class public Lcom/android/server/am/MwActivityMonitor;
.super Ljava/lang/Object;
.source "MwActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MwActivityMonitor$MessageObj;,
        Lcom/android/server/am/MwActivityMonitor$1;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final MSG_MW_MAX_RESTORE:I = 0x3

.field static final NG_DONOT_BLOCK:I = 0x0

.field static final NG_SAME_CALLER_APP:I = -0x1

.field static final NG_SAME_COMPONENT_NAME:I = -0x2

.field static final NG_SAME_TASK:I = -0x3

.field static final OK_BLOCK_ACTIVITY:I = 0x1

.field static final SHOW_MAXIMUM_FRONT_FLOATING_MSG:I = 0x2

.field static final SHOW_ONE_ACTIVITY_AT_GALLERY3D_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MwActivityMonitor"


# instance fields
.field private mCallerApp:Lcom/android/server/am/ProcessRecord;

.field mContext:Landroid/content/Context;

.field private mMaximumFrontFloatingSize:I

.field final mMwHandler:Landroid/os/Handler;

.field mRunningActivity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/MwActivityMonitor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMaximumFrontFloatingSize:I

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    .line 71
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getMaxFrontFloatingSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMaximumFrontFloatingSize:I

    .line 85
    new-instance v0, Lcom/android/server/am/MwActivityMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MwActivityMonitor$1;-><init>(Lcom/android/server/am/MwActivityMonitor;)V

    iput-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/am/MwActivityMonitor;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/server/am/MwActivityMonitor;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/server/am/MwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 79
    return-void
.end method


# virtual methods
.method public blockByFloatingStackSize(Lcom/android/server/am/ActivityRecord;)I
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v12, 0x0

    .line 299
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getMaxFrontFloatingSize()I

    move-result v9

    iput v9, p0, Lcom/android/server/am/MwActivityMonitor;->mMaximumFrontFloatingSize:I

    .line 300
    const/4 v3, 0x1

    .line 303
    .local v3, "blocked":Z
    const/4 v8, 0x0

    .line 305
    .local v8, "noTopActvityInFrontStackSize":I
    iget-object v9, p0, Lcom/android/server/am/MwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getFrontFloatStacks(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 307
    .local v4, "frontFloatingStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 308
    .local v5, "frontStackSize":I
    iget-object v9, p0, Lcom/android/server/am/MwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getBackFloatStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 309
    .local v1, "backFloatingStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 311
    .local v2, "backStackSize":I
    const-string/jumbo v9, "MwActivityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "blockByFloatingStackSize floating stack size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget v9, p0, Lcom/android/server/am/MwActivityMonitor;->mMaximumFrontFloatingSize:I

    if-lt v5, v9, :cond_9

    .line 316
    if-eqz p1, :cond_3

    .line 317
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, 0x200

    if-eqz v9, :cond_8

    .line 320
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    .line 321
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9, p1}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 322
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_4

    .line 323
    const/4 v3, 0x0

    .line 331
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v7, v5, -0x1

    .local v7, "n":I
    :goto_1
    if-ltz v7, :cond_1

    .line 332
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 333
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_6

    .line 334
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 335
    const/4 v3, 0x0

    .line 353
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_2
    sub-int v9, v5, v8

    iget v10, p0, Lcom/android/server/am/MwActivityMonitor;->mMaximumFrontFloatingSize:I

    if-ge v9, v10, :cond_2

    .line 354
    const/4 v3, 0x0

    .line 359
    :cond_2
    iget-object v9, p0, Lcom/android/server/am/MwActivityMonitor;->mCallerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_3

    if-eqz v3, :cond_3

    .line 360
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/am/MwActivityMonitor;->mCallerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 359
    if-eqz v9, :cond_3

    .line 361
    const/4 v3, 0x0

    .line 372
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_3
    :goto_3
    if-eqz v3, :cond_a

    .line 373
    iget-object v9, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 374
    const/4 v9, 0x1

    return v9

    .line 320
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v6    # "i":I
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 340
    .restart local v7    # "n":I
    :cond_5
    const-string/jumbo v9, "com.android.documentsui.DocumentsActivity"

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 341
    const-string/jumbo v9, "com.android.providers.downloads.ui.DownloadList"

    .line 342
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 341
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 340
    if-eqz v9, :cond_7

    .line 343
    const/4 v3, 0x0

    .line 344
    goto :goto_2

    .line 347
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 331
    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 365
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 369
    :cond_9
    const/4 v3, 0x0

    goto :goto_3

    .line 377
    :cond_a
    return v12
.end method

.method public blockByRunningActivity(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;[Lcom/android/server/am/ActivityRecord;Landroid/content/pm/ActivityInfo;)I
    .locals 12
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "nextIntent"    # Landroid/content/Intent;
    .param p4, "outRunningAc"    # [Lcom/android/server/am/ActivityRecord;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 144
    const-string/jumbo v9, "MwActivityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "blockByRunningActivity processName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", callerApp = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 145
    const-string/jumbo v11, ", nextIntent = "

    .line 144
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput-object p2, p0, Lcom/android/server/am/MwActivityMonitor;->mCallerApp:Lcom/android/server/am/ProcessRecord;

    .line 151
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "nextComponentName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 153
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_7

    .line 154
    iget-object v9, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 155
    .local v7, "runningAc":Lcom/android/server/am/ActivityRecord;
    const/4 v9, 0x0

    aput-object v7, p4, v9

    .line 157
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v8

    .line 158
    .local v8, "runningFlag":I
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 159
    .local v6, "nextFlag":I
    const/4 v4, 0x0

    .line 160
    .local v4, "isRunningFloat":Z
    const/4 v3, 0x0

    .line 161
    .local v3, "isNextFloat":Z
    and-int/lit16 v9, v8, 0x200

    if-eqz v9, :cond_0

    .line 162
    const/4 v4, 0x1

    .line 164
    :cond_0
    and-int/lit16 v9, v6, 0x200

    if-eqz v9, :cond_1

    .line 165
    const/4 v3, 0x1

    .line 170
    :cond_1
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 171
    const/4 v9, 0x0

    return v9

    .line 176
    :cond_2
    if-eqz p2, :cond_3

    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v10, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 183
    const-string/jumbo v9, "MwActivityMonitor"

    .line 184
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "blockByRunningActivity :  caller apps are same "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 185
    const/4 v11, 0x4

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    .line 184
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 183
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v9, -0x1

    return v9

    .line 190
    :cond_3
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 191
    const-string/jumbo v9, "MwActivityMonitor"

    .line 192
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "blockByRunningActivity :  2 shortComponentNames are same "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 193
    const/4 v11, 0x4

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    .line 192
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 191
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v9, -0x2

    return v9

    .line 197
    :cond_4
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    if-eqz v9, :cond_6

    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 198
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_6

    .line 200
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p5

    invoke-virtual {v9, p3, v0}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 201
    const-string/jumbo v9, "MwActivityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "blockByRunningActivity :  3 exist same activity in resumed stack "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 202
    const/4 v11, 0x4

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    .line 201
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v9, -0x3

    return v9

    .line 208
    :cond_5
    const-string/jumbo v9, "MwActivityMonitor"

    .line 209
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "blockByRunningActivity : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 210
    const-string/jumbo v11, " has activity for resumed : "

    .line 209
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 211
    const-string/jumbo v11, ". Therefore, don\'t be launched "

    .line 209
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 211
    const-string/jumbo v11, ", callers = "

    .line 209
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 212
    const/4 v11, 0x4

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    .line 209
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 208
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v9, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    const/4 v9, 0x1

    return v9

    .line 153
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 218
    .end local v3    # "isNextFloat":Z
    .end local v4    # "isRunningFloat":Z
    .end local v6    # "nextFlag":I
    .end local v7    # "runningAc":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "runningFlag":I
    :cond_7
    const/4 v9, 0x0

    return v9
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 381
    iget-object v3, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 382
    .local v0, "N":I
    if-gtz v0, :cond_0

    .line 383
    return-void

    .line 385
    :cond_0
    const-string/jumbo v3, "  MwActivityMonitor : "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 387
    iget-object v3, p0, Lcom/android/server/am/MwActivityMonitor;->mRunningActivity:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 388
    .local v1, "ac":Lcom/android/server/am/ActivityRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    .end local v1    # "ac":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method isBlockedByFloatingStackSize(Lcom/android/server/am/ActivityStack;)Z
    .locals 9
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 254
    if-nez p1, :cond_0

    .line 255
    return v7

    .line 257
    :cond_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v5

    iget v6, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v5, v6}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 258
    return v7

    .line 260
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/MwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getFrontFloatStacks(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 262
    .local v0, "frontFloatStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getMaxFrontFloatingSize()I

    move-result v5

    iput v5, p0, Lcom/android/server/am/MwActivityMonitor;->mMaximumFrontFloatingSize:I

    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, "frontStackSize":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gt v2, v5, :cond_4

    .line 266
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 267
    .local v3, "tmpStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 268
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v4, :cond_2

    .line 269
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v5

    iget v6, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v5, v6}, Lcom/mediatek/multiwindow/MultiWindowProxy;->resetStackPosition(I)V

    .line 271
    :cond_2
    if-eqz v4, :cond_3

    .line 272
    add-int/lit8 v1, v1, 0x1

    .line 273
    if-ne p1, v3, :cond_3

    .line 274
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v5

    iget v6, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v5, v6}, Lcom/mediatek/multiwindow/MultiWindowProxy;->computeStackPosition(I)I

    .line 275
    return v7

    .line 265
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v3    # "tmpStack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget v5, p0, Lcom/android/server/am/MwActivityMonitor;->mMaximumFrontFloatingSize:I

    if-ge v1, v5, :cond_5

    .line 281
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v5

    iget v6, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v5, v6}, Lcom/mediatek/multiwindow/MultiWindowProxy;->computeStackPosition(I)I

    .line 282
    return v7

    .line 285
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 286
    const/4 v5, 0x1

    return v5
.end method

.method isBlockedByFloatingStackSizeWhenRestore()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 222
    iget-object v5, p0, Lcom/android/server/am/MwActivityMonitor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getFrontFloatStacks(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 224
    .local v0, "frontFloatStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getMaxFrontFloatingSize()I

    move-result v5

    iput v5, p0, Lcom/android/server/am/MwActivityMonitor;->mMaximumFrontFloatingSize:I

    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, "frontStackSize":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gt v2, v5, :cond_2

    .line 228
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 229
    .local v3, "tmpStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 230
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v4, :cond_0

    .line 231
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v5

    iget v6, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v5, v6}, Lcom/mediatek/multiwindow/MultiWindowProxy;->resetStackPosition(I)V

    .line 233
    :cond_0
    if-eqz v4, :cond_1

    .line 234
    add-int/lit8 v1, v1, 0x1

    .line 227
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v3    # "tmpStack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget v5, p0, Lcom/android/server/am/MwActivityMonitor;->mMaximumFrontFloatingSize:I

    if-ge v1, v5, :cond_3

    .line 239
    return v8

    .line 242
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 243
    const/4 v5, 0x1

    return v5
.end method

.method public resetProcessMiniMaxStatus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "p"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 403
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/MwActivityMonitor$MessageObj;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/MwActivityMonitor$MessageObj;-><init>(Lcom/android/server/am/MwActivityMonitor;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 404
    iget-object v1, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 401
    return-void
.end method

.method public updateProcessMiniMaxStatus(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/am/MwActivityMonitor;->mMwHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 415
    return-void
.end method
