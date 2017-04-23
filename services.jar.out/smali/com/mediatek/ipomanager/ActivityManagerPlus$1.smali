.class Lcom/mediatek/ipomanager/ActivityManagerPlus$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipomanager/ActivityManagerPlus;->startHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;


# direct methods
.method constructor <init>(Lcom/mediatek/ipomanager/ActivityManagerPlus;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkIPOEncryptionCondition()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "ro.crypto.state"

    const-string/jumbo v3, "unsupported"

    .line 385
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "encrypted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string/jumbo v2, "mount"

    .line 390
    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 392
    if-nez v2, :cond_1

    .line 400
    :goto_0
    return v0

    .line 386
    :cond_0
    return v1

    .line 393
    :cond_1
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v2

    const-string/jumbo v3, "ActivityManagerPlus"

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "phone encrypted type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    if-eq v2, v1, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 399
    :catch_0
    move-exception v1

    const-string/jumbo v2, "ActivityManagerPlus"

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error calling mount service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "ActivityManagerPlus"

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Receive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->getInstance()Lcom/android/internal/app/ShutdownManager;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.BOOST_DOWNLOADING"

    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "android.intent.action.ACTION_PREBOOT_IPO"

    .line 253
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "android.intent.action.ACTION_BOOT_IPO"

    .line 324
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    .line 353
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string/jumbo v1, "android.intent.action.black.mode"

    .line 363
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    .line 368
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 372
    iget-object v1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mAlarmBoot:Z
    invoke-static {v1}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$200(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_3

    const-string/jumbo v1, "package_name"

    .line 230
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    if-eqz v2, :cond_4

    const-string/jumbo v1, "enabled"

    .line 233
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 234
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    iget-object v0, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 235
    add-int/lit8 v1, v4, -0x1

    .line 236
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 238
    if-nez v4, :cond_6

    .line 248
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_9

    .line 250
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    iget-object v0, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 229
    :cond_3
    return-void

    .line 232
    :cond_4
    return-void

    .line 240
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 239
    :cond_6
    if-gez v1, :cond_7

    .line 242
    :goto_2
    if-ltz v1, :cond_8

    .line 245
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 239
    :cond_7
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    iget-object v0, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 243
    :cond_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 248
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 249
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    iget-object v0, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    const-string/jumbo v1, "ActivityManagerPlus"

    const-string/jumbo v2, "ipo PREBOOT_IPO"

    .line 254
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ActivityManagerPlus"

    const-string/jumbo v2, "re-launch launcher"

    .line 256
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.HOME"

    .line 258
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 260
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 262
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->prebootKillProcessListSize()I

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v0, "ActivityManagerPlus"

    const-string/jumbo v1, "prebootKillProcess list empty, don\'t need to perform kill"

    .line 309
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-string/jumbo v0, "ActivityManagerPlus"

    const-string/jumbo v1, "finished"

    .line 313
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    # invokes: Lcom/mediatek/ipomanager/ActivityManagerPlus;->isAlarmBoot()Z
    invoke-static {}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$100()Z

    move-result v0

    if-eq v0, v6, :cond_c

    .line 321
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mAlarmBoot:Z
    invoke-static {v0, v5}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$202(Lcom/mediatek/ipomanager/ActivityManagerPlus;Z)Z

    goto/16 :goto_0

    .line 263
    :cond_b
    iget-object v1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    iget-object v1, v1, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$1;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$1;-><init>(Lcom/mediatek/ipomanager/ActivityManagerPlus$1;Lcom/android/internal/app/ShutdownManager;)V

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 319
    :cond_c
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mAlarmBoot:Z
    invoke-static {v0, v6}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$202(Lcom/mediatek/ipomanager/ActivityManagerPlus;Z)Z

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v1, "ActivityManagerPlus"

    const-string/jumbo v2, "ipo BOOT_IPO"

    .line 325
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$000(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->getInstance(Landroid/content/Context;)Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->stopSocketServer()V

    .line 329
    # invokes: Lcom/mediatek/ipomanager/ActivityManagerPlus;->isAlarmBoot()Z
    invoke-static {}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$100()Z

    move-result v1

    if-eq v1, v6, :cond_e

    .line 338
    iget-object v1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$000(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->restoreStates(Landroid/content/Context;)V

    .line 339
    invoke-direct {p0}, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->checkIPOEncryptionCondition()Z

    move-result v0

    if-ne v0, v6, :cond_0

    const-string/jumbo v0, "ActivityManagerPlus"

    const-string/jumbo v1, "ipo BOOT_IPO: removeIPOWin"

    .line 340
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mService:Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;
    invoke-static {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$300(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;->removeIPOWin(Landroid/content/Context;)V

    const-string/jumbo v0, "ActivityManagerPlus"

    const-string/jumbo v1, "PMS wakeup"

    .line 344
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$000(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 349
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mService:Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;
    invoke-static {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$300(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;->ipoBootCompleted()V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v0, "ActivityManagerPlus"

    const-string/jumbo v1, "power off alarm enabled"

    .line 330
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    iget-object v0, v0, Lcom/mediatek/ipomanager/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$2;

    invoke-direct {v1, p0}, Lcom/mediatek/ipomanager/ActivityManagerPlus$1$2;-><init>(Lcom/mediatek/ipomanager/ActivityManagerPlus$1;)V

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 355
    :cond_f
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mService:Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;
    invoke-static {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$300(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;->updateFirstBoot(Ljava/lang/Boolean;)V

    .line 357
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    const-string/jumbo v1, "IPO Bootup Start"

    invoke-virtual {v0, v6, v1}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->monitorBootReceiver(ZLjava/lang/String;)V

    const-string/jumbo v0, "ActivityManagerPlus"

    const-string/jumbo v1, "handling SHUTDOWN_IPO finished"

    .line 359
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$000(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->getInstance(Landroid/content/Context;)Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->startSocketServer()V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v0, "_black_mode"

    .line 364
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 365
    if-ne v0, v6, :cond_0

    .line 366
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mService:Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;
    invoke-static {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$300(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;->createIPOWin(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v0, "android.media.EXTRA_RINGER_MODE"

    const/4 v1, -0x1

    .line 369
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 370
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.mute.state"

    .line 371
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v1, "android.intent.action.normal.boot"

    .line 372
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$000(Lcom/mediatek/ipomanager/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->restoreStates(Landroid/content/Context;)V

    .line 374
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlus$1;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlus;

    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlus;->mAlarmBoot:Z
    invoke-static {v0, v5}, Lcom/mediatek/ipomanager/ActivityManagerPlus;->access$202(Lcom/mediatek/ipomanager/ActivityManagerPlus;Z)Z

    goto/16 :goto_0
.end method
