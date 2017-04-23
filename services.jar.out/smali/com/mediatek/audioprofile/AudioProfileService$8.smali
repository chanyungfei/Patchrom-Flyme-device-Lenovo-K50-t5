.class Lcom/mediatek/audioprofile/AudioProfileService$8;
.super Landroid/content/BroadcastReceiver;
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
    .line 4261
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4265
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4266
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4267
    .local v1, "userId":I
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUserSwitchReceiver receive action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4269
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-get24(Lcom/mediatek/audioprofile/AudioProfileService;)I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 4270
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->-set6(Lcom/mediatek/audioprofile/AudioProfileService;I)I

    .line 4271
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-set3(Lcom/mediatek/audioprofile/AudioProfileService;Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 4272
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-get24(Lcom/mediatek/audioprofile/AudioProfileService;)I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->getInstance(I)Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-set3(Lcom/mediatek/audioprofile/AudioProfileService;Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 4273
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap0(Lcom/mediatek/audioprofile/AudioProfileService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4274
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap1(Lcom/mediatek/audioprofile/AudioProfileService;)Z

    .line 4276
    :cond_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap6(Lcom/mediatek/audioprofile/AudioProfileService;)V

    .line 4264
    :cond_1
    :goto_0
    return-void

    .line 4278
    :cond_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap0(Lcom/mediatek/audioprofile/AudioProfileService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4279
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap1(Lcom/mediatek/audioprofile/AudioProfileService;)Z

    .line 4280
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$8;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap6(Lcom/mediatek/audioprofile/AudioProfileService;)V

    goto :goto_0
.end method
