.class public Lcom/android/internal/telephony/cat/CatResponseMessage;
.super Ljava/lang/Object;
.source "CatResponseMessage.java"


# instance fields
.field mAddedInfo:[B

.field mAdditionalInfo:[B

.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field mDestinationId:I

.field mEvent:I

.field mEventValue:I

.field mIncludeAdditionalInfo:Z

.field mOneShot:Z

.field mResCode:Lcom/android/internal/telephony/cat/ResultCode;

.field mSourceId:I

.field mUsersConfirm:Z

.field mUsersInput:Ljava/lang/String;

.field mUsersMenuSelection:I

.field mUsersYesNoSelection:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 22
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    .line 23
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 27
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    .line 28
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mSourceId:I

    .line 29
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mDestinationId:I

    .line 30
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    .line 31
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mOneShot:Z

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    .line 33
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 22
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    .line 23
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 27
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    .line 28
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mSourceId:I

    .line 29
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mDestinationId:I

    .line 30
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    .line 31
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mOneShot:Z

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    .line 33
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    .line 67
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 22
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    .line 23
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 27
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    .line 28
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mSourceId:I

    .line 29
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mDestinationId:I

    .line 30
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    .line 31
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mOneShot:Z

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    .line 33
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    .line 36
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 35
    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-object v0
.end method

.method public setAdditionalInfo([B)V
    .locals 1
    .param p1, "additionalInfo"    # [B

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    .line 100
    return-void
.end method

.method public setConfirmation(Z)V
    .locals 0
    .param p1, "confirm"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 55
    return-void
.end method

.method public setDestinationId(I)V
    .locals 0
    .param p1, "dId"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mDestinationId:I

    .line 91
    return-void
.end method

.method public setEventDownload(I[B)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "addedInfo"    # [B

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    .line 80
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    .line 78
    return-void
.end method

.method public setEventId(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    .line 83
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .param p1, "selection"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    .line 43
    return-void
.end method

.method public setOneShot(Z)V
    .locals 0
    .param p1, "shot"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mOneShot:Z

    .line 111
    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 0
    .param p1, "resCode"    # Lcom/android/internal/telephony/cat/ResultCode;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 39
    return-void
.end method

.method public setSourceId(I)V
    .locals 0
    .param p1, "sId"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mSourceId:I

    .line 74
    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .param p1, "yesNo"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 51
    return-void
.end method
