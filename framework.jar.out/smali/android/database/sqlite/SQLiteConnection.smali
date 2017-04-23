.class public final Landroid/database/sqlite/SQLiteConnection;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteConnection$PreparedStatement;,
        Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;,
        Landroid/database/sqlite/SQLiteConnection$OperationLog;,
        Landroid/database/sqlite/SQLiteConnection$Operation;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DEBUG:Z = false

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SQLiteConnection"


# instance fields
.field private mCancellationSignalAttachCount:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private final mConnectionId:I

.field private mConnectionPtr:J

.field private final mIsPrimaryConnection:Z

.field private final mIsReadOnlyConnection:Z

.field private mOnlyAllowReadOnlyOperations:Z

.field private final mPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private final mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

.field private mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

.field private final mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;


# direct methods
.method static synthetic -get0()[B
    .locals 1

    sget-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sql"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/database/sqlite/SQLiteConnection;->trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 0
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .prologue
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-class v0, Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/database/sqlite/SQLiteConnection;->-assertionsDisabled:Z

    .line 96
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 97
    new-array v0, v1, [B

    sput-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    .line 92
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)V
    .locals 3
    .param p1, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p2, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p3, "connectionId"    # I
    .param p4, "primaryConnection"    # Z

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 110
    new-instance v1, Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;-><init>(Landroid/database/sqlite/SQLiteConnection$OperationLog;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    .line 166
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 167
    new-instance v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v1, p2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 168
    iput p3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    .line 169
    iput-boolean p4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    .line 170
    iget v1, p2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    .line 171
    new-instance v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 172
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 171
    invoke-direct {v0, p0, v1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;-><init>(Landroid/database/sqlite/SQLiteConnection;I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 173
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method private acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .locals 11
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 884
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 885
    .local v9, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    const/4 v8, 0x0

    .line 886
    .local v8, "skipCache":Z
    if-eqz v9, :cond_1

    .line 887
    iget-boolean v0, v9, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    if-nez v0, :cond_0

    .line 888
    return-object v9

    .line 893
    :cond_0
    const/4 v8, 0x1

    .line 896
    :cond_1
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1, p1}, Landroid/database/sqlite/SQLiteConnection;->nativePrepareStatement(JLjava/lang/String;)J

    move-result-wide v2

    .line 898
    .local v2, "statementPtr":J
    :try_start_0
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeGetParameterCount(JJ)I

    move-result v4

    .line 899
    .local v4, "numParameters":I
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v5

    .line 900
    .local v5, "type":I
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeIsReadOnly(JJ)Z

    move-result v6

    .local v6, "readOnly":Z
    move-object v0, p0

    move-object v1, p1

    .line 901
    invoke-direct/range {v0 .. v6}, Landroid/database/sqlite/SQLiteConnection;->obtainPreparedStatement(Ljava/lang/String;JIIZ)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v9

    .line 902
    if-nez v8, :cond_2

    invoke-static {v5}, Landroid/database/sqlite/SQLiteConnection;->isCacheable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 903
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1, v9}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :cond_2
    iput-boolean v10, v9, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    .line 915
    return-object v9

    .line 906
    .end local v4    # "numParameters":I
    .end local v5    # "type":I
    .end local v6    # "readOnly":Z
    :catch_0
    move-exception v7

    .line 909
    .local v7, "ex":Ljava/lang/RuntimeException;
    if-eqz v9, :cond_3

    iget-boolean v0, v9, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-eqz v0, :cond_3

    .line 912
    :goto_0
    throw v7

    .line 910
    :cond_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    goto :goto_0
.end method

.method private applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 1
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .prologue
    .line 1046
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    if-eqz v0, :cond_1

    .line 1048
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    goto :goto_0
.end method

.method private attachCancellationSignal(Landroid/os/CancellationSignal;)V
    .locals 3
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    const/4 v2, 0x1

    .line 947
    if-eqz p1, :cond_0

    .line 948
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 950
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    .line 951
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    if-ne v0, v2, :cond_0

    .line 953
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection;->nativeResetCancel(JZ)V

    .line 956
    invoke-virtual {p1, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 946
    :cond_0
    return-void
.end method

.method private bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .param p2, "bindArgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 987
    if-eqz p2, :cond_0

    array-length v8, p2

    .line 988
    .local v8, "count":I
    :goto_0
    iget v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    if-eq v8, v0, :cond_1

    .line 989
    new-instance v0, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;

    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " bind arguments but "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 991
    const-string/jumbo v4, " were provided."

    .line 990
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 989
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    .end local v8    # "count":I
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "count":I
    goto :goto_0

    .line 993
    :cond_1
    if-nez v8, :cond_2

    .line 994
    return-void

    .line 997
    :cond_2
    iget-wide v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 998
    .local v2, "statementPtr":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_5

    .line 999
    aget-object v7, p2, v9

    .line 1000
    .local v7, "arg":Ljava/lang/Object;
    invoke-static {v7}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1017
    :pswitch_0
    instance-of v0, v7, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 1020
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v4, v9, 0x1

    .line 1021
    check-cast v7, Ljava/lang/Boolean;

    .end local v7    # "arg":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_2
    int-to-long v5, v5

    .line 1020
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SQLiteConnection;->nativeBindLong(JJIJ)V

    .line 998
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1002
    .restart local v7    # "arg":Ljava/lang/Object;
    :pswitch_1
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v4, v9, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeBindNull(JJI)V

    goto :goto_3

    .line 1005
    :pswitch_2
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v4, v9, 0x1

    .line 1006
    check-cast v7, Ljava/lang/Number;

    .end local v7    # "arg":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 1005
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SQLiteConnection;->nativeBindLong(JJIJ)V

    goto :goto_3

    .line 1009
    .restart local v7    # "arg":Ljava/lang/Object;
    :pswitch_3
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v4, v9, 0x1

    .line 1010
    check-cast v7, Ljava/lang/Number;

    .end local v7    # "arg":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    .line 1009
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SQLiteConnection;->nativeBindDouble(JJID)V

    goto :goto_3

    .line 1013
    .restart local v7    # "arg":Ljava/lang/Object;
    :pswitch_4
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v4, v9, 0x1

    move-object v5, v7

    check-cast v5, [B

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SQLiteConnection;->nativeBindBlob(JJI[B)V

    goto :goto_3

    .end local v7    # "arg":Ljava/lang/Object;
    :cond_3
    move v5, v10

    .line 1021
    goto :goto_2

    .line 1023
    .restart local v7    # "arg":Ljava/lang/Object;
    :cond_4
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SQLiteConnection;->nativeBindString(JJILjava/lang/String;)V

    goto :goto_3

    .line 986
    .end local v7    # "arg":Ljava/lang/Object;
    :cond_5
    return-void

    .line 1000
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 312
    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const-string/jumbo v0, "OFF"

    return-object v0

    .line 314
    :cond_0
    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    const-string/jumbo v0, "NORMAL"

    return-object v0

    .line 316
    :cond_1
    const-string/jumbo v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    const-string/jumbo v0, "FULL"

    return-object v0

    .line 319
    :cond_2
    return-object p0
.end method

.method private detachCancellationSignal(Landroid/os/CancellationSignal;)V
    .locals 4
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 962
    if-eqz p1, :cond_2

    .line 963
    sget-boolean v0, Landroid/database/sqlite/SQLiteConnection;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 965
    :cond_1
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    .line 966
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    if-nez v0, :cond_2

    .line 968
    invoke-virtual {p1, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 971
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v2, v3, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeResetCancel(JZ)V

    .line 961
    :cond_2
    return-void
.end method

.method private dispose(Z)V
    .locals 8
    .param p1, "finalized"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 232
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_1

    .line 233
    if-eqz p1, :cond_0

    .line 234
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 236
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 239
    :cond_1
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    .line 240
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2, v4, v4}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 242
    .local v0, "cookie":I
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->evictAll()V

    .line 243
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeClose(J)V

    .line 244
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 231
    .end local v0    # "cookie":I
    :cond_2
    return-void

    .line 245
    .restart local v0    # "cookie":I
    :catchall_0
    move-exception v1

    .line 246
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 245
    throw v1
.end method

.method private finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 4
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .prologue
    .line 942
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    .line 943
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->recyclePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 941
    return-void
.end method

.method private getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;
    .locals 10
    .param p1, "lookaside"    # I
    .param p2, "pageCount"    # J
    .param p4, "pageSize"    # J

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 1174
    .local v1, "label":Ljava/lang/String;
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    if-nez v0, :cond_0

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1177
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1178
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->hitCount()I

    move-result v7

    .line 1179
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->missCount()I

    move-result v8

    .line 1180
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->size()I

    move-result v9

    move-wide v2, p2

    move-wide v4, p4

    move v6, p1

    .line 1177
    invoke-direct/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    return-object v0
.end method

.method private static isCacheable(I)Z
    .locals 2
    .param p0, "statementType"    # I

    .prologue
    const/4 v1, 0x1

    .line 1038
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1039
    if-ne p0, v1, :cond_1

    .line 1040
    :cond_0
    return v1

    .line 1042
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static native nativeBindBlob(JJI[B)V
.end method

.method private static native nativeBindDouble(JJID)V
.end method

.method private static native nativeBindLong(JJIJ)V
.end method

.method private static native nativeBindNull(JJI)V
.end method

.method private static native nativeBindString(JJILjava/lang/String;)V
.end method

.method private static native nativeCancel(J)V
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeExecute(JJ)V
.end method

.method private static native nativeExecuteForBlobFileDescriptor(JJ)I
.end method

.method private static native nativeExecuteForChangedRowCount(JJ)I
.end method

.method private static native nativeExecuteForCursorWindow(JJJIIZ)J
.end method

.method private static native nativeExecuteForLastInsertedRowId(JJ)J
.end method

.method private static native nativeExecuteForLong(JJ)J
.end method

.method private static native nativeExecuteForString(JJ)Ljava/lang/String;
.end method

.method private static native nativeFinalizeStatement(JJ)V
.end method

.method private static native nativeGetColumnCount(JJ)I
.end method

.method private static native nativeGetColumnName(JJI)Ljava/lang/String;
.end method

.method private static native nativeGetDbLookaside(J)I
.end method

.method private static native nativeGetParameterCount(JJ)I
.end method

.method private static native nativeIsReadOnly(JJ)Z
.end method

.method private static native nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZ)J
.end method

.method private static native nativePrepareStatement(JLjava/lang/String;)J
.end method

.method private static native nativeRegisterCustomFunction(JLandroid/database/sqlite/SQLiteCustomFunction;)V
.end method

.method private static native nativeRegisterLocalizedCollators(JLjava/lang/String;)V
.end method

.method private static native nativeResetCancel(JZ)V
.end method

.method private static native nativeResetStatementAndClearBindings(JJ)V
.end method

.method private obtainPreparedStatement(Ljava/lang/String;JIIZ)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "statementPtr"    # J
    .param p4, "numParameters"    # I
    .param p5, "type"    # I
    .param p6, "readOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1190
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1191
    .local v0, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    if-eqz v0, :cond_0

    .line 1192
    iget-object v1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1193
    iput-object v2, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1194
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    .line 1198
    :goto_0
    iput-object p1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    .line 1199
    iput-wide p2, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 1200
    iput p4, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    .line 1201
    iput p5, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mType:I

    .line 1202
    iput-boolean p6, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    .line 1203
    return-object v0

    .line 1196
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .end local v0    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;-><init>(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .restart local v0    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    goto :goto_0
.end method

.method static open(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)Landroid/database/sqlite/SQLiteConnection;
    .locals 3
    .param p0, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "connectionId"    # I
    .param p3, "primaryConnection"    # Z

    .prologue
    .line 193
    new-instance v0, Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnection;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)V

    .line 196
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_0
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteConnection;->open()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    return-object v0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V

    .line 200
    throw v1
.end method

.method private open()V
    .locals 8

    .prologue
    .line 212
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 213
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    .line 214
    sget-boolean v6, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    sget-boolean v7, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_TIME:Z

    .line 212
    invoke-static {v3, v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZ)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    .line 216
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setPageSize()V

    .line 217
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 218
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setWalModeFromConfiguration()V

    .line 219
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalSizeLimit()V

    .line 220
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setAutoCheckpointInterval()V

    .line 221
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 224
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 225
    .local v1, "functionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 226
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCustomFunction;

    .line 227
    .local v0, "function":Landroid/database/sqlite/SQLiteCustomFunction;
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v4, v5, v0}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterCustomFunction(JLandroid/database/sqlite/SQLiteCustomFunction;)V

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "function":Landroid/database/sqlite/SQLiteCustomFunction;
    :cond_0
    return-void
.end method

.method private recyclePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 1
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .prologue
    .line 1207
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    .line 1208
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1209
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1206
    return-void
.end method

.method private releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 6
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .prologue
    .line 919
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    .line 920
    iget-boolean v1, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-eqz v1, :cond_0

    .line 922
    :try_start_0
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeResetStatementAndClearBindings(JJ)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :goto_0
    return-void

    .line 923
    :catch_0
    move-exception v0

    .line 934
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 937
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    :cond_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    goto :goto_0
.end method

.method private setAutoCheckpointInterval()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 262
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-eqz v4, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALAutoCheckpoint()I

    move-result v4

    int-to-long v0, v4

    .line 264
    .local v0, "newValue":J
    const-string/jumbo v4, "PRAGMA wal_autocheckpoint"

    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v2

    .line 265
    .local v2, "value":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PRAGMA wal_autocheckpoint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    goto :goto_0
.end method

.method private setForeignKeyModeFromConfiguration()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 282
    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v4, :cond_0

    .line 283
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    int-to-long v0, v4

    .line 284
    .local v0, "newValue":J
    const-string/jumbo v4, "PRAGMA foreign_keys"

    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v2

    .line 285
    .local v2, "value":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PRAGMA foreign_keys="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 281
    .end local v0    # "newValue":J
    .end local v2    # "value":J
    :cond_0
    return-void

    .line 283
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setJournalMode(Ljava/lang/String;)V
    .locals 6
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 323
    const-string/jumbo v3, "PRAGMA journal_mode"

    invoke-virtual {p0, v3, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 326
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PRAGMA journal_mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    return-void

    .line 332
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 348
    :cond_0
    const-string/jumbo v3, "SQLiteConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not change the database journal mode of \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 349
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    .line 348
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 349
    const-string/jumbo v5, "\' from \'"

    .line 348
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 349
    const-string/jumbo v5, "\' to \'"

    .line 348
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 350
    const-string/jumbo v5, "\' because the database is locked.  This usually means that "

    .line 348
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 351
    const-string/jumbo v5, "there are other open connections to the database which prevents "

    .line 348
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 352
    const-string/jumbo v5, "the database from enabling or disabling write-ahead logging mode.  "

    .line 348
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 353
    const-string/jumbo v5, "Proceeding without changing the journal mode."

    .line 348
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1
    return-void
.end method

.method private setJournalSizeLimit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 272
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-eqz v4, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getJournalSizeLimit()I

    move-result v4

    int-to-long v0, v4

    .line 274
    .local v0, "newValue":J
    const-string/jumbo v4, "PRAGMA journal_size_limit"

    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v2

    .line 275
    .local v2, "value":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PRAGMA journal_size_limit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    goto :goto_0
.end method

.method private setLocaleFromConfiguration()V
    .locals 9

    .prologue
    .line 358
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_0

    .line 359
    return-void

    .line 363
    :cond_0
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "newLocale":Ljava/lang/String;
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v6, v7, v2}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterLocalizedCollators(JLjava/lang/String;)V

    .line 368
    iget-boolean v5, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-eqz v5, :cond_1

    .line 369
    return-void

    .line 374
    :cond_1
    :try_start_0
    const-string/jumbo v5, "CREATE TABLE IF NOT EXISTS android_metadata (locale TEXT)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 377
    const-string/jumbo v5, "SELECT locale FROM android_metadata UNION SELECT NULL ORDER BY locale DESC LIMIT 1"

    .line 378
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 377
    invoke-virtual {p0, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, "oldLocale":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 380
    return-void

    .line 384
    :cond_2
    const-string/jumbo v5, "BEGIN"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    const/4 v4, 0x0

    .line 387
    .local v4, "success":Z
    :try_start_1
    const-string/jumbo v5, "DELETE FROM android_metadata"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 388
    const-string/jumbo v5, "INSERT INTO android_metadata (locale) VALUES(?)"

    .line 389
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x0

    .line 388
    invoke-virtual {p0, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 390
    const-string/jumbo v5, "REINDEX LOCALIZED"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    const/4 v4, 0x1

    .line 397
    if-eqz v4, :cond_3

    :try_start_2
    const-string/jumbo v5, "COMMIT"

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 357
    return-void

    .line 397
    :cond_3
    const-string/jumbo v5, "ROLLBACK"
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v5

    .line 397
    if-eqz v4, :cond_4

    :try_start_4
    const-string/jumbo v6, "COMMIT"

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 396
    throw v5
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 399
    .end local v3    # "oldLocale":Ljava/lang/String;
    .end local v4    # "success":Z
    :catch_1
    move-exception v1

    .line 400
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Landroid/database/sqlite/SQLiteException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to change locale for db \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v7, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 401
    const-string/jumbo v7, "\' to \'"

    .line 400
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 401
    const-string/jumbo v7, "\'."

    .line 400
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 397
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "oldLocale":Ljava/lang/String;
    .restart local v4    # "success":Z
    :cond_4
    :try_start_5
    const-string/jumbo v6, "ROLLBACK"
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method private setPageSize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 252
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-eqz v4, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultPageSize()I

    move-result v4

    int-to-long v0, v4

    .line 254
    .local v0, "newValue":J
    const-string/jumbo v4, "PRAGMA page_size"

    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v2

    .line 255
    .local v2, "value":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PRAGMA page_size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    goto :goto_0
.end method

.method private setSyncMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 304
    const-string/jumbo v1, "PRAGMA synchronous"

    invoke-virtual {p0, v1, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {p1}, Landroid/database/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PRAGMA synchronous="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 303
    :cond_0
    return-void
.end method

.method private setWalModeFromConfiguration()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 294
    const-string/jumbo v0, "WAL"

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALSyncMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setSyncMode(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_2
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultJournalMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultSyncMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setSyncMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 2
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .prologue
    .line 1031
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    if-eqz v0, :cond_1

    .line 1030
    :cond_0
    return-void

    .line 1032
    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v1, "Cannot execute this statement because it might modify the database but the connection is read-only."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sql"    # Ljava/lang/String;

    .prologue
    .line 1217
    const-string/jumbo v0, "[\\s]*\\n+[\\s]*"

    const-string/jumbo v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method close()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V

    .line 207
    return-void
.end method

.method collectDbStats(Ljava/util/ArrayList;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1119
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v8, v9}, Landroid/database/sqlite/SQLiteConnection;->nativeGetDbLookaside(J)I

    move-result v3

    .line 1120
    .local v3, "lookaside":I
    const-wide/16 v4, 0x0

    .line 1121
    .local v4, "pageCount":J
    const-wide/16 v6, 0x0

    .line 1123
    .local v6, "pageSize":J
    :try_start_0
    const-string/jumbo v2, "PRAGMA page_count;"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 1124
    const-string/jumbo v2, "PRAGMA page_size;"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v6

    :goto_0
    move-object/from16 v2, p0

    .line 1128
    invoke-direct/range {v2 .. v7}, Landroid/database/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    new-instance v11, Landroid/database/CursorWindow;

    const-string/jumbo v2, "collectDbStats"

    invoke-direct {v11, v2}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v11, "window":Landroid/database/CursorWindow;
    :try_start_1
    const-string/jumbo v9, "PRAGMA database_list;"

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I

    .line 1136
    const/16 v23, 0x1

    .local v23, "i":I
    :goto_1
    invoke-virtual {v11}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_1

    .line 1137
    const/4 v2, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0, v2}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v24

    .line 1138
    .local v24, "name":Ljava/lang/String;
    const/4 v2, 0x2

    move/from16 v0, v23

    invoke-virtual {v11, v0, v2}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v25

    .line 1139
    .local v25, "path":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 1140
    const-wide/16 v6, 0x0

    .line 1142
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PRAGMA "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ".page_count;"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 1143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PRAGMA "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ".page_size;"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    .line 1147
    :goto_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  (attached) "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1148
    .local v13, "label":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ": "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1151
    :cond_0
    new-instance v12, Landroid/database/sqlite/SQLiteDebug$DbStats;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide v14, v4

    move-wide/from16 v16, v6

    invoke-direct/range {v12 .. v21}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1136
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 1156
    .end local v13    # "label":Ljava/lang/String;
    .end local v24    # "name":Ljava/lang/String;
    .end local v25    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {v11}, Landroid/database/CursorWindow;->close()V

    .line 1117
    .end local v23    # "i":I
    :goto_3
    return-void

    .line 1153
    :catch_0
    move-exception v22

    .line 1156
    .local v22, "ex":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v11}, Landroid/database/CursorWindow;->close()V

    goto :goto_3

    .line 1155
    .end local v22    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    .line 1156
    invoke-virtual {v11}, Landroid/database/CursorWindow;->close()V

    .line 1155
    throw v2

    .line 1144
    .restart local v23    # "i":I
    .restart local v24    # "name":Ljava/lang/String;
    .restart local v25    # "path":Ljava/lang/String;
    :catch_1
    move-exception v22

    .restart local v22    # "ex":Landroid/database/sqlite/SQLiteException;
    goto :goto_2

    .line 1125
    .end local v11    # "window":Landroid/database/CursorWindow;
    .end local v22    # "ex":Landroid/database/sqlite/SQLiteException;
    .end local v23    # "i":I
    .end local v24    # "name":Ljava/lang/String;
    .end local v25    # "path":Ljava/lang/String;
    :catch_2
    move-exception v22

    .restart local v22    # "ex":Landroid/database/sqlite/SQLiteException;
    goto/16 :goto_0
.end method

.method collectDbStatsUnsafe(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    const-wide/16 v2, 0x0

    .line 1167
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    return-void
.end method

.method describeCurrentOperationUnsafe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->describeCurrentOperation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Landroid/util/Printer;Z)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .prologue
    .line 1062
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    .line 1061
    return-void
.end method

.method dumpUnsafe(Landroid/util/Printer;Z)V
    .locals 4
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .prologue
    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Connection #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1081
    if-eqz p2, :cond_0

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  connectionPtr: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1084
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  isPrimaryConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  onlyAllowReadOnlyOperations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->dump(Landroid/util/Printer;Z)V

    .line 1089
    if-eqz p2, :cond_1

    .line 1090
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->dump(Landroid/util/Printer;)V

    .line 1079
    :cond_1
    return-void
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 549
    if-nez p1, :cond_0

    .line 550
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sql must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 553
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v4, "execute"

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 555
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    .line 557
    .local v2, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 558
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 559
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 560
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 562
    :try_start_2
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v6, v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecute(JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 564
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 567
    :try_start_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 573
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 548
    return-void

    .line 563
    :catchall_0
    move-exception v3

    .line 564
    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 563
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 566
    :catchall_1
    move-exception v3

    .line 567
    :try_start_6
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 566
    throw v3
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 569
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    .line 570
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 571
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 572
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v3

    .line 573
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 572
    throw v3
.end method

.method public executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    const/4 v4, 0x0

    .line 680
    if-nez p1, :cond_0

    .line 681
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "sql must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 684
    :cond_0
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v6, "executeForBlobFileDescriptor"

    invoke-virtual {v5, v6, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 687
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v3

    .line 689
    .local v3, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 690
    invoke-direct {p0, v3, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 691
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 692
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 695
    :try_start_2
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v8, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 694
    invoke-static {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForBlobFileDescriptor(JJ)I

    move-result v2

    .line 696
    .local v2, "fd":I
    if-ltz v2, :cond_1

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 698
    :cond_1
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 701
    :try_start_4
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 707
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 696
    return-object v4

    .line 697
    .end local v2    # "fd":I
    :catchall_0
    move-exception v4

    .line 698
    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 697
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 700
    :catchall_1
    move-exception v4

    .line 701
    :try_start_6
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 700
    throw v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 703
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    .line 704
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 705
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 706
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v4

    .line 707
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 706
    throw v4
.end method

.method public executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)I
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 726
    if-nez p1, :cond_0

    .line 727
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "sql must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 730
    :cond_0
    const/4 v0, 0x0

    .line 731
    .local v0, "changedRows":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v5, "executeForChangedRowCount"

    invoke-virtual {v4, v5, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    .line 734
    .local v1, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v3

    .line 736
    .local v3, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 737
    invoke-direct {p0, v3, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 738
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 739
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 742
    :try_start_2
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 741
    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForChangedRowCount(JJ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 745
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 748
    :try_start_4
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 754
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 755
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "changedRows="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 743
    :cond_1
    return v0

    .line 744
    :catchall_0
    move-exception v4

    .line 745
    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 744
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 747
    :catchall_1
    move-exception v4

    .line 748
    :try_start_6
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 747
    throw v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 750
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v2

    .line 751
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 752
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 753
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v4

    .line 754
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 755
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "changedRows="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 753
    :cond_2
    throw v4
.end method

.method public executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I
    .locals 21
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "window"    # Landroid/database/CursorWindow;
    .param p4, "startPos"    # I
    .param p5, "requiredPos"    # I
    .param p6, "countAllRows"    # Z
    .param p7, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 830
    if-nez p1, :cond_0

    .line 831
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "sql must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 833
    :cond_0
    if-nez p3, :cond_1

    .line 834
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "window must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 837
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->acquireReference()V

    .line 839
    const/4 v13, -0x1

    .line 840
    .local v13, "actualPos":I
    const/4 v15, -0x1

    .line 841
    .local v15, "countedRows":I
    const/16 v17, -0x1

    .line 842
    .local v17, "filledRows":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v5, "executeForCursorWindow"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result v14

    .line 845
    .local v14, "cookie":I
    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v20

    .line 847
    .local v20, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 848
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 849
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 850
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 853
    :try_start_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    move-object/from16 v0, v20

    iget-wide v6, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Landroid/database/CursorWindow;->mWindowPtr:J

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    .line 852
    invoke-static/range {v4 .. v12}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForCursorWindow(JJJIIZ)J

    move-result-wide v18

    .line 855
    .local v18, "result":J
    const/16 v4, 0x20

    shr-long v4, v18, v4

    long-to-int v13, v4

    .line 856
    move-wide/from16 v0, v18

    long-to-int v15, v0

    .line 857
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v17

    .line 858
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/database/CursorWindow;->setStartPosition(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 861
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 864
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 870
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v14}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "window=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 872
    const-string/jumbo v6, "\', startPos="

    .line 871
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 873
    const-string/jumbo v6, ", actualPos="

    .line 871
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 874
    const-string/jumbo v6, ", filledRows="

    .line 871
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 875
    const-string/jumbo v6, ", countedRows="

    .line 871
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v14, v5}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 879
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->releaseReference()V

    .line 859
    return v15

    .line 860
    .end local v18    # "result":J
    :catchall_0
    move-exception v4

    .line 861
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 860
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 863
    :catchall_1
    move-exception v4

    .line 864
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 863
    throw v4
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 866
    .end local v20    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v16

    .line 867
    .local v16, "ex":Ljava/lang/RuntimeException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    move-object/from16 v0, v16

    invoke-virtual {v4, v14, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 868
    throw v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 869
    .end local v16    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v4

    .line 870
    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v14}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 871
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "window=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 872
    const-string/jumbo v7, "\', startPos="

    .line 871
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 873
    const-string/jumbo v7, ", actualPos="

    .line 871
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 874
    const-string/jumbo v7, ", filledRows="

    .line 871
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 875
    const-string/jumbo v7, ", countedRows="

    .line 871
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v14, v6}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 869
    :cond_3
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 878
    .end local v14    # "cookie":I
    :catchall_3
    move-exception v4

    .line 879
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->releaseReference()V

    .line 878
    throw v4
.end method

.method public executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 775
    if-nez p1, :cond_0

    .line 776
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sql must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 779
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v4, "executeForLastInsertedRowId"

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 782
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    .line 784
    .local v2, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 785
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 786
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 787
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 790
    :try_start_2
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v6, v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 789
    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForLastInsertedRowId(JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    .line 792
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 795
    :try_start_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 801
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 789
    return-wide v4

    .line 791
    :catchall_0
    move-exception v3

    .line 792
    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 791
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 794
    :catchall_1
    move-exception v3

    .line 795
    :try_start_6
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 794
    throw v3
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 797
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    .line 798
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 799
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 800
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v3

    .line 801
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 800
    throw v3
.end method

.method public executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 592
    if-nez p1, :cond_0

    .line 593
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sql must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 596
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v4, "executeForLong"

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 598
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    .line 600
    .local v2, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 601
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 602
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 603
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 605
    :try_start_2
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v6, v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForLong(JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    .line 607
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 610
    :try_start_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 616
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 605
    return-wide v4

    .line 606
    :catchall_0
    move-exception v3

    .line 607
    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 606
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 609
    :catchall_1
    move-exception v3

    .line 610
    :try_start_6
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 609
    throw v3
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 612
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    .line 613
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 614
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 615
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v3

    .line 616
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 615
    throw v3
.end method

.method public executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 635
    if-nez p1, :cond_0

    .line 636
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sql must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 639
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v4, "executeForString"

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 641
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    .line 643
    .local v2, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 644
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 645
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 646
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 648
    :try_start_2
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v6, v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForString(JJ)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 650
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 653
    :try_start_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 659
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 648
    return-object v3

    .line 649
    :catchall_0
    move-exception v3

    .line 650
    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 649
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 652
    :catchall_1
    move-exception v3

    .line 653
    :try_start_6
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 652
    throw v3
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 655
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    .line 656
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 657
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 658
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v3

    .line 659
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 658
    throw v3
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->onConnectionLeaked()V

    .line 183
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 177
    return-void

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 184
    throw v0
.end method

.method public getConnectionId()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    return v0
.end method

.method isPreparedStatementInCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 457
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimaryConnection()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    return v0
.end method

.method public onCancel()V
    .locals 2

    .prologue
    .line 983
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeCancel(J)V

    .line 982
    return-void
.end method

.method public prepare(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatementInfo;)V
    .locals 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "outStatementInfo"    # Landroid/database/sqlite/SQLiteStatementInfo;

    .prologue
    const/4 v7, 0x0

    .line 501
    if-nez p1, :cond_0

    .line 502
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "sql must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 505
    :cond_0
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v6, "prepare"

    invoke-virtual {v5, v6, p1, v7}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    .line 507
    .local v1, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 509
    .local v4, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    if-eqz p2, :cond_1

    .line 510
    :try_start_1
    iget v5, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    iput v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->numParameters:I

    .line 511
    iget-boolean v5, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    iput-boolean v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->readOnly:Z

    .line 514
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v8, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 513
    invoke-static {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteConnection;->nativeGetColumnCount(JJ)I

    move-result v0

    .line 515
    .local v0, "columnCount":I
    if-nez v0, :cond_2

    .line 516
    sget-object v5, Landroid/database/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    .end local v0    # "columnCount":I
    :cond_1
    :try_start_2
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 532
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 500
    return-void

    .line 518
    .restart local v0    # "columnCount":I
    :cond_2
    :try_start_3
    new-array v5, v0, [Ljava/lang/String;

    iput-object v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    .line 519
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 520
    iget-object v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    .line 521
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v8, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 520
    invoke-static {v6, v7, v8, v9, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeGetColumnName(JJI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 519
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 525
    .end local v0    # "columnCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    .line 526
    :try_start_4
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 525
    throw v5
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 528
    .end local v4    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v2

    .line 529
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v1, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 530
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 531
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v5

    .line 532
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v6, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 531
    throw v5
.end method

.method reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 8
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .prologue
    const/4 v6, 0x0

    .line 407
    iput-boolean v6, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 410
    iget-object v6, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 411
    .local v2, "functionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 412
    iget-object v6, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteCustomFunction;

    .line 413
    .local v1, "function":Landroid/database/sqlite/SQLiteCustomFunction;
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 414
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v6, v7, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterCustomFunction(JLandroid/database/sqlite/SQLiteCustomFunction;)V

    .line 411
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 419
    .end local v1    # "function":Landroid/database/sqlite/SQLiteCustomFunction;
    :cond_1
    iget-boolean v6, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 420
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v7, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 419
    if-eq v6, v7, :cond_5

    const/4 v0, 0x1

    .line 421
    .local v0, "foreignKeyModeChanged":Z
    :goto_1
    iget v6, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v7, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    xor-int/2addr v6, v7

    .line 422
    const/high16 v7, 0x20000000

    .line 421
    and-int/2addr v6, v7

    if-eqz v6, :cond_6

    const/4 v5, 0x1

    .line 423
    .local v5, "walModeChanged":Z
    :goto_2
    iget-object v6, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v7, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v4, 0x0

    .line 426
    .local v4, "localeChanged":Z
    :goto_3
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v6, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 429
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget v7, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->resize(I)V

    .line 432
    if-eqz v0, :cond_2

    .line 433
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 437
    :cond_2
    if-eqz v5, :cond_3

    .line 438
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setWalModeFromConfiguration()V

    .line 442
    :cond_3
    if-eqz v4, :cond_4

    .line 443
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 406
    :cond_4
    return-void

    .line 419
    .end local v0    # "foreignKeyModeChanged":Z
    .end local v4    # "localeChanged":Z
    .end local v5    # "walModeChanged":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "foreignKeyModeChanged":Z
    goto :goto_1

    .line 421
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "walModeChanged":Z
    goto :goto_2

    .line 423
    :cond_7
    const/4 v4, 0x1

    .restart local v4    # "localeChanged":Z
    goto :goto_3
.end method

.method setOnlyAllowReadOnlyOperations(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    .prologue
    .line 451
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 450
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SQLiteConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
