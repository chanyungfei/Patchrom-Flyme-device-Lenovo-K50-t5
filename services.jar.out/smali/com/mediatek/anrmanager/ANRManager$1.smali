.class Lcom/mediatek/anrmanager/ANRManager$1;
.super Landroid/os/FileObserver;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/anrmanager/ANRManager;->preDumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/anrmanager/ANRManager;


# direct methods
.method constructor <init>(Lcom/mediatek/anrmanager/ANRManager;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/mediatek/anrmanager/ANRManager$1;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onEvent(ILjava/lang/String;)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 310
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
