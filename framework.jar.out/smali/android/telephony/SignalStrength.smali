.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SignalStrength$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final IS_BSP_PACKAGE:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x6

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field private static final RSRP_THRESH_TYPE_STRICT:I = 0x0

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_HIGHEST:I = 0x5

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static highthresholdJump:I

.field private static lowthresholdJump:I

.field private static mLastLteRsrp:I

.field private static mNewLteRsrp:I

.field private static mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

.field private static mStartTime:J

.field private static thresholdValue:I


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmEcn0Qdbm:I

.field private mGsmRscpQdbm:I

.field private mGsmRssiQdbm:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mRealLteRsrp:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    new-array v2, v5, [Ljava/lang/String;

    .line 62
    const-string/jumbo v3, "none"

    aput-object v3, v2, v1

    const-string/jumbo v3, "poor"

    aput-object v3, v2, v0

    const-string/jumbo v3, "moderate"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string/jumbo v3, "good"

    aput-object v3, v2, v6

    const-string/jumbo v3, "great"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-string/jumbo v3, "highest"

    aput-object v3, v2, v7

    .line 61
    sput-object v2, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 71
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    sput-object v2, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 72
    new-array v2, v5, [I

    fill-array-data v2, :array_1

    sput-object v2, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .line 92
    const/4 v2, 0x0

    sput-object v2, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    .line 93
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    .line 98
    const v0, 0x7fffffff

    sput v0, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    .line 99
    const v0, 0x7fffffff

    sput v0, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    .line 100
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telephony/SignalStrength;->mStartTime:J

    .line 102
    const/16 v0, 0x71

    sput v0, Landroid/telephony/SignalStrength;->thresholdValue:I

    .line 103
    sput v6, Landroid/telephony/SignalStrength;->lowthresholdJump:I

    .line 104
    sput v7, Landroid/telephony/SignalStrength;->highthresholdJump:I

    .line 520
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    return-void

    :cond_0
    move v0, v1

    .line 93
    goto :goto_0

    .line 71
    nop

    :array_0
    .array-data 4
        -0x8c
        -0x73
        -0x69
        -0x5f
        -0x55
        -0x2c
    .end array-data

    .line 72
    :array_1
    .array-data 4
        -0x8c
        -0x80
        -0x76
        -0x6c
        -0x62
        -0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 132
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 133
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 134
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 135
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 136
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 137
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 138
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 139
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 140
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 141
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 142
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 130
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 179
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZIII)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z
    .param p14, "gsmRssiQdbm"    # I
    .param p15, "gsmRscpQdbm"    # I
    .param p16, "gsmEcn0Qdbm"    # I

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 201
    iput p14, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 202
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 203
    move/from16 v0, p16

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 197
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/16 v8, 0x63

    const v9, 0x7fffffff

    .line 218
    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    .line 216
    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRealLteRsrp:I

    .line 344
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 156
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 157
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 158
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 159
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 160
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 161
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 162
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 163
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 164
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 165
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 166
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 167
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 154
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 1372
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static getPlugInInstance()Lcom/mediatek/common/telephony/IServiceStateExt;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    const-string/jumbo v1, "SignalStrength get plugin"

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 299
    sget-boolean v1, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    if-nez v1, :cond_1

    .line 300
    sget-object v1, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    if-nez v1, :cond_0

    .line 302
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IServiceStateExt;

    sput-object v1, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .local v0, "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    sget-object v1, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    return-object v1

    .line 303
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_0
    move-exception v0

    .line 304
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "Get plugin fail"

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 305
    sput-object v2, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    .line 306
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 310
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const-string/jumbo v1, "BSP package should not use plug in"

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isC2KSupport()Z
    .locals 2

    .prologue
    .line 1558
    const-string/jumbo v0, "ro.mtk_c2k_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isCampOnLte()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1388
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    const/4 v2, -0x7

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1307
    const-string/jumbo v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 10
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    const v5, 0x7fffffff

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    .line 384
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    .line 385
    .local v1, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 386
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 387
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 388
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 389
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 390
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 391
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 392
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 393
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 394
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 395
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 396
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 398
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, v1, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 401
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 402
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 403
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 408
    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-eqz v3, :cond_1

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v5, :cond_2

    :cond_1
    return-object v1

    .line 414
    :cond_2
    const/4 v2, 0x0

    .line 416
    .local v2, "thresholdJump":I
    sget v3, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    sput v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    .line 417
    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sput v3, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    .line 422
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    if-eq v3, v5, :cond_a

    .line 423
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    sget v4, Landroid/telephony/SignalStrength;->thresholdValue:I

    if-lt v3, v4, :cond_4

    .line 424
    sget v2, Landroid/telephony/SignalStrength;->lowthresholdJump:I

    .line 430
    :goto_0
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    sget v4, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    sub-int/2addr v3, v4

    if-lt v3, v2, :cond_5

    .line 433
    sget-wide v4, Landroid/telephony/SignalStrength;->mStartTime:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_3

    .line 434
    sput-wide v8, Landroid/telephony/SignalStrength;->mStartTime:J

    .line 478
    :cond_3
    :goto_1
    return-object v1

    .line 426
    :cond_4
    sget v2, Landroid/telephony/SignalStrength;->highthresholdJump:I

    goto :goto_0

    .line 437
    :cond_5
    sget v3, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    sget v4, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    sub-int/2addr v3, v4

    if-lt v3, v2, :cond_9

    .line 439
    const/4 v0, 0x3

    .line 440
    .local v0, "downgradeDelay":I
    sget v3, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    const/16 v4, 0x76

    if-ge v3, v4, :cond_6

    const/16 v0, 0xa

    .line 442
    :cond_6
    sget-wide v4, Landroid/telephony/SignalStrength;->mStartTime:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_7

    .line 443
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Landroid/telephony/SignalStrength;->mStartTime:J

    .line 445
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    iput v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 446
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    sput v3, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    goto :goto_1

    .line 448
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-wide v6, Landroid/telephony/SignalStrength;->mStartTime:J

    sub-long/2addr v4, v6

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_8

    .line 450
    sput-wide v8, Landroid/telephony/SignalStrength;->mStartTime:J

    goto :goto_1

    .line 455
    :cond_8
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    iput v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 456
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    sput v3, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    goto :goto_1

    .line 461
    .end local v0    # "downgradeDelay":I
    :cond_9
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    iput v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 462
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    sput v3, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    .line 464
    sget-wide v4, Landroid/telephony/SignalStrength;->mStartTime:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_3

    .line 465
    sput-wide v8, Landroid/telephony/SignalStrength;->mStartTime:J

    goto :goto_1

    .line 471
    :cond_a
    sget-wide v4, Landroid/telephony/SignalStrength;->mStartTime:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_3

    .line 472
    sput-wide v8, Landroid/telephony/SignalStrength;->mStartTime:J

    goto :goto_1
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 120
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 121
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 122
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1258
    const-string/jumbo v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1259
    const-string/jumbo v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1260
    const-string/jumbo v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1261
    const-string/jumbo v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1262
    const-string/jumbo v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1263
    const-string/jumbo v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1264
    const-string/jumbo v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1265
    const-string/jumbo v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1266
    const-string/jumbo v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1267
    const-string/jumbo v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1268
    const-string/jumbo v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1269
    const-string/jumbo v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1270
    const-string/jumbo v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1272
    const-string/jumbo v0, "RssiQdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 1273
    const-string/jumbo v0, "RscpQdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 1274
    const-string/jumbo v0, "Ecn0Qdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 1257
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 320
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 321
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 322
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 323
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 324
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 325
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 326
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 327
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 328
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 329
    iget v0, p1, Landroid/telephony/SignalStrength;->mRealLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mRealLteRsrp:I

    .line 330
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 331
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 332
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 333
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 334
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 335
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 336
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 319
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1201
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_0

    .line 1207
    return v3

    .line 1202
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :catch_0
    move-exception v1

    .line 1203
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    .line 1210
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_1

    .line 1211
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_1

    .line 1212
    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_1

    .line 1213
    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_1

    .line 1214
    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_1

    .line 1215
    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_1

    .line 1216
    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_1

    .line 1217
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_1

    .line 1218
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_1

    .line 1219
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_1

    .line 1220
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_1

    .line 1221
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_1

    .line 1222
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_1

    .line 1223
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    .line 1210
    :cond_1
    return v3
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1284
    const-string/jumbo v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1285
    const-string/jumbo v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1286
    const-string/jumbo v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1287
    const-string/jumbo v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1288
    const-string/jumbo v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1289
    const-string/jumbo v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1290
    const-string/jumbo v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1291
    const-string/jumbo v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1292
    const-string/jumbo v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1293
    const-string/jumbo v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1294
    const-string/jumbo v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1295
    const-string/jumbo v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1296
    const-string/jumbo v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1298
    const-string/jumbo v0, "RssiQdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1299
    const-string/jumbo v0, "RscpQdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1300
    const-string/jumbo v0, "Ecn0Qdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1283
    return-void
.end method

.method public getAsuLevel()I
    .locals 4

    .prologue
    .line 715
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 718
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isCampOnLte()Z

    move-result v3

    if-nez v3, :cond_0

    .line 720
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 741
    .local v0, "asuLevel":I
    :goto_0
    return v0

    .line 722
    .end local v0    # "asuLevel":I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 725
    .end local v0    # "asuLevel":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 726
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 727
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_2

    .line 729
    move v0, v1

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 730
    .end local v0    # "asuLevel":I
    :cond_2
    if-nez v1, :cond_3

    .line 732
    move v0, v2

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 735
    .end local v0    # "asuLevel":I
    :cond_3
    if-ge v1, v2, :cond_4

    move v0, v1

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .end local v0    # "asuLevel":I
    :cond_4
    move v0, v2

    .restart local v0    # "asuLevel":I
    goto :goto_0
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 930
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 931
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 935
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 943
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 950
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 954
    .local v4, "level":I
    :goto_2
    return v4

    .line 936
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 937
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 938
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 939
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 940
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 944
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 945
    .end local v3    # "ecioAsuLevel":I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 946
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 947
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 948
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 950
    :cond_a
    move v4, v3

    .restart local v4    # "level":I
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 6

    .prologue
    .line 894
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 895
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 899
    .local v1, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/4 v3, 0x4

    .line 906
    .local v3, "levelDbm":I
    :goto_0
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_5

    const/4 v4, 0x4

    .line 912
    .local v4, "levelEcio":I
    :goto_1
    if-ge v3, v4, :cond_9

    move v2, v3

    .line 914
    .local v2, "level":I
    :goto_2
    invoke-static {}, Landroid/telephony/SignalStrength;->isC2KSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 915
    move v2, v3

    .line 921
    :cond_0
    return v2

    .line 900
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 901
    .end local v3    # "levelDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 902
    .end local v3    # "levelDbm":I
    :cond_3
    const/16 v5, -0x64

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 903
    .end local v3    # "levelDbm":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 907
    :cond_5
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_6

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 908
    .end local v4    # "levelEcio":I
    :cond_6
    const/16 v5, -0x82

    if-lt v1, v5, :cond_7

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 909
    .end local v4    # "levelEcio":I
    :cond_7
    const/16 v5, -0x96

    if-lt v1, v5, :cond_8

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 910
    .end local v4    # "levelEcio":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 912
    :cond_9
    move v2, v4

    .restart local v2    # "level":I
    goto :goto_2
.end method

.method public getDbm()I
    .locals 6

    .prologue
    const/16 v5, -0x71

    const/16 v4, -0x78

    .line 752
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 753
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 756
    .local v1, "dBm":I
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isCampOnLte()Z

    move-result v3

    if-nez v3, :cond_0

    .line 758
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 771
    :cond_0
    return v1

    .line 761
    .end local v1    # "dBm":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 762
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 764
    .local v2, "evdoDbm":I
    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_3

    .end local v0    # "cdmaDbm":I
    :cond_2
    :goto_0
    return v0

    .line 765
    .restart local v0    # "cdmaDbm":I
    :cond_3
    if-eq v0, v4, :cond_4

    if-ne v0, v5, :cond_5

    :cond_4
    move v0, v2

    goto :goto_0

    .line 766
    :cond_5
    if-lt v0, v2, :cond_2

    move v0, v2

    goto :goto_0
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    .line 993
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 994
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 998
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 1005
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 1012
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 1016
    .local v2, "level":I
    :goto_2
    return v2

    .line 999
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1000
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1001
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1002
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1003
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1006
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1007
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1008
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1009
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1010
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1012
    :cond_a
    move v2, v4

    .restart local v2    # "level":I
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 6

    .prologue
    .line 963
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 964
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 968
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .line 974
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    .line 980
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .line 984
    .local v2, "level":I
    :goto_2
    return v2

    .line 969
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 970
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 971
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x69

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 972
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 975
    :cond_4
    const/4 v5, 0x5

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 976
    .end local v4    # "levelEvdoSnr":I
    :cond_5
    const/4 v5, 0x3

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 977
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x1

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 978
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 980
    :cond_8
    move v2, v4

    .restart local v2    # "level":I
    goto :goto_2
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 881
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 885
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 6

    .prologue
    .line 782
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 783
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    const/4 v0, -0x1

    .line 784
    .local v0, "asu":I
    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    .line 785
    sget-boolean v4, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    if-nez v4, :cond_2

    .line 786
    invoke-static {}, Landroid/telephony/SignalStrength;->getPlugInInstance()Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v3

    .line 787
    .local v3, "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    if-eqz v3, :cond_1

    .line 788
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-interface {v3, v4, v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->mapGsmSignalDbm(II)I

    move-result v1

    .line 789
    .local v1, "dBm":I
    return v1

    .line 783
    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    .end local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_0
    move v0, v2

    .restart local v0    # "asu":I
    goto :goto_0

    .line 791
    .restart local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_1
    const-string/jumbo v4, "[getGsmDbm] null plug-in instance"

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 795
    .end local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mapGsmSignalDbm() mGsmRscpQdbm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " asu="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 797
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    if-gez v4, :cond_3

    .line 798
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    div-int/lit8 v1, v4, 0x4

    .line 808
    .restart local v1    # "dBm":I
    :goto_1
    return v1

    .line 800
    .end local v1    # "dBm":I
    :cond_3
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v1, v4, -0x71

    .restart local v1    # "dBm":I
    goto :goto_1

    .line 803
    .end local v1    # "dBm":I
    :cond_4
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getGsmEcn0Qdbm()I
    .locals 1

    .prologue
    .line 1334
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    return v0
.end method

.method public getGsmLevel()I
    .locals 7

    .prologue
    const/16 v6, 0x63

    const/16 v5, 0xc

    const/4 v4, 0x5

    .line 823
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 825
    .local v0, "asu":I
    sget-boolean v3, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    if-nez v3, :cond_1

    .line 826
    invoke-static {}, Landroid/telephony/SignalStrength;->getPlugInInstance()Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v2

    .line 827
    .local v2, "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    if-eqz v2, :cond_0

    .line 828
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-interface {v2, v0, v3}, Lcom/mediatek/common/telephony/IServiceStateExt;->mapGsmSignalLevel(II)I

    move-result v1

    .line 829
    .local v1, "level":I
    return v1

    .line 831
    .end local v1    # "level":I
    :cond_0
    const-string/jumbo v3, "[getGsmLevel] null plug-in instance"

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 836
    .end local v2    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_1
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    if-gez v3, :cond_7

    .line 838
    if-le v0, v4, :cond_2

    if-ne v0, v6, :cond_3

    .line 839
    :cond_2
    const/4 v1, 0x0

    .line 868
    .restart local v1    # "level":I
    :goto_0
    return v1

    .line 840
    .end local v1    # "level":I
    :cond_3
    const/16 v3, 0xf

    if-lt v0, v3, :cond_4

    .line 841
    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .line 842
    .end local v1    # "level":I
    :cond_4
    if-lt v0, v5, :cond_5

    .line 843
    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .line 844
    .end local v1    # "level":I
    :cond_5
    const/16 v3, 0x9

    if-lt v0, v3, :cond_6

    .line 845
    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 847
    .end local v1    # "level":I
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_0

    .line 852
    .end local v1    # "level":I
    :cond_7
    const/4 v3, 0x2

    if-le v0, v3, :cond_8

    if-ne v0, v6, :cond_9

    .line 853
    :cond_8
    const/4 v1, 0x0

    .line 852
    .restart local v1    # "level":I
    goto :goto_0

    .line 854
    .end local v1    # "level":I
    :cond_9
    if-lt v0, v5, :cond_a

    .line 855
    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .line 856
    .end local v1    # "level":I
    :cond_a
    const/16 v3, 0x8

    if-lt v0, v3, :cond_b

    .line 857
    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .line 858
    .end local v1    # "level":I
    :cond_b
    if-lt v0, v4, :cond_c

    .line 859
    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 861
    .end local v1    # "level":I
    :cond_c
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_0
.end method

.method public getGsmRscpQdbm()I
    .locals 1

    .prologue
    .line 1325
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    return v0
.end method

.method public getGsmRssiQdbm()I
    .locals 1

    .prologue
    .line 1316
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getGsmSignalStrengthDbm()I
    .locals 5

    .prologue
    .line 1344
    const/4 v1, -0x1

    .line 1345
    .local v1, "dBm":I
    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1346
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    const/4 v0, -0x1

    .line 1348
    .local v0, "asu":I
    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 1349
    sget-boolean v4, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    if-nez v4, :cond_2

    .line 1350
    invoke-static {}, Landroid/telephony/SignalStrength;->getPlugInInstance()Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v3

    .line 1351
    .local v3, "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    if-eqz v3, :cond_1

    .line 1352
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-interface {v3, v4, v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->mapGsmSignalDbm(II)I

    move-result v1

    .line 1353
    return v1

    .line 1346
    .end local v0    # "asu":I
    .end local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_0
    move v0, v2

    .restart local v0    # "asu":I
    goto :goto_0

    .line 1355
    .restart local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_1
    const-string/jumbo v4, "[getGsmSignalStrengthDbm] null plug-in instance"

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1358
    .end local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_2
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v1, v4, -0x71

    .line 1360
    :cond_3
    return v1
.end method

.method public getLevel()I
    .locals 4

    .prologue
    .line 680
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 681
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 684
    .local v2, "level":I
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isCampOnLte()Z

    move-result v3

    if-nez v3, :cond_0

    .line 686
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 705
    :cond_0
    :goto_0
    return v2

    .line 689
    .end local v2    # "level":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 690
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 691
    .local v1, "evdoLevel":I
    if-nez v1, :cond_2

    .line 693
    move v2, v0

    .restart local v2    # "level":I
    goto :goto_0

    .line 694
    .end local v2    # "level":I
    :cond_2
    if-nez v0, :cond_3

    .line 696
    move v2, v1

    .restart local v2    # "level":I
    goto :goto_0

    .line 699
    .end local v2    # "level":I
    :cond_3
    if-ge v0, v1, :cond_4

    move v2, v0

    .restart local v2    # "level":I
    goto :goto_0

    .end local v2    # "level":I
    :cond_4
    move v2, v1

    .restart local v2    # "level":I
    goto :goto_0
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 1145
    const/16 v0, 0x63

    .line 1146
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1160
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 1161
    const/16 v0, 0xff

    .line 1168
    :goto_0
    return v0

    .line 1163
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 1025
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 1040
    const/4 v2, 0x0

    .line 1041
    .local v2, "rssiIconLevel":I
    const/4 v0, -0x1

    .line 1042
    .local v0, "rsrpIconLevel":I
    const/4 v3, -0x1

    .line 1044
    .local v3, "snrIconLevel":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e008f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1047
    .local v1, "rsrpThreshType":I
    if-nez v1, :cond_0

    .line 1048
    sget-object v5, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 1053
    .local v5, "threshRsrp":[I
    :goto_0
    sget-boolean v6, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    if-nez v6, :cond_2

    .line 1054
    invoke-static {}, Landroid/telephony/SignalStrength;->getPlugInInstance()Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v4

    .line 1055
    .local v4, "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    if-eqz v4, :cond_1

    .line 1056
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-interface {v4, v6, v7, v8}, Lcom/mediatek/common/telephony/IServiceStateExt;->mapLteSignalLevel(III)I

    move-result v0

    .line 1057
    return v0

    .line 1050
    .end local v4    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    .end local v5    # "threshRsrp":[I
    :cond_0
    sget-object v5, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .restart local v5    # "threshRsrp":[I
    goto :goto_0

    .line 1059
    .restart local v4    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_1
    const-string/jumbo v6, "[getLteLevel] null plug-in instance"

    invoke-static {v6}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1063
    .end local v4    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_2
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x2c

    if-le v6, v7, :cond_5

    .line 1064
    const/4 v0, -0x1

    .line 1083
    :cond_3
    :goto_1
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, 0x12c

    if-le v6, v7, :cond_a

    .line 1084
    const/4 v3, -0x1

    .line 1101
    :cond_4
    :goto_2
    if-eq v3, v8, :cond_10

    if-eq v0, v8, :cond_10

    .line 1107
    if-ge v0, v3, :cond_f

    .end local v0    # "rsrpIconLevel":I
    :goto_3
    return v0

    .line 1065
    .restart local v0    # "rsrpIconLevel":I
    :cond_5
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x55

    if-lt v6, v7, :cond_6

    .line 1066
    const/4 v0, 0x4

    goto :goto_1

    .line 1067
    :cond_6
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x5f

    if-lt v6, v7, :cond_7

    .line 1068
    const/4 v0, 0x3

    goto :goto_1

    .line 1069
    :cond_7
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x69

    if-lt v6, v7, :cond_8

    .line 1070
    const/4 v0, 0x2

    goto :goto_1

    .line 1071
    :cond_8
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x73

    if-lt v6, v7, :cond_9

    .line 1072
    const/4 v0, 0x1

    goto :goto_1

    .line 1073
    :cond_9
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x8c

    if-lt v6, v7, :cond_3

    .line 1074
    const/4 v0, 0x0

    goto :goto_1

    .line 1085
    :cond_a
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, 0x82

    if-lt v6, v7, :cond_b

    .line 1086
    const/4 v3, 0x4

    goto :goto_2

    .line 1087
    :cond_b
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, 0x2d

    if-lt v6, v7, :cond_c

    .line 1088
    const/4 v3, 0x3

    goto :goto_2

    .line 1089
    :cond_c
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_d

    .line 1090
    const/4 v3, 0x2

    goto :goto_2

    .line 1091
    :cond_d
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, -0x1e

    if-lt v6, v7, :cond_e

    .line 1092
    const/4 v3, 0x1

    goto :goto_2

    .line 1093
    :cond_e
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, -0xc8

    if-lt v6, v7, :cond_4

    .line 1094
    const/4 v3, 0x0

    goto :goto_2

    :cond_f
    move v0, v3

    .line 1107
    goto :goto_3

    .line 1110
    :cond_10
    if-eq v3, v8, :cond_11

    .line 1111
    return v3

    .line 1114
    :cond_11
    if-eq v0, v8, :cond_12

    .line 1115
    return v0

    .line 1119
    :cond_12
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v7, 0x3f

    if-le v6, v7, :cond_14

    .line 1120
    const/4 v2, 0x0

    .line 1135
    :cond_13
    :goto_4
    return v2

    .line 1121
    :cond_14
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v7, 0xc

    if-lt v6, v7, :cond_15

    .line 1122
    const/4 v2, 0x4

    goto :goto_4

    .line 1123
    :cond_15
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v7, 0x8

    if-lt v6, v7, :cond_16

    .line 1124
    const/4 v2, 0x3

    goto :goto_4

    .line 1125
    :cond_16
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v7, 0x5

    if-lt v6, v7, :cond_17

    .line 1126
    const/4 v2, 0x2

    goto :goto_4

    .line 1127
    :cond_17
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v6, :cond_13

    .line 1128
    const/4 v2, 0x1

    goto :goto_4
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getRealLteRsrp()I
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Landroid/telephony/SignalStrength;->mRealLteRsrp:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1184
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/lit8 v0, v0, 0x1f

    .line 1185
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1184
    add-int/2addr v0, v1

    .line 1186
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1184
    add-int/2addr v0, v1

    .line 1186
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1184
    add-int/2addr v0, v1

    .line 1187
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1184
    add-int/2addr v0, v1

    .line 1187
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1184
    add-int/2addr v0, v1

    .line 1187
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1184
    add-int/2addr v0, v1

    .line 1188
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1184
    add-int/2addr v0, v1

    .line 1188
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1184
    add-int/2addr v0, v1

    .line 1189
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1184
    add-int/2addr v0, v1

    .line 1189
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1184
    add-int/2addr v0, v1

    .line 1189
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1184
    add-int/2addr v1, v0

    .line 1190
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1184
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 1190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 279
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 280
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 281
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 282
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 283
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 284
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 285
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 286
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 287
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 288
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 289
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 290
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 291
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 278
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 251
    const/16 v8, 0x63

    const v9, 0x7fffffff

    .line 252
    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    .line 250
    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 249
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1175
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setCdmaDbm(I)V
    .locals 0
    .param p1, "cdmaDbm"    # I

    .prologue
    .line 1420
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1419
    return-void
.end method

.method public setCdmaEcio(I)V
    .locals 0
    .param p1, "cdmaEcio"    # I

    .prologue
    .line 1430
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1429
    return-void
.end method

.method public setEvdoDbm(I)V
    .locals 0
    .param p1, "evdoDbm"    # I

    .prologue
    .line 1440
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1439
    return-void
.end method

.method public setEvdoEcio(I)V
    .locals 0
    .param p1, "evdoEcio"    # I

    .prologue
    .line 1450
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1449
    return-void
.end method

.method public setEvdoSnr(I)V
    .locals 0
    .param p1, "evdoSnr"    # I

    .prologue
    .line 1460
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1459
    return-void
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 580
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 579
    return-void
.end method

.method public setGsmBitErrorRate(I)V
    .locals 0
    .param p1, "gsmBitErrorRate"    # I

    .prologue
    .line 1410
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1409
    return-void
.end method

.method public setGsmEcn0Qdbm(I)V
    .locals 0
    .param p1, "gsmEcn0Qdbm"    # I

    .prologue
    .line 1550
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 1549
    return-void
.end method

.method public setGsmRscpQdbm(I)V
    .locals 0
    .param p1, "gsmRscpQdbm"    # I

    .prologue
    .line 1540
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 1539
    return-void
.end method

.method public setGsmRssiQdbm(I)V
    .locals 0
    .param p1, "gsmRssiQdbm"    # I

    .prologue
    .line 1530
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 1529
    return-void
.end method

.method public setGsmSignalStrength(I)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I

    .prologue
    .line 1400
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1399
    return-void
.end method

.method public setLteCqi(I)V
    .locals 0
    .param p1, "lteCqi"    # I

    .prologue
    .line 1520
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1519
    return-void
.end method

.method public setLteRsrp(I)V
    .locals 0
    .param p1, "lteRsrp"    # I

    .prologue
    .line 1480
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1479
    return-void
.end method

.method public setLteRsrq(I)V
    .locals 0
    .param p1, "lteRsrq"    # I

    .prologue
    .line 1500
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1499
    return-void
.end method

.method public setLteRssnr(I)V
    .locals 0
    .param p1, "lteRssnr"    # I

    .prologue
    .line 1510
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1509
    return-void
.end method

.method public setLteSignalStrength(I)V
    .locals 0
    .param p1, "lteSignalStrength"    # I

    .prologue
    .line 1470
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1469
    return-void
.end method

.method public setRealLteRsrp(I)V
    .locals 0
    .param p1, "realLteRsrp"    # I

    .prologue
    .line 1490
    iput p1, p0, Landroid/telephony/SignalStrength;->mRealLteRsrp:I

    .line 1489
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1232
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1233
    const-string/jumbo v1, " "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1233
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1234
    const-string/jumbo v1, " "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1234
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1235
    const-string/jumbo v1, " "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1235
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1236
    const-string/jumbo v1, " "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1236
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1237
    const-string/jumbo v1, " "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1237
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1238
    const-string/jumbo v1, " "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1238
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1239
    const-string/jumbo v1, " "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1239
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1240
    const-string/jumbo v1, " "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1240
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1241
    const-string/jumbo v1, " "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1241
    iget v1, p0, Landroid/telephony/SignalStrength;->mRealLteRsrp:I

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1242
    const-string/jumbo v1, " "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1242
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1243
    const-string/jumbo v1, " "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1243
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1244
    const-string/jumbo v1, " "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1244
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1245
    const-string/jumbo v1, " "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1245
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "gsm|lte"

    .line 1231
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1246
    const-string/jumbo v1, " "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1246
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1247
    const-string/jumbo v1, " "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1247
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1248
    const-string/jumbo v1, " "

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1248
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1245
    :cond_0
    const-string/jumbo v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 5

    .prologue
    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    const v4, 0x7fffffff

    .line 546
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 549
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 550
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 552
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 553
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 554
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 557
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 559
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRealLteRsrp:I

    .line 560
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 561
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 562
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 541
    return-void

    :cond_4
    move v0, v1

    .line 546
    goto :goto_0

    :cond_5
    move v0, v2

    .line 549
    goto :goto_1

    .line 550
    :cond_6
    const/16 v0, -0xa0

    goto :goto_2

    :cond_7
    move v0, v3

    .line 553
    goto :goto_3

    :cond_8
    move v0, v4

    .line 560
    goto :goto_4

    :cond_9
    move v0, v4

    .line 561
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 485
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget v0, p0, Landroid/telephony/SignalStrength;->mRealLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    return-void

    .line 497
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
