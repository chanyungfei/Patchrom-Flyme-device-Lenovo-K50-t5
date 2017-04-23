.class Lcom/android/server/WiredAccessoryManager$3;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V
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
    .line 370
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$3;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$3;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$3;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->-wrap0(Lcom/android/server/WiredAccessoryManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/WiredAccessoryManager;->-set0(Lcom/android/server/WiredAccessoryManager;I)I

    .line 373
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$3;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-get1(Lcom/android/server/WiredAccessoryManager;)I

    move-result v0

    const/16 v1, 0x31

    if-ne v1, v0, :cond_0

    .line 374
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "show illegal Headset msg+++++++++++++"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$3;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-wrap3(Lcom/android/server/WiredAccessoryManager;)V

    .line 376
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$3;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0, v2}, Lcom/android/server/WiredAccessoryManager;->-set0(Lcom/android/server/WiredAccessoryManager;I)I

    .line 371
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "don\'t show illegal Headset msg+++++++++++++"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$3;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0, v2}, Lcom/android/server/WiredAccessoryManager;->-set0(Lcom/android/server/WiredAccessoryManager;I)I

    goto :goto_0
.end method
