.class Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;
.super Landroid/database/ContentObserver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotspotAutoDisableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 12887
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 12888
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 12889
    invoke-static {p1}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 12890
    const-string/jumbo v1, "wifi_hotspot_auto_disable"

    .line 12889
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 12890
    const/4 v2, 0x0

    .line 12889
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 12887
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    .line 12895
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 12896
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_hotspot_auto_disable"

    .line 12897
    const/4 v3, 0x1

    .line 12896
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set26(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12898
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v0

    if-nez v0, :cond_1

    .line 12899
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get19(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get127(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 12900
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 12901
    const-string/jumbo v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set alarm for setting changed, mDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12902
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    .line 12903
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 12904
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    int-to-long v4, v1

    const-wide/32 v6, 0x493e0

    mul-long/2addr v4, v6

    .line 12903
    add-long/2addr v2, v4

    .line 12904
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 12902
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 12894
    :cond_0
    :goto_0
    return-void

    .line 12907
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$HotspotAutoDisableObserver;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
