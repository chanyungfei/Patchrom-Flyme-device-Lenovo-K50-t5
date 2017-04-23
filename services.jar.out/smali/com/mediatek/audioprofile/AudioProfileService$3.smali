.class Lcom/mediatek/audioprofile/AudioProfileService$3;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$3;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVibrateSettingChanged(II)V
    .locals 3
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 372
    const-string/jumbo v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVibrateSettingChanged: current vibrateType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 373
    const-string/jumbo v2, ", mLastVibrateType = "

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 373
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$3;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-get13(Lcom/mediatek/audioprofile/AudioProfileService;)I

    move-result v2

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$3;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get13(Lcom/mediatek/audioprofile/AudioProfileService;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$3;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->-set1(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z

    .line 376
    const-string/jumbo v0, "AudioProfileService"

    const-string/jumbo v1, "onVibrateSettingChanged: current vibrate type  is same as last one, delay set vibrate!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$3;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->-set2(Lcom/mediatek/audioprofile/AudioProfileService;I)I

    .line 371
    return-void
.end method
