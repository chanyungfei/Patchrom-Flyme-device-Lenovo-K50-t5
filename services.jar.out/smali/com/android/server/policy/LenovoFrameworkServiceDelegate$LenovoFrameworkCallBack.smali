.class final Lcom/android/server/policy/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;
.super Lcom/android/internal/policy/ILenovoFrameworkCallBack$Stub;
.source "LenovoFrameworkServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LenovoFrameworkServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LenovoFrameworkCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/LenovoFrameworkServiceDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;->this$0:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    invoke-direct {p0}, Lcom/android/internal/policy/ILenovoFrameworkCallBack$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/LenovoFrameworkServiceDelegate;Lcom/android/server/policy/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;-><init>(Lcom/android/server/policy/LenovoFrameworkServiceDelegate;)V

    return-void
.end method


# virtual methods
.method public onShown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    const-string/jumbo v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v1, "**** onShown  CALLED ****"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;->this$0:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    invoke-static {v0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->-get2(Lcom/android/server/policy/LenovoFrameworkServiceDelegate;)Lcom/android/server/policy/LenovoFrameworkServiceDelegate$ShowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;->this$0:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    invoke-static {v0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->-get2(Lcom/android/server/policy/LenovoFrameworkServiceDelegate;)Lcom/android/server/policy/LenovoFrameworkServiceDelegate$ShowListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$ShowListener;->onShown()V

    .line 256
    :cond_0
    return-void
.end method

.method public setTpdStatus(Z)V
    .locals 2
    .param p1, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "do not support now"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
