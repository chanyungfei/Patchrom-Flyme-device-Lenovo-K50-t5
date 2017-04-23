.class final Lcom/android/server/notification/ZenModeHelper$H;
.super Landroid/os/Handler;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final METRICS_PERIOD_MS:J = 0x1499700L

.field private static final MSG_DISPATCH:I = 0x1

.field private static final MSG_METRICS:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postDispatchOnZenModeChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postMetricsTimer()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 750
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 749
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V

    return-void
.end method

.method private postDispatchOnZenModeChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 754
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->removeMessages(I)V

    .line 755
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->sendEmptyMessage(I)Z

    .line 753
    return-void
.end method

.method private postMetricsTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 759
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper$H;->removeMessages(I)V

    .line 760
    const-wide/32 v0, 0x1499700

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/notification/ZenModeHelper$H;->sendEmptyMessageDelayed(IJ)Z

    .line 758
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 765
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 764
    :goto_0
    return-void

    .line 767
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-wrap3(Lcom/android/server/notification/ZenModeHelper;)V

    goto :goto_0

    .line 770
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get2(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->-wrap0(Lcom/android/server/notification/ZenModeHelper$Metrics;)V

    goto :goto_0

    .line 765
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
