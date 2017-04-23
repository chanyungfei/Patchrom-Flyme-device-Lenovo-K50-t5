.class Lcom/android/server/dreams/DreamManagerService$5;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamManagerService;->removeTokenInternal(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;

.field final synthetic val$removeToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p2, "val$removeToken"    # Landroid/os/IBinder;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$5;->this$0:Lcom/android/server/dreams/DreamManagerService;

    iput-object p2, p0, Lcom/android/server/dreams/DreamManagerService$5;->val$removeToken:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$5;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-get1(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$5;->val$removeToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamController;->removeToken(Landroid/os/IBinder;)V

    .line 212
    return-void
.end method
