.class Lcom/mediatek/mom/ReceiverRecordHelper$1;
.super Ljava/lang/Object;
.source "ReceiverRecordHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mom/ReceiverRecordHelper;->scheduleWriteReceiverList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mom/ReceiverRecordHelper;


# direct methods
.method constructor <init>(Lcom/mediatek/mom/ReceiverRecordHelper;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/mediatek/mom/ReceiverRecordHelper$1;->this$0:Lcom/mediatek/mom/ReceiverRecordHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper$1;->this$0:Lcom/mediatek/mom/ReceiverRecordHelper;

    # invokes: Lcom/mediatek/mom/ReceiverRecordHelper;->writeReceiverList()V
    invoke-static {v0}, Lcom/mediatek/mom/ReceiverRecordHelper;->access$000(Lcom/mediatek/mom/ReceiverRecordHelper;)V

    .line 437
    return-void
.end method
