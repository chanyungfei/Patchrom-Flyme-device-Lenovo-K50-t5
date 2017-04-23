.class public Lcom/mediatek/recovery/UserManagerExceptionParser;
.super Lcom/mediatek/recovery/AbstractExceptionParser;
.source "UserManagerExceptionParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserManagerExceptionParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/mediatek/recovery/AbstractExceptionParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parseException(Ljava/lang/RuntimeException;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "e"    # Ljava/lang/RuntimeException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/RuntimeException;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 12
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 11
    invoke-static {p1, v3}, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->getNewInstance(Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;

    move-result-object v0

    .line 15
    .local v0, "pe":Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 14
    invoke-static {p1, v3}, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->getNewInstance(Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;

    move-result-object v2

    .line 16
    .local v2, "rpe":Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .local v1, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v4}, Lcom/mediatek/recovery/UserManagerExceptionParser;->setLastError(I)V

    .line 18
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 19
    :cond_0
    const-string/jumbo v3, "UserManagerExceptionParser"

    const-string/jumbo v4, "The exception backtrace is null, stop handle progress"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-object v1

    .line 22
    :cond_1
    iget-object v3, v2, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowMethodName:Ljava/lang/String;

    const-string/jumbo v4, "getRequiredInstallerLPr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 23
    iget-object v3, v2, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mExceptionClassName:Ljava/lang/String;

    const-string/jumbo v4, "java.lang.RuntimeException"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 24
    iget-object v3, v0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowClassName:Ljava/lang/String;

    const-string/jumbo v4, "com.android.server.pm.PackageManagerService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 25
    const-string/jumbo v3, "/data/system/users/0.xml"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {p0, v5}, Lcom/mediatek/recovery/UserManagerExceptionParser;->setLastError(I)V

    .line 28
    :cond_2
    return-object v1
.end method
