.class Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/app/INotificationManager$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 1396
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/app/INotificationManager$Stub;-><init>()V

    return-void
.end method

.method private cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 12
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "userId"    # I

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    .line 1776
    const/16 v7, 0x42

    .line 1777
    const/4 v8, 0x1

    .line 1778
    const/16 v10, 0xa

    move v1, p2

    move v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v9, p7

    move-object v11, p1

    .line 1775
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1774
    return-void
.end method

.method private checkPackagePolicyAccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->isPackageGranted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkPolicyAccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1993
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$5;->checkPackagePolicyAccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isComponentEnabledForPackage(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    .line 1982
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$5;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1983
    const-string/jumbo v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Notification policy access denied calling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Notification policy access denied"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1981
    :cond_0
    return-void
.end method

.method private enforceSystemOrSystemUI(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1976
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap2()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    return-void
.end method

.method private enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1966
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-eqz v1, :cond_0

    .line 1967
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    invoke-virtual {v1}, Landroid/media/AudioManagerInternal;->getVolumeControllerUid()I

    move-result v0

    .line 1968
    .local v0, "vcuid":I
    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1969
    return-void

    .line 1972
    .end local v0    # "vcuid":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 1965
    return-void
.end method


# virtual methods
.method public applyRestore([BI)V
    .locals 6
    .param p1, "payload"    # [B
    .param p2, "user"    # I

    .prologue
    const/4 v2, 0x0

    .line 2080
    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "applyRestore u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " payload="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2081
    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2080
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    if-nez p1, :cond_1

    .line 2083
    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "applyRestore: no payload to restore for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    return-void

    .line 2086
    :cond_1
    if-eqz p2, :cond_2

    .line 2087
    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "applyRestore: cannot restore policy for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    return-void

    .line 2090
    :cond_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2092
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/android/server/notification/NotificationManagerService;->-wrap24(Lcom/android/server/notification/NotificationManagerService;Ljava/io/InputStream;Z)V

    .line 2093
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2079
    :goto_0
    return-void

    .line 2094
    :catch_0
    move-exception v1

    .line 2095
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v3, "applyRestore: error reading payload"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 1542
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap14()V

    .line 1543
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get3(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public cancelAllNotifications(Ljava/lang/String;I)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1518
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap13(Ljava/lang/String;)V

    .line 1520
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1521
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "cancelAllNotifications"

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v2, p2

    move-object v6, p1

    .line 1520
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1525
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1526
    const/4 v4, 0x0

    const/16 v5, 0x40

    const/4 v6, 0x1

    .line 1527
    const/16 v8, 0x9

    const/4 v9, 0x0

    move-object v3, p1

    move v7, p2

    .line 1525
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 1517
    return-void
.end method

.method public cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    .line 1791
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1792
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1793
    .local v3, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1795
    .local v8, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1796
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    .line 1797
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1798
    const-string/jumbo v0, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring deprecated cancelNotification(pkg, tag, id) from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1799
    iget-object v5, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 1798
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1800
    const-string/jumbo v5, " use cancelNotification(key) instead."

    .line 1798
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1807
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1790
    return-void

    .line 1803
    :cond_0
    :try_start_3
    iget v7, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 1802
    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService$5;->cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1795
    .end local v1    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v10

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1806
    :catchall_1
    move-exception v0

    .line 1807
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1806
    throw v0
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    .line 1506
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap13(Ljava/lang/String;)V

    .line 1507
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1508
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "cancelNotificationWithTag"

    const/4 v3, 0x1

    const/4 v4, 0x0

    move/from16 v2, p4

    move-object v6, p1

    .line 1507
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 1510
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1511
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 1512
    const/4 v7, 0x0

    .line 1510
    :goto_0
    const/4 v6, 0x0

    .line 1512
    const/4 v8, 0x0

    const/16 v10, 0x8

    .line 1513
    const/4 v11, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v9, p4

    .line 1510
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1505
    return-void

    .line 1512
    :cond_0
    const/16 v7, 0x40

    goto :goto_0
.end method

.method public cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .locals 23
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 1709
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1710
    .local v4, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1711
    .local v5, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 1713
    .local v20, "identity":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1714
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    .line 1715
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz p2, :cond_3

    .line 1716
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    .line 1717
    .local v17, "N":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 1718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v6, p2, v18

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/notification/NotificationRecord;

    .line 1719
    .local v19, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v19, :cond_0

    .line 1717
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1720
    :cond_0
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v9

    .line 1721
    .local v9, "userId":I
    iget v2, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-eq v9, v2, :cond_1

    const/4 v2, -0x1

    if-eq v9, v2, :cond_1

    .line 1722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get31(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1727
    :cond_1
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    move-object/from16 v2, p0

    .line 1726
    invoke-direct/range {v2 .. v9}, Lcom/android/server/notification/NotificationManagerService$5;->cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1713
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v9    # "userId":I
    .end local v17    # "N":I
    .end local v18    # "i":I
    .end local v19    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v22

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1735
    :catchall_1
    move-exception v2

    .line 1736
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1735
    throw v2

    .line 1723
    .restart local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .restart local v9    # "userId":I
    .restart local v17    # "N":I
    .restart local v18    # "i":I
    .restart local v19    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Disallowed call from listener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1724
    iget-object v7, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 1723
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1731
    .end local v9    # "userId":I
    .end local v17    # "N":I
    .end local v18    # "i":I
    .end local v19    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v13, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 1732
    invoke-virtual {v3}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    move-result v16

    const/16 v14, 0xb

    move v11, v4

    move v12, v5

    move-object v15, v3

    .line 1731
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1736
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1708
    return-void
.end method

.method public cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;

    .prologue
    .line 1474
    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cancelToast pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1477
    :cond_0
    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not cancelling notification. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    return-void

    .line 1481
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1482
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 1484
    .local v0, "callingId":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v2

    .line 1485
    .local v2, "index":I
    if-ltz v2, :cond_2

    .line 1486
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1492
    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    .line 1473
    return-void

    .line 1488
    :cond_2
    :try_start_3
    const-string/jumbo v3, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Toast already cancelled. pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1489
    const-string/jumbo v6, " callback="

    .line 1488
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1491
    .end local v2    # "index":I
    :catchall_0
    move-exception v3

    .line 1492
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1491
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1481
    .end local v0    # "callingId":J
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1998
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: can\'t dump NotificationManager from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2001
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2000
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2002
    const-string/jumbo v2, ", uid="

    .line 2000
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2002
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2000
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2003
    return-void

    .line 2006
    :cond_0
    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    move-result-object v0

    .line 2007
    .local v0, "filter":Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    if-eqz v1, :cond_1

    .line 2008
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap15(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 1997
    :goto_0
    return-void

    .line 2010
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_0
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "notification"    # Landroid/app/Notification;
    .param p6, "idOut"    # [I
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1501
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 1500
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V

    .line 1499
    return-void
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    .locals 18
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;
    .param p3, "duration"    # I

    .prologue
    .line 1404
    const-string/jumbo v14, "NotificationService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "enqueueToast pkg="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " callback="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1405
    const-string/jumbo v16, " duration="

    .line 1404
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1409
    :cond_0
    const-string/jumbo v14, "NotificationService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Not doing toast. pkg="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " callback="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    return-void

    .line 1413
    :cond_1
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap2()Z

    move-result v14

    if-nez v14, :cond_4

    const-string/jumbo v14, "android"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 1416
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    move-object/from16 v0, p1

    invoke-static {v14, v0, v15}, Lcom/android/server/notification/NotificationManagerService;->-wrap5(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1424
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v15, v14, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v15

    .line 1425
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1426
    .local v5, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v6

    .line 1429
    .local v6, "callingId":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v10

    .line 1432
    .local v10, "index":I
    if-ltz v10, :cond_5

    .line 1433
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v14, v14, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 1434
    .local v13, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    move/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->update(I)V

    .line 1463
    :goto_1
    if-nez v10, :cond_3

    .line 1464
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v14}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1467
    :cond_3
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v15

    .line 1401
    return-void

    .line 1413
    .end local v5    # "callingPid":I
    .end local v6    # "callingId":J
    .end local v10    # "index":I
    .end local v13    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_4
    const/4 v11, 0x1

    .local v11, "isSystemToast":Z
    goto :goto_0

    .line 1438
    .end local v11    # "isSystemToast":Z
    .restart local v5    # "callingPid":I
    .restart local v6    # "callingId":J
    .restart local v10    # "index":I
    :cond_5
    if-nez v11, :cond_7

    .line 1439
    const/4 v8, 0x0

    .line 1440
    .local v8, "count":I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v14, v14, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1441
    .local v4, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v4, :cond_7

    .line 1442
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v14, v14, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 1443
    .local v12, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v14, v12, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1444
    add-int/lit8 v8, v8, 0x1

    .line 1445
    const/16 v14, 0x32

    if-lt v8, v14, :cond_6

    .line 1446
    const-string/jumbo v14, "NotificationService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Package has already posted "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1447
    const-string/jumbo v17, " toasts. Not showing more. Package="

    .line 1446
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1467
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v15

    .line 1448
    return-void

    .line 1441
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1454
    .end local v4    # "N":I
    .end local v8    # "count":I
    .end local v9    # "i":I
    .end local v12    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_7
    :try_start_5
    new-instance v13, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v13, v5, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;-><init>(ILjava/lang/String;Landroid/app/ITransientNotification;I)V

    .line 1455
    .restart local v13    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v14, v14, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v14, v14, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v10, v14, -0x1

    .line 1457
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v14, v5}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveLocked(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 1466
    .end local v10    # "index":I
    .end local v13    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :catchall_0
    move-exception v14

    .line 1467
    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1466
    throw v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1424
    .end local v5    # "callingPid":I
    .end local v6    # "callingId":J
    :catchall_1
    move-exception v14

    monitor-exit v15

    throw v14
.end method

.method public getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .locals 7
    .param p1, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 1595
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1596
    const-string/jumbo v5, "android.permission.ACCESS_NOTIFICATIONS"

    .line 1597
    const-string/jumbo v6, "NotificationManagerService.getActiveNotifications"

    .line 1595
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    const/4 v2, 0x0

    .line 1600
    .local v2, "tmp":[Landroid/service/notification/StatusBarNotification;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1603
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get3(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v4

    const/16 v5, 0x19

    invoke-virtual {v4, v5, v3, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 1605
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1606
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Landroid/service/notification/StatusBarNotification;

    .line 1607
    .local v2, "tmp":[Landroid/service/notification/StatusBarNotification;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1608
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1609
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    aput-object v4, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1608
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v5

    .line 1613
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "tmp":[Landroid/service/notification/StatusBarNotification;
    :cond_1
    return-object v2

    .line 1605
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 11
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "trim"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1824
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1825
    :try_start_0
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    .line 1826
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 1827
    .local v1, "getKeys":Z
    :goto_0
    if-eqz v1, :cond_2

    array-length v0, p2

    .line 1829
    .local v0, "N":I
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1830
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_6

    .line 1831
    if-eqz v1, :cond_3

    .line 1832
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v10, p2, v2

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 1834
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    :goto_3
    if-nez v5, :cond_4

    .line 1830
    :cond_0
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1826
    .end local v0    # "N":I
    .end local v1    # "getKeys":Z
    .end local v2    # "i":I
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "getKeys":Z
    goto :goto_0

    .line 1827
    :cond_2
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .restart local v0    # "N":I
    goto :goto_1

    .line 1833
    .restart local v2    # "i":I
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    :cond_3
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .restart local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    goto :goto_3

    .line 1835
    :cond_4
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1836
    .local v6, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8, v6, v3}, Lcom/android/server/notification/NotificationManagerService;->-wrap4(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1838
    if-nez p3, :cond_5

    move-object v7, v6

    .line 1839
    .local v7, "sbnToSend":Landroid/service/notification/StatusBarNotification;
    :goto_5
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 1824
    .end local v0    # "N":I
    .end local v1    # "getKeys":Z
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v6    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v7    # "sbnToSend":Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 1838
    .restart local v0    # "N":I
    .restart local v1    # "getKeys":Z
    .restart local v2    # "i":I
    .restart local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    .restart local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v6    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_5
    :try_start_1
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    .restart local v7    # "sbnToSend":Landroid/service/notification/StatusBarNotification;
    goto :goto_5

    .line 1841
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v6    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v7    # "sbnToSend":Landroid/service/notification/StatusBarNotification;
    :cond_6
    new-instance v8, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v8, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    return-object v8
.end method

.method public getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 20
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "incomingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1624
    invoke-static/range {p1 .. p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap13(Ljava/lang/String;)V

    .line 1625
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1626
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1627
    const-string/jumbo v7, "getAppActiveNotifications"

    .line 1626
    const/4 v5, 0x1

    const/4 v6, 0x0

    move/from16 v4, p2

    move-object/from16 v8, p1

    .line 1625
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1629
    .local v18, "userId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1630
    .local v14, "N":I
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 1632
    .local v16, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1633
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v14, :cond_1

    .line 1634
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    iget-object v0, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    .line 1635
    .local v17, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    move/from16 v0, v18

    if-ne v3, v0, :cond_0

    .line 1639
    new-instance v2, Landroid/service/notification/StatusBarNotification;

    .line 1640
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1641
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v4

    .line 1642
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v7

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v8

    .line 1644
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v10

    .line 1645
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v12

    .line 1643
    const/4 v9, 0x0

    .line 1639
    invoke-direct/range {v2 .. v13}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V

    .line 1646
    .local v2, "sbnOut":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1633
    .end local v2    # "sbnOut":Landroid/service/notification/StatusBarNotification;
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .end local v17    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1
    monitor-exit v19

    .line 1651
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v3

    .line 1632
    :catchall_0
    move-exception v3

    monitor-exit v19

    throw v3
.end method

.method public getBackupPayload(I)[B
    .locals 6
    .param p1, "user"    # I

    .prologue
    const/4 v5, 0x0

    .line 2063
    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBackupPayload u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    if-eqz p1, :cond_0

    .line 2065
    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBackupPayload: cannot backup policy for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    return-object v5

    .line 2068
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2070
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/android/server/notification/NotificationManagerService;->-wrap32(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;Z)V

    .line 2071
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2072
    :catch_0
    move-exception v1

    .line 2073
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBackupPayload: error writing payload for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2075
    return-object v5
.end method

.method public getEffectsSuppressor()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 2039
    const-string/jumbo v0, "INotificationManager.getEffectsSuppressor"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V

    .line 2040
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get9(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getHintsFromListener(Landroid/service/notification/INotificationListener;)I
    .locals 2
    .param p1, "token"    # Landroid/service/notification/INotificationListener;

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1868
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get17(Lcom/android/server/notification/NotificationManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1867
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .locals 5
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 1662
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1663
    const-string/jumbo v3, "android.permission.ACCESS_NOTIFICATIONS"

    .line 1664
    const-string/jumbo v4, "NotificationManagerService.getHistoricalNotifications"

    .line 1662
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    const/4 v0, 0x0

    .line 1667
    .local v0, "tmp":[Landroid/service/notification/StatusBarNotification;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1670
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get3(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v2, v3, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1672
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get5(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    move-result-object v3

    monitor-enter v3

    .line 1673
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get5(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/notification/NotificationManagerService$Archive;->getArray(I)[Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "tmp":[Landroid/service/notification/StatusBarNotification;
    monitor-exit v3

    .line 1676
    .end local v0    # "tmp":[Landroid/service/notification/StatusBarNotification;
    :cond_0
    return-object v0

    .line 1672
    .local v0, "tmp":[Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I
    .locals 2
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    monitor-enter v1

    .line 1891
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1890
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2138
    const-string/jumbo v2, "getNotificationPolicy"

    invoke-direct {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService$5;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2141
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get32(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2143
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2141
    return-object v2

    .line 2142
    :catchall_0
    move-exception v2

    .line 2143
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2142
    throw v2
.end method

.method public getPackagePeekable(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1569
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap14()V

    .line 1570
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get26(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackagePeekable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPackagePriority(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1556
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap14()V

    .line 1557
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get26(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackagePriority(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPackageVisibilityOverride(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1582
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap14()V

    .line 1583
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get26(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackageVisibilityOverride(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPackagesRequestingNotificationPolicyAccess()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2113
    const-string/jumbo v2, "request policy access packages"

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2116
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->getRequestingPackages()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2118
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2116
    return-object v2

    .line 2117
    :catchall_0
    move-exception v2

    .line 2118
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2117
    throw v2
.end method

.method public getZenMode()I
    .locals 1

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get32(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    return v0
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 1912
    const-string/jumbo v0, "INotificationManager.getZenModeConfig"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V

    .line 1913
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get32(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method public isNotificationPolicyAccessGranted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2101
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$5;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2106
    const-string/jumbo v0, "request policy access status for another package"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2107
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$5;->checkPackagePolicyAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2056
    const-string/jumbo v0, "INotificationManager.isSystemConditionProviderEnabled"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V

    .line 2057
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public matchesCallFilter(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2045
    const-string/jumbo v0, "INotificationManager.matchesCallFilter"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2046
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get32(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v0

    .line 2047
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 2049
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get26(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v2

    const-class v3, Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-virtual {v2, v3}, Lcom/android/server/notification/RankingHelper;->findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ValidateNotificationPeople;

    .line 2050
    const/16 v4, 0xbb8

    .line 2051
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, p1

    .line 2046
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z

    move-result v0

    return v0
.end method

.method public notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/service/notification/IConditionProvider;
    .param p3, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 1949
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/notification/ConditionProviders;->checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 1950
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap13(Ljava/lang/String;)V

    .line 1951
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get10(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$5$1;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/android/server/notification/NotificationManagerService$5$1;-><init>(Lcom/android/server/notification/NotificationManagerService$5;Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1948
    return-void
.end method

.method public registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "listener"    # Landroid/service/notification/INotificationListener;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I

    .prologue
    .line 1688
    const-string/jumbo v0, "INotificationManager.registerListener"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 1689
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 1687
    return-void
.end method

.method public removeAllNotifications(Ljava/lang/String;I)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2020
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap14()V

    .line 2022
    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " removeAllNotifications, for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2026
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2027
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2028
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 2029
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2031
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v2, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->-wrap12(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2027
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    monitor-exit v4

    .line 2019
    return-void

    .line 2025
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 6
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "hints"    # I

    .prologue
    .line 1847
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1849
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1850
    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    .line 1851
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 1852
    .local v0, "disableEffects":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1853
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1857
    :goto_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-wrap29(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1858
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-wrap26(Lcom/android/server/notification/NotificationManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1861
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1846
    return-void

    .line 1851
    .end local v0    # "disableEffects":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "disableEffects":Z
    goto :goto_0

    .line 1855
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1849
    .end local v0    # "disableEffects":Z
    .end local v1    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1860
    :catchall_1
    move-exception v4

    .line 1861
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1860
    throw v4
.end method

.method public requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 6
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "interruptionFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1877
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1878
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v2

    .line 1879
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get32(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v5, p2}, Lcom/android/server/notification/ZenModeHelper;->requestFromListener(Landroid/content/ComponentName;I)V

    .line 1880
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-wrap27(Lcom/android/server/notification/NotificationManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1883
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1874
    return-void

    .line 1877
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1882
    :catchall_1
    move-exception v3

    .line 1883
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1882
    throw v3
.end method

.method public requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    .locals 1
    .param p1, "callback"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I

    .prologue
    .line 1961
    const-string/jumbo v0, "INotificationManager.requestZenModeConditions"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V

    .line 1962
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get32(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V

    .line 1960
    return-void
.end method

.method public setInterruptionFilter(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "filter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 1935
    const-string/jumbo v3, "setInterruptionFilter"

    invoke-direct {p0, p1, v3}, Lcom/android/server/notification/NotificationManagerService$5;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    invoke-static {p2, v4}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v2

    .line 1937
    .local v2, "zen":I
    if-ne v2, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid filter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1938
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1940
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get32(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v3

    const-string/jumbo v4, "setInterruptionFilter"

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1942
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1934
    return-void

    .line 1941
    :catchall_0
    move-exception v3

    .line 1942
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1941
    throw v3
.end method

.method public setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "policy"    # Landroid/app/NotificationManager$Policy;

    .prologue
    .line 2149
    const-string/jumbo v2, "setNotificationPolicy"

    invoke-direct {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService$5;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2152
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get32(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2154
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2148
    return-void

    .line 2153
    :catchall_0
    move-exception v2

    .line 2154
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2153
    throw v2
.end method

.method public setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "granted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2125
    const-string/jumbo v2, "grant notification policy access"

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2128
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2129
    :try_start_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->put(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2132
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2124
    return-void

    .line 2128
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2131
    :catchall_1
    move-exception v2

    .line 2132
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2131
    throw v2
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 1532
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap14()V

    .line 1534
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V

    .line 1531
    return-void
.end method

.method public setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .locals 12
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    const/4 v11, -0x1

    .line 1742
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1744
    .local v2, "identity":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1745
    :try_start_1
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v4

    .line 1746
    .local v4, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz p2, :cond_5

    .line 1747
    array-length v0, p2

    .line 1748
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 1749
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v9, p2, v1

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 1750
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v5, :cond_1

    .line 1748
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1751
    :cond_1
    iget-object v7, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    .line 1752
    .local v6, "userId":I
    iget v7, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-eq v6, v7, :cond_2

    if-eq v6, v11, :cond_2

    .line 1753
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-get31(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1757
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isSeen()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1758
    const-string/jumbo v7, "NotificationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Marking notification as seen "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p2, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-get4(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v7

    iget-object v9, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1760
    if-ne v6, v11, :cond_3

    const/4 v6, 0x0

    .line 1762
    .end local v6    # "userId":I
    :cond_3
    const/4 v10, 0x7

    .line 1759
    invoke-virtual {v7, v9, v6, v10}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 1763
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->setSeen()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1744
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1768
    :catchall_1
    move-exception v7

    .line 1769
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1768
    throw v7

    .line 1754
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v4    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .restart local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v6    # "userId":I
    :cond_4
    :try_start_3
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Disallowed call from listener: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1755
    iget-object v10, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 1754
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v6    # "userId":I
    :cond_5
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1769
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1741
    return-void
.end method

.method public setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 3
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "trim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1898
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1899
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1900
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-nez v0, :cond_0

    monitor-exit v2

    return-void

    .line 1901
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setOnNotificationPostedTrimLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1897
    return-void

    .line 1898
    .end local v0    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setPackagePeekable(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "peekable"    # Z

    .prologue
    .line 1562
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap14()V

    .line 1564
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get26(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/RankingHelper;->setPackagePeekable(Ljava/lang/String;IZ)V

    .line 1561
    return-void
.end method

.method public setPackagePriority(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "priority"    # I

    .prologue
    .line 1549
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap14()V

    .line 1550
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get26(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/RankingHelper;->setPackagePriority(Ljava/lang/String;II)V

    .line 1551
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 1548
    return-void
.end method

.method public setPackageVisibilityOverride(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "visibility"    # I

    .prologue
    .line 1575
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap14()V

    .line 1576
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get26(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/RankingHelper;->setPackageVisibilityOverride(Ljava/lang/String;II)V

    .line 1577
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 1574
    return-void
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1924
    const-string/jumbo v2, "INotificationManager.setZenMode"

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V

    .line 1925
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1927
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get32(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1923
    return-void

    .line 1928
    :catchall_0
    move-exception v2

    .line 1929
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1928
    throw v2
.end method

.method public setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1918
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap14()V

    .line 1919
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get32(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unregisterListener(Landroid/service/notification/INotificationListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/service/notification/INotificationListener;
    .param p2, "userid"    # I

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->unregisterService(Landroid/os/IInterface;I)V

    .line 1696
    return-void
.end method
