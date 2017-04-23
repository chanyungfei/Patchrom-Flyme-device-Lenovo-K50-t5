.class abstract Lcom/mediatek/anrappmanager/ANRManagerNative$Singleton;
.super Ljava/lang/Object;
.source "ANRManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrappmanager/ANRManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/anrappmanager/ANRManagerNative$Singleton;->mInstance:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/mediatek/anrappmanager/ANRManagerNative$Singleton;->mInstance:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/anrappmanager/ANRManagerNative$Singleton;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anrappmanager/ANRManagerNative$Singleton;->mInstance:Ljava/lang/Object;

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
