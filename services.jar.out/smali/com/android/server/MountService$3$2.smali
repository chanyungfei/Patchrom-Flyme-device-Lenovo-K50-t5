.class Lcom/android/server/MountService$3$2;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$3;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/MountService$3;

    .prologue
    .line 4300
    iput-object p1, p0, Lcom/android/server/MountService$3$2;->this$1:Lcom/android/server/MountService$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4302
    iget-object v0, p0, Lcom/android/server/MountService$3$2;->this$1:Lcom/android/server/MountService$3;

    iget-object v0, v0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/MountService;->-wrap7(Lcom/android/server/MountService;Z)V

    .line 4301
    return-void
.end method
