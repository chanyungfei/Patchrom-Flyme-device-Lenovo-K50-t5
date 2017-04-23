.class public Lcom/android/internal/telephony/SmsHeader;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsHeader$PortAddrs;,
        Lcom/android/internal/telephony/SmsHeader$ConcatRef;,
        Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;,
        Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;,
        Lcom/android/internal/telephony/SmsHeader$MiscElt;
    }
.end annotation


# static fields
.field public static final CONCATENATED_8_BIT_REFERENCE_LENGTH:I = 0x5

.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_16_BIT:I = 0x5

.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_8_BIT:I = 0x4

.field public static final ELT_ID_CHARACTER_SIZE_WVG_OBJECT:I = 0x19

.field public static final ELT_ID_COMPRESSION_CONTROL:I = 0x16

.field public static final ELT_ID_CONCATENATED_16_BIT_REFERENCE:I = 0x8

.field public static final ELT_ID_CONCATENATED_8_BIT_REFERENCE:I = 0x0

.field public static final ELT_ID_ENHANCED_VOICE_MAIL_INFORMATION:I = 0x23

.field public static final ELT_ID_EXTENDED_OBJECT:I = 0x14

.field public static final ELT_ID_EXTENDED_OBJECT_DATA_REQUEST_CMD:I = 0x1a

.field public static final ELT_ID_HYPERLINK_FORMAT_ELEMENT:I = 0x21

.field public static final ELT_ID_LARGE_ANIMATION:I = 0xe

.field public static final ELT_ID_LARGE_PICTURE:I = 0x10

.field public static final ELT_ID_NATIONAL_LANGUAGE_LOCKING_SHIFT:I = 0x25

.field public static final ELT_ID_NATIONAL_LANGUAGE_SINGLE_SHIFT:I = 0x24

.field public static final ELT_ID_OBJECT_DISTR_INDICATOR:I = 0x17

.field public static final ELT_ID_PREDEFINED_ANIMATION:I = 0xd

.field public static final ELT_ID_PREDEFINED_SOUND:I = 0xb

.field public static final ELT_ID_REPLY_ADDRESS_ELEMENT:I = 0x22

.field public static final ELT_ID_REUSED_EXTENDED_OBJECT:I = 0x15

.field public static final ELT_ID_RFC_822_EMAIL_HEADER:I = 0x20

.field public static final ELT_ID_SMALL_ANIMATION:I = 0xf

.field public static final ELT_ID_SMALL_PICTURE:I = 0x11

.field public static final ELT_ID_SMSC_CONTROL_PARAMS:I = 0x6

.field public static final ELT_ID_SPECIAL_SMS_MESSAGE_INDICATION:I = 0x1

.field public static final ELT_ID_STANDARD_WVG_OBJECT:I = 0x18

.field public static final ELT_ID_TEXT_FORMATTING:I = 0xa

.field public static final ELT_ID_UDH_SOURCE_INDICATION:I = 0x7

.field public static final ELT_ID_USER_DEFINED_SOUND:I = 0xc

.field public static final ELT_ID_USER_PROMPT_INDICATOR:I = 0x13

.field public static final ELT_ID_VARIABLE_PICTURE:I = 0x12

.field public static final ELT_ID_WIRELESS_CTRL_MSG_PROTOCOL:I = 0x9

.field public static final NATIONAL_LANGUAGE_LOCKING_SHIFT_LENGTH:I = 0x3

.field public static final NATIONAL_LANGUAGE_SINGLE_SHIFT_LENGTH:I = 0x3

.field public static final PORT_WAP_PUSH:I = 0xb84

.field public static final PORT_WAP_WSP:I = 0x23f0

.field private static final TAG:Ljava/lang/String; = "SmsHeader"


# instance fields
.field public concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

.field public languageShiftTable:I

.field public languageTable:I

.field public miscEltList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsHeader$MiscElt;",
            ">;"
        }
    .end annotation
.end field

.field public nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

.field public portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

.field public specialSmsMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    .line 134
    return-void
.end method

.method public static fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;
    .locals 12
    .param p0, "data"    # [B

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 143
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 144
    .local v2, "inStream":Ljava/io/ByteArrayInputStream;
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 145
    .local v6, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    if-lez v8, :cond_1

    .line 154
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 155
    .local v1, "id":I
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 158
    .local v3, "length":I
    sparse-switch v1, :sswitch_data_0

    .line 208
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 209
    .local v4, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iput v1, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 210
    new-array v8, v3, [B

    iput-object v8, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 211
    iget-object v8, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-virtual {v2, v8, v10, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 212
    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .end local v4    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :sswitch_0
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 161
    .local v0, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 162
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 163
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 164
    iput-boolean v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 165
    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v8, :cond_0

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v8, :cond_0

    .line 166
    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v8, v9, :cond_0

    .line 167
    iput-object v0, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto :goto_0

    .line 171
    .end local v0    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_1
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 172
    .restart local v0    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 173
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 174
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 175
    iput-boolean v10, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 176
    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v8, :cond_0

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v8, :cond_0

    .line 177
    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v8, v9, :cond_0

    .line 178
    iput-object v0, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto/16 :goto_0

    .line 182
    .end local v0    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_2
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 183
    .local v5, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 184
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 185
    iput-boolean v11, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 186
    iput-object v5, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    goto/16 :goto_0

    .line 189
    .end local v5    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_3
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 190
    .restart local v5    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 191
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 192
    iput-boolean v10, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 193
    iput-object v5, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    goto/16 :goto_0

    .line 196
    .end local v5    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto/16 :goto_0

    .line 199
    :sswitch_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto/16 :goto_0

    .line 202
    :sswitch_6
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;-><init>()V

    .line 203
    .local v7, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    .line 204
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    .line 205
    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 215
    .end local v1    # "id":I
    .end local v3    # "length":I
    .end local v7    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    :cond_1
    return-object v6

    .line 158
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_6
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x8 -> :sswitch_1
        0x24 -> :sswitch_4
        0x25 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getSubmitPduHeader(I)[B
    .locals 1
    .param p0, "destPort"    # I

    .prologue
    const/4 v0, 0x0

    .line 346
    invoke-static {p0, v0, v0, v0}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeader(IIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeader(II)[B
    .locals 1
    .param p0, "destPort"    # I
    .param p1, "originalPort"    # I

    .prologue
    const/4 v0, 0x0

    .line 357
    invoke-static {p0, p1, v0, v0, v0}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeader(IIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeader(III)[B
    .locals 1
    .param p0, "refNumber"    # I
    .param p1, "seqNumber"    # I
    .param p2, "msgCount"    # I

    .prologue
    .line 368
    const/4 v0, -0x1

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeader(IIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeader(IIII)[B
    .locals 6
    .param p0, "destPort"    # I
    .param p1, "refNumber"    # I
    .param p2, "seqNumber"    # I
    .param p3, "msgCount"    # I

    .prologue
    const/4 v4, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    .line 383
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeader(IIIII)[B
    .locals 7
    .param p0, "destPort"    # I
    .param p1, "originalPort"    # I
    .param p2, "refNumber"    # I
    .param p3, "seqNumber"    # I
    .param p4, "msgCount"    # I

    .prologue
    const/4 v5, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    .line 399
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeaderWithLang(IIIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeaderWithLang(III)[B
    .locals 6
    .param p0, "destPort"    # I
    .param p1, "singleShiftId"    # I
    .param p2, "lockingShiftId"    # I

    .prologue
    const/4 v1, 0x0

    move v0, p0

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, p2

    .line 410
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeaderWithLang(IIIII)[B
    .locals 6
    .param p0, "refNumber"    # I
    .param p1, "seqNumber"    # I
    .param p2, "msgCount"    # I
    .param p3, "singleShiftId"    # I
    .param p4, "lockingShiftId"    # I

    .prologue
    .line 422
    const/4 v0, -0x1

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 421
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduHeaderWithLang(IIIIII)[B
    .locals 4
    .param p0, "destPort"    # I
    .param p1, "refNumber"    # I
    .param p2, "seqNumber"    # I
    .param p3, "msgCount"    # I
    .param p4, "singleShiftId"    # I
    .param p5, "lockingShiftId"    # I

    .prologue
    const/4 v3, 0x0

    .line 440
    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 442
    .local v2, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-ltz p0, :cond_0

    .line 443
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 444
    .local v1, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p0, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 445
    iput v3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 446
    iput-boolean v3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 448
    iput-object v1, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 451
    .end local v1    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_0
    if-lez p3, :cond_1

    .line 452
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 453
    .local v0, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput p1, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 454
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 455
    iput p3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 463
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 465
    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 468
    .end local v0    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_1
    if-gtz p4, :cond_2

    if-lez p5, :cond_3

    .line 469
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    .line 470
    iget-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    iput p4, v3, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;->singleShiftId:I

    .line 471
    iget-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    iput p5, v3, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;->lockingShiftId:I

    .line 474
    :cond_3
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPduHeaderWithLang(IIIIIII)[B
    .locals 4
    .param p0, "destPort"    # I
    .param p1, "originalPort"    # I
    .param p2, "refNumber"    # I
    .param p3, "seqNumber"    # I
    .param p4, "msgCount"    # I
    .param p5, "singleShiftId"    # I
    .param p6, "lockingShiftId"    # I

    .prologue
    const/4 v3, 0x0

    .line 493
    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 495
    .local v2, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-ltz p0, :cond_0

    .line 496
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 497
    .local v1, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p0, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 498
    iput p1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 499
    iput-boolean v3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 501
    iput-object v1, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 504
    .end local v1    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_0
    if-lez p4, :cond_1

    .line 505
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 506
    .local v0, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 507
    iput p3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 508
    iput p4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 516
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 518
    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 521
    .end local v0    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_1
    if-gtz p5, :cond_2

    if-lez p6, :cond_3

    .line 522
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    .line 523
    iget-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    iput p5, v3, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;->singleShiftId:I

    .line 524
    iget-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    iput p6, v3, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;->lockingShiftId:I

    .line 527
    :cond_3
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    return-object v3
.end method

.method public static toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B
    .locals 13
    .param p0, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 224
    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v7, :cond_0

    .line 225
    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v7, :cond_0

    .line 226
    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    .line 224
    if-eqz v7, :cond_0

    .line 228
    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->nationalLang:Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;

    if-nez v7, :cond_0

    .line 230
    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    .line 224
    if-eqz v7, :cond_0

    .line 231
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-nez v7, :cond_0

    .line 232
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-nez v7, :cond_0

    .line 233
    return-object v8

    .line 237
    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x8c

    invoke-direct {v3, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 238
    .local v3, "outStream":Ljava/io/ByteArrayOutputStream;
    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 239
    .local v0, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    if-eqz v0, :cond_1

    .line 240
    iget-boolean v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    if-eqz v7, :cond_5

    .line 241
    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 242
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 250
    :goto_0
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 251
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 253
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 254
    .local v4, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v4, :cond_2

    .line 255
    iget-boolean v7, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    if-eqz v7, :cond_6

    .line 256
    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 257
    invoke-virtual {v3, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 258
    iget v7, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 259
    iget v7, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 269
    :cond_2
    :goto_1
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v7, :cond_3

    .line 270
    const/16 v7, 0x24

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 271
    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 272
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 274
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v7, :cond_4

    .line 275
    const/16 v7, 0x25

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 276
    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 277
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 279
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "specialSmsMsg$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 280
    .local v5, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 281
    invoke-virtual {v3, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 282
    iget v7, v5, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 283
    iget v7, v5, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 245
    .end local v4    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    .end local v5    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v6    # "specialSmsMsg$iterator":Ljava/util/Iterator;
    :cond_5
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 246
    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 247
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    ushr-int/lit8 v7, v7, 0x8

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 248
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 261
    .restart local v4    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_6
    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 262
    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 263
    iget v7, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    ushr-int/lit8 v7, v7, 0x8

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 264
    iget v7, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 265
    iget v7, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    ushr-int/lit8 v7, v7, 0x8

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 266
    iget v7, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 285
    .restart local v6    # "specialSmsMsg$iterator":Ljava/util/Iterator;
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "miscElt$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 286
    .local v1, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iget v7, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 287
    iget-object v7, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v7, v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 288
    iget-object v7, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v8, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v8, v8

    invoke-virtual {v3, v7, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 290
    .end local v1    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "UserDataHeader "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string/jumbo v5, "{ ConcatRef "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v5, :cond_2

    .line 299
    const-string/jumbo v5, "unset"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :goto_0
    const-string/jumbo v5, ", PortAddrs "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v5, :cond_3

    .line 309
    const-string/jumbo v5, "unset"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v5, :cond_0

    .line 317
    const-string/jumbo v5, ", languageShiftTable="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    :cond_0
    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v5, :cond_1

    .line 320
    const-string/jumbo v5, ", languageTable="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "specialSmsMsg$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 323
    .local v3, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    const-string/jumbo v5, ", SpecialSmsMsg "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string/jumbo v5, "{ msgIndType="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    const-string/jumbo v5, ", msgCount="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    const-string/jumbo v5, " }"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 301
    .end local v3    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v4    # "specialSmsMsg$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v5, "{ refNumber="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    const-string/jumbo v5, ", msgCount="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    const-string/jumbo v5, ", seqNumber="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    const-string/jumbo v5, ", isEightBits="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-boolean v6, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 305
    const-string/jumbo v5, " }"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 311
    :cond_3
    const-string/jumbo v5, "{ destPort="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    const-string/jumbo v5, ", origPort="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    const-string/jumbo v5, ", areEightBits="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget-boolean v6, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 314
    const-string/jumbo v5, " }"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 328
    .restart local v4    # "specialSmsMsg$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "miscElt$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 329
    .local v1, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const-string/jumbo v5, ", MiscElt "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string/jumbo v5, "{ id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    const-string/jumbo v5, ", length="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    const-string/jumbo v5, ", data="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string/jumbo v5, " }"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 335
    .end local v1    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_5
    const-string/jumbo v5, " }"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
