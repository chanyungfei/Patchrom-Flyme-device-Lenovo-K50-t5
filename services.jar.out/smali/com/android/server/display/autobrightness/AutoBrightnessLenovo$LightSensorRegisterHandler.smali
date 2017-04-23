.class Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;
.super Landroid/os/Handler;
.source "AutoBrightnessLenovo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightSensorRegisterHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;


# direct methods
.method public constructor <init>(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .line 717
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 716
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 722
    const-string/jumbo v0, "AutoBrightnessLenovo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLightSensorRegisterHandler: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 721
    :goto_0
    return-void

    .line 726
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-static {v0}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->-get8(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-static {v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->-get5(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-static {v2}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->-get3(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)Landroid/hardware/Sensor;

    move-result-object v2

    .line 727
    iget-object v3, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-static {v3}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->-get1(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;

    move-result-object v3

    const v4, 0x7a120

    .line 726
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 731
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-static {v0}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->-get8(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$LightSensorRegisterHandler;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-static {v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->-get5(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
