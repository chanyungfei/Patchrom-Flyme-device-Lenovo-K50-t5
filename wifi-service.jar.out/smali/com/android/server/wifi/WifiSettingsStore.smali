.class final Lcom/android/server/wifi/WifiSettingsStore;
.super Ljava/lang/Object;
.source "WifiSettingsStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiSettingsStore"

.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_ENABLED:I = 0x1

.field private static final WIFI_ENABLED_AIRPLANE_OVERRIDE:I = 0x2


# instance fields
.field private mAirplaneModeOn:Z

.field private mCheckSavedStateAtBoot:Z

.field private final mContext:Landroid/content/Context;

.field private mPersistWifiState:I

.field private mScanAlwaysAvailable:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    .line 47
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    .line 59
    iput-object p1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedAirplaneModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    .line 61
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedWifiState()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    .line 62
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedScanAlwaysAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z

    .line 58
    return-void
.end method

.method private getPersistedAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 206
    iget-object v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 207
    const-string/jumbo v3, "airplane_mode_on"

    .line 206
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getPersistedScanAlwaysAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 211
    iget-object v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 212
    const-string/jumbo v3, "wifi_scan_always_enabled"

    .line 211
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getPersistedWifiState()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 198
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string/jumbo v2, "wifi_on"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "wifi_on"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    return v3
.end method

.method private isAirplaneSensitive()Z
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 162
    const-string/jumbo v2, "airplane_mode_radios"

    .line 161
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 164
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 163
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isAirplaneToggleable()Z
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 170
    const-string/jumbo v2, "airplane_mode_toggleable_radios"

    .line 169
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "toggleableRadios":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 172
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 171
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private persistWifiState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 155
    .local v0, "cr":Landroid/content/ContentResolver;
    iput p1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    .line 156
    const-string/jumbo v1, "wifi_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    return-void
.end method

.method private testAndClearWifiSavedState()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 183
    iget-object v5, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 184
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 186
    .local v2, "wifiSavedState":I
    :try_start_0
    const-string/jumbo v5, "wifi_saved_state"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 187
    if-ne v2, v3, :cond_0

    .line 188
    const-string/jumbo v5, "wifi_saved_state"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    if-ne v2, v3, :cond_1

    :goto_1
    return v3

    :cond_1
    move v3, v4

    goto :goto_1

    .line 189
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPersistWifiState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAirplaneModeOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method declared-synchronized handleAirplaneModeToggled(Z)Z
    .locals 5
    .param p1, "isAirplaneModeOn"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneSensitive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 124
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    .line 125
    const-string/jumbo v0, "WifiSettingsStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received ACTION_AIRPLANE_MODE_CHANGED, mAirplaneModeOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v0, :cond_2

    .line 128
    iget v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    if-ne v0, v3, :cond_1

    .line 129
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 141
    return v3

    .line 133
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->testAndClearWifiSavedState()Z

    move-result v0

    if-nez v0, :cond_3

    .line 134
    iget v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 138
    :cond_3
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 136
    :cond_4
    :try_start_3
    iget v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v0, v4, :cond_1

    goto :goto_1
.end method

.method declared-synchronized handleWifiScanAlwaysAvailableToggled()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 145
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedScanAlwaysAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 144
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized handleWifiToggled(Z)Z
    .locals 3
    .param p1, "wifiEnabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 97
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneToggleable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    if-eqz p1, :cond_3

    .line 102
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v0, :cond_2

    .line 103
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 114
    return v2

    :cond_1
    monitor-exit p0

    .line 98
    return v1

    .line 105
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public hasConnectableAp()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 219
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedWifiState()I

    move-result v0

    .line 220
    .local v0, "persistedWifiState":I
    const-string/jumbo v1, "WifiSettingsStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasConnectableAp, mPersistWifiState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 222
    :cond_0
    return v4

    .line 224
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method declared-synchronized isAirplaneModeOn()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 88
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isScanAlwaysAvailable()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isWifiToggleEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    .line 66
    :try_start_0
    const-string/jumbo v2, "WifiSettingsStore"

    const-string/jumbo v3, "isWifiToggleEnabled in"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    if-nez v2, :cond_0

    .line 68
    const-string/jumbo v2, "WifiSettingsStore"

    const-string/jumbo v3, "mCheckSavedStateAtBoot"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    .line 70
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->testAndClearWifiSavedState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const-string/jumbo v1, "WifiSettingsStore"

    const-string/jumbo v2, "testAndClearWifiSavedState true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 72
    return v0

    .line 76
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    if-eqz v2, :cond_2

    .line 77
    iget v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 79
    :cond_2
    :try_start_2
    iget v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    :goto_1
    monitor-exit p0

    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCheckSavedStateAtBoot(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    .line 227
    return-void
.end method
