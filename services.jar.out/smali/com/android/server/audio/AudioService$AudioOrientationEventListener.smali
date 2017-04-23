.class Lcom/android/server/audio/AudioService$AudioOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->this$0:Lcom/android/server/audio/AudioService;

    .line 1153
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1152
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1160
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get17(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v1

    .line 1161
    const-string/jumbo v2, "window"

    .line 1160
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1162
    .local v0, "newRotation":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1163
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-set5(Lcom/android/server/audio/AudioService;I)I

    .line 1164
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-wrap40(Lcom/android/server/audio/AudioService;)V

    .line 1157
    :cond_0
    return-void
.end method
