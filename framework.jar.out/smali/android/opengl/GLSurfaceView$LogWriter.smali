.class Landroid/opengl/GLSurfaceView$LogWriter;
.super Ljava/io/Writer;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogWriter"
.end annotation


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1912
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1912
    return-void
.end method

.method private flushBuilder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1935
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1936
    const-string/jumbo v0, "GLSurfaceView"

    iget-object v1, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1934
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 1915
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$LogWriter;->flushBuilder()V

    .line 1914
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 1919
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$LogWriter;->flushBuilder()V

    .line 1918
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 1923
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 1924
    add-int v2, p2, v1

    aget-char v0, p1, v2

    .line 1925
    .local v0, "c":C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 1926
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$LogWriter;->flushBuilder()V

    .line 1923
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1929
    :cond_0
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1922
    .end local v0    # "c":C
    :cond_1
    return-void
.end method
