.class Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;
.super Landroid/os/UEventObserver;
.source "MtkHdmiManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver$1;
    }
.end annotation


# static fields
.field private static final HDMI_NAME_PATH:Ljava/lang/String; = "/sys/class/switch/hdmi/name"

.field private static final HDMI_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/hdmi/state"

.field private static final HDMI_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/hdmi"

.field private static final MSG_HDMI:I = 0xa

.field private static final MSG_OTG:I = 0xb

.field private static final OTG_NAME_PATH:Ljava/lang/String; = "/sys/class/switch/otg_state/name"

.field private static final OTG_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/otg_state/state"

.field private static final OTG_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/otg_state"

.field private static final TAG:Ljava/lang/String; = "HdmiObserver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHdmiName:Ljava/lang/String;

.field private mHdmiState:I

.field private mOtgName:Ljava/lang/String;

.field private mPrevHdmiState:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;


# direct methods
.method static synthetic -get0(Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;I)V
    .locals 0
    .param p1, "otgState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->handleOtgStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;IILjava/lang/String;)V
    .locals 0
    .param p1, "hdmiState"    # I
    .param p2, "prevHdmiState"    # I
    .param p3, "hdmiName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->sendIntents(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 1162
    new-instance v1, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver$1;

    .line 1163
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-get4(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1162
    invoke-direct {v1, p0, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver$1;-><init>(Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHandler:Landroid/os/Handler;

    .line 1017
    iput-object p2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mContext:Landroid/content/Context;

    .line 1019
    const-string/jumbo v1, "power"

    .line 1018
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1021
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "HdmiObserver"

    .line 1020
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1022
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1023
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->init()V

    .line 1016
    return-void
.end method

.method private getContentFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1073
    const/16 v8, 0x400

    new-array v0, v8, [C

    .line 1074
    .local v0, "buffer":[C
    const/4 v6, 0x0

    .line 1075
    .local v6, "reader":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 1077
    .local v1, "content":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v7, "reader":Ljava/io/FileReader;
    :try_start_1
    array-length v8, v0

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 1079
    .local v5, "len":I
    const/4 v8, 0x0

    invoke-static {v0, v8, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1080
    .local v1, "content":Ljava/lang/String;
    const-string/jumbo v8, "HdmiObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " content is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap9(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1088
    if-eqz v7, :cond_0

    .line 1090
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v6, v7

    .line 1096
    .end local v1    # "content":Ljava/lang/String;
    .end local v5    # "len":I
    .end local v7    # "reader":Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-object v1

    .line 1091
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v5    # "len":I
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .line 1092
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v8, "HdmiObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "close reader fail: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1085
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "len":I
    .end local v7    # "reader":Ljava/io/FileReader;
    .local v1, "content":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v4

    .line 1086
    .end local v1    # "content":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    :try_start_3
    const-string/jumbo v8, "HdmiObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "index exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1088
    if-eqz v6, :cond_1

    .line 1090
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1091
    :catch_2
    move-exception v3

    .line 1092
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "HdmiObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "close reader fail: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1083
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_3
    move-exception v3

    .line 1084
    .end local v1    # "content":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string/jumbo v8, "HdmiObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IO exception when read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1088
    if-eqz v6, :cond_1

    .line 1090
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 1091
    :catch_4
    move-exception v3

    .line 1092
    const-string/jumbo v8, "HdmiObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "close reader fail: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1081
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    .line 1082
    .end local v1    # "content":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_7
    const-string/jumbo v8, "HdmiObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "can\'t find file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1088
    if-eqz v6, :cond_1

    .line 1090
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_1

    .line 1091
    :catch_6
    move-exception v3

    .line 1092
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "HdmiObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "close reader fail: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1087
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1088
    :goto_5
    if-eqz v6, :cond_2

    .line 1090
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1087
    :cond_2
    :goto_6
    throw v8

    .line 1091
    :catch_7
    move-exception v3

    .line 1092
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "HdmiObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "close reader fail: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1087
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    goto :goto_5

    .line 1081
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_4

    .line 1083
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_9
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto/16 :goto_3

    .line 1085
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_a
    move-exception v4

    .restart local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto/16 :goto_2
.end method

.method private handleOtgStateChanged(I)V
    .locals 4
    .param p1, "otgState"    # I

    .prologue
    .line 1202
    const-string/jumbo v1, "HdmiObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HDMIObserver.handleOtgStateChanged(), otgState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-virtual {v1, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->nativeNotifyOtgState(I)Z

    move-result v0

    .line 1205
    .local v0, "ret":Z
    const-string/jumbo v1, "HdmiObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyOtgState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    return-void
.end method

.method private declared-synchronized init()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 1058
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiName:Ljava/lang/String;

    .line 1059
    .local v1, "newName":Ljava/lang/String;
    iget v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I

    .line 1060
    .local v2, "newState":I
    iget v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I

    iput v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mPrevHdmiState:I

    .line 1061
    const-string/jumbo v3, "/sys/class/switch/hdmi/name"

    invoke-direct {p0, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1064
    :try_start_1
    const-string/jumbo v3, "/sys/class/switch/hdmi/state"

    invoke-direct {p0, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1063
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 1068
    :goto_0
    :try_start_2
    invoke-direct {p0, v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->update(Ljava/lang/String;I)V

    .line 1069
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->initOtgState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1057
    return-void

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string/jumbo v3, "HdmiObserver"

    const-string/jumbo v4, "HDMI state fail"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "newName":Ljava/lang/String;
    .end local v2    # "newState":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private initOtgState()V
    .locals 5

    .prologue
    .line 1181
    const-string/jumbo v2, "/sys/class/switch/otg_state/name"

    invoke-direct {p0, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mOtgName:Ljava/lang/String;

    .line 1182
    const/4 v1, 0x0

    .line 1184
    .local v1, "otgState":I
    :try_start_0
    const-string/jumbo v2, "/sys/class/switch/otg_state/state"

    invoke-direct {p0, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1188
    :goto_0
    const-string/jumbo v2, "HdmiObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HDMIObserver.initOtgState(), state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1189
    const-string/jumbo v4, ", name="

    .line 1188
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1189
    iget-object v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mOtgName:Ljava/lang/String;

    .line 1188
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-direct {p0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->updateOtgState(I)V

    .line 1180
    return-void

    .line 1185
    :catch_0
    move-exception v0

    .line 1186
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "HdmiObserver"

    const-string/jumbo v3, "HDMI state fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendIntent(IIILjava/lang/String;)V
    .locals 5
    .param p1, "hdmi"    # I
    .param p2, "hdmiState"    # I
    .param p3, "prevHdmiState"    # I
    .param p4, "hdmiName"    # Ljava/lang/String;

    .prologue
    .line 1145
    and-int v2, p2, p1

    and-int v3, p3, p1

    if-eq v2, v3, :cond_1

    .line 1146
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.HDMI_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1148
    const/4 v1, 0x0

    .line 1149
    .local v1, "state":I
    and-int v2, p2, p1

    if-eqz v2, :cond_0

    .line 1150
    const/4 v1, 0x1

    .line 1152
    :cond_0
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1153
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    const-string/jumbo v2, "HdmiObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HdmiObserver: Broadcast HDMI event, state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1155
    const-string/jumbo v4, " name: "

    .line 1154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap9(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1156
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1157
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-get4(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    move-result-object v2

    .line 1158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    .line 1157
    invoke-virtual {v2, v4, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1144
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "state":I
    :cond_1
    return-void
.end method

.method private declared-synchronized sendIntents(IILjava/lang/String;)V
    .locals 2
    .param p1, "hdmiState"    # I
    .param p2, "prevHdmiState"    # I
    .param p3, "hdmiName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1138
    const/4 v0, 0x1

    .line 1140
    .local v0, "curHdmi":I
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->sendIntent(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1137
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized update(Ljava/lang/String;I)V
    .locals 8
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "newState"    # I

    .prologue
    monitor-enter p0

    .line 1100
    :try_start_0
    const-string/jumbo v2, "HdmiObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HDMIOberver.update(), oldState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1101
    const-string/jumbo v4, ", newState="

    .line 1100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap9(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1103
    move v0, p2

    .line 1104
    .local v0, "hdmiState":I
    iget v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I

    or-int v1, v0, v2

    .line 1118
    .local v1, "newOrOld":I
    sget-boolean v2, Lcom/mediatek/hdmi/MtkHdmiManagerService$FeatureOption;->MTK_MT8193_HDMI_SUPPORT:Z

    if-eqz v2, :cond_0

    .line 1119
    iget v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I

    if-ne v2, v0, :cond_2

    iget v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    if-eq v3, v2, :cond_2

    monitor-exit p0

    .line 1120
    return-void

    .line 1123
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v0, :cond_1

    .line 1124
    add-int/lit8 v2, v1, -0x1

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    :cond_1
    monitor-exit p0

    .line 1125
    return-void

    .line 1128
    :cond_2
    :try_start_2
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiName:Ljava/lang/String;

    .line 1129
    iget v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I

    iput v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mPrevHdmiState:I

    .line 1130
    iput v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I

    .line 1131
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1132
    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHandler:Landroid/os/Handler;

    .line 1133
    iget v4, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiState:I

    iget v5, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mPrevHdmiState:I

    iget-object v6, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHdmiName:Ljava/lang/String;

    .line 1132
    const/16 v7, 0xa

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1133
    const-wide/16 v4, 0x0

    .line 1132
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1099
    return-void

    .end local v0    # "hdmiState":I
    .end local v1    # "newOrOld":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private updateOtgState(I)V
    .locals 4
    .param p1, "otgState"    # I

    .prologue
    .line 1194
    const-string/jumbo v1, "HdmiObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HDMIObserver.updateOtgState(), otgState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1196
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1197
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1198
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1193
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 1038
    const-string/jumbo v3, "HdmiObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HdmiObserver: onUEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap9(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1039
    const-string/jumbo v3, "SWITCH_NAME"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1042
    .local v2, "state":I
    :try_start_0
    const-string/jumbo v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1048
    :goto_0
    const-string/jumbo v3, "HdmiObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HdmiObserver.onUEvent(), name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap9(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1050
    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->mOtgName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1051
    invoke-direct {p0, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->updateOtgState(I)V

    .line 1037
    :goto_1
    return-void

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "HdmiObserver"

    .line 1045
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HdmiObserver: Could not parse switch state from event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1044
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1053
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->update(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public startObserve()V
    .locals 1

    .prologue
    .line 1027
    const-string/jumbo v0, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->startObserving(Ljava/lang/String;)V

    .line 1029
    const-string/jumbo v0, "DEVPATH=/devices/virtual/switch/otg_state"

    invoke-virtual {p0, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->startObserving(Ljava/lang/String;)V

    .line 1026
    return-void
.end method

.method public stopObserve()V
    .locals 0

    .prologue
    .line 1033
    invoke-virtual {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiObserver;->stopObserving()V

    .line 1032
    return-void
.end method
