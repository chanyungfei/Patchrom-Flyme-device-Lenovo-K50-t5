.class public final Lcom/android/internal/telephony/uicc/AdnRecordCache;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field private static ADN_FILE_SIZE:I = 0x0

.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecordCache"

.field public static MAX_PHB_NAME_LENGTH:I

.field public static MAX_PHB_NUMBER_ANR_COUNT:I

.field public static MAX_PHB_NUMBER_ANR_LENGTH:I

.field public static MAX_PHB_NUMBER_LENGTH:I


# instance fields
.field mAdnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mAdnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private final mLock:Ljava/lang/Object;

.field private mLocked:Z

.field mSuccess:Z

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x3c

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    .line 79
    const/16 v0, 0x28

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    .line 80
    const/16 v0, 0x14

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_LENGTH:I

    .line 81
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    .line 87
    const/16 v0, 0xfa

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->ADN_FILE_SIZE:I

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 3
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    .line 84
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 91
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 92
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 89
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 2
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    .line 84
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 98
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 99
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 96
    return-void
.end method

.method private clearUserWriters()V
    .locals 4

    .prologue
    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clearUserWriters,mLocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 130
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    if-eqz v2, :cond_0

    .line 131
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 134
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 137
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 138
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string/jumbo v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 140
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 128
    return-void
.end method

.method private clearWaiters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 119
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 120
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 121
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 122
    .local v3, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 123
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 118
    return-void
.end method

.method private dumpAdnLikeFile()V
    .locals 8

    .prologue
    .line 842
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 843
    .local v5, "size":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dumpAdnLikeFile size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 845
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 846
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 848
    .local v2, "key":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 849
    .local v4, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dumpAdnLikeFile index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "records size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 850
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 851
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 852
    .local v3, "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mAdnLikeFiles["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 850
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 845
    .end local v3    # "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 841
    .end local v1    # "j":I
    .end local v2    # "key":I
    .end local v4    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .param p2, "ar"    # Landroid/os/AsyncResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 653
    .local p1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_0

    .line 654
    return-void

    .line 657
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 658
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 660
    .local v2, "waiter":Landroid/os/Message;
    if-eqz v2, :cond_1

    .line 661
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 662
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 657
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 651
    .end local v2    # "waiter":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v0, 0x2

    .line 171
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 169
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;
    .param p3, "ril_errno"    # I

    .prologue
    .line 179
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 181
    .local v0, "e":Lcom/android/internal/telephony/CommandException;
    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 183
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 184
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public addContactToGroup(II)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addContactToGroup(II)Z

    move-result v0

    return v0
.end method

.method public extensionEfForEf(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    const/16 v0, 0x6f4a

    .line 158
    sparse-switch p1, :sswitch_data_0

    .line 165
    const/4 v0, -0x1

    return v0

    .line 159
    :sswitch_0
    const/16 v0, 0x6fc8

    return v0

    .line 160
    :sswitch_1
    return v0

    .line 161
    :sswitch_2
    const/16 v0, 0x6f4c

    return v0

    .line 162
    :sswitch_3
    const/16 v0, 0x6f4b

    return v0

    .line 163
    :sswitch_4
    return v0

    .line 164
    :sswitch_5
    const/4 v0, 0x0

    return v0

    .line 158
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_5
        0x6f3a -> :sswitch_1
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_4
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAnrCount()I
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrCount()I

    move-result v0

    return v0
.end method

.method public getEmailCount()I
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailCount()I

    move-result v0

    return v0
.end method

.method public getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSneRecordLen()I
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSneRecordLen()I

    move-result v0

    return v0
.end method

.method public getUsimAasById(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasById(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimAasList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/AlphaTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getUsimAasMaxCount()I
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxCount()I

    move-result v0

    return v0
.end method

.method public getUsimAasMaxNameLen()I
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v0

    return v0
.end method

.method public getUsimGroupById(I)Ljava/lang/String;
    .locals 1
    .param p1, "nGasId"    # I

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGroupById(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/UsimGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGroups()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGrpMaxCount()I
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGrpMaxCount()I

    move-result v0

    return v0
.end method

.method public getUsimGrpMaxNameLen()I
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGrpMaxNameLen()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 674
    const/4 v4, 0x0

    .line 676
    .local v4, "flag":Z
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 766
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v11, v11, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v11, :cond_e

    iget v11, p1, Landroid/os/Message;->arg1:I

    const/16 v12, 0x4f3a

    if-eq v11, v12, :cond_1

    iget v11, p1, Landroid/os/Message;->arg1:I

    const/16 v12, 0x4f3b

    if-ne v11, v12, :cond_d

    :cond_1
    if-eqz v4, :cond_e

    .line 767
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnListFromUsim()Ljava/util/ArrayList;

    move-result-object v1

    .line 769
    .local v1, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    if-eqz v1, :cond_e

    .line 770
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 771
    .local v8, "totalSize":I
    const/4 v9, 0x0

    .line 772
    .local v9, "usedRecord":I
    const/4 v5, 0x0

    .line 774
    .local v5, "i":I
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_f

    .line 775
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 776
    add-int/lit8 v9, v9, 0x1

    .line 777
    const-string/jumbo v11, "AdnRecordCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "print userRecord: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 679
    .end local v1    # "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v5    # "i":I
    .end local v8    # "totalSize":I
    .end local v9    # "usedRecord":I
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 680
    .local v2, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 683
    .local v3, "efid":I
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 684
    .local v10, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 686
    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_3

    .line 687
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    iget-object v11, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v12, v3, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 691
    :goto_2
    invoke-direct {p0, v10, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 694
    const-string/jumbo v11, "AdnRecordCache"

    const-string/jumbo v12, "load all adns and set flag into ture"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v4, 0x1

    .line 696
    goto/16 :goto_0

    .line 689
    :cond_3
    const-string/jumbo v11, "AdnRecordCache"

    const-string/jumbo v12, "EVENT_LOAD_ALL_ADN_LIKE_DONE exception"

    iget-object v13, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v11, v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 698
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "efid":I
    .end local v10    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_1
    const-string/jumbo v11, "EVENT_UPDATE_ADN_DONE"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 699
    iget-boolean v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    if-eqz v11, :cond_0

    .line 700
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 701
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 702
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 703
    .restart local v3    # "efid":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 704
    .local v6, "index":I
    iget-object v0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 706
    .local v0, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_6

    .line 707
    if-eqz v0, :cond_4

    .line 708
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordIndex(I)V

    .line 709
    iget v11, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    if-gtz v11, :cond_4

    .line 710
    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 714
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mAdnLikeFiles changed index:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ",adn:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 715
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v11, v11, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v11, :cond_9

    .line 716
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 717
    const/16 v11, 0x4f3b

    if-ne v3, v11, :cond_8

    .line 719
    add-int/lit16 v6, v6, 0xfa

    .line 720
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordIndex(I)V

    .line 721
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    add-int/lit16 v13, v6, -0xfa

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v13, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 722
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mAdnLikeFiles after add changed index:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ",adn:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " efid:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 727
    :cond_5
    :goto_3
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    if-eqz v11, :cond_6

    const/16 v11, 0x6f3b

    if-eq v3, v11, :cond_6

    .line 728
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    add-int/lit8 v13, v6, -0x1

    invoke-virtual {v11, v13, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimPhonebookRecordsList(ILcom/android/internal/telephony/uicc/AdnRecord;)V

    .line 744
    :cond_6
    :goto_4
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 745
    .local v7, "response":Landroid/os/Message;
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 747
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "AdnRecordCacheEx: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 749
    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_7

    if-eqz v7, :cond_7

    .line 750
    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v13, 0x0

    invoke-static {v7, v13, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 751
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 753
    :cond_7
    iget-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_c

    const/4 v11, 0x1

    :goto_5
    iput-boolean v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    .line 754
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 755
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 757
    const-string/jumbo v11, "AdnRecordCache"

    const-string/jumbo v13, "update  adn and set flag into ture"

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    const/4 v4, 0x1

    monitor-exit v12

    goto/16 :goto_0

    .line 724
    .end local v7    # "response":Landroid/os/Message;
    :cond_8
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    add-int/lit8 v13, v6, -0x1

    invoke-virtual {v11, v13, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 700
    .end local v0    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "efid":I
    .end local v6    # "index":I
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 731
    .restart local v0    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    .restart local v3    # "efid":I
    .restart local v6    # "index":I
    :cond_9
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 732
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    add-int/lit8 v13, v6, -0x1

    invoke-virtual {v11, v13, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 734
    :cond_a
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    if-eqz v11, :cond_6

    const/16 v11, 0x6f3b

    if-eq v3, v11, :cond_6

    .line 735
    const/16 v11, 0x4f3b

    if-ne v3, v11, :cond_b

    .line 737
    add-int/lit16 v6, v6, 0xfa

    .line 739
    :cond_b
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    add-int/lit8 v13, v6, -0x1

    invoke-virtual {v11, v13, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimPhonebookRecordsList(ILcom/android/internal/telephony/uicc/AdnRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    .line 753
    .restart local v7    # "response":Landroid/os/Message;
    :cond_c
    const/4 v11, 0x0

    goto :goto_5

    .line 766
    .end local v0    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "efid":I
    .end local v6    # "index":I
    .end local v7    # "response":Landroid/os/Message;
    :cond_d
    iget v11, p1, Landroid/os/Message;->arg1:I

    const/16 v12, 0x4f3c

    if-eq v11, v12, :cond_1

    iget v11, p1, Landroid/os/Message;->arg1:I

    const/16 v12, 0x4f3d

    if-eq v11, v12, :cond_1

    .line 671
    :cond_e
    :goto_6
    return-void

    .line 781
    .restart local v1    # "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .restart local v5    # "i":I
    .restart local v8    # "totalSize":I
    .restart local v9    # "usedRecord":I
    :cond_f
    const-string/jumbo v11, "AdnRecordCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setPhbRecordStorageInfo totalSize = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " usedRecord = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    check-cast v11, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    invoke-virtual {v11, v8, v9}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->setPhbRecordStorageInfo(II)V

    goto :goto_6

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasExistGroup(Ljava/lang/String;)I
    .locals 1
    .param p1, "grpName"    # Ljava/lang/String;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasExistGroup(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasSne()Z
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasSne()Z

    move-result v0

    return v0
.end method

.method public insertUsimAas(Ljava/lang/String;)I
    .locals 1
    .param p1, "aasName"    # Ljava/lang/String;

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->insertUsimAas(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insertUsimGroup(Ljava/lang/String;)I
    .locals 1
    .param p1, "grpName"    # Ljava/lang/String;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->insertUsimGroup(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isAdnAccessible()Z
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isAdnAccessible()Z

    move-result v0

    return v0
.end method

.method public isUICCCard()Z
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v0, :cond_0

    .line 926
    const/4 v0, 0x1

    return v0

    .line 928
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUsimPhbEfAndNeedReset(I)Z
    .locals 1
    .param p1, "fileId"    # I

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isUsimPhbEfAndNeedReset(I)Z

    move-result v0

    return v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 790
    const-string/jumbo v0, "AdnRecordCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[AdnRecordCache] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-void
.end method

.method public moveContactFromGroupsToGroups(I[I[I)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "fromGrpIdList"    # [I
    .param p3, "toGrpIdList"    # [I

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->moveContactFromGroupsToGroups(I[I[I)Z

    move-result v0

    return v0
.end method

.method public removeContactFromGroup(II)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeContactFromGroup(II)Z

    move-result v0

    return v0
.end method

.method public removeUsimAasById(II)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeUsimAasById(II)Z

    move-result v0

    return v0
.end method

.method public removeUsimGroupById(I)Z
    .locals 1
    .param p1, "nGasId"    # I

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeUsimGroupById(I)Z

    move-result v0

    return v0
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 6
    .param p1, "efid"    # I
    .param p2, "extensionEf"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestLoadAllAdnLike efid = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestLoadAllAdnLike extensionEf = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 596
    const/16 v2, 0x4f30

    if-ne p1, v2, :cond_1

    .line 597
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    .line 601
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestLoadAllAdnLike result = null ?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 604
    if-eqz v0, :cond_3

    .line 605
    if-eqz p3, :cond_0

    .line 606
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 607
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 610
    :cond_0
    return-void

    .line 599
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_0

    :cond_2
    move v2, v4

    .line 601
    goto :goto_1

    .line 615
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 617
    .local v1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_4

    .line 621
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    return-void

    .line 627
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .restart local v1    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 632
    if-gez p2, :cond_6

    .line 635
    if-eqz p3, :cond_5

    .line 636
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    .line 637
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 636
    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 638
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 641
    :cond_5
    return-void

    .line 644
    :cond_6
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 645
    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 644
    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    .line 591
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 109
    const-string/jumbo v0, "reset"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 113
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearWaiters()V

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearUserWriters()V

    .line 108
    return-void
.end method

.method public updateAdnAas(II)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "aasIndex"    # I

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnAas(II)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 26
    .param p1, "efid"    # I
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "recordIndex"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    monitor-enter p0

    .line 201
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v7

    .line 202
    .local v7, "extensionEF":I
    const/16 v20, 0x0

    .line 203
    .local v20, "i":I
    const/16 v16, 0x0

    .line 204
    .local v16, "anr":Ljava/lang/String;
    add-int/lit8 v4, p3, -0x1

    sget v5, Lcom/android/internal/telephony/uicc/AdnRecordCache;->ADN_FILE_SIZE:I

    rem-int/2addr v4, v5

    add-int/lit8 v8, v4, 0x1

    .line 206
    .local v8, "adnIndex":I
    if-gez v7, :cond_0

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    .line 208
    return-void

    .line 211
    :cond_0
    :try_start_1
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    if-le v4, v5, :cond_1

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the input length of mAlphaTag is too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    const/16 v5, 0x3ea

    .line 213
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 217
    return-void

    .line 220
    :cond_1
    const/16 v20, 0x0

    .end local v16    # "anr":Ljava/lang/String;
    :goto_0
    :try_start_2
    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    move/from16 v0, v20

    if-ge v0, v4, :cond_3

    .line 221
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v16

    .line 222
    .local v16, "anr":Ljava/lang/String;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_LENGTH:I

    if-le v4, v5, :cond_2

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the input length of additional number is too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 227
    const/16 v5, 0x3f2

    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 228
    return-void

    .line 220
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 232
    .end local v16    # "anr":Ljava/lang/String;
    :cond_3
    :try_start_3
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v21

    .line 233
    .local v21, "num_length":I
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 234
    add-int/lit8 v21, v21, -0x1

    .line 237
    :cond_4
    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    move/from16 v0, v21

    if-le v0, v4, :cond_5

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the input length of phoneNumber is too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 242
    const/16 v5, 0x3e9

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 244
    return-void

    .line 251
    :cond_5
    const/16 v4, 0x4f30

    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    .line 252
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v22

    .line 254
    .local v22, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    if-nez v22, :cond_6

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adn list not exist for EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 258
    const/16 v5, 0x3f3

    .line 255
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 259
    return-void

    .line 262
    :cond_6
    add-int/lit8 v4, p3, -0x1

    :try_start_5
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 263
    .local v19, "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    move/from16 p1, v0

    .line 264
    move-object/from16 v0, v19

    iget v7, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 266
    move/from16 v0, p1

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 270
    .end local v19    # "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v22    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_7
    const/16 v20, 0x0

    :goto_1
    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    move/from16 v0, v20

    if-ge v0, v4, :cond_9

    .line 271
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v16

    .line 272
    .restart local v16    # "anr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, v16

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isAnrCapacityFree(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_8

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "drop the additional number for the update fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 276
    const/16 v5, 0x3f4

    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    .line 277
    return-void

    .line 270
    :cond_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 282
    .end local v16    # "anr":Ljava/lang/String;
    :cond_9
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Message;

    .line 283
    .local v23, "pendingResponse":Landroid/os/Message;
    if-eqz v23, :cond_a

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Have pending update for EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    .line 285
    return-void

    .line 288
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    const/16 v4, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v4, :cond_b

    const/16 v4, 0x4f30

    move/from16 v0, p1

    if-ne v0, v4, :cond_d

    .line 290
    :cond_b
    :goto_2
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_c

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeContactGroup(I)Z

    .line 297
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v4

    if-nez v4, :cond_e

    monitor-exit p0

    .line 298
    return-void

    .line 289
    :cond_d
    const/16 v4, 0x4f3a

    move/from16 v0, p1

    if-eq v0, v4, :cond_b

    const/16 v4, 0x4f3b

    move/from16 v0, p1

    if-eq v0, v4, :cond_b

    const/16 v4, 0x4f3c

    move/from16 v0, p1

    if-eq v0, v4, :cond_b

    const/16 v4, 0x4f3d

    move/from16 v0, p1

    if-ne v0, v4, :cond_c

    goto :goto_2

    .line 301
    :cond_e
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 302
    const/4 v4, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    .line 303
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v4, v4, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v4, :cond_f

    .line 305
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 307
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v5, v1, v8, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v5, p2

    move/from16 v6, p1

    move-object/from16 v9, p4

    .line 305
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 316
    :goto_3
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    monitor-exit v25

    .line 321
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-nez v4, :cond_10

    monitor-exit p0

    .line 322
    return-void

    .line 309
    :cond_f
    :try_start_c
    new-instance v9, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v9, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 311
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v10, p2

    move/from16 v11, p1

    move v12, v7

    move/from16 v13, p3

    move-object/from16 v14, p4

    .line 309
    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    .line 301
    :catchall_0
    move-exception v4

    :try_start_d
    monitor-exit v25

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .end local v7    # "extensionEF":I
    .end local v8    # "adnIndex":I
    .end local v20    # "i":I
    .end local v21    # "num_length":I
    .end local v23    # "pendingResponse":Landroid/os/Message;
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 317
    .restart local v7    # "extensionEF":I
    .restart local v8    # "adnIndex":I
    .restart local v20    # "i":I
    .restart local v21    # "num_length":I
    .restart local v23    # "pendingResponse":Landroid/os/Message;
    :catch_0
    move-exception v18

    .local v18, "e":Ljava/lang/InterruptedException;
    :try_start_e
    monitor-exit v25
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    monitor-exit p0

    .line 318
    return-void

    .line 325
    .end local v18    # "e":Ljava/lang/InterruptedException;
    :cond_10
    const/16 v4, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v4, :cond_11

    const/16 v4, 0x4f30

    move/from16 v0, p1

    if-ne v0, v4, :cond_13

    .line 327
    :cond_11
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportSne()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateSneByAdnIndex(Ljava/lang/String;I)V

    .line 330
    :cond_12
    const/16 v20, 0x0

    :goto_4
    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    move/from16 v0, v20

    if-ge v0, v4, :cond_15

    .line 331
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v16

    .line 332
    .restart local v16    # "anr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, v16

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 330
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 325
    .end local v16    # "anr":Ljava/lang/String;
    :cond_13
    const/16 v4, 0x4f3a

    move/from16 v0, p1

    if-eq v0, v4, :cond_11

    const/16 v4, 0x4f3b

    move/from16 v0, p1

    if-eq v0, v4, :cond_11

    const/16 v4, 0x4f3c

    move/from16 v0, p1

    if-eq v0, v4, :cond_11

    const/16 v4, 0x4f3d

    move/from16 v0, p1

    if-eq v0, v4, :cond_11

    .line 356
    const/16 v4, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v4, :cond_14

    .line 357
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_10
    move-object/from16 v0, p5

    invoke-static {v0, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 358
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_14
    :goto_5
    monitor-exit p0

    .line 199
    return-void

    .line 334
    :cond_15
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEmailsByAdnIndex([Ljava/lang/String;I)I

    move-result v24

    .line 335
    .local v24, "success":I
    const/4 v4, -0x1

    move/from16 v0, v24

    if-ne v4, v0, :cond_16

    .line 338
    const-string/jumbo v4, "drop the email for the limitation of the SIM card"

    .line 339
    const/16 v5, 0x3ed

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_5

    .line 350
    .end local v24    # "success":I
    :catch_1
    move-exception v17

    .line 351
    .local v17, "e":Ljava/lang/Exception;
    :try_start_12
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    monitor-exit p0

    .line 354
    return-void

    .line 340
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v24    # "success":I
    :cond_16
    const/4 v4, -0x2

    move/from16 v0, v24

    if-ne v4, v0, :cond_17

    .line 343
    :try_start_13
    const-string/jumbo v4, "the email string is too long"

    .line 344
    const/16 v5, 0x3ee

    .line 341
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 345
    const-string/jumbo v4, "AdnRecordCache"

    const-string/jumbo v5, "haman, by index email too long"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 347
    :cond_17
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 348
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_5
.end method

.method public declared-synchronized updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I
    .locals 26
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    monitor-enter p0

    .line 379
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdnBySearch efid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "pin2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", oldAdn ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 380
    const-string/jumbo v4, "], new Adn["

    .line 379
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 380
    const-string/jumbo v4, "]"

    .line 379
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 381
    const/4 v12, -0x1

    .line 383
    .local v12, "index":I
    const/16 v19, 0x0

    .line 384
    .local v19, "i":I
    const/4 v15, 0x0

    .line 385
    .local v15, "anr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v6

    .line 386
    .local v6, "extensionEF":I
    const/4 v7, 0x0

    .line 388
    .local v7, "adnIndex":I
    if-gez v6, :cond_0

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EF is not known ADN-like EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    const/4 v3, -0x1

    monitor-exit p0

    .line 390
    return v3

    .line 393
    :cond_0
    :try_start_1
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    if-le v3, v4, :cond_1

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the input length of mAlphaTag is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 398
    const/16 v4, 0x3ea

    .line 395
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    const/4 v3, -0x1

    monitor-exit p0

    .line 399
    return v3

    .line 402
    :cond_1
    :try_start_2
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v21

    .line 403
    .local v21, "num_length":I
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 404
    add-int/lit8 v21, v21, -0x1

    .line 407
    :cond_2
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    move/from16 v0, v21

    if-le v0, v3, :cond_3

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the input length of phoneNumber is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    const/16 v4, 0x3e9

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    const/4 v3, -0x1

    monitor-exit p0

    .line 414
    return v3

    .line 417
    :cond_3
    const/16 v19, 0x0

    .end local v15    # "anr":Ljava/lang/String;
    :goto_0
    :try_start_3
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_6

    .line 418
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v15

    .line 419
    .local v15, "anr":Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 420
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    .line 421
    const/16 v3, 0x2b

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 422
    add-int/lit8 v21, v21, -0x1

    .line 425
    :cond_4
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_LENGTH:I

    move/from16 v0, v21

    if-le v0, v3, :cond_5

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the input length of additional number is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 430
    const/16 v4, 0x3f2

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    const/4 v3, -0x1

    monitor-exit p0

    .line 431
    return v3

    .line 417
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 437
    .end local v15    # "anr":Ljava/lang/String;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkEmailLength([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 440
    const-string/jumbo v3, "the email string is too long"

    .line 441
    const/16 v4, 0x3ee

    .line 438
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 381
    const/4 v3, -0x1

    monitor-exit p0

    .line 442
    return v3

    .line 447
    :cond_7
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_8

    .line 448
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v22

    .line 453
    .local v22, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_1
    if-nez v22, :cond_9

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adn list not exist for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 457
    const/16 v4, 0x3f3

    .line 454
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 381
    const/4 v3, -0x1

    monitor-exit p0

    .line 458
    return v3

    .line 450
    .end local v22    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_8
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v22

    .restart local v22    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_1

    .line 464
    :cond_9
    const/16 v16, 0x1

    .line 465
    .local v16, "count":I
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 466
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 467
    move/from16 v12, v16

    .line 472
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdnBySearch index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 473
    const/4 v3, -0x1

    if-ne v12, v3, :cond_d

    .line 474
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adn record don\'t exist for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 478
    const/16 v4, 0x3eb

    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    monitor-exit p0

    .line 482
    return v12

    .line 470
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 480
    :cond_c
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adn record don\'t exist for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .end local v6    # "extensionEF":I
    .end local v7    # "adnIndex":I
    .end local v12    # "index":I
    .end local v16    # "count":I
    .end local v19    # "i":I
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v21    # "num_length":I
    .end local v22    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 485
    .restart local v6    # "extensionEF":I
    .restart local v7    # "adnIndex":I
    .restart local v12    # "index":I
    .restart local v16    # "count":I
    .restart local v19    # "i":I
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .restart local v21    # "num_length":I
    .restart local v22    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_d
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_e

    .line 487
    add-int/lit8 v3, v12, -0x1

    :try_start_8
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 488
    .local v18, "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    move/from16 p1, v0

    .line 489
    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 490
    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 492
    move/from16 v0, p1

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 493
    move-object/from16 v0, p3

    iput v6, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 494
    move-object/from16 v0, p3

    iput v12, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 497
    .end local v18    # "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Message;

    .line 499
    .local v23, "pendingResponse":Landroid/os/Message;
    if-eqz v23, :cond_f

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Have pending update for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    .line 501
    return v12

    .line 503
    :cond_f
    if-nez p1, :cond_10

    .line 504
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Abnormal efid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    .line 505
    return v12

    .line 507
    :cond_10
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v3, v12, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkEmailCapacityFree(I[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 510
    const-string/jumbo v3, "drop the email for the limitation of the SIM card"

    .line 511
    const/16 v4, 0x3ed

    .line 508
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    .line 512
    return v12

    .line 514
    :cond_11
    const/16 v19, 0x0

    :goto_4
    :try_start_b
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_13

    .line 515
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v15

    .line 516
    .restart local v15    # "anr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v19

    invoke-virtual {v3, v15, v12, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isAnrCapacityFree(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_12

    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "drop the additional number for the write fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 520
    const/16 v4, 0x3f4

    .line 517
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    .line 521
    return v12

    .line 514
    :cond_12
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 525
    .end local v15    # "anr":Ljava/lang/String;
    :cond_13
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 528
    const/4 v3, 0x0

    :try_start_d
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    .line 529
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 530
    add-int/lit8 v3, v12, -0x1

    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->ADN_FILE_SIZE:I

    rem-int/2addr v3, v4

    add-int/lit8 v7, v3, 0x1

    .line 531
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v3, v3, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v3, :cond_14

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdnBySearch CsimFileHandler index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 533
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordIndex(I)V

    .line 534
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 536
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v7, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v4, p3

    move/from16 v5, p1

    move-object/from16 v8, p4

    .line 534
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 545
    :goto_5
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    monitor-exit v25

    .line 550
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    if-nez v3, :cond_15

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdnBySearch mSuccess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    monitor-exit p0

    .line 552
    return v12

    .line 538
    :cond_14
    :try_start_10
    new-instance v8, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 540
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v1, v12, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    move-object/from16 v9, p3

    move/from16 v10, p1

    move v11, v6

    move-object/from16 v13, p4

    .line 538
    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_5

    .line 527
    :catchall_1
    move-exception v3

    :try_start_11
    monitor-exit v25

    throw v3

    .line 546
    :catch_0
    move-exception v17

    .local v17, "e":Ljava/lang/InterruptedException;
    monitor-exit v25
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit p0

    .line 547
    return v12

    .line 554
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :cond_15
    const/16 v24, 0x0

    .line 555
    .local v24, "success":I
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v3, :cond_16

    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_18

    .line 556
    :cond_16
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportSne()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {v3, v4, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateSneByAdnIndex(Ljava/lang/String;I)V

    .line 559
    :cond_17
    const/16 v19, 0x0

    :goto_6
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_19

    .line 560
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v15

    .line 561
    .restart local v15    # "anr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v19

    invoke-virtual {v3, v15, v12, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;II)V

    .line 559
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 555
    .end local v15    # "anr":Ljava/lang/String;
    :cond_18
    const/16 v3, 0x4f3a

    move/from16 v0, p1

    if-eq v0, v3, :cond_16

    const/16 v3, 0x4f3b

    move/from16 v0, p1

    if-eq v0, v3, :cond_16

    const/16 v3, 0x4f3c

    move/from16 v0, p1

    if-eq v0, v3, :cond_16

    const/16 v3, 0x4f3d

    move/from16 v0, p1

    if-eq v0, v3, :cond_16

    .line 566
    :goto_7
    const/4 v3, -0x1

    move/from16 v0, v24

    if-ne v3, v0, :cond_1a

    .line 568
    const-string/jumbo v3, "drop the email for the limitation of the SIM card"

    .line 569
    const/16 v4, 0x3ed

    .line 567
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :goto_8
    monitor-exit p0

    .line 581
    return v12

    .line 563
    :cond_19
    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v3, v4, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEmailsByAdnIndex([Ljava/lang/String;I)I

    move-result v24

    goto :goto_7

    .line 570
    :cond_1a
    const/4 v3, -0x2

    move/from16 v0, v24

    if-ne v3, v0, :cond_1b

    .line 573
    const-string/jumbo v3, "the email string is too long"

    .line 574
    const/16 v4, 0x3ee

    .line 571
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 575
    const-string/jumbo v3, "AdnRecordCache"

    const-string/jumbo v4, "haman, by search email too long"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 577
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdnBySearch response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 578
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 579
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_8
.end method

.method public updateContactToGroups(I[I)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "grpIdList"    # [I

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateContactToGroups(I[I)Z

    move-result v0

    return v0
.end method

.method public updateUsimAas(IILjava/lang/String;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "aasName"    # Ljava/lang/String;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimAas(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateUsimGroup(ILjava/lang/String;)I
    .locals 1
    .param p1, "nGasId"    # I
    .param p2, "grpName"    # Ljava/lang/String;

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimGroup(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
