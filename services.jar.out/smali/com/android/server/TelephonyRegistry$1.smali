.class Lcom/android/server/TelephonyRegistry$1;
.super Landroid/os/Handler;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 230
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 232
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MSG_USER_SWITCHED userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-wrap3(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 234
    .local v2, "numPhones":I
    const/4 v5, 0x0

    .local v5, "sub":I
    :goto_1
    if-ge v5, v2, :cond_0

    .line 235
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 236
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->-get0(Lcom/android/server/TelephonyRegistry;)[Landroid/os/Bundle;

    move-result-object v7

    aget-object v7, v7, v5

    .line 235
    invoke-virtual {v6, v5, v7}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    .line 234
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 241
    .end local v2    # "numPhones":I
    .end local v5    # "sub":I
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-wrap4(Lcom/android/server/TelephonyRegistry;)V

    goto :goto_0

    .line 245
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 246
    .local v0, "newDefaultPhoneId":I
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 248
    .local v1, "newDefaultSubId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MSG_UPDATE_DEFAULT_SUB:current mDefaultSubId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->-get2(Lcom/android/server/TelephonyRegistry;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 249
    const-string/jumbo v7, " current mDefaultPhoneId="

    .line 248
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 249
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->-get1(Lcom/android/server/TelephonyRegistry;)I

    move-result v7

    .line 248
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 249
    const-string/jumbo v7, " newDefaultSubId= "

    .line 248
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 250
    const-string/jumbo v7, " newDefaultPhoneId="

    .line 248
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-wrap3(Ljava/lang/String;)V

    .line 256
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-get4(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 257
    :try_start_0
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-get4(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 258
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v6, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    const v8, 0x7fffffff

    if-ne v6, v8, :cond_1

    .line 259
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6, v3, v0}, Lcom/android/server/TelephonyRegistry;->-wrap1(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 256
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 262
    .restart local v4    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-wrap2(Lcom/android/server/TelephonyRegistry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 264
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6, v1}, Lcom/android/server/TelephonyRegistry;->-set1(Lcom/android/server/TelephonyRegistry;I)I

    .line 265
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6, v0}, Lcom/android/server/TelephonyRegistry;->-set0(Lcom/android/server/TelephonyRegistry;I)I

    goto/16 :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
