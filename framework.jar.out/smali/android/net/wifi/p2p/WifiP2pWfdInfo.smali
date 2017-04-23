.class public Landroid/net/wifi/p2p/WifiP2pWfdInfo;
.super Ljava/lang/Object;
.source "WifiP2pWfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;
    }
.end annotation


# static fields
.field private static final CONTENT_PROTECTION_SUPPORT:I = 0x100

.field private static final COUPLED_SINK_SUPPORT_AT_SINK:I = 0x8

.field private static final COUPLED_SINK_SUPPORT_AT_SOURCE:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pWfdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_TYPE:I = 0x3

.field private static final I2C_READ_WRITE_SUPPORT:I = 0x2

.field private static final PREFERRED_DISPLAY_SUPPORT:I = 0x4

.field public static final PRIMARY_SINK:I = 0x1

.field public static final SECONDARY_SINK:I = 0x2

.field private static final SESSION_AVAILABLE:I = 0x30

.field private static final SESSION_AVAILABLE_BIT1:I = 0x10

.field private static final SESSION_AVAILABLE_BIT2:I = 0x20

.field public static final SOURCE_OR_PRIMARY_SINK:I = 0x3

.field private static final STANDBY_RESUME_CONTROL_SUPPORT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "WifiP2pWfdInfo"

.field private static final UIBC_SUPPORT:I = 0x1

.field public static final WFD_SOURCE:I


# instance fields
.field private mCtrlPort:I

.field private mDeviceInfo:I

.field private mExtCapa:I

.field private mMaxThroughput:I

.field private mWfdEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;-><init>()V

    .line 285
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "devInfo"    # I
    .param p2, "ctrlPort"    # I
    .param p3, "maxTput"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 77
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 78
    iput p2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 79
    iput p3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 75
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "devInfo"    # I
    .param p2, "ctrlPort"    # I
    .param p3, "maxTput"    # I
    .param p4, "extCapa"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 84
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 85
    iput p2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 86
    iput p3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 87
    iput p4, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    if-eqz p1, :cond_0

    .line 259
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 260
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 261
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 262
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 263
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public getControlPort()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    return v0
.end method

.method public getDeviceInfoHex()Ljava/lang/String;
    .locals 5

    .prologue
    .line 233
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%04x%04x%04x%04x"

    .line 232
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 233
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 232
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getExtCapaHex()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 238
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%04x%04x"

    .line 237
    new-array v2, v3, [Ljava/lang/Object;

    .line 238
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 237
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedCapability()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    return v0
.end method

.method public getMaxThroughput()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    return v0
.end method

.method public isContentProtected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 159
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCoupledSinkSupportedAtSink()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 124
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCoupledSinkSupportedAtSource()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 112
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isI2cRWSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 188
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPreferredDisplaySupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 200
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSessionAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 136
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v1, v1, 0x30

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isStandbyResumeCtrlSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 212
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUibcSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 176
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isWfdEnabled()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 276
    return-void

    .line 277
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentProtected(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 149
    :goto_0
    return-void

    .line 153
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setControlPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 220
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 219
    return-void
.end method

.method public setCoupledSinkSupportAtSink(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 127
    :goto_0
    return-void

    .line 131
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setCoupledSinkSupportAtSource(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 115
    :goto_0
    return-void

    .line 119
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setDeviceType(I)Z
    .locals 2
    .param p1, "deviceType"    # I

    .prologue
    const/4 v1, 0x0

    .line 103
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 104
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 105
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 106
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_0
    return v1
.end method

.method public setI2cRWSupported(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 179
    :goto_0
    return-void

    .line 183
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    goto :goto_0
.end method

.method public setMaxThroughput(I)V
    .locals 0
    .param p1, "maxThroughput"    # I

    .prologue
    .line 224
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 223
    return-void
.end method

.method public setPreferredDisplaySupported(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 191
    :goto_0
    return-void

    .line 195
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    goto :goto_0
.end method

.method public setSessionAvailable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 142
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 139
    :goto_0
    return-void

    .line 144
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x31

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setStandbyResumeCtrlSupported(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 205
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 203
    :goto_0
    return-void

    .line 207
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    goto :goto_0
.end method

.method public setUibcSupported(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    .line 167
    :goto_0
    return-void

    .line 171
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    goto :goto_0
.end method

.method public setWfdEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 243
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "WFD enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 244
    const-string/jumbo v1, "\n WFD DeviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 245
    const-string/jumbo v1, "\n WFD CtrlPort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 246
    const-string/jumbo v1, "\n WFD MaxThroughput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 247
    const-string/jumbo v1, "\n WFD Extended Capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 269
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mExtCapa:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    return-void

    .line 269
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
