.class final Lcom/mediatek/mom/NotificationListenerTrigger;
.super Lcom/mediatek/mom/ListenerTriggerBase;
.source "NotificationListenerTrigger.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NotificationListenerTrigger"


# direct methods
.method public constructor <init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/ListenerTriggerBase;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(IILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/mediatek/mom/ListenerTriggerBase;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V

    .line 59
    return-void
.end method


# virtual methods
.method public onTriggerListenerDone()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onTriggerListenerTimeout()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public triggerListenerFunc()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/mediatek/mom/NotificationListenerTrigger;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/mediatek/mom/NotificationListenerTrigger;->getFunc()Landroid/os/IBinder;

    move-result-object v1

    const-string/jumbo v2, "notificationPkg"

    .line 66
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NotificationListenerTrigger"

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "triggerListenerFunc() packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "notificationID"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "NotificationListenerTrigger"

    const-string/jumbo v4, "[MoMS >> MoMA] onNotificationBlocked()"

    .line 70
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {v1}, Lcom/mediatek/common/mom/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/INotificationListener;

    move-result-object v1

    .line 74
    if-nez v1, :cond_0

    const-string/jumbo v0, "NotificationListenerTrigger"

    const-string/jumbo v1, "Ignore null listener"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v0, "NotificationListenerTrigger"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[MoMS << MoMA] onNotificationBlocked() returned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v6

    .line 76
    :cond_0
    :try_start_0
    invoke-interface {v1, v2, v0}, Lcom/mediatek/common/mom/INotificationListener;->onNotificationBlocked(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    const-string/jumbo v1, "NotificationListenerTrigger"

    const-string/jumbo v2, "onNotificationBlocked() failed!"

    .line 78
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
