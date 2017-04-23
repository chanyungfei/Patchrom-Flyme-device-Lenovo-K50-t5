.class public final Lcom/mediatek/bluetooth/BleGattUuid$Char;
.super Ljava/lang/Object;
.source "BleGattUuid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleGattUuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Char"
.end annotation


# static fields
.field public static final ALERT_CONTROL_POINT:Ljava/util/UUID;

.field public static final ALERT_LEVEL:Ljava/util/UUID;

.field public static final CURRENT_TIME:Ljava/util/UUID;

.field public static final LOCAL_TIME_INFO:Ljava/util/UUID;

.field public static final NEW_ALERT:Ljava/util/UUID;

.field public static final REFERENCE_TIME_INFO:Ljava/util/UUID;

.field public static final SUPPORTED_NEW_ALERT_CATEGORY:Ljava/util/UUID;

.field public static final SUPPORTED_UNREAD_ALERT_CATEGORY:Ljava/util/UUID;

.field public static final TIME_UPDATE_CTRL_POINT:Ljava/util/UUID;

.field public static final TIME_UPDATE_STATE:Ljava/util/UUID;

.field public static final TIME_WITH_DST:Ljava/util/UUID;

.field public static final TX_POWER_LEVEL:Ljava/util/UUID;

.field public static final UNREAD_ALERT_STATUS:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-string/jumbo v0, "00002a2b-0000-1000-8000-00805f9b34fb"

    .line 102
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Char;->CURRENT_TIME:Ljava/util/UUID;

    .line 109
    const-string/jumbo v0, "00002a0f-0000-1000-8000-00805f9b34fb"

    .line 108
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Char;->LOCAL_TIME_INFO:Ljava/util/UUID;

    .line 115
    const-string/jumbo v0, "00002a14-0000-1000-8000-00805f9b34fb"

    .line 114
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Char;->REFERENCE_TIME_INFO:Ljava/util/UUID;

    .line 120
    const-string/jumbo v0, "00002a11-0000-1000-8000-00805f9b34fb"

    .line 119
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Char;->TIME_WITH_DST:Ljava/util/UUID;

    .line 126
    const-string/jumbo v0, "00002a16-0000-1000-8000-00805f9b34fb"

    .line 125
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Char;->TIME_UPDATE_CTRL_POINT:Ljava/util/UUID;

    .line 132
    const-string/jumbo v0, "00002a17-0000-1000-8000-00805f9b34fb"

    .line 131
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Char;->TIME_UPDATE_STATE:Ljava/util/UUID;

    .line 138
    const-string/jumbo v0, "00002a06-0000-1000-8000-00805f9b34fb"

    .line 137
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Char;->ALERT_LEVEL:Ljava/util/UUID;

    .line 144
    const-string/jumbo v0, "00002a07-0000-1000-8000-00805f9b34fb"

    .line 143
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Char;->TX_POWER_LEVEL:Ljava/util/UUID;

    .line 147
    const-string/jumbo v0, "00002a44-0000-1000-8000-00805f9b34fb"

    .line 146
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Char;->ALERT_CONTROL_POINT:Ljava/util/UUID;

    .line 150
    const-string/jumbo v0, "00002a45-0000-1000-8000-00805f9b34fb"

    .line 149
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Char;->UNREAD_ALERT_STATUS:Ljava/util/UUID;

    .line 153
    const-string/jumbo v0, "00002a46-0000-1000-8000-00805f9b34fb"

    .line 152
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Char;->NEW_ALERT:Ljava/util/UUID;

    .line 156
    const-string/jumbo v0, "00002a47-0000-1000-8000-00805f9b34fb"

    .line 155
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Char;->SUPPORTED_NEW_ALERT_CATEGORY:Ljava/util/UUID;

    .line 159
    const-string/jumbo v0, "00002a48-0000-1000-8000-00805f9b34fb"

    .line 158
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BleGattUuid$Char;->SUPPORTED_UNREAD_ALERT_CATEGORY:Ljava/util/UUID;

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
