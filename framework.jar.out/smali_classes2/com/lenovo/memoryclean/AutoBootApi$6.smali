.class Lcom/lenovo/memoryclean/AutoBootApi$6;
.super Ljava/lang/Object;
.source "AutoBootApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/memoryclean/AutoBootApi;->startSyncPermLists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/memoryclean/AutoBootApi;


# direct methods
.method constructor <init>(Lcom/lenovo/memoryclean/AutoBootApi;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/lenovo/memoryclean/AutoBootApi$6;->this$0:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi$6;->this$0:Lcom/lenovo/memoryclean/AutoBootApi;

    iget-object v1, p0, Lcom/lenovo/memoryclean/AutoBootApi$6;->this$0:Lcom/lenovo/memoryclean/AutoBootApi;

    # getter for: Lcom/lenovo/memoryclean/AutoBootApi;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/memoryclean/AutoBootApi;->access$300(Lcom/lenovo/memoryclean/AutoBootApi;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/lenovo/memoryclean/AutoBootApi;->loadPermListFromDb(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/lenovo/memoryclean/AutoBootApi;->access$600(Lcom/lenovo/memoryclean/AutoBootApi;Landroid/content/Context;)V

    .line 366
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi$6;->this$0:Lcom/lenovo/memoryclean/AutoBootApi;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/memoryclean/AutoBootApi;->mSyncPermListThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/lenovo/memoryclean/AutoBootApi;->access$702(Lcom/lenovo/memoryclean/AutoBootApi;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 367
    return-void
.end method
