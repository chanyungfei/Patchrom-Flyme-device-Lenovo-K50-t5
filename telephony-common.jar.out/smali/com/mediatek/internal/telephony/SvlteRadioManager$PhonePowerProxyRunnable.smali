.class Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;
.super Ljava/lang/Object;
.source "SvlteRadioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/SvlteRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhonePowerProxyRunnable"
.end annotation


# instance fields
.field mPhonePowerProxy:Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;

.field mRetryPhone:Lcom/android/internal/telephony/Phone;

.field mRetryPower:Z

.field final synthetic this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;Lcom/android/internal/telephony/Phone;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/SvlteRadioManager;
    .param p2, "proxy"    # Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p4, "power"    # Z

    .prologue
    .line 431
    iput-object p1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p2, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;->mPhonePowerProxy:Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;

    .line 433
    iput-object p3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;->mRetryPhone:Lcom/android/internal/telephony/Phone;

    .line 434
    iput-boolean p4, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;->mRetryPower:Z

    .line 431
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;->mPhonePowerProxy:Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;->mRetryPhone:Lcom/android/internal/telephony/Phone;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxyRunnable;->mRetryPower:Z

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager$PhonePowerProxy;->setRadioPower(Lcom/android/internal/telephony/Phone;Z)V

    .line 437
    return-void
.end method
