.class Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;
.super Landroid/database/ContentObserver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 153
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 152
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const v2, 0x42013

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDuringIrat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-set0(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 161
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->removeMessages(I)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 157
    return-void
.end method
