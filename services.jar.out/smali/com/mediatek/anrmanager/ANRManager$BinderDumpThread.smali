.class public Lcom/mediatek/anrmanager/ANRManager$BinderDumpThread;
.super Ljava/lang/Thread;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrmanager/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinderDumpThread"
.end annotation


# instance fields
.field private mPid:I

.field final synthetic this$0:Lcom/mediatek/anrmanager/ANRManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/anrmanager/ANRManager;I)V
    .locals 0

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/mediatek/anrmanager/ANRManager$BinderDumpThread;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1324
    iput p2, p0, Lcom/mediatek/anrmanager/ANRManager$BinderDumpThread;->mPid:I

    .line 1325
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$BinderDumpThread;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    iget v1, p0, Lcom/mediatek/anrmanager/ANRManager$BinderDumpThread;->mPid:I

    invoke-virtual {v0, v1}, Lcom/mediatek/anrmanager/ANRManager;->dumpBinderInfo(I)V

    .line 1328
    return-void
.end method
