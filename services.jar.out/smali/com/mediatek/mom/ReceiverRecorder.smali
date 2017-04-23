.class Lcom/mediatek/mom/ReceiverRecorder;
.super Ljava/lang/Object;
.source "ReceiverRecorder.java"


# instance fields
.field private mAppId:I

.field private mIdentity:I

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mAppId:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mIdentity:I

    .line 54
    invoke-virtual {p1}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getAppId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mAppId:I

    .line 56
    invoke-virtual {p1}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->getIdentity()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mIdentity:I

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/mom/ReceiverRecorder;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mAppId:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mIdentity:I

    .line 60
    invoke-virtual {p1}, Lcom/mediatek/mom/ReceiverRecorder;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/mediatek/mom/ReceiverRecorder;->getAppId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mAppId:I

    .line 62
    invoke-virtual {p1}, Lcom/mediatek/mom/ReceiverRecorder;->getIdentity()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mIdentity:I

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mAppId:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mIdentity:I

    .line 48
    iput-object p1, p0, Lcom/mediatek/mom/ReceiverRecorder;->mName:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/mediatek/mom/ReceiverRecorder;->mAppId:I

    .line 50
    iput p3, p0, Lcom/mediatek/mom/ReceiverRecorder;->mIdentity:I

    .line 51
    return-void
.end method


# virtual methods
.method public genPostfix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/ReceiverRecorder;->mIdentity:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mAppId:I

    return v0
.end method

.method public getIdentity()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mIdentity:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecorder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ReceiverRecorder {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mom/ReceiverRecorder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/ReceiverRecorder;->mAppId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/ReceiverRecorder;->mIdentity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
