.class Lcom/mediatek/hdmi/MtkHdmiManagerService$1;
.super Landroid/telephony/PhoneStateListener;
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
.method constructor <init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string/jumbo v0, "MtkHdmiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Phone state changed, new state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap9(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap5(Lcom/mediatek/hdmi/MtkHdmiManagerService;I)V

    .line 131
    return-void
.end method
