.class Lcom/mediatek/internal/telephony/ImsSwitchController$2;
.super Ljava/lang/Object;
.source "ImsSwitchController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$WifiOffListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/ImsSwitchController;->registerEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWifiOff(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 245
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-set3(Lcom/mediatek/internal/telephony/ImsSwitchController;I)I

    .line 246
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-set2(Lcom/mediatek/internal/telephony/ImsSwitchController;Z)Z

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWifiOff reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap2(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap0(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-get0(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;

    move-result-object v1

    .line 251
    const-string/jumbo v2, "wifi"

    .line 250
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 252
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-get1(Lcom/mediatek/internal/telephony/ImsSwitchController;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiDisabled(I)Z

    .line 253
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$2;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-set2(Lcom/mediatek/internal/telephony/ImsSwitchController;Z)Z

    .line 244
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method
