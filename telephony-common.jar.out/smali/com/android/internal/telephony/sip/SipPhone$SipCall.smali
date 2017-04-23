.class Lcom/android/internal/telephony/sip/SipPhone$SipCall;
.super Lcom/android/internal/telephony/sip/SipCallBase;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/sip/SipPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipCall"
.end annotation


# static fields
.field private static final SC_DBG:Z = true

.field private static final SC_TAG:Ljava/lang/String; = "SipCall"

.field private static final SC_VDBG:Z


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/sip/SipPhone;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)Landroid/net/rtp/AudioGroup;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/sip/SipPhone$SipCall;Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->add(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/sip/SipPhone;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipCallBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/sip/SipPhone;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;)V

    return-void
.end method

.method private add(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .prologue
    .line 699
    const-string/jumbo v1, "add:"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getCall()Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v0

    .line 701
    .local v0, "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    if-ne v0, p0, :cond_0

    return-void

    .line 702
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 704
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->changeOwner(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 698
    return-void
.end method

.method private convertDtmf(C)I
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 719
    add-int/lit8 v0, p1, -0x30

    .line 720
    .local v0, "code":I
    if-ltz v0, :cond_0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    .line 721
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 729
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid DTMF char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 729
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 722
    :sswitch_0
    const/16 v1, 0xa

    return v1

    .line 723
    :sswitch_1
    const/16 v1, 0xb

    return v1

    .line 724
    :sswitch_2
    const/16 v1, 0xc

    return v1

    .line 725
    :sswitch_3
    const/16 v1, 0xd

    return v1

    .line 726
    :sswitch_4
    const/16 v1, 0xe

    return v1

    .line 727
    :sswitch_5
    const/16 v1, 0xf

    return v1

    .line 733
    :cond_1
    return v0

    .line 721
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_1
        0x2a -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_3
        0x43 -> :sswitch_4
        0x44 -> :sswitch_5
    .end sparse-switch
.end method

.method private getAudioGroup()Landroid/net/rtp/AudioGroup;
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    return-object v0
.end method

.method private isSpeakerOn()Z
    .locals 3

    .prologue
    .line 621
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/sip/SipPhone;->-get1(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 624
    .local v0, "ret":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 842
    const-string/jumbo v0, "SipCall"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void
.end method

.method private takeOver(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 3
    .param p1, "that"    # Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .prologue
    .line 493
    const-string/jumbo v2, "takeOver"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 494
    iget-object v2, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    .line 495
    iget-object v2, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 496
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 497
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->changeOwner(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    goto :goto_0

    .line 492
    :cond_0
    return-void
.end method


# virtual methods
.method acceptCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 610
    const-string/jumbo v0, "acceptCall: accepting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->-get4(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 612
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "acceptCall() in a non-ringing call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 615
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "acceptCall() in a conf call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->acceptCall()V

    .line 609
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 9
    .param p1, "originalNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 516
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dial: num="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "xxx"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 518
    move-object v2, p1

    .line 519
    .local v2, "calleeSipUri":Ljava/lang/String;
    const-string/jumbo v6, "@"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 520
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/sip/SipPhone;->-get3(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 521
    .local v5, "replaceStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/sip/SipPhone;->-get3(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v6

    .line 522
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 521
    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 526
    .end local v5    # "replaceStr":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v6, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v6, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v1

    .line 527
    .local v1, "callee":Landroid/net/sip/SipProfile;
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {v0, v6, p0, v1, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 529
    .local v0, "c":Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->dial()V

    .line 530
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    return-object v0

    .line 536
    .end local v0    # "c":Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    .end local v1    # "callee":Landroid/net/sip/SipProfile;
    :catch_0
    move-exception v4

    .line 537
    .local v4, "ee":Ljava/lang/Exception;
    new-instance v6, Landroid/net/sip/SipException;

    const-string/jumbo v7, "dial"

    invoke-direct {v6, v7, v4}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 533
    .end local v4    # "ee":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 534
    .local v3, "e":Ljava/text/ParseException;
    new-instance v6, Landroid/net/sip/SipException;

    const-string/jumbo v7, "dial"

    invoke-direct {v6, v7, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 509
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getMute()Z
    .locals 3

    .prologue
    .line 673
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    const/4 v0, 0x0

    .line 676
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMute: ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 677
    return v0

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getMute()Z

    move-result v0

    .local v0, "ret":Z
    goto :goto_0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    return-object v0
.end method

.method public hangup()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 544
    const-class v5, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v5

    .line 545
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangup: call "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 547
    const-string/jumbo v6, ": "

    .line 546
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 547
    const-string/jumbo v6, " on phone "

    .line 546
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 547
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 546
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 548
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 549
    const/4 v3, 0x0

    .line 550
    .local v3, "excp":Lcom/android/internal/telephony/CallStateException;
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "excp":Lcom/android/internal/telephony/CallStateException;
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 553
    :catch_0
    move-exception v2

    .line 554
    .local v2, "e":Lcom/android/internal/telephony/CallStateException;
    move-object v3, v2

    .local v3, "excp":Lcom/android/internal/telephony/CallStateException;
    goto :goto_0

    .line 557
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    .end local v3    # "excp":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    if-eqz v3, :cond_2

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 544
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 559
    :cond_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangup: dead call "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 560
    const-string/jumbo v6, ": "

    .line 559
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 560
    const-string/jumbo v6, " on phone "

    .line 559
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 560
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 559
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    monitor-exit v5

    .line 543
    return-void
.end method

.method public hangup(I)V
    .locals 6
    .param p1, "discRingingCallCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 569
    const-class v5, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v5

    .line 570
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 573
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 574
    const/4 v3, 0x0

    .line 575
    .local v3, "excp":Lcom/android/internal/telephony/CallStateException;
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "excp":Lcom/android/internal/telephony/CallStateException;
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Connection;->hangup(I)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 578
    :catch_0
    move-exception v2

    .line 579
    .local v2, "e":Lcom/android/internal/telephony/CallStateException;
    move-object v3, v2

    .local v3, "excp":Lcom/android/internal/telephony/CallStateException;
    goto :goto_0

    .line 582
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    .end local v3    # "excp":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    if-eqz v3, :cond_1

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 569
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    .line 568
    return-void
.end method

.method hold()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 649
    const-string/jumbo v2, "hold:"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 650
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 651
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .local v0, "c":Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->hold()V

    goto :goto_0

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

    .line 648
    return-void
.end method

.method initIncomingCall(Landroid/net/sip/SipAudioCall;Z)Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    .locals 4
    .param p1, "sipAudioCall"    # Landroid/net/sip/SipAudioCall;
    .param p2, "makeCallWait"    # Z

    .prologue
    .line 592
    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    .line 593
    .local v1, "callee":Landroid/net/sip/SipProfile;
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {v0, v3, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;)V

    .line 594
    .local v0, "c":Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    if-eqz p2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    .line 597
    .local v2, "newState":Lcom/android/internal/telephony/Call$State;
    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->initIncomingCall(Landroid/net/sip/SipAudioCall;Lcom/android/internal/telephony/Call$State;)V

    .line 599
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 600
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/sip/SipPhone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 601
    return-object v0

    .line 596
    .end local v2    # "newState":Lcom/android/internal/telephony/Call$State;
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    .restart local v2    # "newState":Lcom/android/internal/telephony/Call$State;
    goto :goto_0
.end method

.method isInCallOrIdle()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 820
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isInCallOrIdle: conn.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 821
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 822
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isInCallOrIdle: conn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 823
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getSipAudioCall()Landroid/net/sip/SipAudioCall;

    move-result-object v2

    .line 824
    .local v2, "sipAudioCall":Landroid/net/sip/SipAudioCall;
    if-nez v2, :cond_1

    .line 825
    return v6

    .line 826
    :cond_1
    invoke-virtual {v2}, Landroid/net/sip/SipAudioCall;->getSipSession()Landroid/net/sip/SipSession;

    move-result-object v3

    .line 827
    .local v3, "sipSession":Landroid/net/sip/SipSession;
    if-nez v3, :cond_2

    .line 828
    return v6

    .line 829
    :cond_2
    invoke-virtual {v3}, Landroid/net/sip/SipSession;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 830
    return v6

    .line 832
    .end local v2    # "sipAudioCall":Landroid/net/sip/SipAudioCall;
    .end local v3    # "sipSession":Landroid/net/sip/SipSession;
    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method merge(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 8
    .param p1, "that"    # Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 681
    const-string/jumbo v4, "merge:"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 682
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 686
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    iget-object v4, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    .line 687
    iget-object v5, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/internal/telephony/Connection;

    .line 686
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/telephony/Connection;

    .line 688
    .local v2, "cc":[Lcom/android/internal/telephony/Connection;
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    .local v1, "c":Lcom/android/internal/telephony/Connection;
    move-object v3, v1

    .line 689
    check-cast v3, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .line 690
    .local v3, "conn":Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->add(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 691
    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_0

    .line 692
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->unhold(Landroid/net/rtp/AudioGroup;)V

    .line 688
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 695
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    .end local v3    # "conn":Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 680
    return-void
.end method

.method onConnectionEnded(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .prologue
    .line 790
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConnectionEnded: conn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 791
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 792
    const/4 v0, 0x1

    .line 793
    .local v0, "allConnectionsDisconnected":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "---check connections: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 794
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 793
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 795
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "c$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 796
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "   state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 799
    const/4 v0, 0x0

    .line 803
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    :cond_1
    if-eqz v0, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 806
    .end local v0    # "allConnectionsDisconnected":Z
    .end local v2    # "c$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 808
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v3, p1}, Lcom/android/internal/telephony/sip/SipPhone;->-wrap2(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V

    .line 788
    return-void
.end method

.method onConnectionStateChanged(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .prologue
    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectionStateChanged: conn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 784
    invoke-virtual {p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 780
    :cond_0
    return-void
.end method

.method rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 605
    const-string/jumbo v0, "rejectCall:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->hangup()V

    .line 604
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 477
    const-string/jumbo v0, "reset"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 479
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 476
    return-void
.end method

.method sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDtmf: c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 710
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 711
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    if-nez v0, :cond_0

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDtmf: audioGroup == null, ignore c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 713
    return-void

    .line 715
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->convertDtmf(C)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->sendDtmf(I)V

    .line 708
    return-void
.end method

.method setAudioGroupMode()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 628
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 629
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    if-nez v0, :cond_0

    .line 630
    const-string/jumbo v2, "setAudioGroupMode: audioGroup == null ignore"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 631
    return-void

    .line 633
    :cond_0
    invoke-virtual {v0}, Landroid/net/rtp/AudioGroup;->getMode()I

    move-result v1

    .line 634
    .local v1, "mode":I
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 635
    invoke-virtual {v0, v5}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    .line 644
    :goto_0
    const-string/jumbo v2, "setAudioGroupMode change: %d --> %d"

    .line 643
    new-array v3, v4, [Ljava/lang/Object;

    .line 644
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 645
    invoke-virtual {v0}, Landroid/net/rtp/AudioGroup;->getMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 643
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 627
    return-void

    .line 636
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 637
    invoke-virtual {v0, v6}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0

    .line 638
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->isSpeakerOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 639
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0

    .line 641
    :cond_3
    invoke-virtual {v0, v4}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0
.end method

.method setMute(Z)V
    .locals 4
    .param p1, "muted"    # Z

    .prologue
    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMute: muted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 667
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 668
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setMute(Z)V

    goto :goto_0

    .line 665
    :cond_0
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .locals 3
    .param p1, "newState"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    if-eq v0, p1, :cond_2

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState: cur state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 740
    const-string/jumbo v1, " --> "

    .line 739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 740
    const-string/jumbo v1, ": "

    .line 739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 740
    const-string/jumbo v1, ": on phone "

    .line 739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 741
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 741
    const-string/jumbo v1, " "

    .line 739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 741
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 743
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_3

    .line 744
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->startRingbackTone()V

    .line 752
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_4

    .line 753
    const-string/jumbo v0, "Call"

    const-string/jumbo v1, "Start the SIP phone ring"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->-wrap3(Lcom/android/internal/telephony/sip/SipPhone;)V

    .line 769
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 770
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->updatePhoneState()V

    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->notifyPreciseCallStateChanged()V

    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->notifyPhoneStateChanged()V

    .line 737
    :cond_2
    return-void

    .line 746
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->stopRingbackTone()V

    goto :goto_0

    .line 755
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    const-string/jumbo v0, "Call"

    const-string/jumbo v1, "Start the SIP phone ring after the call is ended"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->-get4(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_5

    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->-get4(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    iput-object v1, v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 762
    const-string/jumbo v0, "Call"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setState]Change WAITING to INCOMING.  New state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone;->-get4(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->-wrap3(Lcom/android/internal/telephony/sip/SipPhone;)V

    goto/16 :goto_1
.end method

.method switchWith(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 3
    .param p1, "that"    # Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .prologue
    .line 483
    const-string/jumbo v1, "switchWith"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 484
    const-class v2, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v2

    .line 485
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;)V

    .line 486
    .local v0, "tmp":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->takeOver(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 487
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->takeOver(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 488
    invoke-direct {p1, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->takeOver(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 482
    return-void

    .line 484
    .end local v0    # "tmp":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method unhold()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 656
    const-string/jumbo v3, "unhold:"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->log(Ljava/lang/String;)V

    .line 657
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 658
    new-instance v0, Landroid/net/rtp/AudioGroup;

    invoke-direct {v0}, Landroid/net/rtp/AudioGroup;-><init>()V

    .line 659
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->mConnections:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 660
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->unhold(Landroid/net/rtp/AudioGroup;)V

    goto :goto_0

    .line 662
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

    .line 655
    return-void
.end method
