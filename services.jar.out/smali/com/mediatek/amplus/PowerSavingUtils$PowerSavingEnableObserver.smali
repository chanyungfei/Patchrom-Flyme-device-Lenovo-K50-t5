.class Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;
.super Landroid/database/ContentObserver;
.source "PowerSavingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/amplus/PowerSavingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerSavingEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/amplus/PowerSavingUtils;


# direct methods
.method constructor <init>(Lcom/mediatek/amplus/PowerSavingUtils;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    .line 304
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 305
    invoke-virtual {p0}, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;->observe()V

    .line 307
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    # getter for: Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/amplus/PowerSavingUtils;->access$000(Lcom/mediatek/amplus/PowerSavingUtils;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "background_power_saving_enable"

    .line 311
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 315
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    # invokes: Lcom/mediatek/amplus/PowerSavingUtils;->setPowerSavingEnable()V
    invoke-static {v0}, Lcom/mediatek/amplus/PowerSavingUtils;->access$500(Lcom/mediatek/amplus/PowerSavingUtils;)V

    .line 316
    return-void
.end method

.method public onChange(Z)V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    # invokes: Lcom/mediatek/amplus/PowerSavingUtils;->setPowerSavingEnable()V
    invoke-static {v0}, Lcom/mediatek/amplus/PowerSavingUtils;->access$500(Lcom/mediatek/amplus/PowerSavingUtils;)V

    .line 320
    return-void
.end method
