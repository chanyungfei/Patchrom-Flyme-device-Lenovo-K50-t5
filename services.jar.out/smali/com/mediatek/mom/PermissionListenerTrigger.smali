.class final Lcom/mediatek/mom/PermissionListenerTrigger;
.super Lcom/mediatek/mom/ListenerTriggerBase;
.source "PermissionListenerTrigger.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PermissionListenerTrigger"


# instance fields
.field private mHistoryHelper:Lcom/mediatek/mom/PermissionHistoryHelper;


# direct methods
.method public constructor <init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 1

    .prologue
    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/ListenerTriggerBase;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 56
    invoke-static {}, Lcom/mediatek/mom/PermissionHistoryHelper;->getInstance()Lcom/mediatek/mom/PermissionHistoryHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/PermissionListenerTrigger;->mHistoryHelper:Lcom/mediatek/mom/PermissionHistoryHelper;

    .line 60
    return-void
.end method

.method public constructor <init>(IILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct/range {p0 .. p6}, Lcom/mediatek/mom/ListenerTriggerBase;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V

    .line 56
    invoke-static {}, Lcom/mediatek/mom/PermissionHistoryHelper;->getInstance()Lcom/mediatek/mom/PermissionHistoryHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/PermissionListenerTrigger;->mHistoryHelper:Lcom/mediatek/mom/PermissionHistoryHelper;

    .line 64
    return-void
.end method

.method private triggerCallback()V
    .locals 8

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionListenerTrigger;->getCallback()Landroid/os/IBinder;

    move-result-object v1

    .line 146
    if-nez v1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionListenerTrigger;->getCallingPid()I

    move-result v2

    .line 148
    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionListenerTrigger;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v0, "param_permission_record"

    .line 149
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    const-string/jumbo v4, "param_uid"

    .line 150
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionListenerTrigger;->getResult()I

    move-result v4

    .line 154
    :try_start_0
    iget-object v5, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "triggerCallbackFunc MoMS >> Caller with result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/mediatek/mom/PermissionController;->result2String(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v2, v5, v6}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(IILjava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {v1}, Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IRequestedPermissionCallback;

    move-result-object v1

    .line 160
    iget-object v5, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-interface {v1, v5, v3, v4}, Lcom/mediatek/common/mom/IRequestedPermissionCallback;->onPermissionCheckResult(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_1
    iget-object v0, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    const-string/jumbo v1, "triggerCallbackFunc MoMS << Caller"

    invoke-static {v3, v2, v0, v1}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    const-string/jumbo v1, "PermissionListenerTrigger"

    const-string/jumbo v4, "onPermissionCheckResult() failed!"

    .line 162
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onTriggerListenerDone()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/mediatek/mom/PermissionListenerTrigger;->triggerCallback()V

    .line 117
    return-void
.end method

.method public onTriggerListenerTimeout()V
    .locals 8

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionListenerTrigger;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v0, "param_uid"

    .line 121
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 122
    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionListenerTrigger;->getCallingPid()I

    move-result v3

    .line 123
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string/jumbo v0, "param_permission_record"

    .line 125
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    .line 127
    invoke-virtual {v0}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v5

    if-nez v5, :cond_0

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionListenerTrigger;->getCallback()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 137
    iget-object v0, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "triggerListenerFunc MoMS >> MoMA is TIMEOUT, default result: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionListenerTrigger;->getResult()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/mom/PermissionController;->result2String(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v0, v1}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(IILjava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v5, "param_package"

    .line 128
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    iget-object v5, p0, Lcom/mediatek/mom/PermissionListenerTrigger;->mHistoryHelper:Lcom/mediatek/mom/PermissionHistoryHelper;

    iget-object v6, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v7

    invoke-virtual {v5, v4, v1, v6, v7}, Lcom/mediatek/mom/PermissionHistoryHelper;->setEnd(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    const-string/jumbo v1, "triggerListenerFunc MoMS >> MoMA is TIMEOUT"

    invoke-static {v2, v3, v0, v1}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(IILjava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/mediatek/mom/PermissionListenerTrigger;->triggerCallback()V

    goto :goto_1
.end method

.method public triggerListenerFunc()I
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionListenerTrigger;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 70
    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionListenerTrigger;->getFunc()Landroid/os/IBinder;

    move-result-object v4

    const-string/jumbo v0, "param_package"

    .line 71
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "param_permission_record"

    .line 72
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    const-string/jumbo v6, "param_flag"

    .line 73
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "param_uid"

    .line 74
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "param_data"

    .line 75
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 76
    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionListenerTrigger;->getCallingPid()I

    move-result v9

    const-string/jumbo v10, "param_uid"

    .line 77
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 79
    if-nez v4, :cond_1

    .line 108
    iget-object v0, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerListenerFunc MoMS >> MoMA FAILED due to null binder, return result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/mediatek/mom/PermissionController;->result2String(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v9, v0, v2}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(IILjava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "with pr: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v11, " flag: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    iget-object v11, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "triggerListenerFunc MoMS >> MoMA "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v9, v11, v2}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(IILjava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {v4}, Lcom/mediatek/common/mom/IPermissionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IPermissionListener;

    move-result-object v2

    .line 86
    :try_start_0
    invoke-interface {v2, v0, v6, v7, v8}, Lcom/mediatek/common/mom/IPermissionListener;->onPermissionCheck(Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 92
    :goto_1
    if-eq v2, v3, :cond_2

    const/4 v1, -0x1

    .line 97
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    .line 102
    invoke-virtual {v0}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 103
    iget-object v2, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    const-string/jumbo v3, "triggerListenerFunc MoMS << MoMA"

    invoke-static {v7, v9, v2, v3}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(IILjava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/mediatek/mom/PermissionListenerTrigger;->mHistoryHelper:Lcom/mediatek/mom/PermissionHistoryHelper;

    iget-object v3, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v0

    invoke-virtual {v2, v10, v5, v3, v0}, Lcom/mediatek/mom/PermissionHistoryHelper;->setEnd(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 89
    :catch_0
    move-exception v2

    const-string/jumbo v4, "PermissionListenerTrigger"

    const-string/jumbo v6, "onPermissionCheck() failed!"

    .line 88
    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    goto :goto_1

    .line 98
    :cond_3
    iget-object v2, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "triggerListenerFunc MoMS << MoMA with result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/mediatek/mom/PermissionController;->result2String(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v9, v2, v3}, Lcom/mediatek/mom/PermissionController;->PRINT_DEBUG_LOG(IILjava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/mediatek/mom/PermissionListenerTrigger;->mHistoryHelper:Lcom/mediatek/mom/PermissionHistoryHelper;

    iget-object v3, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v0

    invoke-virtual {v2, v10, v5, v3, v0}, Lcom/mediatek/mom/PermissionHistoryHelper;->setEnd(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
