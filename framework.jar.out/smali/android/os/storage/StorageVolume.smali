.class public Landroid/os/storage/StorageVolume;
.super Ljava/lang/Object;
.source "StorageVolume.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageVolume$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_STORAGE_VOLUME:Ljava/lang/String; = "storage_volume"

.field public static final STORAGE_ID_INVALID:I = 0x0

.field public static final STORAGE_ID_PRIMARY:I = 0x10001

.field private static final TAG:Ljava/lang/String; = "StorageVolume"


# instance fields
.field private final mAllowMassStorage:Z

.field private final mDescription:Ljava/lang/String;

.field private final mEmulated:Z

.field private final mFsUuid:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private mMaxFileSize:J

.field private final mMtpReserveSize:J

.field private final mOwner:Landroid/os/UserHandle;

.field private final mPath:Ljava/io/File;

.field private final mPrimary:Z

.field private final mRemovable:Z

.field private final mState:Ljava/lang/String;

.field private final mStorageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Landroid/os/storage/StorageVolume$1;

    invoke-direct {v0}, Landroid/os/storage/StorageVolume$1;-><init>()V

    sput-object v0, Landroid/os/storage/StorageVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSize:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    .line 94
    return-void

    :cond_0
    move v0, v2

    .line 99
    goto :goto_0

    :cond_1
    move v0, v2

    .line 100
    goto :goto_1

    :cond_2
    move v0, v2

    .line 101
    goto :goto_2

    :cond_3
    move v1, v2

    .line 103
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/storage/StorageVolume;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/os/storage/StorageVolume;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;ZZZJZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "storageId"    # I
    .param p3, "path"    # Ljava/io/File;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "primary"    # Z
    .param p6, "removable"    # Z
    .param p7, "emulated"    # Z
    .param p8, "mtpReserveSize"    # J
    .param p10, "allowMassStorage"    # Z
    .param p11, "maxFileSize"    # J
    .param p13, "owner"    # Landroid/os/UserHandle;
    .param p14, "fsUuid"    # Ljava/lang/String;
    .param p15, "state"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    .line 80
    iput p2, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 81
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 82
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    .line 83
    iput-boolean p5, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 84
    iput-boolean p6, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 85
    iput-boolean p7, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 86
    iput-wide p8, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSize:J

    .line 87
    iput-boolean p10, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 88
    iput-wide p11, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 89
    invoke-static {p13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    .line 90
    iput-object p14, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    .line 91
    invoke-static/range {p15 .. p15}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public allowMassStorage()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 265
    const-string/jumbo v0, "StorageVolume:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 267
    const-string/jumbo v0, "mId"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    const-string/jumbo v0, "mStorageId"

    iget v1, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    const-string/jumbo v0, "mPath"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    const-string/jumbo v0, "mDescription"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    const-string/jumbo v0, "mPrimary"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    const-string/jumbo v0, "mRemovable"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    const-string/jumbo v0, "mEmulated"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    const-string/jumbo v0, "mMtpReserveSize"

    iget-wide v2, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    const-string/jumbo v0, "mAllowMassStorage"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    const-string/jumbo v0, "mMaxFileSize"

    iget-wide v2, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    const-string/jumbo v0, "mOwner"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    const-string/jumbo v0, "mFsUuid"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    const-string/jumbo v0, "mState"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 264
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 245
    instance-of v1, p1, Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 246
    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 247
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    iget-object v2, v0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 249
    .end local v0    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFatVolumeId()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 224
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    .line 225
    :cond_0
    return v4

    .line 228
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v1, v2

    return v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "StorageVolume"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFatVolumeId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return v4
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    return-wide v0
.end method

.method public getMtpReserveSpace()I
    .locals 4

    .prologue
    .line 181
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSize:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getOwner()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageId()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    return v0
.end method

.method public getUserLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    return v0
.end method

.method public isRemovable()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    return v0
.end method

.method public setMaxFileSize(J)V
    .locals 1
    .param p1, "maxFileSize"    # J

    .prologue
    .line 208
    iput-wide p1, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 207
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 259
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 260
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "    "

    const/16 v3, 0x50

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageVolume;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 261
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 302
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget-wide v4, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 310
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 312
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 313
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mFsUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    return-void

    :cond_0
    move v0, v2

    .line 306
    goto :goto_0

    :cond_1
    move v0, v2

    .line 307
    goto :goto_1

    :cond_2
    move v0, v2

    .line 308
    goto :goto_2

    :cond_3
    move v1, v2

    .line 310
    goto :goto_3
.end method
