.class Lcom/android/server/wifi/WifiServiceImpl$6;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->initializeExtra()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 2547
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->-wrap2(Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 2549
    return-void
.end method
