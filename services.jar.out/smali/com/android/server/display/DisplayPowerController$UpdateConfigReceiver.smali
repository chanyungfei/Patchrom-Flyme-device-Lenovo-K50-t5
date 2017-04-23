.class Lcom/android/server/display/DisplayPowerController$UpdateConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateConfigReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 1754
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$UpdateConfigReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$UpdateConfigReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController$UpdateConfigReceiver;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1757
    const-string/jumbo v0, "DisplayPowerController"

    const-string/jumbo v1, "AALRuntimeTuning: UpdateConfigReceiver received an intent."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$UpdateConfigReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-wrap4(Lcom/android/server/display/DisplayPowerController;)V

    .line 1756
    return-void
.end method
