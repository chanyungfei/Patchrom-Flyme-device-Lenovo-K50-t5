.class public Lcom/lenovo/memoryclean/Version;
.super Ljava/lang/Object;
.source "Version.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printfVersion()V
    .locals 2

    .prologue
    const-string/jumbo v0, "MemoryCleanSDK"

    const-string/jumbo v1, "MemoryCleanSDK Version = 021>>2016-04-12"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void
.end method
