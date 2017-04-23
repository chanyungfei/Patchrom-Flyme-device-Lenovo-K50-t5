.class Lcom/android/server/SystemServer$BootProgressUpdater;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BootProgressUpdater"
.end annotation


# static fields
.field private static final BOOTPRE_SYSTEM_PROPERTY:Ljava/lang/String; = "sys.bootcomplete.percent"


# instance fields
.field private mCompleted:Z

.field final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1633
    iput-object p1, p0, Lcom/android/server/SystemServer$BootProgressUpdater;->this$0:Lcom/android/server/SystemServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SystemServer$BootProgressUpdater;->mCompleted:Z

    .line 1633
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1643
    const/4 v1, 0x0

    .line 1644
    .local v1, "percent":I
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/SystemServer$BootProgressUpdater;->mCompleted:Z

    if-nez v2, :cond_0

    const/16 v2, 0x63

    if-gt v1, v2, :cond_0

    .line 1645
    add-int/lit8 v1, v1, 0x1

    .line 1646
    const-string/jumbo v2, "sys.bootcomplete.percent"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1649
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 1642
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public setCompleted()V
    .locals 1

    .prologue
    .line 1638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SystemServer$BootProgressUpdater;->mCompleted:Z

    .line 1637
    return-void
.end method
