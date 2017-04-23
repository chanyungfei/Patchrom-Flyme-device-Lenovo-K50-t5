.class public Landroid/app/KeyguardManager$KeyguardLock;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/KeyguardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyguardLock"
.end annotation


# instance fields
.field private final mTag:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/app/KeyguardManager;


# direct methods
.method constructor <init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Landroid/app/KeyguardManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    .line 107
    iput-object p2, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method public disableKeyguard()V
    .locals 4

    .prologue
    .line 129
    const-string/jumbo v1, "KeyguardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableKeyguard,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v1}, Landroid/app/KeyguardManager;->-get0(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public reenableKeyguard()V
    .locals 4

    .prologue
    .line 157
    const-string/jumbo v1, "KeyguardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reenableKeyguard,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v1}, Landroid/app/KeyguardManager;->-get0(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->reenableKeyguard(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
