.class public Lcom/mediatek/telecom/TelecomTrace;
.super Ljava/lang/Object;
.source "TelecomTrace.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TelecomTrace"

.field private static final TRACE_TAG:J = 0x1000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static begin(Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x1000

    .line 20
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    const-string/jumbo v0, "TelecomTrace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[begin]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :cond_0
    invoke-static {v4, v5, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 19
    return-void
.end method

.method public static end(Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x1000

    .line 32
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 33
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string/jumbo v0, "TelecomTrace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[end]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :cond_0
    return-void
.end method
