.class public Lcom/mediatek/mmsdk/BaseParameters;
.super Ljava/lang/Object;
.source "BaseParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/BaseParameters$1;
    }
.end annotation


# static fields
.field public static final CAMERA_MM_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.mmsdk"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/mmsdk/BaseParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final FEATURE_MASK_3DNR:Ljava/lang/String; = "FeatureMask"

.field public static final FEATURE_MASK_3DNR_OFF:Ljava/lang/String; = "0"

.field public static final FEATURE_MASK_3DNR_ON:Ljava/lang/String; = "1"

.field public static final KEY_EFFECT_NAME_CFB:Ljava/lang/String; = "capture_face_beauty"

.field public static final KEY_EFFECT_NAME_HDR:Ljava/lang/String; = "hdr"

.field public static final KEY_FACE_BEAUTY_SHAPE:Ljava/lang/String; = "fb-sharp"

.field public static final KEY_FACE_BEAUTY_SHAPE_MAX:Ljava/lang/String; = "fb-sharp-max"

.field public static final KEY_FACE_BEAUTY_SHAPE_MIN:Ljava/lang/String; = "fb-sharp-min"

.field public static final KEY_FACE_BEAUTY_SKIN_COLOR:Ljava/lang/String; = "fb-skin-color"

.field public static final KEY_FACE_BEAUTY_SKIN_COLOR_MAX:Ljava/lang/String; = "fb-skin-color-max"

.field public static final KEY_FACE_BEAUTY_SKIN_COLOR_MIN:Ljava/lang/String; = "fb-skin-color-min"

.field public static final KEY_FACE_BEAUTY_SLIM_FACE:Ljava/lang/String; = "fb-slim-face"

.field public static final KEY_FACE_BEAUTY_SLIM_FACE_MAX:Ljava/lang/String; = "fb-slim-face-max"

.field public static final KEY_FACE_BEAUTY_SLIM_FACE_MIN:Ljava/lang/String; = "fb-slim-face-min"

.field public static final KEY_FACE_BEAUTY_SMOOTH:Ljava/lang/String; = "fb-smooth-level"

.field public static final KEY_FACE_BEAUTY_SMOOTH_MAX:Ljava/lang/String; = "fb-smooth-level-max"

.field public static final KEY_FACE_BEAUTY_SMOOTH_MIN:Ljava/lang/String; = "fb-smooth-level-min"

.field public static final KEY_IMAGE_FORMAT:Ljava/lang/String; = "picture-format"

.field public static final KEY_OUT_PUT_CAPTURE_NUMBER:Ljava/lang/String; = "picture-number"

.field public static final KEY_PICTURE_HEIGHT:Ljava/lang/String; = "picture-height"

.field public static final KEY_PICTURE_ROTATION:Ljava/lang/String; = "rotation"

.field public static final KEY_PICTURE_SIZE:Ljava/lang/String; = "picture-size"

.field public static final KEY_PICTURE_WIDTH:Ljava/lang/String; = "picture-width"

.field private static final TAG:Ljava/lang/String; = "BaseParameters"


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/mediatek/mmsdk/BaseParameters$1;

    invoke-direct {v0}, Lcom/mediatek/mmsdk/BaseParameters$1;-><init>()V

    .line 144
    sput-object v0, Lcom/mediatek/mmsdk/BaseParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    .line 167
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const-string/jumbo v0, "BaseParameters"

    const-string/jumbo v1, "BaseParameters(Parcel in)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {p0, p1}, Lcom/mediatek/mmsdk/BaseParameters;->readFromParcel(Landroid/os/Parcel;)V

    .line 341
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/mmsdk/BaseParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-void
.end method


# virtual methods
.method public copy()Lcom/mediatek/mmsdk/BaseParameters;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Lcom/mediatek/mmsdk/BaseParameters;

    invoke-direct {v0}, Lcom/mediatek/mmsdk/BaseParameters;-><init>()V

    .line 178
    .local v0, "para":Lcom/mediatek/mmsdk/BaseParameters;
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    .line 179
    return-object v0
.end method

.method public copyFrom(Lcom/mediatek/mmsdk/BaseParameters;)V
    .locals 2
    .param p1, "other"    # Lcom/mediatek/mmsdk/BaseParameters;

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "other must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 188
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public dump()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    const-string/jumbo v2, "BaseParameters"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dump: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v2, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "k$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    .local v0, "k":Ljava/lang/String;
    const-string/jumbo v3, "BaseParameters"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dump: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    .end local v0    # "k":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public flatten()Ljava/lang/String;
    .locals 4

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 231
    .local v0, "flattened":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "k$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string/jumbo v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v3, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 238
    .end local v1    # "k":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 241
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 115
    const-string/jumbo v7, "BaseParameters"

    const-string/jumbo v8, "readFromParcel"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x80

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    .line 119
    .local v2, "dataSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 120
    .local v1, "dataPosition":I
    const-string/jumbo v7, "BaseParameters"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readFromParcel - in.dataSize "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo v7, "BaseParameters"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readFromParcel - in.dataPosition "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 123
    .local v4, "marshell":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_0

    .line 124
    aget-byte v7, v4, v3

    int-to-char v0, v7

    .line 125
    .local v0, "c":C
    const-string/jumbo v7, "BaseParameters"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v4, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 129
    const-string/jumbo v7, "BaseParameters"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readFromParcel - in.dataPosition2 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 131
    .local v6, "totalSize":I
    const-string/jumbo v7, "BaseParameters"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "totalSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "string":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 134
    const-string/jumbo v7, "BaseParameters"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readFromParcel - string="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0, v5}, Lcom/mediatek/mmsdk/BaseParameters;->unflatten(Ljava/lang/String;)V

    .line 114
    :goto_1
    return-void

    .line 137
    :cond_1
    const-string/jumbo v7, "BaseParameters"

    const-string/jumbo v8, "can\'t read string from parcel"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    return-void
.end method

.method public same(Lcom/mediatek/mmsdk/BaseParameters;)Z
    .locals 2
    .param p1, "other"    # Lcom/mediatek/mmsdk/BaseParameters;

    .prologue
    .line 200
    if-ne p0, p1, :cond_0

    .line 201
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 305
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/mmsdk/BaseParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x3d

    const/16 v3, 0x3b

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 284
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 285
    :cond_0
    const-string/jumbo v0, "BaseParameters"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" contains invalid character (= or ; or \\0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void

    .line 284
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 288
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 289
    :cond_2
    const-string/jumbo v0, "BaseParameters"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" contains invalid character (= or ; or \\0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void

    .line 288
    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mmsdk/BaseParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public unflatten(Ljava/lang/String;)V
    .locals 7
    .param p1, "flattened"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v6, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 258
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3b

    invoke-direct {v4, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 259
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 260
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "kv$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 261
    .local v1, "kv":Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 262
    .local v3, "pos":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 265
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "k":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, "v":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/mmsdk/BaseParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 255
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "kv":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v5    # "v":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 110
    const-string/jumbo v0, "BaseParameters"

    const-string/jumbo v1, "writeToParcel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/BaseParameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return-void
.end method
