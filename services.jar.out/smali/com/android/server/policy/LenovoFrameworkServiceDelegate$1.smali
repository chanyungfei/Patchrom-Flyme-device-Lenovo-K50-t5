.class Lcom/android/server/policy/LenovoFrameworkServiceDelegate$1;
.super Ljava/lang/Object;
.source "LenovoFrameworkServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LenovoFrameworkServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LenovoFrameworkServiceDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$1;->this$0:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$1;->this$0:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    new-instance v1, Lcom/android/server/policy/LenovoFrameworkServiceWrapper;

    .line 222
    invoke-static {p2}, Lcom/android/internal/policy/ILenovoFrameworkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/ILenovoFrameworkService;

    move-result-object v2

    .line 221
    invoke-direct {v1, v2}, Lcom/android/server/policy/LenovoFrameworkServiceWrapper;-><init>(Lcom/android/internal/policy/ILenovoFrameworkService;)V

    iput-object v1, v0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/server/policy/LenovoFrameworkServiceWrapper;

    .line 223
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$1;->this$0:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/server/policy/LenovoFrameworkServiceWrapper;

    new-instance v1, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;

    iget-object v2, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$1;->this$0:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;-><init>(Lcom/android/server/policy/LenovoFrameworkServiceDelegate;Lcom/android/server/policy/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/LenovoFrameworkServiceWrapper;->setLenovoFrameworkCallback(Lcom/android/internal/policy/ILenovoFrameworkCallBack;)V

    .line 224
    const-string/jumbo v0, "LenovoGesture_FrameworkServiceDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LenovoFrameworkDelegate.this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$1;->this$0:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",*** LenovoFrameworkService connected!) gestureframeworkservice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$1;->this$0:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    iget-object v2, v2, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/server/policy/LenovoFrameworkServiceWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 229
    const-string/jumbo v0, "LenovoGesture_FrameworkServiceDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "*** LenovoFrameworkService disconnected!) + , isEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->-get0()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$1;->this$0:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/server/policy/LenovoFrameworkServiceWrapper;

    .line 233
    invoke-static {}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$1;->this$0:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    invoke-static {v0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->-get1(Lcom/android/server/policy/LenovoFrameworkServiceDelegate;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 228
    :cond_0
    return-void
.end method
