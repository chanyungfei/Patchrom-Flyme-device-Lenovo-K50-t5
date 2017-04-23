.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;
.super Ljava/lang/Thread;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap9(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    .line 1375
    return-void
.end method
