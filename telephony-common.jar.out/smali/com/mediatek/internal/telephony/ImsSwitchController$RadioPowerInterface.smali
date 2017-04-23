.class Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;
.super Ljava/lang/Object;
.source "ImsSwitchController.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IRadioPower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ImsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RadioPowerInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyRadioPowerChange(ZI)V
    .locals 5
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 150
    const-string/jumbo v1, "ro.mtk_ims_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-get0(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 153
    const-string/jumbo v2, "volte_vt_enabled"

    .line 154
    const/4 v3, 0x1

    .line 151
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, "imsSetting":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyRadioPowerChange, imsSetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " power:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    const-string/jumbo v2, " phoneId:"

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap2(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 160
    if-nez v0, :cond_1

    .line 161
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v1, v4, p2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap5(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V

    .line 149
    .end local v0    # "imsSetting":I
    :cond_0
    :goto_0
    return-void

    .line 163
    .restart local v0    # "imsSetting":I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v1, p1, p2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap5(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V

    goto :goto_0
.end method
