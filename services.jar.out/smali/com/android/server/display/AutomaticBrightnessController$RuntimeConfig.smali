.class Lcom/android/server/display/AutomaticBrightnessController$RuntimeConfig;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RuntimeConfig"
.end annotation


# instance fields
.field public mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 822
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$RuntimeConfig;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$RuntimeConfig;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 822
    return-void
.end method
