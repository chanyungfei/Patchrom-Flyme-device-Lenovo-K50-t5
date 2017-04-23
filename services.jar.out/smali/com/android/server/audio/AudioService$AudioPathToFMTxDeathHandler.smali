.class Lcom/android/server/audio/AudioService$AudioPathToFMTxDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioPathToFMTxDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 6678
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioPathToFMTxDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6679
    iput-object p2, p0, Lcom/android/server/audio/AudioService$AudioPathToFMTxDeathHandler;->mCb:Landroid/os/IBinder;

    .line 6678
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 6683
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "AudioPathToFMTxDeathHandler::binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6684
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPathToFMTxDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->setAudioPathOutofFMTx()Z

    .line 6682
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 6688
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPathToFMTxDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
