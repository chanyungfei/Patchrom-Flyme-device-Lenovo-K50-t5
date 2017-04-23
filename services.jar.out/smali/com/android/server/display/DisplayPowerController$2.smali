.class Lcom/android/server/display/DisplayPowerController$2;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/autobrightness/RampAnimatorLenovo$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->-set2(Lcom/android/server/display/DisplayPowerController;Z)Z

    .line 640
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-wrap4(Lcom/android/server/display/DisplayPowerController;)V

    .line 637
    return-void
.end method
