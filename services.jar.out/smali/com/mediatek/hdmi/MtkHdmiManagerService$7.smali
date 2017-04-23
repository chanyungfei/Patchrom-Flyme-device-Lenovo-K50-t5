.class Lcom/mediatek/hdmi/MtkHdmiManagerService$7;
.super Ljava/lang/Object;
.source "MtkHdmiManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService;->initial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$7;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$7;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap3(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    .line 561
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$7;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-get3(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 562
    const v1, 0x80500c9

    .line 561
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-set5(Ljava/lang/String;)Ljava/lang/String;

    .line 563
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$7;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-get3(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 564
    const v1, 0x80500ca

    .line 563
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-set6(Ljava/lang/String;)Ljava/lang/String;

    .line 559
    return-void
.end method
