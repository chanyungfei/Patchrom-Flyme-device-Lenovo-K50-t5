.class public Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;
.super Ljava/lang/Object;
.source "SvlteUiccUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils$SingletonHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SvlteUiccUtils"

.field private static final PROPERTY_RIL_CT3G:[Ljava/lang/String;

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field public static final SIM_TYPE_CDMA:I = 0x2

.field public static final SIM_TYPE_GSM:I = 0x1

.field public static final SIM_TYPE_NONE:I

.field private static final UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-array v0, v6, [Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "gsm.ril.uicctype"

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "gsm.ril.uicctype.2"

    aput-object v1, v0, v3

    .line 45
    const-string/jumbo v1, "gsm.ril.uicctype.3"

    aput-object v1, v0, v4

    .line 46
    const-string/jumbo v1, "gsm.ril.uicctype.4"

    aput-object v1, v0, v5

    .line 42
    sput-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    .line 48
    new-array v0, v6, [Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "gsm.ril.fulluicctype"

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "gsm.ril.fulluicctype.2"

    aput-object v1, v0, v3

    .line 51
    const-string/jumbo v1, "gsm.ril.fulluicctype.3"

    aput-object v1, v0, v4

    .line 52
    const-string/jumbo v1, "gsm.ril.fulluicctype.4"

    aput-object v1, v0, v5

    .line 48
    sput-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 55
    new-array v0, v6, [Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "gsm.ril.ct3g"

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "gsm.ril.ct3g.2"

    aput-object v1, v0, v3

    .line 58
    const-string/jumbo v1, "gsm.ril.ct3g.3"

    aput-object v1, v0, v4

    .line 59
    const-string/jumbo v1, "gsm.ril.ct3g.4"

    aput-object v1, v0, v5

    .line 55
    sput-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;-><init>()V

    return-void
.end method

.method private adjustAppType(Lcom/android/internal/telephony/uicc/UiccCard;I)I
    .locals 2
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "appType"    # I

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "appType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->logd(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimSim(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x1

    return v0

    .line 284
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private getFullIccCardType(I)[Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 262
    if-ltz p1, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 263
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 264
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method private getIccCardType(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 253
    if-ltz p1, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 254
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    .line 254
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;
    .locals 2

    .prologue
    const-class v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils$SingletonHolder;->INSTANCE:Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 368
    const-string/jumbo v0, "SvlteUiccUtils"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void
.end method


# virtual methods
.method public getSimType(I)I
    .locals 9
    .param p1, "slotId"    # I

    .prologue
    .line 307
    const/4 v5, 0x0

    .line 308
    .local v5, "simType":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .line 309
    .local v4, "phoneCount":I
    if-ltz p1, :cond_0

    if-lt p1, v4, :cond_1

    .line 310
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSimType, invalid slotId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->logd(Ljava/lang/String;)V

    .line 311
    return v5

    .line 314
    :cond_1
    sget-object v7, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 315
    .local v6, "uiccType":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSimType, uiccType["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->logd(Ljava/lang/String;)V

    .line 316
    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "appType":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 318
    .local v2, "fullType":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v0

    if-ge v3, v7, :cond_6

    .line 319
    const-string/jumbo v7, "USIM"

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 320
    or-int/lit8 v2, v2, 0x2

    .line 318
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    :cond_3
    const-string/jumbo v7, "SIM"

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 322
    or-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 323
    :cond_4
    const-string/jumbo v7, "CSIM"

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 324
    or-int/lit8 v2, v2, 0x8

    goto :goto_1

    .line 325
    :cond_5
    const-string/jumbo v7, "RUIM"

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 326
    or-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 330
    :cond_6
    if-nez v2, :cond_8

    .line 331
    const/4 v5, 0x0

    .line 347
    :cond_7
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSimType, simType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->logd(Ljava/lang/String;)V

    .line 348
    return v5

    .line 332
    :cond_8
    and-int/lit8 v7, v2, 0x8

    if-nez v7, :cond_9

    .line 333
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_a

    .line 334
    :cond_9
    const/4 v5, 0x2

    .line 333
    goto :goto_2

    .line 336
    :cond_a
    const/4 v5, 0x1

    .line 339
    const/4 v7, 0x1

    if-ne v2, v7, :cond_7

    .line 340
    sget-object v7, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "ct3GDualMode":Ljava/lang/String;
    const-string/jumbo v7, "1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 342
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ct3GDualMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->logd(Ljava/lang/String;)V

    .line 343
    const/4 v5, 0x2

    goto :goto_2
.end method

.method public getSvlteApplication(Lcom/android/internal/telephony/uicc/UiccController;II)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p2, "slotId"    # I
    .param p3, "family"    # I

    .prologue
    const/4 v1, 0x0

    .line 201
    if-eqz p1, :cond_1

    .line 202
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->adjustAppType(Lcom/android/internal/telephony/uicc/UiccCard;I)I

    move-result v0

    .line 205
    .local v0, "familyTemp":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "family: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", familyTemp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->logd(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    return-object v1

    .line 209
    .end local v0    # "familyTemp":I
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    return-object v1

    .line 212
    :cond_1
    return-object v1
.end method

.method public isCt3gDualMode(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 294
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCt3gDualMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->logd(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isHaveCard(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 182
    new-instance v0, Ljava/util/HashSet;

    .line 183
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getFullIccCardType(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 182
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 184
    .local v0, "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v1, "CSIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    const-string/jumbo v1, "RUIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 184
    if-nez v1, :cond_0

    .line 186
    const-string/jumbo v1, "UIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 184
    if-nez v1, :cond_0

    .line 187
    const-string/jumbo v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 184
    if-nez v1, :cond_0

    .line 188
    const-string/jumbo v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 184
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRemoteSimSlot(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 357
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 359
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimWithCsim(I)Z

    move-result v0

    .line 357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRuimCsim(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getIccCardType(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RUIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getIccCardType(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CSIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRuimCsim(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 2
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 119
    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RUIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CSIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isUsim(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 170
    new-instance v0, Ljava/util/HashSet;

    .line 171
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getFullIccCardType(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 170
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 172
    .local v0, "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string/jumbo v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsimCsimPhone(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 233
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(I)Z

    move-result v0

    .line 233
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimWithCsim(I)Z

    move-result v0

    .line 233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsimOnly(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getIccCardType(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUsimSim(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 147
    new-instance v0, Ljava/util/HashSet;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getFullIccCardType(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 147
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 149
    .local v0, "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getIccCardType(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUsimSim(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 3
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 85
    if-eqz p1, :cond_1

    .line 86
    new-instance v0, Ljava/util/HashSet;

    .line 87
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getFullIccCardType()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 86
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 88
    .local v0, "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 88
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isUsimWithCsim(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 134
    new-instance v0, Ljava/util/HashSet;

    .line 135
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getFullIccCardType(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 134
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 136
    .local v0, "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const-string/jumbo v1, "CSIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 136
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsimWithCsim(Lcom/android/internal/telephony/uicc/UiccCard;)Z
    .locals 3
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v1, 0x0

    .line 102
    if-eqz p1, :cond_1

    .line 103
    new-instance v0, Ljava/util/HashSet;

    .line 104
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getFullIccCardType()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 103
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 105
    .local v0, "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v2, "USIM"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const-string/jumbo v1, "CSIM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 105
    :cond_0
    return v1

    .line 108
    .end local v0    # "fullUiccType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    return v1
.end method
