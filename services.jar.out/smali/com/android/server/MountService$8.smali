.class Lcom/android/server/MountService$8;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->popDefaultPathChangedToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;

    .prologue
    .line 4028
    iput-object p1, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4030
    iget-object v0, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-static {v0}, Lcom/android/server/MountService;->-get5(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-static {v1}, Lcom/android/server/MountService;->-get5(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v1

    .line 4031
    const v2, 0x8050079

    .line 4030
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4032
    const/4 v2, 0x1

    .line 4030
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4029
    return-void
.end method
