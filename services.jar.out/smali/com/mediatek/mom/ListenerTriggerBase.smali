.class public abstract Lcom/mediatek/mom/ListenerTriggerBase;
.super Ljava/lang/Object;
.source "ListenerTriggerBase.java"


# static fields
.field private static final ODD_PRIME_NUMBER:I = 0xd


# instance fields
.field private mCallback:Landroid/os/IBinder;

.field private mCallingPid:I

.field private mCompleted:Z

.field private mControllerID:I

.field private mFunc:Landroid/os/IBinder;

.field private mIsTimeout:Z

.field private mParams:Landroid/os/Bundle;

.field private mReturnValue:I


# direct methods
.method public constructor <init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mControllerID:I

    .line 45
    iput v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCallingPid:I

    .line 46
    iput-object v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mFunc:Landroid/os/IBinder;

    .line 47
    iput-object v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mParams:Landroid/os/Bundle;

    .line 48
    iput v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mReturnValue:I

    .line 49
    iput-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCompleted:Z

    .line 50
    iput-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mIsTimeout:Z

    .line 51
    iput-object v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCallback:Landroid/os/IBinder;

    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/ListenerTriggerBase;->initListenerTriggerBase(IILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 56
    iput-object v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCallback:Landroid/os/IBinder;

    .line 57
    return-void
.end method

.method public constructor <init>(IILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mControllerID:I

    .line 45
    iput v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCallingPid:I

    .line 46
    iput-object v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mFunc:Landroid/os/IBinder;

    .line 47
    iput-object v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mParams:Landroid/os/Bundle;

    .line 48
    iput v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mReturnValue:I

    .line 49
    iput-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCompleted:Z

    .line 50
    iput-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mIsTimeout:Z

    .line 51
    iput-object v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCallback:Landroid/os/IBinder;

    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/ListenerTriggerBase;->initListenerTriggerBase(IILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 61
    iput-object p6, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCallback:Landroid/os/IBinder;

    .line 62
    return-void
.end method

.method private initListenerTriggerBase(IILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    iput p1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mControllerID:I

    .line 66
    iput p2, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCallingPid:I

    .line 67
    iput-object p3, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mFunc:Landroid/os/IBinder;

    .line 68
    iput-object p4, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mParams:Landroid/os/Bundle;

    .line 69
    iput p5, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mReturnValue:I

    .line 70
    iput-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCompleted:Z

    .line 71
    iput-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mIsTimeout:Z

    .line 72
    return-void
.end method


# virtual methods
.method public completed()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCompleted:Z

    .line 101
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 167
    if-eq p0, p1, :cond_0

    .line 171
    instance-of v2, p1, Lcom/mediatek/mom/ListenerTriggerBase;

    if-eqz v2, :cond_1

    .line 175
    check-cast p1, Lcom/mediatek/mom/ListenerTriggerBase;

    .line 177
    iget v2, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mControllerID:I

    invoke-virtual {p1}, Lcom/mediatek/mom/ListenerTriggerBase;->getControllerID()I

    move-result v3

    if-eq v2, v3, :cond_2

    :goto_0
    return v0

    .line 168
    :cond_0
    return v1

    .line 172
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 177
    goto :goto_0
.end method

.method public getCallback()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCallback:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCallingPid()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCallingPid:I

    return v0
.end method

.method public getControllerID()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mControllerID:I

    return v0
.end method

.method public getFunc()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mFunc:Landroid/os/IBinder;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mReturnValue:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0xd

    .line 146
    iget v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mControllerID:I

    add-int/lit16 v0, v0, 0x12b

    .line 147
    mul-int/lit8 v0, v0, 0xd

    iget v3, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCallingPid:I

    add-int/2addr v0, v3

    .line 148
    iget-object v3, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mFunc:Landroid/os/IBinder;

    if-nez v3, :cond_0

    .line 151
    :goto_0
    iget-object v3, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mParams:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 154
    :goto_1
    mul-int/lit8 v0, v0, 0xd

    iget v3, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mReturnValue:I

    add-int/2addr v0, v3

    .line 155
    mul-int/lit8 v3, v0, 0xd

    iget-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCompleted:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 156
    mul-int/lit8 v0, v0, 0xd

    iget-boolean v3, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mIsTimeout:Z

    if-nez v3, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 157
    iget-object v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCallback:Landroid/os/IBinder;

    if-nez v1, :cond_4

    .line 161
    :goto_4
    return v0

    .line 149
    :cond_0
    mul-int/lit8 v0, v0, 0xd

    iget-object v3, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mFunc:Landroid/os/IBinder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 152
    :cond_1
    mul-int/lit8 v0, v0, 0xd

    iget-object v3, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mParams:Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    .line 155
    goto :goto_2

    :cond_3
    move v1, v2

    .line 156
    goto :goto_3

    .line 158
    :cond_4
    mul-int/lit8 v0, v0, 0xd

    iget-object v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mParams:Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCompleted:Z

    return v0
.end method

.method public isTimeouted()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mIsTimeout:Z

    return v0
.end method

.method public abstract onTriggerListenerDone()V
.end method

.method public abstract onTriggerListenerTimeout()V
.end method

.method public setResult(I)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mReturnValue:I

    .line 117
    return-void
.end method

.method public timeouted()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mIsTimeout:Z

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ListenerTriggerBase {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mControllerID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCallingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mReturnValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mReturnValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/mom/ListenerTriggerBase;->mIsTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract triggerListenerFunc()I
.end method
