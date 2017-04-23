.class public Landroid/graphics/pdf/PdfDocument;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/PdfDocument$PdfCanvas;,
        Landroid/graphics/pdf/PdfDocument$PageInfo;,
        Landroid/graphics/pdf/PdfDocument$Page;
    }
.end annotation


# instance fields
.field private final mChunk:[B

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

.field private mNativeDocument:J

.field private final mPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/pdf/PdfDocument$PageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mChunk:[B

    .line 86
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mPages:Ljava/util/List;

    .line 98
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->nativeCreateDocument()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    .line 99
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 218
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 219
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/pdf/PdfDocument;->nativeClose(J)V

    .line 220
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 221
    iput-wide v2, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    .line 217
    :cond_0
    return-void
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeCreateDocument()J
.end method

.method private native nativeFinishPage(J)V
.end method

.method private static native nativeStartPage(JIIIIII)J
.end method

.method private native nativeWriteTo(JLjava/io/OutputStream;[B)V
.end method

.method private throwIfClosed()V
    .locals 4

    .prologue
    .line 229
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "document is closed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    return-void
.end method

.method private throwIfCurrentPageNotFinished()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Current page not finished!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfCurrentPageNotFinished()V

    .line 204
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->dispose()V

    .line 202
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 210
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 211
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 208
    return-void

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 212
    throw v0
.end method

.method public finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    .locals 3
    .param p1, "page"    # Landroid/graphics/pdf/PdfDocument$Page;

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfClosed()V

    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "page cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    if-eq p1, v0, :cond_1

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "invalid page"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/pdf/PdfDocument$Page;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "page already finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mPages:Ljava/util/List;

    invoke-virtual {p1}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iput-object v2, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    .line 157
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/pdf/PdfDocument;->nativeFinishPage(J)V

    .line 158
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$Page;->-wrap0(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 144
    return-void
.end method

.method public getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/pdf/PdfDocument$PageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mPages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;
    .locals 10
    .param p1, "pageInfo"    # Landroid/graphics/pdf/PdfDocument$PageInfo;

    .prologue
    const/4 v9, 0x0

    .line 121
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfClosed()V

    .line 122
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfCurrentPageNotFinished()V

    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "page cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    new-instance v8, Landroid/graphics/pdf/PdfDocument$PdfCanvas;

    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get2(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v2

    .line 127
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get1(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get0(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get0(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 128
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get0(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get0(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 126
    invoke-static/range {v0 .. v7}, Landroid/graphics/pdf/PdfDocument;->nativeStartPage(JIIIIII)J

    move-result-wide v0

    invoke-direct {v8, p0, v0, v1}, Landroid/graphics/pdf/PdfDocument$PdfCanvas;-><init>(Landroid/graphics/pdf/PdfDocument;J)V

    .line 129
    .local v8, "canvas":Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/pdf/PdfDocument$Page;

    invoke-direct {v0, v8, p1, v9}, Landroid/graphics/pdf/PdfDocument$Page;-><init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/pdf/PdfDocument$Page;)V

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    .line 130
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfClosed()V

    .line 176
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfCurrentPageNotFinished()V

    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    iget-object v2, p0, Landroid/graphics/pdf/PdfDocument;->mChunk:[B

    invoke-direct {p0, v0, v1, p1, v2}, Landroid/graphics/pdf/PdfDocument;->nativeWriteTo(JLjava/io/OutputStream;[B)V

    .line 174
    return-void
.end method
