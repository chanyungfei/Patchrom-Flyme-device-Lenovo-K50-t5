.class public Lcom/android/internal/telephony/SSRequestDecisionMaker;
.super Ljava/lang/Object;
.source "SSRequestDecisionMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;
    }
.end annotation


# static fields
.field private static final CLEAR_DELAY_TIMEOUT:I = 0x2710

.field private static final EVENT_SS_CLEAR_TEMP_VOLTE_USER_FLAG:I = 0x3

.field private static final EVENT_SS_RESPONSE:I = 0x2

.field private static final EVENT_SS_SEND:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "SSDecisonMaker"

.field private static final PROPERTY_CS_CURRENT_PHONE_ID:Ljava/lang/String; = "gsm.radio.ss.phoneid"

.field private static final SS_REQUEST_GET_CALL_BARRING:I = 0x3

.field private static final SS_REQUEST_GET_CALL_FORWARD:I = 0x1

.field private static final SS_REQUEST_GET_CALL_FORWARD_TIME_SLOT:I = 0xf

.field private static final SS_REQUEST_GET_CALL_WAITING:I = 0x5

.field private static final SS_REQUEST_GET_CLIP:I = 0x9

.field private static final SS_REQUEST_GET_CLIR:I = 0x7

.field private static final SS_REQUEST_GET_COLP:I = 0xd

.field private static final SS_REQUEST_GET_COLR:I = 0xb

.field private static final SS_REQUEST_SET_CALL_BARRING:I = 0x4

.field private static final SS_REQUEST_SET_CALL_FORWARD:I = 0x2

.field private static final SS_REQUEST_SET_CALL_FORWARD_TIME_SLOT:I = 0x10

.field private static final SS_REQUEST_SET_CALL_WAITING:I = 0x6

.field private static final SS_REQUEST_SET_CLIP:I = 0xa

.field private static final SS_REQUEST_SET_CLIR:I = 0x8

.field private static final SS_REQUEST_SET_COLP:I = 0xe

.field private static final SS_REQUEST_SET_COLR:I = 0xc


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private mIsTempVolteUser:Z

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneId:I

.field private mSSHandlerThread:Landroid/os/HandlerThread;

.field private mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/SSRequestDecisionMaker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/SSRequestDecisionMaker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mIsTempVolteUser:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/SSRequestDecisionMaker;Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->processResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/SSRequestDecisionMaker;Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->processSendRequest(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mContext:Landroid/content/Context;

    move-object v1, p2

    .line 132
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 134
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    .line 136
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "SSRequestHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 139
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;-><init>(Lcom/android/internal/telephony/SSRequestDecisionMaker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    .line 140
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mImsManager:Lcom/android/ims/ImsManager;

    .line 130
    return-void
.end method

.method private getActionFromCFAction(I)I
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 162
    packed-switch p1, :pswitch_data_0

    .line 171
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 163
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 164
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 165
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 166
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getCBTypeFromFacility(Ljava/lang/String;)I
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string/jumbo v0, "AO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x2

    return v0

    .line 192
    :cond_0
    const-string/jumbo v0, "OI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    const/4 v0, 0x3

    return v0

    .line 194
    :cond_1
    const-string/jumbo v0, "OX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    const/4 v0, 0x4

    return v0

    .line 196
    :cond_2
    const-string/jumbo v0, "AI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    const/4 v0, 0x1

    return v0

    .line 198
    :cond_3
    const-string/jumbo v0, "IR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    const/4 v0, 0x5

    return v0

    .line 200
    :cond_4
    const-string/jumbo v0, "AB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 201
    const/4 v0, 0x7

    return v0

    .line 202
    :cond_5
    const-string/jumbo v0, "AG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 203
    const/16 v0, 0x8

    return v0

    .line 204
    :cond_6
    const-string/jumbo v0, "AC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 205
    const/16 v0, 0x9

    return v0

    .line 208
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private getCFReasonFromCondition(I)I
    .locals 1
    .param p1, "condition"    # I

    .prologue
    const/4 v0, 0x3

    .line 294
    packed-switch p1, :pswitch_data_0

    .line 305
    return v0

    .line 295
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 296
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 297
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 298
    :pswitch_3
    return v0

    .line 299
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 300
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getCallForwardInfo(Lcom/android/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 2
    .param p1, "info"    # Lcom/android/ims/ImsCallForwardInfo;

    .prologue
    .line 263
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 264
    .local v0, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 265
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 266
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 267
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 268
    iget-object v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 269
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 270
    return-object v0
.end method

.method private getCallForwardInfoEx(Lcom/android/ims/ImsCallForwardInfoEx;)Lcom/android/internal/telephony/CallForwardInfoEx;
    .locals 2
    .param p1, "info"    # Lcom/android/ims/ImsCallForwardInfoEx;

    .prologue
    .line 231
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfoEx;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfoEx;-><init>()V

    .line 232
    .local v0, "cfInfo":Lcom/android/internal/telephony/CallForwardInfoEx;
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mStatus:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->status:I

    .line 233
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mCondition:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->reason:I

    .line 234
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mServiceClass:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->serviceClass:I

    .line 235
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mToA:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->toa:I

    .line 236
    iget-object v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 237
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mTimeSeconds:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSeconds:I

    .line 238
    iget-object v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mTimeSlot:[J

    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSlot:[J

    .line 239
    return-object v0
.end method

.method private getCommandException(Lcom/android/ims/ImsException;)Lcom/android/internal/telephony/CommandException;
    .locals 2
    .param p1, "imsException"    # Lcom/android/ims/ImsException;

    .prologue
    .line 1130
    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1138
    const-string/jumbo v0, "SSDecisonMaker"

    const-string/jumbo v1, "getCommandException GENERIC_FAILURE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0

    .line 1132
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isEnableXcapHttpResponse409()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    const-string/jumbo v0, "SSDecisonMaker"

    const-string/jumbo v1, "getCommandException UT_XCAP_409_CONFLICT"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_409_CONFLICT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0

    .line 1141
    :cond_0
    const-string/jumbo v0, "SSDecisonMaker"

    const-string/jumbo v1, "getCommandException GENERIC_FAILURE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0

    .line 1130
    :pswitch_data_0
    .packed-switch 0x341
        :pswitch_0
    .end packed-switch
.end method

.method private getConditionFromCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 175
    packed-switch p1, :pswitch_data_0

    .line 186
    const/4 v0, -0x1

    return v0

    .line 176
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 177
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 178
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 179
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 180
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 181
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getUtInterface()Lcom/android/ims/ImsUtInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Lcom/android/ims/ImsException;

    const-string/jumbo v2, "no ims manager"

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1, v3}, Lcom/android/ims/ImsManager;->getSupplementaryServiceConfiguration(I)Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 149
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    return-object v0
.end method

.method private handleCbQueryResult([Lcom/android/ims/ImsSsInfo;)[I
    .locals 3
    .param p1, "infos"    # [Lcom/android/ims/ImsSsInfo;

    .prologue
    const/4 v2, 0x0

    .line 212
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 213
    .local v0, "cbInfos":[I
    aget-object v1, p1, v2

    iget v1, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    aput v1, v0, v2

    .line 215
    return-object v0
.end method

.method private handleCwQueryResult([Lcom/android/ims/ImsSsInfo;)[I
    .locals 4
    .param p1, "infos"    # [Lcom/android/ims/ImsSsInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 220
    .local v0, "cwInfos":[I
    aput v2, v0, v2

    .line 222
    aget-object v1, p1, v2

    iget v1, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    if-ne v1, v3, :cond_0

    .line 223
    aput v3, v0, v2

    .line 224
    aput v3, v0, v3

    .line 227
    :cond_0
    return-object v0
.end method

.method private imsCFInfoExToCFInfoEx([Lcom/android/ims/ImsCallForwardInfoEx;)[Lcom/android/internal/telephony/CallForwardInfoEx;
    .locals 6
    .param p1, "infos"    # [Lcom/android/ims/ImsCallForwardInfoEx;

    .prologue
    const/4 v5, 0x0

    .line 243
    const/4 v0, 0x0

    .line 245
    .local v0, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    if-eqz p1, :cond_0

    array-length v3, p1

    if-eqz v3, :cond_0

    .line 246
    array-length v3, p1

    new-array v0, v3, [Lcom/android/internal/telephony/CallForwardInfoEx;

    .line 249
    .end local v0    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    :cond_0
    if-eqz p1, :cond_1

    array-length v3, p1

    if-nez v3, :cond_2

    .line 250
    :cond_1
    const-string/jumbo v3, "SSDecisonMaker"

    const-string/jumbo v4, "No CFInfoEx exist."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-object v5

    .line 253
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 254
    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCallForwardInfoEx(Lcom/android/ims/ImsCallForwardInfoEx;)Lcom/android/internal/telephony/CallForwardInfoEx;

    move-result-object v3

    aput-object v3, v0, v1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_3
    const-string/jumbo v3, "SSDecisonMaker"

    const-string/jumbo v4, "imsCFInfoExToCFInfoEx finish."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-object v0
.end method

.method private imsCFInfoToCFInfo([Lcom/android/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .param p1, "infos"    # [Lcom/android/ims/ImsCallForwardInfo;

    .prologue
    const/4 v5, 0x0

    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    array-length v3, p1

    if-eqz v3, :cond_0

    .line 277
    array-length v3, p1

    new-array v0, v3, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 280
    .end local v0    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_0
    if-eqz p1, :cond_1

    array-length v3, p1

    if-nez v3, :cond_2

    .line 281
    :cond_1
    const-string/jumbo v3, "SSDecisonMaker"

    const-string/jumbo v4, "No CFInfo exist."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-object v5

    .line 284
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 285
    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCallForwardInfo(Lcom/android/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v3

    aput-object v3, v0, v1

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_3
    const-string/jumbo v3, "SSDecisonMaker"

    const-string/jumbo v4, "imsCFInfoToCFInfo finish."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-object v0
.end method

.method private processResponse(Ljava/lang/Object;)V
    .locals 36
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 611
    const/4 v10, 0x0

    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v17, p1

    .line 612
    check-cast v17, Landroid/os/AsyncResult;

    .line 613
    .local v17, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 614
    .local v19, "arResult":Ljava/lang/Object;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    .line 615
    .local v18, "arException":Ljava/lang/Throwable;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/util/ArrayList;

    .line 616
    .local v33, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    .line 617
    .local v31, "request":Ljava/lang/Integer;
    const-string/jumbo v4, "SSDecisonMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "processResponse, request = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1116
    .end local v10    # "resp":Landroid/os/Message;
    .end local v19    # "arResult":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    instance-of v4, v0, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_1

    .line 1117
    const-string/jumbo v11, "SSDecisonMaker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "processResponse, imsException.getCode = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v4, v18

    .line 1118
    check-cast v4, Lcom/android/ims/ImsException;

    invoke-virtual {v4}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    .line 1117
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    check-cast v18, Lcom/android/ims/ImsException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCommandException(Lcom/android/ims/ImsException;)Lcom/android/internal/telephony/CommandException;

    move-result-object v18

    .line 1123
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_1
    if-eqz v10, :cond_2

    .line 1124
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v10, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1125
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 610
    :cond_2
    return-void

    .line 621
    .restart local v10    # "resp":Landroid/os/Message;
    .restart local v19    # "arResult":Ljava/lang/Object;
    :pswitch_0
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 622
    .local v6, "cfReason":I
    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 623
    .local v7, "serviceClass":I
    const/4 v4, 0x3

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 624
    .local v8, "number":Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 626
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_4

    .line 627
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 628
    .local v25, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_3

    .line 629
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6, v7, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 631
    return-void

    .line 632
    :cond_3
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_4

    .line 633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6, v7, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 634
    return-void

    .line 638
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_4
    if-eqz v19, :cond_0

    .line 639
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "SS_REQUEST_GET_CALL_FORWARD cfinfo check."

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    move-object/from16 v0, v19

    instance-of v4, v0, [Lcom/android/ims/ImsCallForwardInfo;

    if-eqz v4, :cond_0

    .line 641
    check-cast v19, [Lcom/android/ims/ImsCallForwardInfo;

    .end local v19    # "arResult":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->imsCFInfoToCFInfo([Lcom/android/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v19

    .restart local v19    # "arResult":Ljava/lang/Object;
    goto/16 :goto_0

    .line 647
    .end local v6    # "cfReason":I
    .end local v7    # "serviceClass":I
    .end local v8    # "number":Ljava/lang/String;
    .local v10, "resp":Landroid/os/Message;
    :pswitch_1
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 648
    .local v5, "action":I
    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 649
    .restart local v6    # "cfReason":I
    const/4 v4, 0x3

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 650
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 651
    .restart local v8    # "number":Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 652
    .local v9, "timeSeconds":I
    const/4 v4, 0x6

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 654
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_6

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_6

    .line 655
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 656
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_5

    .line 657
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 660
    return-void

    .line 661
    :cond_5
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_6

    .line 662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 664
    return-void

    .line 668
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_6
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 669
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp05IccCard()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 670
    if-nez v6, :cond_9

    .line 671
    const/16 v20, 0x0

    .line 672
    .local v20, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    if-nez v19, :cond_b

    .line 673
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "arResult is null."

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    .end local v20    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_7
    :goto_1
    if-eqz v20, :cond_8

    move-object/from16 v0, v20

    array-length v4, v0

    if-nez v4, :cond_d

    .line 683
    :cond_8
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "cfInfo is null or length is 0."

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_9
    :goto_2
    if-nez v6, :cond_0

    .line 704
    const/4 v4, 0x1

    if-eq v5, v4, :cond_a

    const/4 v4, 0x3

    if-ne v5, v4, :cond_10

    .line 705
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string/jumbo v11, "persist.radio.ut.cfu.mode"

    .line 706
    const-string/jumbo v15, "enabled_ut_cfu_mode_on"

    .line 705
    invoke-virtual {v4, v11, v15}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 675
    .restart local v20    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_b
    move-object/from16 v0, v19

    instance-of v4, v0, [Lcom/android/ims/ImsCallForwardInfo;

    if-eqz v4, :cond_c

    .line 676
    check-cast v19, [Lcom/android/ims/ImsCallForwardInfo;

    .end local v19    # "arResult":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->imsCFInfoToCFInfo([Lcom/android/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v20

    .line 677
    .local v20, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    move-object/from16 v19, v20

    .restart local v19    # "arResult":Ljava/lang/Object;
    goto :goto_1

    .line 678
    .local v20, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_c
    move-object/from16 v0, v19

    instance-of v4, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v4, :cond_7

    move-object/from16 v20, v19

    .line 679
    check-cast v20, [Lcom/android/internal/telephony/CallForwardInfo;

    .local v20, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    goto :goto_1

    .line 685
    .end local v20    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_d
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_3
    move-object/from16 v0, v20

    array-length v4, v0

    move/from16 v0, v24

    if-ge v0, v4, :cond_9

    .line 687
    aget-object v4, v20, v24

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 686
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_f

    .line 688
    aget-object v4, v20, v24

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v4, :cond_e

    .line 689
    const-string/jumbo v4, "SSDecisonMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Set CF_DISABLE, serviceClass: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 690
    aget-object v15, v20, v24

    iget v15, v15, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 689
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v5, 0x0

    goto :goto_2

    .line 693
    :cond_e
    const-string/jumbo v4, "SSDecisonMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Set CF_ENABLE, serviceClass: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 694
    aget-object v15, v20, v24

    iget v15, v15, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 693
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 685
    :cond_f
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 708
    .end local v24    # "i":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string/jumbo v11, "persist.radio.ut.cfu.mode"

    .line 709
    const-string/jumbo v15, "enabled_ut_cfu_mode_off"

    .line 708
    invoke-virtual {v4, v11, v15}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 716
    .end local v5    # "action":I
    .end local v6    # "cfReason":I
    .end local v7    # "serviceClass":I
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "timeSeconds":I
    .local v10, "resp":Landroid/os/Message;
    :pswitch_2
    const/4 v4, 0x3

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 718
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_11

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_11

    .line 719
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 720
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_12

    .line 721
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 722
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 721
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 723
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 724
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 736
    .end local v19    # "arResult":Ljava/lang/Object;
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_11
    if-eqz v19, :cond_0

    .line 737
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "SS_REQUEST_GET_CALL_FORWARD_TIME_SLOT cfinfoEx check."

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    move-object/from16 v0, v19

    instance-of v4, v0, [Lcom/android/ims/ImsCallForwardInfoEx;

    if-eqz v4, :cond_0

    .line 740
    check-cast v19, [Lcom/android/ims/ImsCallForwardInfoEx;

    .line 739
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->imsCFInfoExToCFInfoEx([Lcom/android/ims/ImsCallForwardInfoEx;)[Lcom/android/internal/telephony/CallForwardInfoEx;

    move-result-object v19

    .restart local v19    # "arResult":Ljava/lang/Object;
    goto/16 :goto_0

    .line 725
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_12
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_11

    .line 726
    if-eqz v10, :cond_13

    .line 728
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    .line 729
    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 728
    invoke-direct {v4, v11}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 727
    const/4 v11, 0x0

    invoke-static {v10, v11, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 730
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 732
    :cond_13
    return-void

    .line 746
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    .local v10, "resp":Landroid/os/Message;
    :pswitch_3
    const/4 v4, 0x7

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 748
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_0

    .line 749
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 750
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_14

    .line 751
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 752
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 751
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 753
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_0

    .line 755
    :cond_14
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_0

    .line 756
    if-eqz v10, :cond_15

    .line 758
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    .line 759
    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 758
    invoke-direct {v4, v11}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 757
    const/4 v11, 0x0

    invoke-static {v10, v11, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 760
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 762
    :cond_15
    return-void

    .line 768
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    .local v10, "resp":Landroid/os/Message;
    :pswitch_4
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 769
    .local v12, "facility":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 770
    .local v14, "password":Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 771
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 773
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_18

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_18

    .line 774
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 775
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_16

    .line 776
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v12, v14, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 779
    return-void

    .line 780
    :cond_16
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_17

    .line 781
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v12, v14, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 782
    return-void

    .line 783
    :cond_17
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    .line 784
    const/16 v11, 0x340

    .line 783
    if-ne v4, v11, :cond_18

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp05IccCard()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 787
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "processResponse CODE_UT_XCAP_404_NOT_FOUND"

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_404_NOT_FOUND:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 794
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_18
    if-eqz v19, :cond_19

    .line 795
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "SS_REQUEST_GET_CALL_BARRING ssinfo check."

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    move-object/from16 v0, v19

    instance-of v4, v0, [Lcom/android/ims/ImsSsInfo;

    if-eqz v4, :cond_19

    .line 797
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/ims/ImsSsInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->handleCbQueryResult([Lcom/android/ims/ImsSsInfo;)[I

    move-result-object v19

    .line 801
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 802
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOutgoingCallBarring(Ljava/lang/String;)Z

    move-result v4

    .line 801
    if-eqz v4, :cond_0

    .line 803
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 804
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 803
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 805
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 806
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mIsTempVolteUser:Z

    .line 808
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 809
    .local v28, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    const-wide/16 v34, 0x2710

    move-object/from16 v0, v28

    move-wide/from16 v1, v34

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 814
    .end local v7    # "serviceClass":I
    .end local v12    # "facility":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    .end local v28    # "msg":Landroid/os/Message;
    .local v10, "resp":Landroid/os/Message;
    :pswitch_5
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 815
    .restart local v12    # "facility":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 816
    .local v13, "lockState":Z
    const/4 v4, 0x3

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 817
    .restart local v14    # "password":Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 818
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 820
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOutgoingCallBarring(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 821
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 822
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 821
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 823
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 826
    .end local v19    # "arResult":Ljava/lang/Object;
    :cond_1a
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_0

    .line 827
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 828
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_1b

    .line 829
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v15, v7

    move-object/from16 v16, v10

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 832
    return-void

    .line 833
    :cond_1b
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_1c

    .line 834
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v15, v7

    move-object/from16 v16, v10

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 835
    return-void

    .line 836
    :cond_1c
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    .line 837
    const/16 v11, 0x340

    .line 836
    if-ne v4, v11, :cond_0

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp05IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 840
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "processResponse CODE_UT_XCAP_404_NOT_FOUND"

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_404_NOT_FOUND:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 841
    .restart local v18    # "arException":Ljava/lang/Throwable;
    goto/16 :goto_0

    .line 849
    .end local v7    # "serviceClass":I
    .end local v12    # "facility":Ljava/lang/String;
    .end local v13    # "lockState":Z
    .end local v14    # "password":Ljava/lang/String;
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    .local v10, "resp":Landroid/os/Message;
    .restart local v19    # "arResult":Ljava/lang/Object;
    :pswitch_6
    const/16 v29, 0x0

    .line 850
    .local v29, "queryVolteUser":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v4, :cond_1d

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 852
    .local v23, "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTbcwMode()I

    move-result v4

    if-nez v4, :cond_1d

    .line 853
    const/16 v29, 0x1

    .line 857
    .end local v23    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    :cond_1d
    if-eqz v29, :cond_27

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 859
    .restart local v23    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    .line 861
    .local v30, "reqCode":Ljava/lang/Integer;
    const/16 v22, 0x0

    .line 862
    .local v22, "enable":Z
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_1f

    .line 863
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 864
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 871
    .end local v22    # "enable":Z
    .local v10, "resp":Landroid/os/Message;
    :goto_4
    const/16 v25, 0x0

    .line 872
    .local v25, "imsException":Lcom/android/ims/ImsException;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1e

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_1e

    .line 873
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    check-cast v25, Lcom/android/ims/ImsException;

    .line 876
    :cond_1e
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_21

    .line 877
    const/4 v4, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwMode(I)V

    .line 878
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 879
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_20

    .line 880
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    .line 909
    :goto_5
    return-void

    .line 866
    .end local v7    # "serviceClass":I
    .local v10, "resp":Landroid/os/Message;
    .restart local v22    # "enable":Z
    :cond_1f
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 867
    .local v22, "enable":Z
    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 868
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x3

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .local v10, "resp":Landroid/os/Message;
    goto :goto_4

    .line 882
    .end local v22    # "enable":Z
    :cond_20
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    goto :goto_5

    .line 884
    :cond_21
    if-eqz v25, :cond_23

    .line 885
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_23

    .line 886
    const/4 v4, 0x3

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwMode(I)V

    .line 887
    const-string/jumbo v4, "persist.radio.terminal-based.cw"

    .line 888
    const-string/jumbo v11, "disabled_tbcw"

    .line 887
    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_22

    .line 890
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 894
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto :goto_5

    .line 892
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v22

    invoke-interface {v4, v0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_6

    .line 895
    :cond_23
    if-eqz v25, :cond_25

    .line 896
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_25

    .line 897
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_24

    .line 898
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_5

    .line 900
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v22

    invoke-interface {v4, v0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_5

    .line 903
    :cond_25
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_26

    .line 904
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_5

    .line 906
    :cond_26
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_5

    .line 911
    .end local v7    # "serviceClass":I
    .end local v23    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v30    # "reqCode":Ljava/lang/Integer;
    .local v10, "resp":Landroid/os/Message;
    :cond_27
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 912
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 914
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_29

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_29

    .line 915
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 916
    .local v25, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_28

    .line 917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 919
    return-void

    .line 920
    :cond_28
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_29

    .line 921
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 922
    return-void

    .line 926
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_29
    if-eqz v19, :cond_0

    .line 927
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "SS_REQUEST_GET_CALL_WAITING ssinfo check."

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    move-object/from16 v0, v19

    instance-of v4, v0, [Lcom/android/ims/ImsSsInfo;

    if-eqz v4, :cond_0

    .line 929
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/ims/ImsSsInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->handleCwQueryResult([Lcom/android/ims/ImsSsInfo;)[I

    move-result-object v19

    goto/16 :goto_0

    .line 937
    .end local v7    # "serviceClass":I
    .end local v29    # "queryVolteUser":Z
    .local v10, "resp":Landroid/os/Message;
    :pswitch_7
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 938
    .restart local v22    # "enable":Z
    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 939
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x3

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 940
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_0

    .line 941
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 942
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_2a

    .line 943
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v22

    invoke-interface {v4, v0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 944
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 945
    return-void

    .line 946
    :cond_2a
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_0

    .line 947
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v22

    invoke-interface {v4, v0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 948
    return-void

    .line 955
    .end local v7    # "serviceClass":I
    .end local v22    # "enable":Z
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    .local v10, "resp":Landroid/os/Message;
    :pswitch_8
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 957
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2c

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_2c

    .line 958
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 959
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_2b

    .line 960
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 962
    return-void

    .line 963
    :cond_2b
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_2c

    .line 964
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 965
    return-void

    .line 969
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 970
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 971
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 970
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 972
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 974
    :cond_2d
    const/16 v21, 0x0

    .line 975
    .local v21, "clirInfo":[I
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2e

    move-object/from16 v32, v19

    .line 976
    check-cast v32, Landroid/os/Bundle;

    .line 977
    .local v32, "ssInfo":Landroid/os/Bundle;
    const-string/jumbo v4, "queryClir"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v21

    .line 980
    .local v21, "clirInfo":[I
    const-string/jumbo v4, "SSDecisonMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "SS_REQUEST_GET_CLIR: CLIR param n="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v15, 0x0

    aget v15, v21, v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 981
    const-string/jumbo v15, " m="

    .line 980
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 981
    const/4 v15, 0x1

    aget v15, v21, v15

    .line 980
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    .end local v21    # "clirInfo":[I
    .end local v32    # "ssInfo":Landroid/os/Bundle;
    :cond_2e
    move-object/from16 v19, v21

    goto/16 :goto_0

    .line 988
    .local v10, "resp":Landroid/os/Message;
    :pswitch_9
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 989
    .local v26, "mode":I
    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 991
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_30

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_30

    .line 992
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 993
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_2f

    .line 994
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v26

    invoke-interface {v4, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 996
    return-void

    .line 997
    :cond_2f
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_30

    .line 998
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v26

    invoke-interface {v4, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 999
    return-void

    .line 1003
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1004
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 1005
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1004
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1006
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1011
    .end local v26    # "mode":I
    .local v10, "resp":Landroid/os/Message;
    :pswitch_a
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 1012
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_32

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_32

    .line 1013
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 1014
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_31

    .line 1015
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 1017
    return-void

    .line 1018
    :cond_31
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_32

    .line 1019
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 1020
    return-void

    .line 1024
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1025
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 1026
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1025
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1027
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1032
    .local v10, "resp":Landroid/os/Message;
    :pswitch_b
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 1033
    .restart local v26    # "mode":I
    if-nez v26, :cond_33

    const/16 v27, 0x0

    .line 1034
    .local v27, "modeCs":Z
    :goto_7
    const/4 v4, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 1035
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_35

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_35

    .line 1036
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 1037
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_34

    .line 1038
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v27

    invoke-interface {v4, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIP(ZLandroid/os/Message;)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 1040
    return-void

    .line 1033
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    .end local v27    # "modeCs":Z
    .local v10, "resp":Landroid/os/Message;
    :cond_33
    const/16 v27, 0x1

    .restart local v27    # "modeCs":Z
    goto :goto_7

    .line 1041
    .local v10, "resp":Landroid/os/Message;
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_34
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_35

    .line 1042
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v27

    invoke-interface {v4, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIP(ZLandroid/os/Message;)V

    .line 1043
    return-void

    .line 1047
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1048
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 1049
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1048
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1050
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1055
    .end local v26    # "mode":I
    .end local v27    # "modeCs":Z
    .local v10, "resp":Landroid/os/Message;
    :pswitch_c
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 1056
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_37

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_37

    .line 1057
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 1058
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_36

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCOLR(Landroid/os/Message;)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 1061
    return-void

    .line 1062
    :cond_36
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_37

    .line 1063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCOLR(Landroid/os/Message;)V

    .line 1064
    return-void

    .line 1068
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1069
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 1070
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1069
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1071
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1076
    .local v10, "resp":Landroid/os/Message;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1077
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 1078
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1077
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1079
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1084
    :pswitch_e
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 1085
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_39

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_39

    .line 1086
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 1087
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_38

    .line 1088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCOLP(Landroid/os/Message;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 1090
    return-void

    .line 1091
    :cond_38
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_39

    .line 1092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCOLP(Landroid/os/Message;)V

    .line 1093
    return-void

    .line 1097
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1098
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 1099
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1098
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1100
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1105
    .local v10, "resp":Landroid/os/Message;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1106
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 1107
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1106
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1108
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 1109
    goto/16 :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processSendRequest(Ljava/lang/Object;)V
    .locals 28
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 345
    const/16 v26, 0x0

    .local v26, "resp":Landroid/os/Message;
    move-object/from16 v27, p1

    .line 346
    check-cast v27, Ljava/util/ArrayList;

    .line 347
    .local v27, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 348
    .local v25, "request":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    const/4 v4, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 350
    .local v8, "utResp":Landroid/os/Message;
    const-string/jumbo v3, "SSDecisonMaker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processSendRequest, request = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 344
    .end local v26    # "resp":Landroid/os/Message;
    :goto_0
    return-void

    .line 354
    .restart local v26    # "resp":Landroid/os/Message;
    :pswitch_0
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 355
    .local v17, "cfReason":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 356
    .local v6, "serviceClass":I
    const/4 v3, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 357
    .local v5, "number":Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 360
    .local v26, "resp":Landroid/os/Message;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 361
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 362
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getConditionFromCFReason(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v8}, Lcom/android/ims/ImsUtInterface;->queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_0
    move-exception v18

    .line 364
    .local v18, "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 369
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "serviceClass":I
    .end local v17    # "cfReason":I
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_1
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 370
    .local v16, "action":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 371
    .restart local v17    # "cfReason":I
    const/4 v3, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 372
    .restart local v6    # "serviceClass":I
    const/4 v3, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 373
    .restart local v5    # "number":Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 374
    .local v7, "timeSeconds":I
    const/4 v3, 0x6

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 377
    .local v26, "resp":Landroid/os/Message;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 378
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 379
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getActionFromCFAction(I)I

    move-result v3

    .line 380
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getConditionFromCFReason(I)I

    move-result v4

    .line 379
    invoke-interface/range {v2 .. v8}, Lcom/android/ims/ImsUtInterface;->updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 385
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_1
    move-exception v18

    .line 386
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 391
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "serviceClass":I
    .end local v7    # "timeSeconds":I
    .end local v16    # "action":I
    .end local v17    # "cfReason":I
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_2
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 392
    .restart local v17    # "cfReason":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 393
    .restart local v6    # "serviceClass":I
    const/4 v3, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 396
    .local v26, "resp":Landroid/os/Message;
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 397
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 399
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getConditionFromCFReason(I)I

    move-result v3

    .line 398
    invoke-interface {v2, v3, v8}, Lcom/android/ims/ImsUtInterface;->queryCallForwardInTimeSlot(ILandroid/os/Message;)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 401
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_2
    move-exception v18

    .line 402
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 407
    .end local v6    # "serviceClass":I
    .end local v17    # "cfReason":I
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_3
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 408
    .restart local v16    # "action":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 409
    .restart local v17    # "cfReason":I
    const/4 v3, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 410
    .restart local v6    # "serviceClass":I
    const/4 v3, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 411
    .restart local v5    # "number":Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 412
    .restart local v7    # "timeSeconds":I
    const/4 v3, 0x6

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [J

    .line 413
    .local v14, "timeSlot":[J
    const/4 v3, 0x7

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 416
    .local v26, "resp":Landroid/os/Message;
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 417
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 418
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getActionFromCFAction(I)I

    move-result v10

    .line 419
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getConditionFromCFReason(I)I

    move-result v11

    move-object v9, v2

    move-object v12, v5

    move v13, v7

    move-object v15, v8

    .line 418
    invoke-interface/range {v9 .. v15}, Lcom/android/ims/ImsUtInterface;->updateCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    :try_end_3
    .catch Lcom/android/ims/ImsException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 424
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_3
    move-exception v18

    .line 425
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 430
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "serviceClass":I
    .end local v7    # "timeSeconds":I
    .end local v14    # "timeSlot":[J
    .end local v16    # "action":I
    .end local v17    # "cfReason":I
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_4
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 431
    .local v20, "facility":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 432
    .local v24, "password":Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 433
    .restart local v6    # "serviceClass":I
    const/4 v3, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 435
    .local v26, "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOutgoingCallBarring(Ljava/lang/String;)Z

    move-result v3

    .line 435
    if-eqz v3, :cond_2

    .line 437
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mIsTempVolteUser:Z

    if-eqz v3, :cond_1

    .line 438
    if-eqz v26, :cond_0

    .line 439
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    .line 440
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 439
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v4, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 441
    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    .line 443
    :cond_0
    return-void

    .line 445
    :cond_1
    const-string/jumbo v20, "AI"

    .line 450
    :cond_2
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 451
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 452
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3, v8}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V
    :try_end_4
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 453
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_4
    move-exception v18

    .line 454
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 459
    .end local v6    # "serviceClass":I
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .end local v20    # "facility":Ljava/lang/String;
    .end local v24    # "password":Ljava/lang/String;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_5
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 460
    .restart local v20    # "facility":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 461
    .local v22, "lockState":Z
    const/4 v3, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 462
    .restart local v24    # "password":Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 463
    .restart local v6    # "serviceClass":I
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 465
    .local v26, "resp":Landroid/os/Message;
    if-eqz v22, :cond_3

    const/16 v21, 0x1

    .line 468
    .local v21, "iLockState":I
    :goto_1
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 469
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 470
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    move/from16 v0, v21

    invoke-interface {v2, v3, v0, v8, v4}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/android/ims/ImsException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 471
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_5
    move-exception v18

    .line 472
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 465
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .end local v21    # "iLockState":I
    :cond_3
    const/16 v21, 0x0

    .restart local v21    # "iLockState":I
    goto :goto_1

    .line 477
    .end local v6    # "serviceClass":I
    .end local v20    # "facility":Ljava/lang/String;
    .end local v21    # "iLockState":I
    .end local v22    # "lockState":Z
    .end local v24    # "password":Ljava/lang/String;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_6
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 478
    .restart local v6    # "serviceClass":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 481
    .local v26, "resp":Landroid/os/Message;
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 482
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 483
    invoke-interface {v2, v8}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V
    :try_end_6
    .catch Lcom/android/ims/ImsException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 484
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_6
    move-exception v18

    .line 485
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 490
    .end local v6    # "serviceClass":I
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_7
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 491
    .local v19, "enable":Z
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 492
    .restart local v6    # "serviceClass":I
    const/4 v3, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 495
    .local v26, "resp":Landroid/os/Message;
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 496
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 499
    invoke-interface {v2, v8}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V
    :try_end_7
    .catch Lcom/android/ims/ImsException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 500
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_7
    move-exception v18

    .line 501
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 506
    .end local v6    # "serviceClass":I
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .end local v19    # "enable":Z
    .local v26, "resp":Landroid/os/Message;
    :pswitch_8
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 509
    .local v26, "resp":Landroid/os/Message;
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 510
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 511
    invoke-interface {v2, v8}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_8
    .catch Lcom/android/ims/ImsException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 512
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_8
    move-exception v18

    .line 513
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 518
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_9
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 519
    .local v23, "mode":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 522
    .local v26, "resp":Landroid/os/Message;
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 523
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 524
    move/from16 v0, v23

    invoke-interface {v2, v0, v8}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_9
    .catch Lcom/android/ims/ImsException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    .line 525
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_9
    move-exception v18

    .line 526
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 531
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .end local v23    # "mode":I
    .local v26, "resp":Landroid/os/Message;
    :pswitch_a
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 534
    .local v26, "resp":Landroid/os/Message;
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 535
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 536
    invoke-interface {v2, v8}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V
    :try_end_a
    .catch Lcom/android/ims/ImsException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_0

    .line 537
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_a
    move-exception v18

    .line 538
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 543
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_b
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 544
    .restart local v23    # "mode":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 547
    .local v26, "resp":Landroid/os/Message;
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 548
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 549
    if-eqz v23, :cond_4

    const/4 v3, 0x1

    :goto_2
    invoke-interface {v2, v3, v8}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_b
    .catch Lcom/android/ims/ImsException; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_0

    .line 550
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_b
    move-exception v18

    .line 551
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 549
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 556
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    .end local v23    # "mode":I
    .local v26, "resp":Landroid/os/Message;
    :pswitch_c
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 559
    .local v26, "resp":Landroid/os/Message;
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 560
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 561
    invoke-interface {v2, v8}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_c
    .catch Lcom/android/ims/ImsException; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_0

    .line 562
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_c
    move-exception v18

    .line 563
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 568
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_d
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 569
    .restart local v23    # "mode":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 572
    .local v26, "resp":Landroid/os/Message;
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 573
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 574
    move/from16 v0, v23

    invoke-interface {v2, v0, v8}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_d
    .catch Lcom/android/ims/ImsException; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_0

    .line 575
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_d
    move-exception v18

    .line 576
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 581
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .end local v23    # "mode":I
    .local v26, "resp":Landroid/os/Message;
    :pswitch_e
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 584
    .local v26, "resp":Landroid/os/Message;
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 585
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 586
    invoke-interface {v2, v8}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_e
    .catch Lcom/android/ims/ImsException; {:try_start_e .. :try_end_e} :catch_e

    goto/16 :goto_0

    .line 587
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_e
    move-exception v18

    .line 588
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 593
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_f
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 594
    .restart local v23    # "mode":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 597
    .local v26, "resp":Landroid/os/Message;
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 598
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 599
    if-eqz v23, :cond_5

    const/4 v3, 0x1

    :goto_3
    invoke-interface {v2, v3, v8}, Lcom/android/ims/ImsUtInterface;->updateCOLP(ZLandroid/os/Message;)V
    :try_end_f
    .catch Lcom/android/ims/ImsException; {:try_start_f .. :try_end_f} :catch_f

    goto/16 :goto_0

    .line 600
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_f
    move-exception v18

    .line 601
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 599
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setCSCurrentPhoneId(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1295
    const-string/jumbo v0, "SSDecisonMaker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCSCurrentPhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const-string/jumbo v0, "gsm.radio.ss.phoneid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    return-void
.end method


# virtual methods
.method public getCLIP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1253
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1249
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1234
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1281
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1279
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1266
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1264
    return-void
.end method

.method public queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V
    .locals 3
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1171
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1146
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 3
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1219
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1220
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1217
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1195
    return-void
.end method

.method send(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1301
    .local p1, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1302
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1299
    return-void
.end method

.method sendGenericErrorResponse(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 153
    const-string/jumbo v0, "SSDecisonMaker"

    const-string/jumbo v1, "sendErrorResponse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-eqz p1, :cond_0

    .line 156
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 155
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 157
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 152
    :cond_0
    return-void
.end method

.method public setCLIP(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clipMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1258
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1256
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clirMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1243
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1241
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;)V
    .locals 3
    .param p1, "colpMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1288
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1286
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 3
    .param p1, "colrMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1273
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1271
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 1159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1157
    return-void
.end method

.method public setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 1182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1183
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1181
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1225
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 1207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1208
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1206
    return-void
.end method
