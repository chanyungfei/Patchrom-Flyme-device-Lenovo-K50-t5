.class Lcom/mediatek/mom/ControllerBase$ListenerDeathRecipient;
.super Ljava/lang/Object;
.source "ControllerBase.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/ControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDeathRecipient"
.end annotation


# instance fields
.field mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/mediatek/mom/ControllerBase;


# direct methods
.method constructor <init>(Lcom/mediatek/mom/ControllerBase;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 167
    iput-object p1, p0, Lcom/mediatek/mom/ControllerBase$ListenerDeathRecipient;->this$0:Lcom/mediatek/mom/ControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/mediatek/mom/ControllerBase$ListenerDeathRecipient;->mToken:Landroid/os/IBinder;

    .line 168
    iput-object p2, p0, Lcom/mediatek/mom/ControllerBase$ListenerDeathRecipient;->mToken:Landroid/os/IBinder;

    .line 169
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const-string/jumbo v0, "ControllerBase"

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "binderDied! mToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/ControllerBase$ListenerDeathRecipient;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/mediatek/mom/ControllerBase$ListenerDeathRecipient;->mToken:Landroid/os/IBinder;

    .line 174
    return-void
.end method
