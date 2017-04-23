.class Lcom/android/server/WiredAccessoryManager$2;
.super Ljava/util/TimerTask;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WiredAccessoryManager;->showheadsetToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/WiredAccessoryManager;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-get6(Lcom/android/server/WiredAccessoryManager;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 198
    return-void
.end method
