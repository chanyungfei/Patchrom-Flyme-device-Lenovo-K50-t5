.class Lcom/flyme/deviceoriginalsettings/CryptKeeper$2;
.super Landroid/os/Handler;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$2;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 286
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 299
    :goto_0
    return-void

    .line 288
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$2;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # invokes: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->updateProgress()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$1200(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)V

    goto :goto_0

    .line 292
    :pswitch_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$2;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # invokes: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->cooldown()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$500(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)V

    goto :goto_0

    .line 296
    :pswitch_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$2;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # invokes: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->notifyUser()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$1300(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)V

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
