.class Landroid/telecom/ConnectionServiceAdapterServant$2;
.super Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.source "ConnectionServiceAdapterServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionServiceAdapterServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionServiceAdapterServant;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionServiceAdapterServant;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionServiceAdapterServant;

    .prologue
    .line 335
    iput-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-direct {p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "parcelableConference"    # Landroid/telecom/ParcelableConference;

    .prologue
    .line 407
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 408
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 409
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 410
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 406
    return-void
.end method

.method public final addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/ParcelableConnection;

    .prologue
    .line 497
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 498
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 499
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 500
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 496
    return-void
.end method

.method public handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;)V
    .locals 3
    .param p1, "conferenceId"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "conference"    # Landroid/telecom/ParcelableConference;

    .prologue
    .line 585
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 586
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 587
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 588
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 589
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb6

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 584
    return-void
.end method

.method public handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;

    .prologue
    .line 341
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 342
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 343
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 344
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 345
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 340
    return-void
.end method

.method public notifyActionFailed(Ljava/lang/String;I)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 519
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 520
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 521
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 522
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 518
    return-void
.end method

.method public notifyCdmaCallAccepted(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    .prologue
    .line 557
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 556
    return-void
.end method

.method public notifyConnectionLost(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    .prologue
    .line 514
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 513
    return-void
.end method

.method public notifyIncomingInfoUpdate(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "alphaid"    # Ljava/lang/String;
    .param p4, "cli_validity"    # I

    .prologue
    .line 547
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 548
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 549
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 550
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 551
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 552
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 546
    return-void
.end method

.method public notifyNumberUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 539
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 540
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 541
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 542
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 538
    return-void
.end method

.method public notifySSNotificationToast(Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "notiType"    # I
    .param p3, "type"    # I
    .param p4, "code"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "index"    # I

    .prologue
    .line 527
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 528
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 529
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 530
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 531
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 532
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 533
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 534
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 526
    return-void
.end method

.method public notifyVtStatusInfo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 564
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 565
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 566
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 567
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 563
    return-void
.end method

.method public onPostDialChar(Ljava/lang/String;C)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "nextChar"    # C

    .prologue
    .line 428
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 429
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 430
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 431
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 427
    return-void
.end method

.method public onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "remainingDigits"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 421
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 422
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 423
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 419
    return-void
.end method

.method public queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/telecom/RemoteServiceCallback;

    .prologue
    .line 436
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 435
    return-void
.end method

.method public removeCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    .prologue
    .line 415
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 414
    return-void
.end method

.method public setActive(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    .prologue
    .line 350
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 349
    return-void
.end method

.method public final setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .prologue
    .line 468
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 469
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 470
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 471
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 472
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 467
    return-void
.end method

.method public final setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    .line 478
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 479
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 480
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 481
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 482
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 477
    return-void
.end method

.method public setConferenceMergeFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 392
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 393
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 394
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 391
    return-void
.end method

.method public final setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p2, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 489
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 490
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 491
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 487
    return-void
.end method

.method public setConnectionCapabilities(Ljava/lang/String;I)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "connectionCapabilities"    # I

    .prologue
    .line 385
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    .line 386
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 385
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 384
    return-void
.end method

.method public setDialing(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 359
    return-void
.end method

.method public setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 366
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 367
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 368
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 369
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 365
    return-void
.end method

.method public final setExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 505
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 506
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 507
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 508
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 504
    return-void
.end method

.method public setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conferenceCallId"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 400
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 401
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 402
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 398
    return-void
.end method

.method public final setIsVoipAudioMode(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "isVoip"    # Z

    .prologue
    const/4 v1, 0x0

    .line 454
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0x10

    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 453
    return-void

    :cond_0
    move v0, v1

    .line 454
    goto :goto_0
.end method

.method public setOnHold(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    .prologue
    .line 374
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 373
    return-void
.end method

.method public setRingbackRequested(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "ringback"    # Z

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 378
    return-void

    :cond_0
    move v0, v1

    .line 379
    goto :goto_0
.end method

.method public setRinging(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 354
    return-void
.end method

.method public final setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 460
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 461
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 462
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 463
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 459
    return-void
.end method

.method public setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;

    .prologue
    .line 446
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 447
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 448
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 449
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 445
    return-void
.end method

.method public setVideoState(Ljava/lang/String;I)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 441
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 440
    return-void
.end method

.method public updateExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 574
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 575
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 576
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 577
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 573
    return-void
.end method
