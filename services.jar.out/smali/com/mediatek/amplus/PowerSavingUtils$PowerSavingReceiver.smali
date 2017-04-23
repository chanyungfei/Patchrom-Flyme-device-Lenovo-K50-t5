.class Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerSavingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/amplus/PowerSavingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerSavingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/amplus/PowerSavingUtils;


# direct methods
.method public constructor <init>(Lcom/mediatek/amplus/PowerSavingUtils;)V
    .locals 2

    .prologue
    .line 270
    iput-object p1, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 271
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    .line 272
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    .line 273
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    .line 274
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    .line 276
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    # getter for: Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/mediatek/amplus/PowerSavingUtils;->access$000(Lcom/mediatek/amplus/PowerSavingUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 278
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    .line 282
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    .line 285
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.hardware.usb.action.USB_STATE"

    .line 288
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    .line 290
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 298
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    # setter for: Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOff:Z
    invoke-static {v0, v2}, Lcom/mediatek/amplus/PowerSavingUtils;->access$102(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z

    .line 284
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOffTime:J
    invoke-static {v0, v2, v3}, Lcom/mediatek/amplus/PowerSavingUtils;->access$202(Lcom/mediatek/amplus/PowerSavingUtils;J)J

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    # setter for: Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOff:Z
    invoke-static {v0, v1}, Lcom/mediatek/amplus/PowerSavingUtils;->access$102(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z

    .line 287
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    const-wide/16 v2, 0x0

    # setter for: Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOffTime:J
    invoke-static {v0, v2, v3}, Lcom/mediatek/amplus/PowerSavingUtils;->access$202(Lcom/mediatek/amplus/PowerSavingUtils;J)J

    goto :goto_0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    const-string/jumbo v2, "connected"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/mediatek/amplus/PowerSavingUtils;->mIsUsbConnected:Z
    invoke-static {v0, v1}, Lcom/mediatek/amplus/PowerSavingUtils;->access$302(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    .line 292
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplayStatus;

    .line 294
    iget-object v3, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v4, 0x2

    if-eq v4, v0, :cond_4

    move v0, v1

    :goto_1
    # setter for: Lcom/mediatek/amplus/PowerSavingUtils;->mIsWFDConnected:Z
    invoke-static {v3, v0}, Lcom/mediatek/amplus/PowerSavingUtils;->access$402(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z

    const-string/jumbo v0, "AlarmManager"

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PowerSavingReceiver mIsWFDConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    # getter for: Lcom/mediatek/amplus/PowerSavingUtils;->mIsWFDConnected:Z
    invoke-static {v2}, Lcom/mediatek/amplus/PowerSavingUtils;->access$400(Lcom/mediatek/amplus/PowerSavingUtils;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v0, v2

    .line 294
    goto :goto_1
.end method
