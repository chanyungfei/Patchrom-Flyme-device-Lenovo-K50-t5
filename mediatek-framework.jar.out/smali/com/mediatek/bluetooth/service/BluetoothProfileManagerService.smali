.class public Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;
.super Lcom/mediatek/bluetooth/IBluetoothProfileManager$Stub;
.source "BluetoothProfileManagerService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothPbap$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService$1;
    }
.end annotation


# static fields
.field private static synthetic -com_mediatek_bluetooth_BluetoothProfileManager$ProfileSwitchesValues:[I = null

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final BLUETOOTH_PROFILEMANAGER_SERVICE:Ljava/lang/String; = "bluetooth_profile_manager"

.field private static final DBG:Z = true

.field private static final MESSAGE_MONITOR_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothProfileManagerService"

.field private static sConenctedProfileList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBluetoothEnableTime:J

.field private mBroadcastreceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mServiceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;",
            "Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom_mediatek_bluetooth_BluetoothProfileManager$ProfileSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->-com_mediatek_bluetooth_BluetoothProfileManager$ProfileSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->-com_mediatek_bluetooth_BluetoothProfileManager$ProfileSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->values()[Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->A2DP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_12

    :goto_0
    :try_start_1
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->AVRCP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_11

    :goto_1
    :try_start_2
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->BIP_INITIATOR:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_10

    :goto_2
    :try_start_3
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->BIP_RESPONDER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_f

    :goto_3
    :try_start_4
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->BPP_SENDER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_e

    :goto_4
    :try_start_5
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->DUN:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_d

    :goto_5
    :try_start_6
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->FTP_CLIENT:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_c

    :goto_6
    :try_start_7
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->FTP_SERVER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_b

    :goto_7
    :try_start_8
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->HEADSET:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_a

    :goto_8
    :try_start_9
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->HID:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    :try_start_a
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->MAP_SERVER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_8

    :goto_a
    :try_start_b
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->OPP_CLIENT:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_7

    :goto_b
    :try_start_c
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->OPP_SERVER:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_6

    :goto_c
    :try_start_d
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PAN_GN:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_5

    :goto_d
    :try_start_e
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PAN_NAP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4

    :goto_e
    :try_start_f
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PBAP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_3

    :goto_f
    :try_start_10
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PRXM:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2

    :goto_10
    :try_start_11
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PRXR:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1

    :goto_11
    :try_start_12
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->SIMAP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_0

    :goto_12
    sput-object v0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->-com_mediatek_bluetooth_BluetoothProfileManager$ProfileSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_12

    :catch_1
    move-exception v1

    goto :goto_11

    :catch_2
    move-exception v1

    goto :goto_10

    :catch_3
    move-exception v1

    goto :goto_f

    :catch_4
    move-exception v1

    goto :goto_e

    :catch_5
    move-exception v1

    goto :goto_d

    :catch_6
    move-exception v1

    goto :goto_c

    :catch_7
    move-exception v1

    goto :goto_b

    :catch_8
    move-exception v1

    goto :goto_a

    :catch_9
    move-exception v1

    goto :goto_9

    :catch_a
    move-exception v1

    goto :goto_8

    :catch_b
    move-exception v1

    goto/16 :goto_7

    :catch_c
    move-exception v1

    goto/16 :goto_6

    :catch_d
    move-exception v1

    goto/16 :goto_5

    :catch_e
    move-exception v1

    goto/16 :goto_4

    :catch_f
    move-exception v1

    goto/16 :goto_3

    :catch_10
    move-exception v1

    goto/16 :goto_2

    :catch_11
    move-exception v1

    goto/16 :goto_1

    :catch_12
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 0
    .param p1, "profile"    # Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    .param p2, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->onProfileStateUpdate(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 0
    .param p1, "profile"    # Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    .param p2, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->updateProfileState(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/mediatek/bluetooth/IBluetoothProfileManager$Stub;-><init>()V

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mBluetoothEnableTime:J

    .line 95
    new-instance v0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService$1;-><init>(Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mBroadcastreceiver:Landroid/content/BroadcastReceiver;

    .line 131
    iput-object p1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 135
    iget-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mBroadcastreceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    return-void
.end method

.method private checkProfileService(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    .locals 1
    .param p1, "profile"    # Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    return-object v0

    .line 361
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getProfileBehavior(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    .locals 3
    .param p1, "profile"    # Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    invoke-static {}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->-getcom_mediatek_bluetooth_BluetoothProfileManager$ProfileSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 441
    :pswitch_0
    const-string/jumbo v1, "unexpected profile"

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 444
    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    :goto_0
    :pswitch_1
    return-object v0

    .line 402
    .restart local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    :pswitch_2
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothFtp$Client;

    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothFtp$Client;-><init>(Landroid/content/Context;)V

    .line 403
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 405
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    :pswitch_3
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothFtp$Server;

    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothFtp$Server;-><init>(Landroid/content/Context;)V

    .line 406
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 408
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    :pswitch_4
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothBipi;

    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothBipi;-><init>(Landroid/content/Context;)V

    .line 409
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 411
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    :pswitch_5
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothBipr;

    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothBipr;-><init>(Landroid/content/Context;)V

    .line 412
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 415
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    :pswitch_6
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothSimap;

    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothSimap;-><init>(Landroid/content/Context;)V

    .line 416
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 427
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    :pswitch_7
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothDun;

    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothDun;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 430
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    :pswitch_8
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothPrxm;

    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothPrxm;-><init>(Landroid/content/Context;)V

    .line 431
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 433
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    :pswitch_9
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothPrxr;

    .end local v0    # "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/BluetoothPrxr;-><init>(Landroid/content/Context;)V

    .line 434
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private isConnectableToMultiDevices(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Z
    .locals 2
    .param p1, "profile"    # Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isConnectableToMultiDevices:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->HID:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v0}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 517
    const-string/jumbo v0, "@M_BluetoothProfileManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BT][profile manager]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void
.end method

.method private onBluetoothDisable()V
    .locals 4

    .prologue
    .line 156
    const-string/jumbo v2, "onBluetoothDisable"

    invoke-static {v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 158
    .local v1, "service":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    invoke-interface {v2}, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->close()V

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 166
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mServiceList size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v2, "android.bluetooth.profilemanager.action.DISABLE_PROFILES"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sendMonitorMessage(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private onBluetoothEnable()V
    .locals 2

    .prologue
    .line 141
    const-string/jumbo v0, "onBluetoothEnable"

    invoke-static {v0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->A2DP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->updateProfileServiceList(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)V

    .line 148
    sget-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->HEADSET:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->updateProfileServiceList(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)V

    .line 150
    const-string/jumbo v0, "PRX"

    const-string/jumbo v1, "hard code service registered."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PRXM:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->updateProfileServiceList(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)V

    .line 152
    sget-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->PRXR:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->updateProfileServiceList(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)V

    .line 140
    return-void
.end method

.method private onProfileStateUpdate(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 2
    .param p1, "profile"    # Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    .param p2, "state"    # I

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onProfileStateUpdate():profile->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",state->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 368
    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    .line 369
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->updateProfileServiceList(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)V

    .line 365
    :cond_0
    return-void
.end method

.method private sendMonitorMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMonitorMessage():action->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 450
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method private updateBluetoothNotification(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBluetoothNotification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 495
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.profilemanager.action.UPDATE_ NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 497
    const-string/jumbo v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    const-string/jumbo v1, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    :goto_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 492
    return-void

    .line 500
    :cond_0
    const-string/jumbo v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    const-string/jumbo v1, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateProfileServiceList(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)V
    .locals 2
    .param p1, "profile"    # Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 378
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    return-void

    .line 382
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->getProfileBehavior(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 384
    .local v0, "profileBehavior":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-eqz v0, :cond_1

    .line 385
    iget-object v1, p0, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->mServiceList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_1
    return-void
.end method

.method private updateProfileState(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;I)V
    .locals 5
    .param p1, "profile"    # Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    .param p2, "state"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateProfileState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", new state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 460
    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 461
    .local v0, "mProfileSize":I
    if-eq p2, v4, :cond_0

    if-nez p2, :cond_5

    .line 462
    :cond_0
    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 463
    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is added to connected list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 484
    :cond_1
    :goto_0
    if-lez v0, :cond_2

    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 485
    invoke-direct {p0, v3}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->updateBluetoothNotification(Z)V

    .line 487
    :cond_2
    if-nez v0, :cond_3

    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 488
    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->updateBluetoothNotification(Z)V

    .line 455
    :cond_3
    return-void

    .line 466
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add profile:the profile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") has been connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_5
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 469
    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 470
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->HID:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p1, v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 471
    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_6
    sget-object v1, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->HID:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->getConnectedDevices(Ljava/lang/String;)[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_7

    .line 474
    sget-object v1, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->sConenctedProfileList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " still has connected device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove profile failure:the profile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is not in connected profile list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public connect(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "connect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 177
    invoke-static {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v1

    .line 178
    .local v1, "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->checkProfileService(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 179
    .local v0, "mService":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v0, :cond_0

    .line 180
    const-string/jumbo v5, "connect():mService is null"

    invoke-static {v5}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 181
    const/4 v5, 0x0

    return v5

    .line 184
    :cond_0
    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->isConnectableToMultiDevices(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 185
    const/4 v4, 0x0

    .line 186
    .local v4, "sinks":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    sget-object v5, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->A2DP:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v1, v5}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    const-string/jumbo v5, "in connect profile equals Bluetooth_A2DP"

    invoke-static {v5}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 192
    .end local v4    # "sinks":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    if-eqz v4, :cond_2

    .line 193
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "sink$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 195
    .local v2, "sink":Landroid/bluetooth/BluetoothDevice;
    invoke-interface {v0, v2}, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 190
    .end local v2    # "sink":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "sink$iterator":Ljava/util/Iterator;
    .restart local v4    # "sinks":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    invoke-interface {v0}, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->getConnectedDevices()Ljava/util/Set;

    move-result-object v4

    .local v4, "sinks":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    goto :goto_0

    .line 205
    .end local v4    # "sinks":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    invoke-interface {v0, p2}, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 209
    const/4 v5, 0x1

    return v5
.end method

.method public disconnect(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disconnect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 222
    invoke-static {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v2

    .line 223
    .local v2, "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    const/4 v0, 0x0

    .line 224
    .local v0, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->checkProfileService(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v1

    .line 225
    .local v1, "mService":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v1, :cond_0

    .line 226
    const-string/jumbo v3, "disconnect():mService is null"

    invoke-static {v3}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 227
    return v5

    .line 231
    :cond_0
    invoke-interface {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->getConnectedDevices()Ljava/util/Set;

    move-result-object v0

    .line 236
    .local v0, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    invoke-interface {v1, p2}, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 255
    const/4 v3, 0x1

    return v3

    .line 237
    :cond_1
    return v5
.end method

.method public getConnectedDevices(Ljava/lang/String;)[Landroid/bluetooth/BluetoothDevice;
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getConnectedDevices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 261
    invoke-static {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v2

    .line 262
    .local v2, "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    const/4 v0, 0x0

    .line 263
    .local v0, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->checkProfileService(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v1

    .line 264
    .local v1, "mService":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-eqz v1, :cond_1

    .line 266
    invoke-interface {v1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->getConnectedDevices()Ljava/util/Set;

    move-result-object v0

    .line 275
    .end local v0    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 277
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/bluetooth/BluetoothDevice;

    return-object v3

    .line 272
    .restart local v0    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    const-string/jumbo v3, "getConnectedDevices():mService is null"

    invoke-static {v3}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPreferred(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, -0x1

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPreferred:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 339
    invoke-static {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v1

    .line 340
    .local v1, "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->checkProfileService(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 341
    .local v0, "mService":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v0, :cond_0

    .line 342
    const-string/jumbo v2, "getPreferred():mService is null"

    invoke-static {v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 343
    return v4

    .line 351
    :cond_0
    return v4
.end method

.method public getState(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 283
    invoke-static {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v1

    .line 284
    .local v1, "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    const/4 v2, 0x5

    .line 285
    .local v2, "state":I
    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->checkProfileService(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 286
    .local v0, "mService":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v0, p2}, Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 296
    :goto_0
    return v2

    .line 294
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public isPreferred(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPreferred:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 302
    invoke-static {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v1

    .line 303
    .local v1, "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->checkProfileService(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 304
    .local v0, "mService":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v0, :cond_0

    .line 305
    const-string/jumbo v2, "isPreferred():mService is null"

    invoke-static {v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 306
    return v4

    .line 312
    :cond_0
    return v4
.end method

.method public onServiceConnected(Landroid/bluetooth/BluetoothPbap;)V
    .locals 0
    .param p1, "proxy"    # Landroid/bluetooth/BluetoothPbap;

    .prologue
    .line 508
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method public setPreferred(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 4
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "preferred"    # Z

    .prologue
    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreferred:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 318
    invoke-static {p1}, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->valueOf(Ljava/lang/String;)Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    move-result-object v1

    .line 319
    .local v1, "profile":Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;
    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->checkProfileService(Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;)Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;

    move-result-object v0

    .line 320
    .local v0, "mService":Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;
    if-nez v0, :cond_0

    .line 321
    const-string/jumbo v2, "setPreferred():mService is null"

    invoke-static {v2}, Lcom/mediatek/bluetooth/service/BluetoothProfileManagerService;->log(Ljava/lang/String;)V

    .line 322
    const/4 v2, 0x0

    return v2

    .line 333
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
