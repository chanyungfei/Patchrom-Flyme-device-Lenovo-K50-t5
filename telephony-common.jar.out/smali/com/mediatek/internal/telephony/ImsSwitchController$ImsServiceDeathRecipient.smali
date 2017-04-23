.class Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;
.super Ljava/lang/Object;
.source "ImsSwitchController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ImsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-set0(Lcom/android/ims/internal/IImsService;)Lcom/android/ims/internal/IImsService;

    .line 195
    return-void
.end method
