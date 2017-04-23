.class final Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 977
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 978
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 975
    const-string/jumbo v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 974
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 977
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 982
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 983
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 984
    const/4 v2, -0x1

    .line 983
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 987
    const-string/jumbo v1, "unread_email_alert_enabled"

    .line 986
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 989
    const-string/jumbo v1, "unread_sms_alert_enabled"

    .line 988
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 991
    const-string/jumbo v1, "missed_call_alert_enabled"

    .line 990
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 995
    const-string/jumbo v1, "other_qq_alert_enabled"

    .line 994
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 997
    const-string/jumbo v1, "other_weibo_alert_enabled"

    .line 996
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 999
    const-string/jumbo v1, "other_weixin_alert_enabled"

    .line 998
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1001
    const-string/jumbo v1, "close_light_midnight_enabled"

    .line 1000
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1003
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 981
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1007
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1006
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x0

    .line 1011
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1013
    .local v7, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 1014
    .local v2, "missedCallAlertEnabled":Z
    const/4 v8, 0x0

    .line 1015
    .local v8, "unreadEmailAlertEnabled":Z
    const/4 v9, 0x0

    .line 1017
    .local v9, "unreadSmsAlertEnabled":Z
    const/4 v3, 0x0

    .line 1018
    .local v3, "otherQQAlertEnabled":Z
    const/4 v4, 0x0

    .line 1019
    .local v4, "otherWeiboAlertEnabled":Z
    const/4 v5, 0x0

    .line 1020
    .local v5, "otherWeixinAlertEnabled":Z
    const/4 v0, 0x0

    .line 1022
    .local v0, "closeLightMidnightEnabled":Z
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1023
    const/4 v1, 0x0

    .line 1025
    .local v1, "isLightStatesNeedUpdate":Z
    const-string/jumbo v10, "missed_call_alert_enabled"

    .line 1024
    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_8

    const/4 v2, 0x1

    .line 1027
    :goto_0
    const-string/jumbo v10, "unread_email_alert_enabled"

    .line 1026
    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_9

    const/4 v8, 0x1

    .line 1029
    :goto_1
    const-string/jumbo v10, "unread_sms_alert_enabled"

    .line 1028
    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_a

    const/4 v9, 0x1

    .line 1033
    :goto_2
    const-string/jumbo v10, "other_qq_alert_enabled"

    .line 1032
    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_b

    const/4 v3, 0x1

    .line 1035
    :goto_3
    const-string/jumbo v10, "other_weibo_alert_enabled"

    .line 1034
    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_c

    const/4 v4, 0x1

    .line 1037
    :goto_4
    const-string/jumbo v10, "other_weixin_alert_enabled"

    .line 1036
    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_d

    const/4 v5, 0x1

    .line 1039
    :goto_5
    const-string/jumbo v10, "close_light_midnight_enabled"

    .line 1038
    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_e

    const/4 v0, 0x1

    .line 1040
    :goto_6
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get0(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Led SettingOb: mCloseLightMidnightEnabled: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v12}, Lcom/android/server/notification/NotificationManagerService;->-get7(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get0(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Led SettingOb: missedCallAlertEnabled: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " unreadSmsAlertEnabled: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1042
    const-string/jumbo v12, " unreadEmailAlertEnabled: "

    .line 1041
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1042
    const-string/jumbo v12, " otherQQAlertEnabled: "

    .line 1041
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1043
    const-string/jumbo v12, " otherWeiboAlertEnabled: "

    .line 1041
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1043
    const-string/jumbo v12, " otherWeixinAlertEnabled: "

    .line 1041
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get20(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v2, :cond_0

    .line 1045
    const/4 v1, 0x1

    .line 1046
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10, v2}, Lcom/android/server/notification/NotificationManagerService;->-set9(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1048
    :cond_0
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get28(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v8, :cond_1

    .line 1049
    const/4 v1, 0x1

    .line 1050
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10, v8}, Lcom/android/server/notification/NotificationManagerService;->-set17(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1052
    :cond_1
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get29(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v9, :cond_2

    .line 1053
    const/4 v1, 0x1

    .line 1054
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10, v9}, Lcom/android/server/notification/NotificationManagerService;->-set18(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1060
    :cond_2
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v3, :cond_3

    .line 1061
    const/4 v1, 0x1

    .line 1062
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10, v3}, Lcom/android/server/notification/NotificationManagerService;->-set11(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1064
    :cond_3
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get24(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v4, :cond_4

    .line 1065
    const/4 v1, 0x1

    .line 1066
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10, v4}, Lcom/android/server/notification/NotificationManagerService;->-set12(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1068
    :cond_4
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get25(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v5, :cond_5

    .line 1069
    const/4 v1, 0x1

    .line 1070
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10, v5}, Lcom/android/server/notification/NotificationManagerService;->-set13(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1072
    :cond_5
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get7(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v0, :cond_6

    .line 1073
    const/4 v1, 0x1

    .line 1074
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10, v0}, Lcom/android/server/notification/NotificationManagerService;->-set1(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1076
    :cond_6
    if-eqz v1, :cond_7

    .line 1077
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get0(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "updateLightSettings 1076"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-wrap28(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1010
    .end local v1    # "isLightStatesNeedUpdate":Z
    :cond_7
    :goto_7
    return-void

    .line 1024
    .restart local v1    # "isLightStatesNeedUpdate":Z
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1026
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1028
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1032
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1034
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1036
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 1038
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 1082
    .end local v1    # "isLightStatesNeedUpdate":Z
    :cond_f
    if-eqz p1, :cond_10

    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v10, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1084
    :cond_10
    const-string/jumbo v10, "notification_light_pulse"

    .line 1083
    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_11

    const/4 v6, 0x1

    .line 1085
    .local v6, "pulseEnabled":Z
    :goto_8
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get22(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v6, :cond_7

    .line 1086
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10, v6}, Lcom/android/server/notification/NotificationManagerService;->-set10(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1087
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-wrap30(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_7

    .line 1083
    .end local v6    # "pulseEnabled":Z
    :cond_11
    const/4 v6, 0x0

    .restart local v6    # "pulseEnabled":Z
    goto :goto_8
.end method
