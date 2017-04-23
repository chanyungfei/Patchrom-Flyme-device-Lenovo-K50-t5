.class Lcom/android/internal/telephony/dataconnection/DataConnection$1;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 3245
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 3248
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap6(Lcom/android/internal/telephony/dataconnection/DataConnection;ZLandroid/net/LinkAddress;)I

    move-result v0

    .line 3250
    .local v0, "event":I
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap22(Lcom/android/internal/telephony/dataconnection/DataConnection;ILjava/lang/String;Landroid/net/LinkAddress;)V

    .line 3247
    return-void
.end method
