.class public Lcom/android/server/usb/UsbPortManager;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbPortManager$PortInfo;,
        Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;,
        Lcom/android/server/usb/UsbPortManager$1;,
        Lcom/android/server/usb/UsbPortManager$2;
    }
.end annotation


# static fields
.field private static final COMBO_SINK_DEVICE:I

.field private static final COMBO_SINK_HOST:I

.field private static final COMBO_SOURCE_DEVICE:I

.field private static final COMBO_SOURCE_HOST:I

.field private static final MSG_UPDATE_PORTS:I = 0x1

.field private static final PORT_DATA_ROLE_DEVICE:Ljava/lang/String; = "device"

.field private static final PORT_DATA_ROLE_HOST:Ljava/lang/String; = "host"

.field private static final PORT_MODE_DFP:Ljava/lang/String; = "dfp"

.field private static final PORT_MODE_UFP:Ljava/lang/String; = "ufp"

.field private static final PORT_POWER_ROLE_SINK:Ljava/lang/String; = "sink"

.field private static final PORT_POWER_ROLE_SOURCE:Ljava/lang/String; = "source"

.field private static final SYSFS_CLASS:Ljava/lang/String; = "/sys/class/dual_role_usb"

.field private static final SYSFS_PORT_DATA_ROLE:Ljava/lang/String; = "data_role"

.field private static final SYSFS_PORT_MODE:Ljava/lang/String; = "mode"

.field private static final SYSFS_PORT_POWER_ROLE:Ljava/lang/String; = "power_role"

.field private static final SYSFS_PORT_SUPPORTED_MODES:Ljava/lang/String; = "supported_modes"

.field private static final TAG:Ljava/lang/String; = "UsbPortManager"

.field private static final UEVENT_FILTER:Ljava/lang/String; = "SUBSYSTEM=dual_role_usb"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHaveKernelSupport:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$PortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimulatedPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static synthetic -get0(Lcom/android/server/usb/UsbPortManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/usb/UsbPortManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbPortManager;->scheduleUpdatePorts()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 94
    invoke-static {v1, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    .line 93
    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 96
    invoke-static {v1, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    .line 95
    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    .line 98
    invoke-static {v2, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    .line 97
    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    .line 100
    invoke-static {v2, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    .line 99
    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 115
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 119
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 118
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 664
    new-instance v0, Lcom/android/server/usb/UsbPortManager$1;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbPortManager$1;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    .line 678
    new-instance v0, Lcom/android/server/usb/UsbPortManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbPortManager$2;-><init>(Lcom/android/server/usb/UsbPortManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mUEventObserver:Landroid/os/UEventObserver;

    .line 122
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/dual_role_usb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbPortManager;->mHaveKernelSupport:Z

    .line 121
    return-void
.end method

.method private addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .locals 9
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "currentMode"    # I
    .param p4, "canChangeMode"    # Z
    .param p5, "currentPowerRole"    # I
    .param p6, "canChangePowerRole"    # Z
    .param p7, "currentDataRole"    # I
    .param p8, "canChangeDataRole"    # Z
    .param p9, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 460
    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    .line 461
    const/4 p4, 0x0

    .line 462
    .local p4, "canChangeMode":Z
    if-eqz p3, :cond_0

    if-eq p3, p2, :cond_0

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignoring inconsistent current mode from USB port driver: supportedModes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 464
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 465
    const-string/jumbo v3, ", currentMode="

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 465
    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    move-object/from16 v0, p9

    invoke-static {v3, v0, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 466
    const/4 p3, 0x0

    .line 473
    .end local p4    # "canChangeMode":Z
    :cond_0
    move/from16 v0, p7

    invoke-static {p5, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v8

    .line 475
    .local v8, "supportedRoleCombinations":I
    if-eqz p3, :cond_1

    if-eqz p5, :cond_1

    if-eqz p7, :cond_1

    .line 476
    if-eqz p6, :cond_2

    if-eqz p8, :cond_2

    .line 480
    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    or-int/2addr v2, v3

    .line 481
    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    .line 480
    or-int/2addr v2, v3

    .line 481
    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    .line 480
    or-int/2addr v2, v3

    .line 479
    or-int/2addr v8, v2

    .line 505
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 506
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v1, :cond_5

    .line 507
    new-instance v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    invoke-direct {v1, p1, p2}, Lcom/android/server/usb/UsbPortManager$PortInfo;-><init>(Ljava/lang/String;I)V

    .restart local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 508
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZI)Z

    .line 512
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :goto_1
    return-void

    .line 482
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_2
    if-eqz p6, :cond_3

    .line 486
    const/4 v2, 0x1

    .line 485
    move/from16 v0, p7

    invoke-static {v2, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    or-int/2addr v8, v2

    .line 488
    const/4 v2, 0x2

    .line 487
    move/from16 v0, p7

    invoke-static {v2, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    or-int/2addr v8, v2

    goto :goto_0

    .line 489
    :cond_3
    if-eqz p8, :cond_4

    .line 493
    const/4 v2, 0x1

    .line 492
    invoke-static {p5, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    or-int/2addr v8, v2

    .line 495
    const/4 v2, 0x2

    .line 494
    invoke-static {p5, v2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    or-int/2addr v8, v2

    goto :goto_0

    .line 496
    :cond_4
    if-eqz p4, :cond_1

    .line 500
    sget v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    or-int/2addr v2, v3

    or-int/2addr v8, v2

    goto :goto_0

    .line 515
    .restart local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_5
    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v2

    if-eq p2, v2, :cond_6

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignoring inconsistent list of supported modes from USB port driver (should be immutable): previous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 519
    iget-object v3, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v3

    .line 518
    invoke-static {v3}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 520
    const-string/jumbo v3, ", current="

    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 520
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    move-object/from16 v0, p9

    invoke-static {v3, v0, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    :cond_6
    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 523
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZI)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 527
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    goto :goto_1

    .line 529
    :cond_7
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    goto :goto_1
.end method

.method private static canChangeDataRole(Ljava/io/File;)Z
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 633
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "data_role"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method private static canChangeMode(Ljava/io/File;)Z
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 625
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "mode"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method private static canChangePowerRole(Ljava/io/File;)Z
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 629
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "power_role"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method private handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "USB port added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 536
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 534
    return-void
.end method

.method private handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "USB port changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 541
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 539
    return-void
.end method

.method private handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "USB port removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 546
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 544
    return-void
.end method

.method private static logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 658
    const-string/jumbo v0, "UsbPortManager"

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 659
    if-eqz p1, :cond_0

    .line 660
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 657
    :cond_0
    return-void
.end method

.method private static readCurrentDataRole(Ljava/io/File;)I
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 612
    const-string/jumbo v1, "data_role"

    invoke-static {p0, v1}, Lcom/android/server/usb/UsbPortManager;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 614
    const-string/jumbo v1, "host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    const/4 v1, 0x1

    return v1

    .line 617
    :cond_0
    const-string/jumbo v1, "device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    const/4 v1, 0x2

    return v1

    .line 621
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static readCurrentMode(Ljava/io/File;)I
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 586
    const-string/jumbo v1, "mode"

    invoke-static {p0, v1}, Lcom/android/server/usb/UsbPortManager;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 588
    const-string/jumbo v1, "dfp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    const/4 v1, 0x1

    return v1

    .line 591
    :cond_0
    const-string/jumbo v1, "ufp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 592
    const/4 v1, 0x2

    return v1

    .line 595
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static readCurrentPowerRole(Ljava/io/File;)I
    .locals 2
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 599
    const-string/jumbo v1, "power_role"

    invoke-static {p0, v1}, Lcom/android/server/usb/UsbPortManager;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 601
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    const/4 v1, 0x1

    return v1

    .line 604
    :cond_0
    const-string/jumbo v1, "sink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    const/4 v1, 0x2

    return v1

    .line 608
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 637
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 639
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "ex":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method private static readSupportedModes(Ljava/io/File;)I
    .locals 3
    .param p0, "portDir"    # Ljava/io/File;

    .prologue
    .line 572
    const/4 v1, 0x0

    .line 573
    .local v1, "modes":I
    const-string/jumbo v2, "supported_modes"

    invoke-static {p0, v2}, Lcom/android/server/usb/UsbPortManager;->readFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 575
    const-string/jumbo v2, "dfp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    const/4 v1, 0x1

    .line 578
    :cond_0
    const-string/jumbo v2, "ufp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    or-int/lit8 v1, v1, 0x2

    .line 582
    :cond_1
    return v1
.end method

.method private scheduleUpdatePorts()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 566
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 565
    :cond_0
    return-void
.end method

.method private sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V
    .locals 3
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;

    .prologue
    .line 550
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 551
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 552
    const-string/jumbo v1, "port"

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 553
    const-string/jumbo v1, "portStatus"

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 557
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/usb/UsbPortManager$3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/usb/UsbPortManager$3;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 549
    return-void
.end method

.method private updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 22
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .local v14, "i":I
    move v15, v14

    .end local v14    # "i":I
    .local v15, "i":I
    :goto_0
    add-int/lit8 v14, v15, -0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    if-lez v15, :cond_0

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbPortManager$PortInfo;

    const/4 v12, 0x3

    iput v12, v3, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    move v15, v14

    .end local v14    # "i":I
    .restart local v15    # "i":I
    goto :goto_0

    .line 396
    .end local v15    # "i":I
    .restart local v14    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 398
    .local v13, "count":I
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    .line 400
    .local v19, "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mPortId:Ljava/lang/String;

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mSupportedModes:I

    .line 401
    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    move-object/from16 v0, v19

    iget-boolean v7, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeMode:Z

    .line 402
    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    move-object/from16 v0, v19

    iget-boolean v9, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangePowerRole:Z

    .line 403
    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    move-object/from16 v0, v19

    iget-boolean v11, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeDataRole:Z

    move-object/from16 v3, p0

    move-object/from16 v12, p1

    .line 400
    invoke-direct/range {v3 .. v12}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 398
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 405
    .end local v13    # "count":I
    .end local v19    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/usb/UsbPortManager;->mHaveKernelSupport:Z

    if-eqz v3, :cond_3

    .line 406
    new-instance v3, Ljava/io/File;

    const-string/jumbo v12, "/sys/class/dual_role_usb"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 407
    .local v17, "portDirs":[Ljava/io/File;
    if-eqz v17, :cond_3

    .line 408
    const/4 v3, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v20, v3

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    aget-object v16, v17, v20

    .line 409
    .local v16, "portDir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 408
    :goto_3
    add-int/lit8 v3, v20, 0x1

    move/from16 v20, v3

    goto :goto_2

    .line 414
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, "portId":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbPortManager;->readSupportedModes(Ljava/io/File;)I

    move-result v5

    .line 416
    .local v5, "supportedModes":I
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbPortManager;->readCurrentMode(Ljava/io/File;)I

    move-result v6

    .line 417
    .local v6, "currentMode":I
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbPortManager;->canChangeMode(Ljava/io/File;)Z

    move-result v7

    .line 418
    .local v7, "canChangeMode":Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbPortManager;->readCurrentPowerRole(Ljava/io/File;)I

    move-result v8

    .line 419
    .local v8, "currentPowerRole":I
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbPortManager;->canChangePowerRole(Ljava/io/File;)Z

    move-result v9

    .line 420
    .local v9, "canChangePowerRole":Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbPortManager;->readCurrentDataRole(Ljava/io/File;)I

    move-result v10

    .line 421
    .local v10, "currentDataRole":I
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbPortManager;->canChangeDataRole(Ljava/io/File;)Z

    move-result v11

    .local v11, "canChangeDataRole":Z
    move-object/from16 v3, p0

    move-object/from16 v12, p1

    .line 422
    invoke-direct/range {v3 .. v12}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_3

    .line 432
    .end local v4    # "portId":Ljava/lang/String;
    .end local v5    # "supportedModes":I
    .end local v6    # "currentMode":I
    .end local v7    # "canChangeMode":Z
    .end local v8    # "currentPowerRole":I
    .end local v9    # "canChangePowerRole":Z
    .end local v10    # "currentDataRole":I
    .end local v11    # "canChangeDataRole":Z
    .end local v16    # "portDir":Ljava/io/File;
    .end local v17    # "portDirs":[Ljava/io/File;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v14

    move v15, v14

    .end local v14    # "i":I
    .restart local v15    # "i":I
    :goto_4
    add-int/lit8 v14, v15, -0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    if-lez v15, :cond_4

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 434
    .local v18, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    packed-switch v3, :pswitch_data_0

    :goto_5
    :pswitch_0
    move v15, v14

    .end local v14    # "i":I
    .restart local v15    # "i":I
    goto :goto_4

    .line 436
    .end local v15    # "i":I
    .restart local v14    # "i":I
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 437
    const/4 v3, 0x2

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    goto :goto_5

    .line 440
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 441
    const/4 v3, 0x2

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    goto :goto_5

    .line 444
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 445
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 446
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_5

    .line 388
    .end local v18    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_4
    return-void

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 646
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 648
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 649
    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 650
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v5, :cond_4

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 652
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    move-object v2, v3

    .line 653
    .end local v3    # "writer":Ljava/io/FileWriter;
    :goto_1
    const/4 v4, 0x0

    return v4

    .line 650
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_2
    move-exception v4

    .end local v2    # "writer":Ljava/io/FileWriter;
    :goto_2
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_3
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_4
    if-eqz v5, :cond_3

    :try_start_6
    throw v5

    .line 652
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 650
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v6

    if-nez v5, :cond_2

    move-object v5, v6

    goto :goto_4

    :cond_2
    if-eq v5, v6, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 651
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_4
    const/4 v4, 0x1

    return v4

    .line 650
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    goto :goto_3

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    goto :goto_3

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_2
.end method


# virtual methods
.method public addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const-string/jumbo v0, "Port with same name already exists.  Please remove it first."

    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 278
    return-void

    .line 281
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding simulated port: portId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    const-string/jumbo v2, ", supportedModes="

    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 284
    new-instance v2, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    invoke-direct {v2, p1, p2}, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;-><init>(Ljava/lang/String;I)V

    .line 283
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-direct {p0, p3}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 274
    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "canChangeMode"    # Z
    .param p4, "powerRole"    # I
    .param p5, "canChangePowerRole"    # Z
    .param p6, "dataRole"    # I
    .param p7, "canChangeDataRole"    # Z
    .param p8, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 292
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    .line 294
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    if-nez v0, :cond_0

    .line 295
    const-string/jumbo v1, "Cannot connect simulated port which does not exist."

    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 296
    return-void

    .line 299
    :cond_0
    if-eqz p2, :cond_1

    if-nez p4, :cond_2

    .line 300
    :cond_1
    :try_start_1
    const-string/jumbo v1, "Cannot connect simulated port in null mode, power role, or data role."

    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 302
    return-void

    .line 299
    :cond_2
    if-eqz p6, :cond_1

    .line 305
    :try_start_2
    iget v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mSupportedModes:I

    and-int/2addr v1, p2

    if-nez v1, :cond_3

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Simulated port does not support mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 307
    return-void

    .line 310
    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connecting simulated port: portId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    const-string/jumbo v3, ", mode="

    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 312
    const-string/jumbo v3, ", canChangeMode="

    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    const-string/jumbo v3, ", powerRole="

    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    const-string/jumbo v3, ", canChangePowerRole="

    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    const-string/jumbo v3, ", dataRole="

    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    invoke-static {p6}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 316
    const-string/jumbo v3, ", canChangeDataRole="

    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 317
    iput p2, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    .line 318
    iput-boolean p3, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeMode:Z

    .line 319
    iput p4, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    .line 320
    iput-boolean p5, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangePowerRole:Z

    .line 321
    iput p6, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    .line 322
    iput-boolean p7, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeDataRole:Z

    .line 323
    invoke-direct {p0, p8}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 291
    return-void

    .line 292
    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 328
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    .line 330
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    if-nez v0, :cond_0

    .line 331
    const-string/jumbo v1, "Cannot disconnect simulated port which does not exist."

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 332
    return-void

    .line 335
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disconnecting simulated port: portId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 336
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    .line 337
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeMode:Z

    .line 338
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    .line 339
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangePowerRole:Z

    .line 340
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    .line 341
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCanChangeDataRole:Z

    .line 342
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 327
    return-void

    .line 328
    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 371
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 372
    :try_start_0
    const-string/jumbo v2, "USB Port State:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    const-string/jumbo v2, " (simulation active; end with \'dumpsys usb reset\')"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 376
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 378
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 379
    const-string/jumbo v2, "  <no ports>"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 370
    return-void

    .line 381
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "portInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 382
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 371
    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v1    # "portInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 144
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 145
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v1

    .line 143
    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .locals 5

    .prologue
    .line 132
    iget-object v4, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 133
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 134
    .local v0, "count":I
    new-array v2, v0, [Landroid/hardware/usb/UsbPort;

    .line 135
    .local v2, "result":[Landroid/hardware/usb/UsbPort;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iget-object v3, v3, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    aput-object v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    .line 138
    return-object v2

    .line 132
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "result":[Landroid/hardware/usb/UsbPort;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 349
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 350
    const-string/jumbo v1, "Cannot remove simulated port which does not exist."

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 351
    return-void

    .line 354
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disconnecting simulated port: portId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 356
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 346
    return-void

    .line 347
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 362
    :try_start_0
    const-string/jumbo v0, "Removing all simulated ports and ending simulation."

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 365
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 360
    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    .locals 15
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "newPowerRole"    # I
    .param p3, "newDataRole"    # I
    .param p4, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 151
    iget-object v13, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 152
    :try_start_0
    iget-object v12, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 153
    .local v10, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v10, :cond_1

    .line 154
    if-eqz p4, :cond_0

    .line 155
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "No such USB port: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v13

    .line 157
    return-void

    .line 161
    :cond_1
    :try_start_1
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v12

    if-nez v12, :cond_2

    .line 162
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Attempted to set USB port into unsupported role combination: portId="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 164
    const-string/jumbo v14, ", newPowerRole="

    .line 162
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 164
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v14

    .line 162
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 165
    const-string/jumbo v14, ", newDataRole="

    .line 162
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 165
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v14

    .line 162
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x6

    move-object/from16 v0, p4

    invoke-static {v14, v0, v12}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v13

    .line 166
    return-void

    .line 170
    :cond_2
    :try_start_2
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v5

    .line 171
    .local v5, "currentDataRole":I
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v7

    .line 172
    .local v7, "currentPowerRole":I
    move/from16 v0, p3

    if-ne v5, v0, :cond_4

    move/from16 v0, p2

    if-ne v7, v0, :cond_4

    .line 173
    if-eqz p4, :cond_3

    .line 174
    const-string/jumbo v12, "No change."

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit v13

    .line 176
    return-void

    .line 185
    :cond_4
    :try_start_3
    iget-boolean v3, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 186
    .local v3, "canChangeMode":Z
    iget-boolean v4, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 187
    .local v4, "canChangePowerRole":Z
    iget-boolean v2, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 188
    .local v2, "canChangeDataRole":Z
    iget-object v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v6

    .line 190
    .local v6, "currentMode":I
    if-nez v4, :cond_7

    move/from16 v0, p2

    if-eq v7, v0, :cond_7

    .line 192
    :cond_5
    if-eqz v3, :cond_9

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_9

    .line 193
    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_9

    .line 194
    const/4 v8, 0x1

    .line 210
    .local v8, "newMode":I
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Setting USB port mode and role: portId="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 211
    const-string/jumbo v14, ", currentMode="

    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 211
    invoke-static {v6}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v14

    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 212
    const-string/jumbo v14, ", currentPowerRole="

    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 212
    invoke-static {v7}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v14

    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 213
    const-string/jumbo v14, ", currentDataRole="

    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 213
    invoke-static {v5}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v14

    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 214
    const-string/jumbo v14, ", newMode="

    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 214
    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v14

    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 215
    const-string/jumbo v14, ", newPowerRole="

    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 215
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v14

    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 216
    const-string/jumbo v14, ", newDataRole="

    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 216
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v14

    .line 210
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    move-object/from16 v0, p4

    invoke-static {v14, v0, v12}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 218
    iget-object v12, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;

    .line 219
    .local v11, "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    if-eqz v11, :cond_b

    .line 221
    iput v8, v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentMode:I

    .line 222
    move/from16 v0, p2

    iput v0, v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentPowerRole:I

    .line 223
    move/from16 v0, p3

    iput v0, v11, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mCurrentDataRole:I

    .line 270
    :cond_6
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v13

    .line 150
    return-void

    .line 191
    .end local v8    # "newMode":I
    .end local v11    # "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_7
    if-nez v2, :cond_8

    move/from16 v0, p3

    if-ne v5, v0, :cond_5

    .line 206
    :cond_8
    move v8, v6

    .restart local v8    # "newMode":I
    goto/16 :goto_0

    .line 195
    .end local v8    # "newMode":I
    :cond_9
    if-eqz v3, :cond_a

    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_a

    .line 196
    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_a

    .line 197
    const/4 v8, 0x2

    .line 196
    .restart local v8    # "newMode":I
    goto/16 :goto_0

    .line 199
    .end local v8    # "newMode":I
    :cond_a
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Found mismatch in supported USB role combinations while attempting to change role: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 201
    const-string/jumbo v14, ", newPowerRole="

    .line 199
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 201
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v14

    .line 199
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 202
    const-string/jumbo v14, ", newDataRole="

    .line 199
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 202
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v14

    .line 199
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x6

    move-object/from16 v0, p4

    invoke-static {v14, v0, v12}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v13

    .line 203
    return-void

    .line 224
    .restart local v8    # "newMode":I
    .restart local v11    # "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :cond_b
    :try_start_5
    iget-boolean v12, p0, Lcom/android/server/usb/UsbPortManager;->mHaveKernelSupport:Z

    if-eqz v12, :cond_6

    .line 226
    new-instance v9, Ljava/io/File;

    const-string/jumbo v12, "/sys/class/dual_role_usb"

    move-object/from16 v0, p1

    invoke-direct {v9, v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .local v9, "portDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_c

    .line 228
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "USB port not found: portId="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x6

    move-object/from16 v0, p4

    invoke-static {v14, v0, v12}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v13

    .line 229
    return-void

    .line 232
    :cond_c
    if-eq v6, v8, :cond_e

    .line 239
    :try_start_6
    const-string/jumbo v14, "mode"

    .line 240
    const/4 v12, 0x1

    if-ne v8, v12, :cond_d

    const-string/jumbo v12, "dfp"

    .line 239
    :goto_1
    invoke-static {v9, v14, v12}, Lcom/android/server/usb/UsbPortManager;->writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 241
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to set the USB port mode: portId="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 243
    const-string/jumbo v14, ", newMode="

    .line 241
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 243
    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v14

    .line 241
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x6

    move-object/from16 v0, p4

    invoke-static {v14, v0, v12}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v13

    .line 244
    return-void

    .line 240
    :cond_d
    :try_start_7
    const-string/jumbo v12, "ufp"

    goto :goto_1

    .line 248
    :cond_e
    move/from16 v0, p2

    if-eq v7, v0, :cond_10

    .line 249
    const-string/jumbo v14, "power_role"

    .line 250
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_f

    .line 251
    const-string/jumbo v12, "source"

    .line 249
    :goto_2
    invoke-static {v9, v14, v12}, Lcom/android/server/usb/UsbPortManager;->writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 252
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to set the USB port power role: portId="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 254
    const-string/jumbo v14, ", newPowerRole="

    .line 252
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 254
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v14

    .line 252
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x6

    move-object/from16 v0, p4

    invoke-static {v14, v0, v12}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v13

    .line 255
    return-void

    .line 251
    :cond_f
    :try_start_8
    const-string/jumbo v12, "sink"

    goto :goto_2

    .line 258
    :cond_10
    move/from16 v0, p3

    if-eq v5, v0, :cond_6

    .line 259
    const-string/jumbo v14, "data_role"

    .line 260
    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_11

    .line 261
    const-string/jumbo v12, "host"

    .line 259
    :goto_3
    invoke-static {v9, v14, v12}, Lcom/android/server/usb/UsbPortManager;->writeFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 262
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to set the USB port data role: portId="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 264
    const-string/jumbo v14, ", newDataRole="

    .line 262
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 264
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v14

    .line 262
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x6

    move-object/from16 v0, p4

    invoke-static {v14, v0, v12}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v13

    .line 265
    return-void

    .line 261
    :cond_11
    :try_start_9
    const-string/jumbo v12, "device"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 151
    .end local v2    # "canChangeDataRole":Z
    .end local v3    # "canChangeMode":Z
    .end local v4    # "canChangePowerRole":Z
    .end local v5    # "currentDataRole":I
    .end local v6    # "currentMode":I
    .end local v7    # "currentPowerRole":I
    .end local v8    # "newMode":I
    .end local v9    # "portDir":Ljava/io/File;
    .end local v10    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v11    # "sim":Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v1, "SUBSYSTEM=dual_role_usb"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/android/server/usb/UsbPortManager;->scheduleUpdatePorts()V

    .line 126
    return-void
.end method
