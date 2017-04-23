.class Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;
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
    name = "SimStateChangedRunnable"
.end annotation


# instance fields
.field mRetryIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/SvlteRadioManager;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput-object p2, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;->mRetryIntent:Landroid/content/Intent;

    .line 602
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;->this$0:Lcom/mediatek/internal/telephony/SvlteRadioManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;->mRetryIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->onReceiveSimStateChangedIntent(Landroid/content/Intent;)V

    .line 607
    return-void
.end method
