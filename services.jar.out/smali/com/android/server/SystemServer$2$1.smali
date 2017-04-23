.class Lcom/android/server/SystemServer$2$1;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/SystemServer$2;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer$2;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/SystemServer$2;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 1515
    iput-object p1, p0, Lcom/android/server/SystemServer$2$1;->this$1:Lcom/android/server/SystemServer$2;

    iput-object p2, p0, Lcom/android/server/SystemServer$2$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/server/SystemServer$2$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/SystemServer;->testSystemServerANR(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 1516
    return-void
.end method
