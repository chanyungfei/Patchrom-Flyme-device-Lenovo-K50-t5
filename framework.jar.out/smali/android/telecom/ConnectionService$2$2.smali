.class Landroid/telecom/ConnectionService$2$2;
.super Ljava/lang/Object;
.source "ConnectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/ConnectionService$2;

.field final synthetic val$conferenceCallId:Ljava/lang/String;

.field final synthetic val$connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field final synthetic val$isIncoming:Z

.field final synthetic val$numbers:Ljava/util/List;

.field final synthetic val$request:Landroid/telecom/ConnectionRequest;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService$2;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/ConnectionService$2;
    .param p2, "val$connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "val$conferenceCallId"    # Ljava/lang/String;
    .param p4, "val$request"    # Landroid/telecom/ConnectionRequest;
    .param p6, "val$isIncoming"    # Z

    .prologue
    .line 517
    .local p5, "val$numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/telecom/ConnectionService$2$2;->this$1:Landroid/telecom/ConnectionService$2;

    iput-object p2, p0, Landroid/telecom/ConnectionService$2$2;->val$connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iput-object p3, p0, Landroid/telecom/ConnectionService$2$2;->val$conferenceCallId:Ljava/lang/String;

    iput-object p4, p0, Landroid/telecom/ConnectionService$2$2;->val$request:Landroid/telecom/ConnectionRequest;

    iput-object p5, p0, Landroid/telecom/ConnectionService$2$2;->val$numbers:Ljava/util/List;

    iput-boolean p6, p0, Landroid/telecom/ConnectionService$2$2;->val$isIncoming:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 520
    iget-object v0, p0, Landroid/telecom/ConnectionService$2$2;->this$1:Landroid/telecom/ConnectionService$2;

    iget-object v0, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    .line 521
    iget-object v1, p0, Landroid/telecom/ConnectionService$2$2;->val$connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 522
    iget-object v2, p0, Landroid/telecom/ConnectionService$2$2;->val$conferenceCallId:Ljava/lang/String;

    .line 523
    iget-object v3, p0, Landroid/telecom/ConnectionService$2$2;->val$request:Landroid/telecom/ConnectionRequest;

    .line 524
    iget-object v4, p0, Landroid/telecom/ConnectionService$2$2;->val$numbers:Ljava/util/List;

    .line 525
    iget-boolean v5, p0, Landroid/telecom/ConnectionService$2$2;->val$isIncoming:Z

    .line 520
    invoke-static/range {v0 .. v5}, Landroid/telecom/ConnectionService;->-wrap6(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)V

    .line 519
    return-void
.end method
