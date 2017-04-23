.class public Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;
.super Ljava/lang/Object;
.source "AbstractExceptionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/recovery/AbstractExceptionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedException"
.end annotation


# instance fields
.field public mExceptionClassName:Ljava/lang/String;

.field public mThrowClassName:Ljava/lang/String;

.field public mThrowMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "exceptionClassName"    # Ljava/lang/String;
    .param p2, "throwMethodName"    # Ljava/lang/String;
    .param p3, "throwClassName"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mExceptionClassName:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowMethodName:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowClassName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static getNewInstance(Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;
    .locals 8
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "getRootCause"    # Ljava/lang/Boolean;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_1

    .line 76
    move-object v1, p0

    .line 77
    .local v1, "rootCause":Ljava/lang/Throwable;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 79
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_0

    .line 80
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v4, v5, v6

    .line 84
    .local v4, "trace":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "exceptionClassName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "throwMethodName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "throwClassName":Ljava/lang/String;
    new-instance v5, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;

    invoke-direct {v5, v0, v3, v2}, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 89
    .end local v0    # "exceptionClassName":Ljava/lang/String;
    .end local v1    # "rootCause":Ljava/lang/Throwable;
    .end local v2    # "throwClassName":Ljava/lang/String;
    .end local v3    # "throwMethodName":Ljava/lang/String;
    .end local v4    # "trace":Ljava/lang/StackTraceElement;
    :cond_1
    return-object v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    if-nez p1, :cond_0

    return v3

    .line 96
    :cond_0
    if-ne p1, p0, :cond_1

    return v4

    .line 97
    :cond_1
    instance-of v1, p1, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;

    if-nez v1, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    .line 98
    check-cast v0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;

    .line 99
    .local v0, "pe":Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;
    iget-object v1, v0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mExceptionClassName:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mExceptionClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    iget-object v1, v0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowClassName:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 99
    if-eqz v1, :cond_3

    .line 101
    iget-object v1, v0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowMethodName:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowMethodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 99
    if-eqz v1, :cond_3

    .line 102
    return v4

    .line 104
    :cond_3
    return v3
.end method
