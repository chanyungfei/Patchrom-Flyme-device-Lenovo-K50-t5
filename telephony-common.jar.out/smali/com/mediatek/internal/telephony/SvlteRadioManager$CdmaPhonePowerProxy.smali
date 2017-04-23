.class Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;
.super Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;
.source "SvlteRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/SvlteRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CdmaPhonePowerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/SvlteRadioManager;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/SvlteRadioManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V

    return-void
.end method


# virtual methods
.method setRadioPower(Lcom/android/internal/telephony/Phone;Z)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "power"    # Z

    .prologue
    .line 412
    const-string/jumbo v1, "ril.cdma.emdstatus.send"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    const-string/jumbo v2, "CdmaPhonePowerProxy: setRadioPower retry after 200ms"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->-wrap0(Lcom/mediatek/internal/telephony/SvlteRadioManager;Ljava/lang/String;)V

    .line 416
    new-instance v0, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;Lcom/android/internal/telephony/Phone;Z)V

    .line 417
    .local v0, "setRadioPowerRunnable":Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$CdmaPhonePowerProxy;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 411
    .end local v0    # "setRadioPowerRunnable":Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;->setRadioPower(Lcom/android/internal/telephony/Phone;Z)V

    goto :goto_0
.end method
