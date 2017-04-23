.class public abstract Lcom/android/internal/telephony/CallTracker;
.super Landroid/os/Handler;
.source "CallTracker.java"


# static fields
.field private static final DBG_POLL:Z = true

.field protected static final EVENT_CALL_INFO_INDICATION:I = 0x21

.field protected static final EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final EVENT_CDMA_CALL_ACCEPTED:I = 0x1b

.field protected static final EVENT_CDMA_DIAL_THREEWAY_DELAY:I = 0x1c

.field protected static final EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final EVENT_DIAL_CALL_RESULT:I = 0x16

.field protected static final EVENT_ECONF_RESULT_INDICATION:I = 0x1f

.field protected static final EVENT_ECONF_SRVCC_INDICATION:I = 0x1e

.field protected static final EVENT_ECT_RESULT:I = 0xd

.field protected static final EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final EVENT_EXIT_ECM_RESPONSE_DIAL_THREEWAY:I = 0x1d

.field protected static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final EVENT_HANG_UP_RESULT:I = 0x15

.field protected static final EVENT_INCOMING_CALL_INDICATION:I = 0x18

.field protected static final EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x17

.field protected static final EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final EVENT_RETRIEVE_HELD_CALL_RESULT:I = 0x20

.field protected static final EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final EVENT_SPEECH_CODEC_INFO:I = 0x1a

.field protected static final EVENT_SWITCH_RESULT:I = 0x8

.field protected static final EVENT_THREE_WAY_DIAL_BLANK_FLASH:I = 0x14

.field protected static final EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10

.field static final POLL_DELAY_MSEC:I = 0xfa


# instance fields
.field private final VALID_COMPARE_LENGTH:I

.field public mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mHandoverConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field protected mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

.field protected mLastRelevantPoll:Landroid/os/Message;

.field protected mNeedWaitImsEConfSrvcc:Z

.field protected mNeedsPoll:Z

.field protected mNumberConverted:Z

.field protected mPendingOperations:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    .line 56
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mNumberConverted:Z

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->VALID_COMPARE_LENGTH:I

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mNeedWaitImsEConfSrvcc:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    .line 41
    return-void
.end method

.method private checkNoOperationsPending()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkNoOperationsPending: pendingOperations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 210
    iget v2, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 211
    iget v1, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private compareGid1(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Z
    .locals 5
    .param p1, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "serviceGid1"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 320
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "gid1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 322
    .local v1, "gid_length":I
    const/4 v2, 0x1

    .line 324
    .local v2, "ret":Z
    if-eqz p2, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 325
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "compareGid1 serviceGid is empty, return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 326
    return v2

    .line 329
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v1, :cond_2

    .line 330
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 329
    :cond_2
    if-nez v3, :cond_3

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " gid1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " serviceGid1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 332
    const/4 v2, 0x0

    .line 334
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "compareGid1 is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_4

    const-string/jumbo v3, "Same"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 335
    return v2

    .line 334
    :cond_4
    const-string/jumbo v3, "Different"

    goto :goto_0
.end method


# virtual methods
.method protected checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 236
    const-string/jumbo v2, "ril.test.emergencynumber"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "testEn":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkForTestEmergencyNumber: dialString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 239
    const-string/jumbo v3, " testEn="

    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "values":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkForTestEmergencyNumber: values.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 244
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 245
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 246
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->testingEmergencyCall()V

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkForTestEmergencyNumber: remap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 249
    const-string/jumbo v3, " to "

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 249
    aget-object v3, v1, v4

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 250
    aget-object p1, v1, v4

    .line 254
    .end local v1    # "values":[Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method protected convertNumberIfNecessary(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "dialNumber"    # Ljava/lang/String;

    .prologue
    .line 258
    if-nez p2, :cond_0

    .line 259
    return-object p2

    .line 261
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 262
    const v8, 0x107003f

    .line 261
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "convertMaps":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "convertNumberIfNecessary Roaming convertMaps.length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 264
    array-length v8, v1

    .line 263
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 265
    const-string/jumbo v8, " dialNumber.length() "

    .line 263
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 265
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    .line 263
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 267
    array-length v7, v1

    const/4 v8, 0x1

    if-lt v7, v8, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    .line 268
    :cond_1
    return-object p2

    .line 273
    :cond_2
    const-string/jumbo v5, ""

    .line 274
    .local v5, "outNumber":Ljava/lang/String;
    const/4 v4, 0x0

    .line 275
    .local v4, "needConvert":Z
    const/4 v7, 0x0

    array-length v8, v1

    :goto_0
    if-ge v7, v8, :cond_a

    aget-object v0, v1, v7

    .line 276
    .local v0, "convertMap":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "convertNumberIfNecessary: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "entry":[Ljava/lang/String;
    array-length v9, v2

    const/4 v10, 0x1

    if-le v9, v10, :cond_6

    .line 279
    const/4 v9, 0x1

    aget-object v9, v2, v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 280
    .local v6, "tmpArray":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 281
    array-length v9, v6

    const/4 v10, 0x2

    if-lt v9, v10, :cond_3

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 285
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 286
    const/4 v4, 0x1

    .line 289
    :cond_4
    :goto_1
    if-eqz v4, :cond_6

    .line 290
    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v9, 0x0

    aget-object v9, v6, v9

    const-string/jumbo v10, "MDN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 291
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "mdn":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 293
    const-string/jumbo v9, "+"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 294
    move-object v5, v3

    .line 303
    .end local v3    # "mdn":Ljava/lang/String;
    :cond_5
    :goto_2
    const/4 v4, 0x0

    .line 275
    .end local v6    # "tmpArray":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 282
    .restart local v6    # "tmpArray":[Ljava/lang/String;
    :cond_7
    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-direct {p0, p1, v9}, Lcom/android/internal/telephony/CallTracker;->compareGid1(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 283
    const/4 v4, 0x1

    goto :goto_1

    .line 296
    .restart local v3    # "mdn":Ljava/lang/String;
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, v6, v10

    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x3

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 301
    .end local v3    # "mdn":Ljava/lang/String;
    :cond_9
    const/4 v9, 0x0

    aget-object v5, v6, v9

    goto :goto_2

    .line 309
    .end local v0    # "convertMap":Ljava/lang/String;
    .end local v2    # "entry":[Ljava/lang/String;
    .end local v6    # "tmpArray":[Ljava/lang/String;
    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 310
    const-string/jumbo v7, "convertNumberIfNecessary: convert service number"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 311
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/CallTracker;->mNumberConverted:Z

    .line 312
    return-object v5

    .line 315
    :cond_b
    return-object p2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 349
    const-string/jumbo v0, "CallTracker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mNeedsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mNeedsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mLastRelevantPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method protected getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;
    .locals 5
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v4, 0x0

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SRVCC: getHoConnection() with dc, number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 140
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "hoConn$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 152
    .local v0, "hoConn":Lcom/android/internal/telephony/Connection;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getHoConnection: compare state hoConn= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v3}, Lcom/android/internal/telephony/Call;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getHoConnection: Handover connection match found = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 155
    return-object v0

    .line 142
    .end local v0    # "hoConn":Lcom/android/internal/telephony/Connection;
    .end local v1    # "hoConn$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "hoConn$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 143
    .restart local v0    # "hoConn":Lcom/android/internal/telephony/Connection;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getHoConnection - compare number: hoConn= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getHoConnection: Handover connection match found = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 146
    return-object v0

    .line 158
    .end local v0    # "hoConn":Lcom/android/internal/telephony/Connection;
    :cond_4
    return-object v4
.end method

.method public abstract getState()Lcom/android/internal/telephony/PhoneConstants$State;
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method protected abstract handlePollCalls(Landroid/os/AsyncResult;)V
.end method

.method protected handleRadioAvailable()V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->pollCallsWhenSafe()V

    .line 184
    return-void
.end method

.method protected isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 129
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_0

    .line 130
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 131
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    .line 130
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 129
    :cond_0
    return v0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Call$SrvccState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p2, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    sget-object v2, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne p1, v2, :cond_1

    if-eqz p2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conn$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 168
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 169
    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isConferenceHost()Z

    move-result v2

    .line 168
    if-eqz v2, :cond_0

    .line 170
    const-string/jumbo v2, "srvcc: mNeedWaitImsEConfSrvcc set True"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 171
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallTracker;->mNeedWaitImsEConfSrvcc:Z

    .line 172
    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mImsConfHostConnection:Lcom/android/internal/telephony/Connection;

    goto :goto_0

    .line 176
    .end local v0    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v1    # "conn$iterator":Ljava/util/Iterator;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq p1, v2, :cond_2

    .line 179
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 181
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifySrvccState: mHandoverConnections= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method protected obtainNoPollCompleteMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 198
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected pollCallsAfterDelay()V
    .locals 4

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 123
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 124
    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/CallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 120
    return-void
.end method

.method protected pollCallsWhenSafe()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 111
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mNeedsPoll:Z

    .line 113
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;->checkNoOperationsPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 110
    :cond_0
    return-void
.end method

.method public abstract registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract unregisterForVoiceCallEnded(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceCallStarted(Landroid/os/Handler;)V
.end method
