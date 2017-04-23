.class Lcom/android/server/am/MwActivityMonitor$MessageObj;
.super Ljava/lang/Object;
.source "MwActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MwActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageObj"
.end annotation


# instance fields
.field private mAr:Lcom/android/server/am/ActivityRecord;

.field private mPr:Lcom/android/server/am/ProcessRecord;

.field final synthetic this$0:Lcom/android/server/am/MwActivityMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/MwActivityMonitor$MessageObj;)Lcom/android/server/am/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MwActivityMonitor$MessageObj;->mAr:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/MwActivityMonitor$MessageObj;)Lcom/android/server/am/ProcessRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MwActivityMonitor$MessageObj;->mPr:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/am/MwActivityMonitor;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MwActivityMonitor;
    .param p2, "activityRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "processRecord"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/server/am/MwActivityMonitor$MessageObj;->this$0:Lcom/android/server/am/MwActivityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p2, p0, Lcom/android/server/am/MwActivityMonitor$MessageObj;->mAr:Lcom/android/server/am/ActivityRecord;

    .line 425
    iput-object p3, p0, Lcom/android/server/am/MwActivityMonitor$MessageObj;->mPr:Lcom/android/server/am/ProcessRecord;

    .line 423
    return-void
.end method
