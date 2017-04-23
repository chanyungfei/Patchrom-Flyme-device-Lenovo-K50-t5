.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfRecord"
.end annotation


# instance fields
.field public mAnrIndex:I

.field public mEfTag:I

.field public mPbrRecord:I

.field public mSfi:B

.field public mTag:I

.field public mType:I

.field public mType2Record:I

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .prologue
    const/4 v0, -0x1

    .line 3440
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3447
    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mSfi:B

    .line 3448
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    .line 3440
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTAG:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mPbrRecord:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mEfTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3453
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    .line 3452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3453
    const-string/jumbo v1, ",mType2Record:"

    .line 3452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3453
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    .line 3452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3453
    const-string/jumbo v1, ",mSFI:"

    .line 3452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3453
    iget-byte v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mSfi:B

    .line 3452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3453
    const-string/jumbo v1, ",mAnrIndex:"

    .line 3452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3453
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    .line 3452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
