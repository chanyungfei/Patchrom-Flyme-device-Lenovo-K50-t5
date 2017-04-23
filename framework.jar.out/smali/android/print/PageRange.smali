.class public final Landroid/print/PageRange;
.super Ljava/lang/Object;
.source "PageRange.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PageRange$1;
    }
.end annotation


# static fields
.field public static final ALL_PAGES:Landroid/print/PageRange;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PageRange;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "PageRange"


# instance fields
.field private final mEnd:I

.field private final mStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/print/PageRange;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Landroid/print/PageRange;-><init>(II)V

    sput-object v0, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    .line 165
    new-instance v0, Landroid/print/PageRange$1;

    invoke-direct {v0}, Landroid/print/PageRange$1;-><init>()V

    .line 164
    sput-object v0, Landroid/print/PageRange;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-gez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start cannot be less than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    if-gez p2, :cond_1

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "end cannot be less than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    if-le p1, p2, :cond_2

    .line 55
    const-string/jumbo v0, "PageRange"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal Argument: start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    const-string/jumbo v2, ") must be lesser than end("

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    const-string/jumbo v2, ")."

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 p1, 0x0

    .line 59
    :cond_2
    iput p1, p0, Landroid/print/PageRange;->mStart:I

    .line 60
    iput p2, p0, Landroid/print/PageRange;->mEnd:I

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/print/PageRange;-><init>(II)V

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PageRange;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/print/PageRange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 2
    .param p1, "pageIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 94
    iget v1, p0, Landroid/print/PageRange;->mStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/print/PageRange;->mEnd:I

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    if-ne p0, p1, :cond_0

    .line 132
    return v4

    .line 134
    :cond_0
    if-nez p1, :cond_1

    .line 135
    return v3

    .line 137
    :cond_1
    invoke-virtual {p0}, Landroid/print/PageRange;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 138
    return v3

    :cond_2
    move-object v0, p1

    .line 140
    check-cast v0, Landroid/print/PageRange;

    .line 141
    .local v0, "other":Landroid/print/PageRange;
    iget v1, p0, Landroid/print/PageRange;->mEnd:I

    iget v2, v0, Landroid/print/PageRange;->mEnd:I

    if-eq v1, v2, :cond_3

    .line 142
    return v3

    .line 144
    :cond_3
    iget v1, p0, Landroid/print/PageRange;->mStart:I

    iget v2, v0, Landroid/print/PageRange;->mStart:I

    if-eq v1, v2, :cond_4

    .line 145
    return v3

    .line 147
    :cond_4
    return v4
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    return v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    iget v1, p0, Landroid/print/PageRange;->mStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Landroid/print/PageRange;->mStart:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 122
    const/16 v0, 0x1f

    .line 124
    .local v0, "prime":I
    iget v2, p0, Landroid/print/PageRange;->mEnd:I

    add-int/lit8 v1, v2, 0x1f

    .line 125
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PageRange;->mStart:I

    add-int v1, v2, v3

    .line 126
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    iget v1, p0, Landroid/print/PageRange;->mStart:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/print/PageRange;->mEnd:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 153
    const-string/jumbo v1, "PageRange[<all pages>]"

    return-object v1

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PageRange["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    iget v2, p0, Landroid/print/PageRange;->mStart:I

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 158
    const-string/jumbo v2, " - "

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    iget v2, p0, Landroid/print/PageRange;->mEnd:I

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    const-string/jumbo v2, "]"

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 116
    iget v0, p0, Landroid/print/PageRange;->mStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return-void
.end method
