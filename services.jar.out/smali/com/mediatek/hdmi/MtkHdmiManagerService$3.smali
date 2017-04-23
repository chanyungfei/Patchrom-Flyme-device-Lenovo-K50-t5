.class Lcom/mediatek/hdmi/MtkHdmiManagerService$3;
.super Landroid/database/ContentObserver;
.source "MtkHdmiManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$3;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 493
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 496
    const-string/jumbo v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hdmiSettingsObserver onChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$3;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$3;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-get2(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 498
    const-string/jumbo v3, "hdmi_enable_status"

    .line 499
    const/4 v4, -0x2

    .line 497
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-set2(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z

    .line 500
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$3;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$3;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-get1(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v1

    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$3;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-get6(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap13(Lcom/mediatek/hdmi/MtkHdmiManagerService;ZZ)V

    .line 495
    return-void

    .line 497
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
