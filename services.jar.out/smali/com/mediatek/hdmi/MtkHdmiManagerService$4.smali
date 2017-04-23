.class Lcom/mediatek/hdmi/MtkHdmiManagerService$4;
.super Ljava/lang/Object;
.source "MtkHdmiManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleMultiChannel()V
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
    .line 313
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x0

    .line 317
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v1, p2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-set1(Lcom/mediatek/hdmi/MtkHdmiManagerService;I)I

    .line 318
    const-string/jumbo v1, "MtkHdmiService"

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAudioOutputDialog clicked.. which: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap9(Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap11(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V

    .line 322
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 323
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$4;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-set0(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 316
    return-void
.end method
