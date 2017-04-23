.class Lcom/android/server/display/AutomaticBrightnessController$1;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPrevLogLux:F

.field private mPrevLogTime:J

.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mPrevLogTime:J

    .line 653
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mPrevLogLux:F

    .line 650
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 673
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const v8, 0x3f99999a    # 1.2f

    .line 657
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->-get0(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 659
    .local v2, "time":J
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v1, v4

    .line 660
    .local v0, "lux":F
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap1(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    .line 663
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mPrevLogTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 664
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mPrevLogLux:F

    mul-float/2addr v1, v8

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_2

    .line 665
    :cond_0
    :goto_0
    const-string/jumbo v1, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSensorChanged: lux = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mPrevLogTime:J

    .line 667
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mPrevLogLux:F

    .line 656
    .end local v0    # "lux":F
    .end local v2    # "time":J
    :cond_1
    return-void

    .line 664
    .restart local v0    # "lux":F
    .restart local v2    # "time":J
    :cond_2
    mul-float v1, v0, v8

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mPrevLogLux:F

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    goto :goto_0
.end method
