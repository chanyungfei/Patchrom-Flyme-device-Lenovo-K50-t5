.class Lcom/android/server/wifi/WifiTrafficPoller$PingResult;
.super Ljava/lang/Object;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingResult"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public average_rtt:I

.field public package_loss:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiTrafficPoller;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$PingResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;)V

    return-void
.end method
