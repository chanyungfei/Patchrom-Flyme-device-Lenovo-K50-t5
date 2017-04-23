.class Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionParams"
.end annotation


# instance fields
.field mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

.field mInitialMaxRetry:I

.field mOnCompletedMsg:Landroid/os/Message;

.field mProfileId:I

.field mRetryWhenSSChange:Z

.field mRilRat:I

.field mTag:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/ApnContext;IIIZLandroid/os/Message;)V
    .locals 0
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "initialMaxRetry"    # I
    .param p3, "profileId"    # I
    .param p4, "rilRadioTechnology"    # I
    .param p5, "retryWhenSSChange"    # Z
    .param p6, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->initParams(Lcom/android/internal/telephony/dataconnection/ApnContext;IIIZLandroid/os/Message;)V

    .line 173
    return-void
.end method

.method private initParams(Lcom/android/internal/telephony/dataconnection/ApnContext;IIIZLandroid/os/Message;)V
    .locals 0
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "initialMaxRetry"    # I
    .param p3, "profileId"    # I
    .param p4, "rilRadioTechnology"    # I
    .param p5, "retryWhenSSChange"    # Z
    .param p6, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 180
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mInitialMaxRetry:I

    .line 181
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mProfileId:I

    .line 182
    iput p4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 183
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    .line 184
    iput-boolean p5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRetryWhenSSChange:Z

    .line 178
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mApnContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    const-string/jumbo v1, " mInitialMaxRetry="

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mInitialMaxRetry:I

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    const-string/jumbo v1, " mProfileId="

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mProfileId:I

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    const-string/jumbo v1, " mRat="

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    const-string/jumbo v1, " retryWhenSSChange: "

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRetryWhenSSChange:Z

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    const-string/jumbo v1, " mOnCompletedMsg="

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap7(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    const-string/jumbo v1, "}"

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
