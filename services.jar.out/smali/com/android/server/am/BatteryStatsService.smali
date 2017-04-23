.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;,
        Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "BatteryStatsService"

.field static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field final UPDATE_ALL:I

.field final UPDATE_BT:I

.field final UPDATE_CPU:I

.field final UPDATE_RADIO:I

.field final UPDATE_WIFI:I

.field mContext:Landroid/content/Context;

.field private final mExternalStatsLock:Ljava/lang/Object;

.field final mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

.field private mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation
.end field

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mWifiManager:Landroid/net/wifi/IWifiManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "outBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 12
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const-wide/16 v1, 0x0

    .line 163
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->UPDATE_CPU:I

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->UPDATE_WIFI:I

    .line 84
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->UPDATE_RADIO:I

    .line 85
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->UPDATE_BT:I

    .line 86
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->UPDATE_ALL:I

    .line 1199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mExternalStatsLock:Ljava/lang/Object;

    .line 1207
    new-instance v0, Landroid/net/wifi/WifiActivityEnergyInfo;

    const/4 v3, 0x0

    move-wide v4, v1

    move-wide v6, v1

    move-wide v8, v1

    move-wide v10, v1

    invoke-direct/range {v0 .. v11}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 166
    new-instance v0, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    .line 169
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 163
    return-void
.end method

.method private doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "i"    # I
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "enable"    # Z

    .prologue
    const/4 v2, -0x1

    .line 1001
    add-int/lit8 p2, p2, 0x1

    .line 1002
    array-length v0, p3

    if-lt p2, v0, :cond_1

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Missing option argument for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_0

    const-string/jumbo v0, "--enable"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1004
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1005
    return v2

    .line 1003
    :cond_0
    const-string/jumbo v0, "--disable"

    goto :goto_0

    .line 1007
    :cond_1
    const-string/jumbo v0, "full-wake-history"

    aget-object v1, p3, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "full-history"

    aget-object v1, p3, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1008
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1009
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v1

    .line 1020
    return p2

    .line 1008
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1011
    :cond_3
    const-string/jumbo v0, "no-auto-reset"

    aget-object v1, p3, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1012
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1013
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setNoAutoReset(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1012
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1016
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown enable/disable option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p3, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1018
    return v2
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 975
    const-string/jumbo v0, "Battery stats (batterystats) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 976
    const-string/jumbo v0, "  [--checkin] [--history] [--history-start] [--charged] [-c]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 977
    const-string/jumbo v0, "  [--daily] [--reset] [--write] [--new-daily] [--read-daily] [-h] [<package.name>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 978
    const-string/jumbo v0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 979
    const-string/jumbo v0, "             last old completed stats when they had been reset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    const-string/jumbo v0, "  --c: write the current stats in checkin format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    const-string/jumbo v0, "  --history: show only history data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    const-string/jumbo v0, "  --history-start <num>: show only history data starting at given time offset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    const-string/jumbo v0, "  --charged: only output data since last charged."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 984
    const-string/jumbo v0, "  --daily: only output full daily data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 985
    const-string/jumbo v0, "  --reset: reset the stats, clearing all current data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 986
    const-string/jumbo v0, "  --write: force write current collected stats to disk."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 987
    const-string/jumbo v0, "  --new-daily: immediately create and write new daily stats record."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    const-string/jumbo v0, "  --read-daily: read-load last written daily stats."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    const-string/jumbo v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 990
    const-string/jumbo v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    const-string/jumbo v0, "Battery stats (batterystats) commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 992
    const-string/jumbo v0, "  enable|disable <option>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 993
    const-string/jumbo v0, "    Enable or disable a running option.  Option state is not saved across boots."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    const-string/jumbo v0, "    Options are:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    const-string/jumbo v0, "      full-history: include additional detailed events in battery history:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    const-string/jumbo v0, "          wake_lock_in, alarms and proc events"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    const-string/jumbo v0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 974
    return-void
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .locals 2

    .prologue
    .line 203
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_0

    .line 204
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    return-object v1

    .line 206
    :cond_0
    const-string/jumbo v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 207
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 208
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    return-object v1
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method private pullBluetoothEnergyInfoLocked()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 1306
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1307
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_3

    .line 1309
    const/4 v2, 0x1

    .line 1308
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getControllerActivityEnergyInfo(I)Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v1

    .line 1310
    .local v1, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1311
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 1313
    :cond_0
    :goto_0
    const-string/jumbo v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bluetooth energy data is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_1
    return-object v1

    .line 1312
    :cond_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    goto :goto_0

    .line 1318
    .end local v1    # "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :cond_3
    return-object v3
.end method

.method private pullWifiEnergyInfoLocked()Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 26
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mExternalStatsLock"
    .end annotation

    .prologue
    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 1213
    const-string/jumbo v22, "wifi"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    .line 1212
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 1215
    const/16 v22, 0x0

    return-object v22

    .line 1222
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/net/wifi/IWifiManager;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v7

    .line 1223
    .local v7, "info":Landroid/net/wifi/WifiActivityEnergyInfo;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1224
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-ltz v22, :cond_1

    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gez v22, :cond_2

    .line 1226
    :cond_1
    const-string/jumbo v22, "BatteryStatsService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Reported WiFi energy data is invalid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/16 v22, 0x0

    return-object v22

    .line 1225
    :cond_2
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-ltz v22, :cond_1

    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-ltz v22, :cond_1

    .line 1230
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    move-wide/from16 v24, v0

    sub-long v18, v22, v24

    .line 1231
    .local v18, "timePeriodMs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 1232
    .local v10, "lastIdleMs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v14, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 1233
    .local v14, "lastTxMs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v12, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 1234
    .local v12, "lastRxMs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v8, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 1238
    .local v8, "lastEnergy":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    move-object/from16 v16, v0

    .line 1239
    .local v16, "result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual {v7}, Landroid/net/wifi/WifiActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    .line 1240
    invoke-virtual {v7}, Landroid/net/wifi/WifiActivityEnergyInfo;->getStackState()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    .line 1243
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v14

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 1244
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v12

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 1250
    const-wide/16 v22, 0x0

    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v10

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 1252
    const-wide/16 v22, 0x0

    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v8

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v22

    .line 1251
    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 1254
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-ltz v22, :cond_3

    .line 1255
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gez v22, :cond_4

    .line 1258
    :cond_3
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 1259
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 1260
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 1261
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 1263
    const-string/jumbo v22, "BatteryStatsService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_4
    const-wide/16 v4, 0x2ee

    .line 1268
    .local v4, "SAMPLE_ERROR_MILLIS":J
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    .line 1269
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v24, v0

    .line 1268
    add-long v20, v22, v24

    .line 1270
    .local v20, "totalTimeMs":J
    const-wide/16 v22, 0x2ee

    add-long v22, v22, v18

    cmp-long v22, v20, v22

    if-lez v22, :cond_5

    .line 1271
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1272
    .local v17, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v22, "Total time "

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    move-wide/from16 v0, v20

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1274
    const-string/jumbo v22, " is longer than sample period "

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1276
    const-string/jumbo v22, ".\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    const-string/jumbo v22, "Previous WiFi snapshot: "

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "idle="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    move-object/from16 v0, v17

    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1279
    const-string/jumbo v22, " rx="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    move-object/from16 v0, v17

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1281
    const-string/jumbo v22, " tx="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    move-object/from16 v0, v17

    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1283
    const-string/jumbo v22, " e="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1284
    const-string/jumbo v22, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    const-string/jumbo v22, "Current WiFi snapshot: "

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "idle="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1287
    const-string/jumbo v22, " rx="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1289
    const-string/jumbo v22, " tx="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1291
    const-string/jumbo v22, " e="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-wide v0, v7, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1292
    const-string/jumbo v22, "BatteryStatsService"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    return-object v16

    .line 1298
    .end local v4    # "SAMPLE_ERROR_MILLIS":J
    .end local v7    # "info":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v8    # "lastEnergy":J
    .end local v10    # "lastIdleMs":J
    .end local v12    # "lastRxMs":J
    .end local v14    # "lastTxMs":J
    .end local v16    # "result":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v18    # "timePeriodMs":J
    .end local v20    # "totalTimeMs":J
    :catch_0
    move-exception v6

    .line 1301
    :cond_6
    const/16 v22, 0x0

    return-object v22
.end method


# virtual methods
.method addIsolatedUid(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->addIsolatedUidLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 246
    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public computeBatteryTimeRemaining()J
    .locals 6

    .prologue
    .line 332
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 333
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    move-result-wide v0

    .line 334
    .local v0, "time":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "time":J
    :cond_0
    monitor-exit v3

    return-wide v0

    .line 332
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public computeChargeTimeRemaining()J
    .locals 6

    .prologue
    .line 339
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 340
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    move-result-wide v0

    .line 341
    .local v0, "time":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "time":J
    :cond_0
    monitor-exit v3

    return-wide v0

    .line 339
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 30
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1026
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 1028
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission Denial: can\'t dump BatteryStats from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1029
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1028
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1029
    const-string/jumbo v7, ", uid="

    .line 1028
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1029
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1028
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1030
    const-string/jumbo v7, " without permission "

    .line 1028
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1030
    const-string/jumbo v7, "android.permission.DUMP"

    .line 1028
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    return-void

    .line 1034
    :cond_0
    const/4 v9, 0x0

    .line 1035
    .local v9, "flags":I
    const/16 v28, 0x0

    .line 1036
    .local v28, "useCheckinFormat":Z
    const/16 v25, 0x0

    .line 1037
    .local v25, "isRealCheckin":Z
    const/16 v26, 0x0

    .line 1038
    .local v26, "noOutput":Z
    const/16 v29, 0x0

    .line 1039
    .local v29, "writeData":Z
    const-wide/16 v10, -0x1

    .line 1040
    .local v10, "historyStart":J
    const/16 v17, -0x1

    .line 1041
    .local v17, "reqUid":I
    if-eqz p3, :cond_15

    .line 1042
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v6, v0

    move/from16 v0, v21

    if-ge v0, v6, :cond_15

    .line 1043
    aget-object v4, p3, v21

    .line 1044
    .local v4, "arg":Ljava/lang/String;
    const-string/jumbo v6, "--checkin"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1045
    const/16 v28, 0x1

    .line 1046
    const/16 v25, 0x1

    .line 1042
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 1047
    :cond_1
    const-string/jumbo v6, "--history"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1048
    or-int/lit8 v9, v9, 0x8

    goto :goto_1

    .line 1049
    :cond_2
    const-string/jumbo v6, "--history-start"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1050
    or-int/lit8 v9, v9, 0x8

    .line 1051
    add-int/lit8 v21, v21, 0x1

    .line 1052
    move-object/from16 v0, p3

    array-length v6, v0

    move/from16 v0, v21

    if-lt v0, v6, :cond_3

    .line 1053
    const-string/jumbo v6, "Missing time argument for --history-since"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1055
    return-void

    .line 1057
    :cond_3
    aget-object v6, p3, v21

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1058
    const/16 v29, 0x1

    goto :goto_1

    .line 1059
    :cond_4
    const-string/jumbo v6, "-c"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1060
    const/16 v28, 0x1

    .line 1061
    or-int/lit8 v9, v9, 0x10

    goto :goto_1

    .line 1062
    :cond_5
    const-string/jumbo v6, "--charged"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1063
    or-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 1064
    :cond_6
    const-string/jumbo v6, "--daily"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1065
    or-int/lit8 v9, v9, 0x4

    goto :goto_1

    .line 1066
    :cond_7
    const-string/jumbo v6, "--reset"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1067
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1068
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsCmdLocked()V

    .line 1069
    const-string/jumbo v6, "Battery stats reset."

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    const/16 v26, 0x1

    monitor-exit v7

    .line 1072
    const-string/jumbo v6, "dump"

    const/16 v7, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1067
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1073
    :cond_8
    const-string/jumbo v6, "--write"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1074
    const-string/jumbo v6, "dump"

    const/16 v7, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1076
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    .line 1077
    const-string/jumbo v6, "Battery stats written."

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1078
    const/16 v26, 0x1

    monitor-exit v7

    goto/16 :goto_1

    .line 1075
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1080
    :cond_9
    const-string/jumbo v6, "--new-daily"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1081
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1082
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    .line 1083
    const-string/jumbo v6, "New daily stats written."

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1084
    const/16 v26, 0x1

    monitor-exit v7

    goto/16 :goto_1

    .line 1081
    :catchall_2
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1086
    :cond_a
    const-string/jumbo v6, "--read-daily"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1087
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1088
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    .line 1089
    const-string/jumbo v6, "Last daily stats read."

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1090
    const/16 v26, 0x1

    monitor-exit v7

    goto/16 :goto_1

    .line 1087
    :catchall_3
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1092
    :cond_b
    const-string/jumbo v6, "--enable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string/jumbo v6, "enable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1093
    :cond_c
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v21

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v21

    .line 1094
    if-gez v21, :cond_d

    .line 1095
    return-void

    .line 1097
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v21

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    return-void

    .line 1099
    :cond_e
    const-string/jumbo v6, "--disable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string/jumbo v6, "disable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1100
    :cond_f
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v21

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v21

    .line 1101
    if-gez v21, :cond_10

    .line 1102
    return-void

    .line 1104
    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Disabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v21

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    return-void

    .line 1106
    :cond_11
    const-string/jumbo v6, "-h"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1107
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1108
    return-void

    .line 1109
    :cond_12
    const-string/jumbo v6, "-a"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1110
    or-int/lit8 v9, v9, 0x20

    goto/16 :goto_1

    .line 1111
    :cond_13
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_14

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_14

    .line 1112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1113
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1114
    return-void

    .line 1118
    :cond_14
    :try_start_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1119
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 1118
    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v17

    goto/16 :goto_1

    .line 1120
    :catch_0
    move-exception v12

    .line 1121
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1123
    return-void

    .line 1128
    .end local v4    # "arg":Ljava/lang/String;
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v21    # "i":I
    :cond_15
    if-eqz v26, :cond_16

    .line 1129
    return-void

    .line 1132
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1134
    .local v22, "ident":J
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1135
    or-int/lit8 v9, v9, 0x40

    .line 1138
    :cond_17
    const-string/jumbo v6, "dump"

    const/16 v7, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1140
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1143
    if-ltz v17, :cond_18

    .line 1146
    and-int/lit8 v6, v9, 0xa

    if-nez v6, :cond_18

    .line 1147
    or-int/lit8 v9, v9, 0x2

    .line 1149
    and-int/lit8 v9, v9, -0x11

    .line 1153
    :cond_18
    if-eqz v28, :cond_1c

    .line 1154
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    .line 1155
    .local v8, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v25, :cond_1a

    .line 1158
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v13, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v13

    .line 1159
    :try_start_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->exists()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-result v6

    if-eqz v6, :cond_19

    .line 1161
    :try_start_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v27

    .line 1162
    .local v27, "raw":[B
    if-eqz v27, :cond_19

    .line 1163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v24

    .line 1164
    .local v24, "in":Landroid/os/Parcel;
    move-object/from16 v0, v27

    array-length v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v7, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1165
    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1166
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    .line 1167
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v7, 0x0

    const/4 v14, 0x0

    .line 1166
    invoke-direct {v5, v7, v6, v14}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    .line 1168
    .local v5, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 1169
    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->recycle()V

    .line 1170
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v7, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->delete()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/ParcelFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    monitor-exit v13

    .line 1173
    return-void

    .line 1139
    .end local v5    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v24    # "in":Landroid/os/Parcel;
    .end local v27    # "raw":[B
    :catchall_4
    move-exception v6

    .line 1140
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1139
    throw v6

    .line 1175
    .restart local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_1
    move-exception v20

    .line 1176
    .local v20, "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v6, "BatteryStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failure reading checkin file "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v14, v14, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v14}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v14

    .line 1176
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .end local v20    # "e":Ljava/lang/Exception;
    :cond_19
    monitor-exit v13

    .line 1182
    :cond_1a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1183
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v15, p2

    move-object/from16 v16, v8

    move/from16 v17, v9

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 1184
    .end local v17    # "reqUid":I
    if-eqz v29, :cond_1b

    .line 1185
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1b
    :goto_2
    monitor-exit v7

    .line 1025
    return-void

    .line 1158
    .restart local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v17    # "reqUid":I
    :catchall_5
    move-exception v6

    monitor-exit v13

    throw v6

    .line 1182
    .end local v17    # "reqUid":I
    :catchall_6
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1189
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v17    # "reqUid":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1190
    :try_start_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v15, p2

    move/from16 v16, v9

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    .line 1191
    if-eqz v29, :cond_1b

    .line 1192
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_2

    .line 1189
    :catchall_7
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public enforceCallingPermission()V
    .locals 5

    .prologue
    .line 906
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 907
    return-void

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    .line 910
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 909
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 905
    return-void
.end method

.method public getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getAwakeTimeBattery()J
    .locals 3

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 895
    const-string/jumbo v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    .line 894
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .locals 3

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 901
    const-string/jumbo v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    .line 900
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatistics()[B
    .locals 5

    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 292
    const-string/jumbo v3, "android.permission.BATTERY_STATS"

    const/4 v4, 0x0

    .line 291
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 296
    .local v1, "out":Landroid/os/Parcel;
    const-string/jumbo v2, "get-stats"

    const/16 v3, 0xf

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    .line 297
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 301
    .local v0, "data":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 302
    return-object v0

    .line 297
    .end local v0    # "data":[B
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getStatisticsStream()Landroid/os/ParcelFileDescriptor;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 306
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 307
    const-string/jumbo v4, "android.permission.BATTERY_STATS"

    .line 306
    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 311
    .local v2, "out":Landroid/os/Parcel;
    const-string/jumbo v3, "get-stats"

    const/16 v4, 0xf

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    .line 312
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 313
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 315
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 316
    .local v0, "data":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 318
    :try_start_1
    const-string/jumbo v3, "battery-stats"

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3

    .line 312
    .end local v0    # "data":[B
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 319
    .restart local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "BatteryStatsService"

    const-string/jumbo v4, "Unable to create shared memory"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    return-object v6
.end method

.method public initPowerManagement()V
    .locals 2

    .prologue
    .line 187
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 188
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveMode(Z)V

    .line 190
    new-instance v0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->start()V

    .line 186
    return-void
.end method

.method public isCharging()Z
    .locals 2

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isCharging()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isOnBattery()Z
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    return v0
.end method

.method public noteAlarmFinish(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 389
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmFinishLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 387
    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteAlarmStart(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 382
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmStartLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 380
    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 13
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "newWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 424
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v12

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    .line 422
    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public noteConnectivityChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 517
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteConnectivityChangedLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 515
    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteDeviceIdleMode(ZLjava/lang/String;I)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 840
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 841
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteDeviceIdleModeLocked(ZLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 838
    return-void

    .line 840
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 347
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 345
    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteFlashlightOff(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 630
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOffLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 628
    return-void

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteFlashlightOn(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 623
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOnLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 621
    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteFullWifiLockAcquired(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 724
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 725
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 722
    return-void

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 766
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 764
    return-void

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteFullWifiLockReleased(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 731
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 729
    return-void

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 773
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 774
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 771
    return-void

    .line 773
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteInteractive(Z)V
    .locals 2
    .param p1, "interactive"    # Z

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 510
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteInteractiveLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 508
    return-void

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteJobFinish(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 375
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 373
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteJobStart(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 368
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 366
    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteMobileRadioPowerState(IJ)V
    .locals 2
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 524
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteMobileRadioPowerState(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 522
    return-void

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteNetworkInterfaceType(Ljava/lang/String;I)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 824
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 822
    return-void

    .line 824
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteNetworkStatsEnabled()V
    .locals 2

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 832
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkStatsEnabledLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 830
    return-void

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notePackageInstalled(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 847
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 848
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageInstalledLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 845
    return-void

    .line 847
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notePackageUninstalled(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 854
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageUninstalledLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 852
    return-void

    .line 854
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notePhoneDataConnectionState(IZ)V
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 552
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 553
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 550
    return-void

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notePhoneOff()V
    .locals 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 538
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOffLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 536
    return-void

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notePhoneOn()V
    .locals 2

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 531
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOnLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 529
    return-void

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 545
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 543
    return-void

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notePhoneState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 559
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 560
    .local v0, "simState":I
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneStateLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 557
    return-void

    .line 560
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method noteProcessAnr(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessAnrLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 270
    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method noteProcessCrash(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessCrashLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 264
    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method noteProcessFinish(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 282
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method noteProcessStart(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 258
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method noteProcessState(Ljava/lang/String;II)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "state"    # I

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStateLocked(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 276
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteResetAudio()V
    .locals 2

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 609
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetAudioLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 607
    return-void

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteResetCamera()V
    .locals 2

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 651
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetCameraLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 649
    return-void

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteResetFlashlight()V
    .locals 2

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 658
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetFlashlightLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 656
    return-void

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteResetVideo()V
    .locals 2

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 616
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetVideoLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 614
    return-void

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteScreenBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 489
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 487
    return-void

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteScreenState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 482
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenStateLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 480
    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteStartAudio(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 581
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOnLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 579
    return-void

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteStartCamera(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 637
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOnLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 635
    return-void

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteStartGps(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 468
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartGpsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 466
    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteStartSensor(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 440
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartSensorLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 438
    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteStartVideo(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 595
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOnLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 593
    return-void

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 397
    iget-object v12, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v12

    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 399
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 398
    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    .line 395
    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 414
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 412
    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public noteStopAudio(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 588
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOffLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 586
    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteStopCamera(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 644
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOffLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 642
    return-void

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteStopGps(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 475
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopGpsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 473
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteStopSensor(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 447
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopSensorLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 445
    return-void

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteStopVideo(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 602
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOffLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 600
    return-void

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 405
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v10

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    .line 406
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    .line 403
    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 433
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v6

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 431
    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public noteSyncFinish(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 361
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 359
    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteSyncStart(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 354
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 352
    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteUserActivity(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "event"    # I

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 496
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUserActivityLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 494
    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteVibratorOff(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 461
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOffLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 459
    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteVibratorOn(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 454
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOnLocked(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 452
    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWakeUp(Ljava/lang/String;I)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 503
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeUpLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 501
    return-void

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 794
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 795
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 792
    return-void

    .line 794
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 801
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 802
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 799
    return-void

    .line 801
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiMulticastDisabled(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 759
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 760
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 757
    return-void

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiMulticastDisabledFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 816
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 814
    return-void

    .line 816
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiMulticastEnabled(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 752
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 753
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 750
    return-void

    .line 752
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiMulticastEnabledFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 808
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 806
    return-void

    .line 808
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiOff()V
    .locals 2

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 574
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOffLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 572
    return-void

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiOn()V
    .locals 2

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 567
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOnLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 565
    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiRadioPowerState(IJ)V
    .locals 6
    .param p1, "powerState"    # I
    .param p2, "tsNanos"    # J

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 669
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 670
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    if-eq p1, v1, :cond_0

    .line 672
    sget v1, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    if-ne p1, v1, :cond_2

    :cond_0
    const-string/jumbo v0, "active"

    .line 674
    .local v0, "type":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi-data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->scheduleWifiSync(Ljava/lang/String;)V

    .line 676
    .end local v0    # "type":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRadioPowerState(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 664
    return-void

    .line 673
    :cond_2
    :try_start_1
    const-string/jumbo v0, "inactive"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 669
    .end local v0    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public noteWifiRssiChanged(I)V
    .locals 2
    .param p1, "newRssi"    # I

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 717
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRssiChangedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 715
    return-void

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 682
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 683
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 680
    return-void

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 689
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 687
    return-void

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiScanStarted(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 738
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 736
    return-void

    .line 738
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 780
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 781
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 778
    return-void

    .line 780
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiScanStopped(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 745
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 743
    return-void

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 787
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 785
    return-void

    .line 787
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiState(ILjava/lang/String;)V
    .locals 2
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 703
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 701
    return-void

    .line 703
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 696
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 694
    return-void

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteWifiSupplicantStateChanged(IZ)V
    .locals 2
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 710
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 708
    return-void

    .line 710
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onLowPowerModeChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 212
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 174
    const-string/jumbo v0, "batterystats"

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 175
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setNumSpeedSteps(I)V

    .line 176
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 177
    const v2, 0x10e000c

    .line 176
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    .line 178
    const-wide/16 v4, 0x3e8

    .line 176
    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeout(J)V

    .line 179
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfile(Lcom/android/internal/os/PowerProfile;)V

    .line 172
    return-void
.end method

.method removeIsolatedUid(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleRemoveIsolatedUidLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 252
    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method removeUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->removeUidStatsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 240
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public scheduleWriteToDisk()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->sendEmptyMessage(I)Z

    .line 231
    return-void
.end method

.method public setBatteryState(IIIIII)V
    .locals 9
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 870
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    move-object v1, p0

    move v2, p3

    move v3, p1

    move v4, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIII)V

    invoke-virtual {v8, v0}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->post(Ljava/lang/Runnable;)Z

    .line 865
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 194
    const-string/jumbo v0, "BatteryStats"

    const-string/jumbo v1, "Writing battery stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string/jumbo v0, "shutdown"

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->updateExternalStats(Ljava/lang/String;I)V

    .line 197
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->shutdownLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 193
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method updateExternalStats(Ljava/lang/String;I)V
    .locals 12
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateFlags"    # I

    .prologue
    .line 1334
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mExternalStatsLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1335
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    monitor-exit v10

    .line 1338
    return-void

    .line 1345
    :cond_0
    const/4 v9, 0x0

    .line 1346
    .local v9, "wifiEnergyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    .line 1347
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->pullWifiEnergyInfoLocked()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v9

    .line 1350
    .end local v9    # "wifiEnergyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_1
    const/4 v0, 0x0

    .line 1351
    .local v0, "bluetoothEnergyInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_2

    .line 1354
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->pullBluetoothEnergyInfoLocked()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 1357
    .end local v0    # "bluetoothEnergyInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :cond_2
    iget-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1358
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1359
    .local v2, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1360
    .local v4, "uptime":J
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mRecordAllHistory:Z

    if-eqz v1, :cond_3

    .line 1361
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1362
    const/16 v6, 0xe

    const/4 v8, 0x0

    move-object v7, p1

    .line 1361
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 1365
    :cond_3
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_4

    .line 1366
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked()V

    .line 1367
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 1370
    :cond_4
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_5

    .line 1371
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioStateLocked(J)V

    .line 1374
    :cond_5
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_6

    .line 1375
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v9}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiStateLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    .line 1378
    :cond_6
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_7

    .line 1379
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v10

    .line 1333
    return-void

    .line 1357
    .end local v2    # "elapsedRealtime":J
    .end local v4    # "uptime":J
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v11

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1334
    :catchall_1
    move-exception v1

    monitor-exit v10

    throw v1
.end method
