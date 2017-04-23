.class public Lcom/android/server/display/effect/DisplayEffectNativeAdapter;
.super Ljava/lang/Object;
.source "DisplayEffectNativeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;
    }
.end annotation


# static fields
.field private static synthetic -com_android_server_display_effect_DisplayEffectNativeAdapter$EFFECT_TYPESwitchesValues:[I = null

.field public static final ERROR:I = -0x1

.field public static final NO_ERROR:I

.field private static final mSupportedDisplayEffect:[Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMode:I

.field private mNativePointer:J

.field private mSupportedMode:[Ljava/lang/String;


# direct methods
.method private static synthetic -getcom_android_server_display_effect_DisplayEffectNativeAdapter$EFFECT_TYPESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->-com_android_server_display_effect_DisplayEffectNativeAdapter$EFFECT_TYPESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->-com_android_server_display_effect_DisplayEffectNativeAdapter$EFFECT_TYPESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->values()[Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->INVALID:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    invoke-virtual {v1}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->ce:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    invoke-virtual {v1}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->cta:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    invoke-virtual {v1}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->shp:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    invoke-virtual {v1}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->-com_android_server_display_effect_DisplayEffectNativeAdapter$EFFECT_TYPESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 53
    sget-object v1, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->cta:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 54
    sget-object v1, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->ce:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 55
    sget-object v1, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->shp:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 52
    sput-object v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->mSupportedDisplayEffect:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "DisplayEffectNativeAdapter"

    iput-object v0, p0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->TAG:Ljava/lang/String;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->mNativePointer:J

    .line 48
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "custom_mode"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "null"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "normal_mode"

    aput-object v1, v0, v3

    const-string/jumbo v1, "comfort_mode"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "null"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "ultra_mode"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_mode"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 48
    iput-object v0, p0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->mSupportedMode:[Ljava/lang/String;

    .line 58
    iput v3, p0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->mMode:I

    .line 62
    iput-object p1, p0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getLibStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DisplayEffectNativeAdapter: getLibStatus fail"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 61
    :cond_0
    return-void
.end method

.method private native finalize_native()V
.end method

.method private native getCurrentLevel_native(I)I
.end method

.method private getDefaultLevel(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 217
    const/4 v0, -0x1

    .line 218
    .local v0, "defaultLevel":I
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->getEffectType(I)Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    move-result-object v1

    .line 220
    .local v1, "type":Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;
    invoke-static {}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->-getcom_android_server_display_effect_DisplayEffectNativeAdapter$EFFECT_TYPESwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 237
    :goto_0
    return v0

    .line 222
    :pswitch_0
    const/16 v0, 0x14

    .line 223
    goto :goto_0

    .line 226
    :pswitch_1
    const/4 v0, 0x0

    .line 227
    goto :goto_0

    .line 230
    :pswitch_2
    const/4 v0, 0x0

    .line 231
    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getEffectType(I)Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 241
    sget-object v1, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->INVALID:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    .line 243
    .local v1, "type":Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;
    sget-object v2, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->mSupportedDisplayEffect:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 244
    sget-object v2, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 246
    .local v0, "effect":Ljava/lang/String;
    sget-object v2, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->cta:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    invoke-virtual {v2}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    sget-object v1, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->cta:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    .line 255
    .end local v0    # "effect":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 248
    .restart local v0    # "effect":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->ce:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    invoke-virtual {v2}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    sget-object v1, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->ce:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    goto :goto_0

    .line 250
    :cond_2
    sget-object v2, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->shp:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    invoke-virtual {v2}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    sget-object v1, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->shp:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    goto :goto_0
.end method

.method private native getMode_native()I
.end method

.method private getRange(I)Lcom/mediatek/pq/PictureQuality$Range;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "range":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->getEffectType(I)Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    move-result-object v1

    .line 196
    .local v1, "type":Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;
    invoke-static {}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->-getcom_android_server_display_effect_DisplayEffectNativeAdapter$EFFECT_TYPESwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 213
    .end local v0    # "range":Lcom/mediatek/pq/PictureQuality$Range;
    :goto_0
    return-object v0

    .line 198
    .restart local v0    # "range":Lcom/mediatek/pq/PictureQuality$Range;
    :pswitch_0
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getGammaIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    .local v0, "range":Lcom/mediatek/pq/PictureQuality$Range;
    goto :goto_0

    .line 202
    .local v0, "range":Lcom/mediatek/pq/PictureQuality$Range;
    :pswitch_1
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getSaturationIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    .local v0, "range":Lcom/mediatek/pq/PictureQuality$Range;
    goto :goto_0

    .line 206
    .local v0, "range":Lcom/mediatek/pq/PictureQuality$Range;
    :pswitch_2
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getSharpnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v0

    .local v0, "range":Lcom/mediatek/pq/PictureQuality$Range;
    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private native getSupportedDisplayEffect_native()[Ljava/lang/String;
.end method

.method private native getSupportedMaxLevel_native(I)I
.end method

.method private native getSupportedMode_native()[Ljava/lang/String;
.end method

.method private native init_native()J
.end method

.method private native setDisplayEffectLevel_native(II)I
.end method

.method private native setMode_native(I)I
.end method


# virtual methods
.method public getCurrentLevel(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, -0x1

    .line 99
    sget-object v2, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 100
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 102
    .local v1, "value":I
    if-ne v1, v3, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->getDefaultLevel(I)I

    move-result v2

    return v2

    .line 107
    :cond_0
    return v1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->mMode:I

    return v0
.end method

.method public getSupportedDisplayEffect()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->mSupportedDisplayEffect:[Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedMaxLevel(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->getEffectType(I)Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    move-result-object v0

    .line 81
    .local v0, "type":Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;
    invoke-static {}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->-getcom_android_server_display_effect_DisplayEffectNativeAdapter$EFFECT_TYPESwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 95
    const/4 v1, -0x1

    return v1

    .line 83
    :pswitch_0
    const/16 v1, 0x15

    return v1

    .line 86
    :pswitch_1
    const/16 v1, 0xa

    return v1

    .line 89
    :pswitch_2
    const/16 v1, 0xb

    return v1

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getSupportedMode()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->mSupportedMode:[Ljava/lang/String;

    return-object v0
.end method

.method public setCABC(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCABC: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {p1}, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->setCABC(I)V

    .line 170
    return-void
.end method

.method public setDisplayEffectLevel(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "level"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->getEffectType(I)Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    move-result-object v0

    .line 113
    .local v0, "type":Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;
    invoke-static {}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->-getcom_android_server_display_effect_DisplayEffectNativeAdapter$EFFECT_TYPESwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 127
    const/4 v1, -0x1

    return v1

    .line 115
    :pswitch_0
    invoke-static {p2}, Lcom/mediatek/pq/PictureQuality;->setGammaIndex(I)V

    .line 130
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 119
    :pswitch_1
    invoke-static {p2}, Lcom/mediatek/pq/PictureQuality;->setSaturationIndex(I)V

    goto :goto_0

    .line 123
    :pswitch_2
    invoke-static {p2}, Lcom/mediatek/pq/PictureQuality;->setSharpnessIndex(I)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setMode(I)I
    .locals 3
    .param p1, "finalDisplayMode"    # I

    .prologue
    const/4 v2, 0x0

    .line 134
    if-eqz p1, :cond_0

    .line 135
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 139
    .local v0, "pictureMode":I
    packed-switch p1, :pswitch_data_0

    .line 154
    :goto_0
    :pswitch_0
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->setPictureMode(I)Z

    .line 162
    .end local v0    # "pictureMode":I
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->mMode:I

    .line 163
    return v2

    .line 136
    :cond_2
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    .line 137
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 156
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 157
    invoke-static {v2}, Lcom/mediatek/pq/PictureQuality;->setPictureMode(I)Z

    goto :goto_1

    .line 141
    .restart local v0    # "pictureMode":I
    :pswitch_1
    const/4 v0, 0x0

    .line 142
    goto :goto_0

    .line 144
    :pswitch_2
    const/4 v0, 0x1

    .line 145
    goto :goto_0

    .line 147
    :pswitch_3
    const/4 v0, 0x0

    .line 148
    goto :goto_0

    .line 150
    :pswitch_4
    const/4 v0, 0x2

    .line 151
    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setSmartUltrBright(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmartUltrBright: enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-eqz p1, :cond_0

    .line 182
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->setMode_native(I)I

    .line 176
    :goto_0
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->setMode_native(I)I

    goto :goto_0
.end method
