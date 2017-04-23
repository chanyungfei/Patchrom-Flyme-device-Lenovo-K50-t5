.class Lcom/android/internal/telephony/PhoneBase$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 121
    const-string/jumbo v1, "PhoneBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mImsIntentReceiver: action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string/jumbo v1, "android:phone_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const-string/jumbo v1, "android:phone_id"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 125
    .local v0, "extraPhoneId":I
    const-string/jumbo v1, "PhoneBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mImsIntentReceiver: extraPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eq v0, v4, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 128
    :cond_0
    return-void

    .line 132
    .end local v0    # "extraPhoneId":I
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_0
    const-string/jumbo v1, "PhoneBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", getSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 135
    const-string/jumbo v4, ", getPhoneId="

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 135
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    const-string/jumbo v1, "persist.ims.simulate"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 140
    const-string/jumbo v1, "persist.ims.phoneid"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eq v1, v3, :cond_2

    monitor-exit v2

    .line 141
    return-void

    .line 144
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/internal/telephony/PhoneBase;->-set0(Lcom/android/internal/telephony/PhoneBase;Z)Z

    .line 145
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->updateImsPhone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    monitor-exit v2

    .line 120
    return-void

    .line 146
    :cond_4
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/internal/telephony/PhoneBase;->-set0(Lcom/android/internal/telephony/PhoneBase;Z)Z

    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->updateImsPhone()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
