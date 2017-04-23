.class public Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;
.super Ljava/lang/Object;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrmanager/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnrDumpRecord"
.end annotation


# instance fields
.field protected mAnnotation:Ljava/lang/String;

.field protected mAnrTime:J

.field protected mAppCrashing:Z

.field protected mAppPid:I

.field protected mAppString:Ljava/lang/String;

.field public mCpuInfo:Ljava/lang/String;

.field public mInfo:Ljava/lang/StringBuilder;

.field protected mIsCancelled:Z

.field protected mIsCompleted:Z

.field protected mParentAppPid:I

.field protected mParentShortComponentName:Ljava/lang/String;

.field protected mProcessName:Ljava/lang/String;

.field protected mShortComponentName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/anrmanager/ANRManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/anrmanager/ANRManager;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 677
    iput-object p1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 670
    iput-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mInfo:Ljava/lang/StringBuilder;

    .line 678
    iput p2, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    .line 679
    iput-boolean p3, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppCrashing:Z

    .line 680
    iput-object p4, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mProcessName:Ljava/lang/String;

    .line 681
    iput-object p5, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppString:Ljava/lang/String;

    .line 682
    iput-object p6, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mShortComponentName:Ljava/lang/String;

    .line 683
    iput p7, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mParentAppPid:I

    .line 684
    iput-object p8, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mParentShortComponentName:Ljava/lang/String;

    .line 685
    iput-object p9, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAnnotation:Ljava/lang/String;

    .line 686
    iput-wide p10, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAnrTime:J

    .line 687
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)Z
    .locals 1

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->isValid()Z

    move-result v0

    return v0
.end method

.method private isValid()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 690
    iget v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    if-gtz v0, :cond_1

    .line 691
    :cond_0
    return v1

    .line 690
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mIsCancelled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mIsCompleted:Z

    if-nez v0, :cond_0

    .line 693
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AnrDumpRecord{ "

    .line 700
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    .line 702
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " IsCompleted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mIsCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " IsCancelled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mIsCancelled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " }"

    .line 706
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
