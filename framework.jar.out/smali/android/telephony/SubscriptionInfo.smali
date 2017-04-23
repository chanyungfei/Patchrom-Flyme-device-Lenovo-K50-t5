.class public Landroid/telephony/SubscriptionInfo;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_SIZE:I = 0x10


# instance fields
.field private mCarrierName:Ljava/lang/CharSequence;

.field private mCountryIso:Ljava/lang/String;

.field private mDataRoaming:I

.field private mDisplayName:Ljava/lang/CharSequence;

.field private mIccId:Ljava/lang/String;

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconTint:I

.field private mId:I

.field private mMcc:I

.field private mMnc:I

.field private mNameSource:I

.field private mNumber:Ljava/lang/String;

.field private mSimSlotIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 386
    new-instance v0, Landroid/telephony/SubscriptionInfo$1;

    invoke-direct {v0}, Landroid/telephony/SubscriptionInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "simSlotIndex"    # I
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "carrierName"    # Ljava/lang/CharSequence;
    .param p6, "nameSource"    # I
    .param p7, "iconTint"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "roaming"    # I
    .param p10, "icon"    # Landroid/graphics/Bitmap;
    .param p11, "mcc"    # I
    .param p12, "mnc"    # I
    .param p13, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    .line 118
    iput-object p2, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    .line 119
    iput p3, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    .line 120
    iput-object p4, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    .line 121
    iput-object p5, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    .line 122
    iput p6, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    .line 123
    iput p7, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    .line 124
    iput-object p8, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    .line 125
    iput p9, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    .line 126
    iput-object p10, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 127
    iput p11, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    .line 128
    iput p12, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    .line 129
    iput-object p13, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method public createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public createIconBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I

    .prologue
    .line 243
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public createIconBitmap(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "showSlotIndex"    # Z

    .prologue
    .line 255
    iget-object v11, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 256
    .local v7, "width":I
    iget-object v11, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 257
    .local v2, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 260
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget-object v11, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    invoke-static {v4, v7, v2, v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 262
    .local v8, "workingBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 263
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 266
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 267
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    move/from16 p2, v0

    .end local p2    # "color":I
    :cond_0
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 266
    move/from16 v0, p2

    invoke-direct {v11, v0, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 268
    iget-object v11, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 269
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 272
    if-eqz p3, :cond_1

    .line 274
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 275
    const-string/jumbo v11, "sans-serif"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 276
    const/4 v11, -0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    iget v11, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x41800000    # 16.0f

    mul-float/2addr v11, v12

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 281
    const-string/jumbo v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    iget v13, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "index":Ljava/lang/String;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 283
    .local v6, "textBound":Landroid/graphics/Rect;
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v5, v3, v11, v12, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 284
    int-to-float v11, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    int-to-float v12, v12

    sub-float v9, v11, v12

    .line 285
    .local v9, "xOffset":F
    int-to-float v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    int-to-float v12, v12

    sub-float v10, v11, v12

    .line 286
    .local v10, "yOffset":F
    invoke-virtual {v1, v3, v9, v10, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 289
    .end local v3    # "index":Ljava/lang/String;
    .end local v6    # "textBound":Landroid/graphics/Rect;
    .end local v9    # "xOffset":F
    .end local v10    # "yOffset":F
    :cond_1
    return-object v8
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public getCarrierName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public getDataRoaming()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconTint()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    return v0
.end method

.method public getNameSource()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSimSlotIndex()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    return v0
.end method

.method public getSubscriptionId()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    return v0
.end method

.method public setCarrierName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 200
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    .line 199
    return-void
.end method

.method public setDataRoaming(I)V
    .locals 0
    .param p1, "roaming"    # I

    .prologue
    .line 341
    iput p1, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    .line 340
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 185
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    .line 184
    return-void
.end method

.method public setIccId(Ljava/lang/String;)V
    .locals 0
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setIconTint(I)V
    .locals 0
    .param p1, "iconTint"    # I

    .prologue
    .line 307
    iput p1, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    .line 306
    return-void
.end method

.method public setMcc(I)V
    .locals 0
    .param p1, "mcc"    # I

    .prologue
    .line 358
    iput p1, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    .line 357
    return-void
.end method

.method public setMnc(I)V
    .locals 0
    .param p1, "mnc"    # I

    .prologue
    .line 375
    iput p1, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    .line 374
    return-void
.end method

.method public setNameSource(I)V
    .locals 0
    .param p1, "nameSource"    # I

    .prologue
    .line 219
    iput p1, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    .line 218
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setSimSlotIndex(I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    .line 169
    iput p1, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    .line 168
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iccId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " simSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    const-string/jumbo v1, " displayName="

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    const-string/jumbo v1, " carrierName="

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    const-string/jumbo v1, " nameSource="

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    const-string/jumbo v1, " iconTint="

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    const-string/jumbo v1, " dataRoaming="

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    const-string/jumbo v1, " iconBitmap="

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    const-string/jumbo v1, " mcc "

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    const-string/jumbo v1, " mnc "

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    const-string/jumbo v1, "}"

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 415
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 420
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 423
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 414
    return-void
.end method
