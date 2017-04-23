.class public Lcom/android/internal/telephony/PhoneSubInfo;
.super Ljava/lang/Object;
.source "PhoneSubInfo.java"


# static fields
.field private static final CALL_PRIVILEGED:Ljava/lang/String; = "android.permission.CALL_PRIVILEGED"

.field private static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "PhoneSubInfo"

.field private static final MODIFY_PHONE_STATE:Ljava/lang/String; = "android.permission.MODIFY_PHONE_STATE"

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PRIVILEGED_PHONE_STATE"

.field private static final VDBG:Z


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 70
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mAppOps:Landroid/app/AppOpsManager;

    .line 68
    return-void
.end method

.method private checkReadPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 584
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mAppOps:Landroid/app/AppOpsManager;

    .line 585
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 584
    const/16 v5, 0xf

    invoke-virtual {v3, v5, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 586
    return v1

    .line 589
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 590
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_SMS"

    invoke-virtual {v3, v4, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mAppOps:Landroid/app/AppOpsManager;

    .line 594
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 593
    const/16 v5, 0xe

    invoke-virtual {v3, v5, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 564
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    .line 565
    const-string/jumbo v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 564
    invoke-virtual {v3, v4, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    return v1

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/16 v5, 0x33

    invoke-virtual {v3, v5, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 4

    .prologue
    .line 428
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 429
    .local v2, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v2, :cond_0

    .line 430
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 431
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 433
    :goto_1
    return-object v0

    .line 430
    :cond_0
    const/4 v1, 0x0

    .local v1, "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    goto :goto_0

    .line 431
    .end local v1    # "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    const/4 v0, 0x0

    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 541
    const-string/jumbo v0, "PhoneSubInfo"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 545
    const-string/jumbo v0, "PhoneSubInfo"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 544
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump PhoneSubInfo from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 552
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 553
    const-string/jumbo v1, ", uid="

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 553
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    return-void

    .line 557
    :cond_0
    const-string/jumbo v0, "Phone Subscriber Info:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  Phone Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  Device ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 80
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    const-string/jumbo v1, "PhoneSubInfo finalized"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfo;->log(Ljava/lang/String;)V

    .line 78
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "Error while finalizing:"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CALL_PRIVILEGED"

    .line 220
    const-string/jumbo v3, "Requires CALL_PRIVILEGED"

    .line 219
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "number":Ljava/lang/String;
    return-object v0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string/jumbo v0, "getDeviceId"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_0
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const-string/jumbo v0, "Try to get IMEI"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->log(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "sub-permission.READ_PHONE_IMEI"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    const-string/jumbo v0, "MoMS permission READ_PHONE_IMEI denied"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->log(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, ""

    return-object v0

    .line 102
    :cond_1
    const-string/jumbo v0, "Get IMEI permission granted"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->log(Ljava/lang/String;)V

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 133
    const-string/jumbo v0, "getDeviceSvn"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 154
    const-string/jumbo v0, "getGroupIdLevel1"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string/jumbo v0, "getIccSerialNumber"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 341
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 342
    const-string/jumbo v5, "Requires READ_PRIVILEGED_PHONE_STATE"

    .line 341
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 345
    .local v2, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v2, :cond_0

    .line 346
    const-string/jumbo v3, "PhoneSubInfo"

    const-string/jumbo v4, "getIccSimChallengeResponse() UiccCard is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-object v6

    .line 350
    :cond_0
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 351
    .local v1, "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v1, :cond_1

    .line 352
    const-string/jumbo v3, "PhoneSubInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getIccSimChallengeResponse() no app with specified type -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-object v6

    .line 356
    :cond_1
    const-string/jumbo v3, "PhoneSubInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getIccSimChallengeResponse() found app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 357
    const-string/jumbo v5, "specified type -- "

    .line 356
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAuthContext()I

    move-result v0

    .line 362
    .local v0, "authContext":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-ge v3, v4, :cond_2

    .line 364
    const-string/jumbo v3, "PhoneSubInfo"

    const-string/jumbo v4, "data is too small to use EAP_AKA, using EAP_SIM instead"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/16 v0, 0x80

    .line 368
    :cond_2
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 369
    const-string/jumbo v3, "PhoneSubInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getIccSimChallengeResponse() authContext undefined for app type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-object v6

    .line 374
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual {v3, v0, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getImei(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string/jumbo v0, "getImei"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 319
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 320
    const-string/jumbo v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    .line 319
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    .line 322
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 325
    :cond_0
    return-object v4
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 256
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 257
    const-string/jumbo v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    .line 256
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    .line 259
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimDomain()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 262
    :cond_0
    return-object v4
.end method

.method public getIsimGbabp()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 383
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 384
    const-string/jumbo v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    .line 383
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    .line 386
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    .line 387
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimGbabp()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 389
    :cond_0
    return-object v4
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 241
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 242
    const-string/jumbo v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    .line 241
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    .line 244
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpi()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 247
    :cond_0
    return-object v4
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 272
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 273
    const-string/jumbo v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    .line 272
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    .line 275
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpu()[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 278
    :cond_0
    return-object v4
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 287
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 288
    const-string/jumbo v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    .line 287
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    .line 290
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    .line 291
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimIst()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 293
    :cond_0
    return-object v4
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 303
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 304
    const-string/jumbo v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    .line 303
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    .line 306
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 309
    :cond_0
    return-object v4
.end method

.method public getIsimPsismsc()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 478
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 479
    const-string/jumbo v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    .line 478
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    .line 481
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    .line 482
    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getEfPsismsc()[B

    move-result-object v1

    return-object v1

    .line 484
    :cond_0
    return-object v4
.end method

.method public getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string/jumbo v0, "getLine1AlphaTag"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string/jumbo v0, "getLine1Number"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x0

    return-object v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMncLength()I
    .locals 4

    .prologue
    .line 527
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v3, "Requires READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 531
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMncLength()I

    move-result v1

    return v1

    .line 534
    :cond_0
    const-string/jumbo v1, "getMncLength fail due to IccRecords is null."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfo;->log(Ljava/lang/String;)V

    .line 535
    const/4 v1, 0x0

    return v1
.end method

.method public getMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string/jumbo v0, "getMsisdn"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    return-object v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNai(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string/jumbo v0, "getNai"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getNai()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string/jumbo v0, "getSubscriberId"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGbabp()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 441
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v3, "Requires READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 445
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEfGbabp()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 448
    :cond_0
    const-string/jumbo v1, "getUsimGbabp fail due to IccRecords is null."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfo;->log(Ljava/lang/String;)V

    .line 449
    return-object v4
.end method

.method public getUsimPsismsc()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 493
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v3, "Requires READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 497
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEfPsismsc()[B

    move-result-object v1

    return-object v1

    .line 500
    :cond_0
    const-string/jumbo v1, "getUsimPsismsc fail due to IccRecords is null."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfo;->log(Ljava/lang/String;)V

    .line 501
    return-object v4
.end method

.method public getUsimService(I)Z
    .locals 4
    .param p1, "service"    # I

    .prologue
    .line 417
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v3, "Requires READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v0

    .line 419
    .local v0, "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(I)Z

    move-result v1

    return v1

    .line 422
    :cond_0
    const-string/jumbo v1, "getUsimService fail due to UST is null."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfo;->log(Ljava/lang/String;)V

    .line 423
    const/4 v1, 0x0

    return v1
.end method

.method public getUsimSmsp()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 510
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v3, "Requires READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 514
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEfSmsp()[B

    move-result-object v1

    return-object v1

    .line 517
    :cond_0
    const-string/jumbo v1, "getUsimSmsp fail due to IccRecords is null."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfo;->log(Ljava/lang/String;)V

    .line 518
    return-object v4
.end method

.method public getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string/jumbo v0, "getVoiceMailAlphaTag"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    return-object v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string/jumbo v1, "getVoiceMailNumber"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/PhoneSubInfo;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    const/4 v1, 0x0

    return-object v1

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "number":Ljava/lang/String;
    return-object v0
.end method

.method public setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 403
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 404
    const-string/jumbo v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    .line 403
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    .line 406
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v0, :cond_0

    .line 407
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IsimRecords;->setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V

    .line 401
    :cond_0
    return-void
.end method

.method public setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "Requires READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 466
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccRecords;->setEfGbabp(Ljava/lang/String;Landroid/os/Message;)V

    .line 461
    :goto_0
    return-void

    .line 469
    :cond_0
    const-string/jumbo v1, "setUsimGbabp fail due to IccRecords is null."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSubInfo;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
