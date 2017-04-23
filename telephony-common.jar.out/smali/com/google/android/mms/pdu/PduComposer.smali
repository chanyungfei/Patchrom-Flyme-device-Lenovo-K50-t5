.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOG_TAG:Ljava/lang/String; = "PduComposer"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mForBackup:Z

.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static synthetic -get0(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .locals 1

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-class v1, Lcom/google/android/mms/pdu/PduComposer;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/google/android/mms/pdu/PduComposer;->-assertionsDisabled:Z

    .line 123
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 126
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 130
    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 37
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 98
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 103
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 108
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 118
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 1251
    iput-boolean v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mForBackup:Z

    .line 141
    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 143
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 144
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$BufferStack;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 145
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 146
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 140
    return-void
.end method

.method private appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 4
    .param p1, "address"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 475
    const/4 v2, 0x0

    .line 478
    .local v2, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v0

    .line 479
    .local v0, "addressType":I
    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 480
    .local v2, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 482
    const-string/jumbo v3, "/TYPE=PLMN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    .line 494
    :cond_0
    :goto_0
    return-object v2

    .line 483
    :cond_1
    const/4 v3, 0x3

    if-ne v3, v0, :cond_2

    .line 485
    const-string/jumbo v3, "/TYPE=IPV4"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_0

    .line 490
    .end local v0    # "addressType":I
    .end local v2    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    return-object v3

    .line 486
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "addressType":I
    .restart local v2    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2
    const/4 v3, 0x4

    if-ne v3, v0, :cond_0

    .line 488
    const-string/jumbo v3, "/TYPE=IPV6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private appendHeader(I)I
    .locals 24
    .param p1, "field"    # I

    .prologue
    .line 501
    packed-switch p1, :pswitch_data_0

    .line 669
    :pswitch_0
    const/16 v21, 0x3

    return v21

    .line 503
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v20

    .line 506
    .local v20, "version":I
    if-nez v20, :cond_1

    .line 507
    const/16 v21, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 672
    .end local v20    # "version":I
    :cond_0
    :goto_0
    const/16 v21, 0x0

    return v21

    .line 509
    .restart local v20    # "version":I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_0

    .line 516
    .end local v20    # "version":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 517
    .local v19, "textString":[B
    if-nez v19, :cond_2

    .line 518
    const/16 v21, 0x2

    return v21

    .line 521
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 522
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_0

    .line 528
    .end local v19    # "textString":[B
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 530
    .local v4, "addr":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v4, :cond_3

    .line 531
    const/16 v21, 0x2

    return v21

    .line 535
    :cond_3
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_0

    .line 536
    aget-object v21, v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v18

    .line 537
    .local v18, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v18, :cond_4

    .line 538
    const/16 v21, 0x1

    return v21

    .line 541
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 542
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 535
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 548
    .end local v4    # "addr":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v15    # "i":I
    .end local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v13

    .line 551
    .local v13, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v13, :cond_5

    .line 552
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    .line 551
    if-nez v21, :cond_5

    .line 553
    new-instance v21, Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    .line 554
    const-string/jumbo v22, "insert-address-token"

    .line 553
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 551
    if-eqz v21, :cond_6

    .line 556
    :cond_5
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 558
    const/16 v21, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_0

    .line 560
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v14

    .line 564
    .local v14, "fstart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v21, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 566
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v18

    .line 567
    .restart local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v18, :cond_7

    .line 568
    const/16 v21, 0x1

    return v21

    .line 571
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 573
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v12

    .line 574
    .local v12, "flen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 575
    int-to-long v0, v12

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_0

    .line 586
    .end local v12    # "flen":I
    .end local v13    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v14    # "fstart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 587
    .local v17, "octet":I
    if-nez v17, :cond_8

    .line 588
    const/16 v21, 0x2

    return v21

    .line 591
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 592
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_0

    .line 596
    .end local v17    # "octet":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v6

    .line 597
    .local v6, "date":J
    const-wide/16 v22, -0x1

    cmp-long v21, v22, v6

    if-nez v21, :cond_9

    .line 598
    const/16 v21, 0x2

    return v21

    .line 601
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 602
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_0

    .line 607
    .end local v6    # "date":J
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 608
    .local v5, "enString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v5, :cond_a

    .line 609
    const/16 v21, 0x2

    return v21

    .line 612
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 613
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_0

    .line 617
    .end local v5    # "enString":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 618
    .local v16, "messageClass":[B
    if-nez v16, :cond_b

    .line 619
    const/16 v21, 0x2

    return v21

    .line 622
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 624
    const-string/jumbo v21, "advertisement"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    .line 623
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 625
    const/16 v21, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_0

    .line 627
    :cond_c
    const-string/jumbo v21, "auto"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    .line 626
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 628
    const/16 v21, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_0

    .line 630
    :cond_d
    const-string/jumbo v21, "personal"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    .line 629
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 631
    const/16 v21, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_0

    .line 633
    :cond_e
    const-string/jumbo v21, "informational"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    .line 632
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 634
    const/16 v21, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_0

    .line 636
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_0

    .line 641
    .end local v16    # "messageClass":[B
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v8

    .line 642
    .local v8, "expiry":J
    const-wide/16 v22, -0x1

    cmp-long v21, v22, v8

    if-nez v21, :cond_10

    .line 643
    const/16 v21, 0x2

    return v21

    .line 646
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 652
    .local v11, "expiryStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mForBackup:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    .line 653
    const-string/jumbo v21, "PduComposer"

    const-string/jumbo v22, "absolute token"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/16 v21, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 660
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 662
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v10

    .line 663
    .local v10, "expiryLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 664
    int-to-long v0, v10

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_0

    .line 656
    .end local v10    # "expiryLength":I
    :cond_11
    const-string/jumbo v21, "PduComposer"

    const-string/jumbo v22, "relative token"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/16 v21, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto :goto_2

    .line 501
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x5

    .line 1218
    if-nez p0, :cond_0

    .line 1219
    return v2

    .line 1222
    :cond_0
    const-string/jumbo v0, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1224
    const/4 v0, 0x3

    return v0

    .line 1225
    :cond_1
    const-string/jumbo v0, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1227
    const/4 v0, 0x1

    return v0

    .line 1228
    :cond_2
    const-string/jumbo v0, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1230
    const/4 v0, 0x2

    return v0

    .line 1231
    :cond_3
    const-string/jumbo v0, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1233
    const/4 v0, 0x4

    return v0

    .line 1236
    :cond_4
    const-string/jumbo v0, "PduComposer"

    const-string/jumbo v1, "checkAddressType PDU_UNKNOWN_ADDRESS_TYPE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    return v2
.end method

.method private makeAckInd()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 762
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 763
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 764
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 768
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 769
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 772
    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    return v2

    .line 777
    :cond_1
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 778
    return v2

    .line 782
    :cond_2
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 784
    return v1
.end method

.method private makeMessageBody(I)I
    .locals 35
    .param p1, "pduType"    # I

    .prologue
    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v16

    .line 884
    .local v16, "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v32, v0

    const/16 v33, 0x84

    invoke-virtual/range {v32 .. v33}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 885
    .local v10, "contentType":Ljava/lang/String;
    sget-object v32, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 886
    .local v12, "contentTypeIdentifier":Ljava/lang/Integer;
    if-nez v12, :cond_0

    .line 888
    const/16 v32, 0x1

    return v32

    .line 891
    :cond_0
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 894
    const/4 v5, 0x0

    .line 895
    .local v5, "body":Lcom/google/android/mms/pdu/PduBody;
    const/16 v32, 0x1

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v32, v0

    check-cast v32, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 902
    .end local v5    # "body":Lcom/google/android/mms/pdu/PduBody;
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v32

    if-nez v32, :cond_4

    .line 903
    :cond_2
    const-string/jumbo v32, "PduComposer"

    const-string/jumbo v33, "makeMessageBody body == null"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 908
    const/16 v32, 0x0

    return v32

    .line 897
    .restart local v5    # "body":Lcom/google/android/mms/pdu/PduBody;
    :cond_3
    const/16 v32, 0x2

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v32, v0

    check-cast v32, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .local v5, "body":Lcom/google/android/mms/pdu/PduBody;
    goto :goto_0

    .line 913
    .end local v5    # "body":Lcom/google/android/mms/pdu/PduBody;
    :cond_4
    const/16 v32, 0x0

    :try_start_0
    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v26

    .line 915
    .local v26, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v31

    .line 916
    .local v31, "start":[B
    if-eqz v31, :cond_5

    .line 917
    const/16 v32, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 918
    const/16 v32, 0x0

    aget-byte v32, v31, v32

    const/16 v33, 0x3c

    move/from16 v0, v33

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    aget-byte v32, v31, v32

    const/16 v33, 0x3e

    move/from16 v0, v33

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 919
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 926
    :cond_5
    :goto_1
    const/16 v32, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 927
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    .end local v26    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v31    # "start":[B
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v15

    .line 934
    .local v15, "ctLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 935
    int-to-long v0, v15

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 939
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v30

    .line 940
    .local v30, "partNum":I
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 941
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v30

    if-ge v0, v1, :cond_1b

    .line 942
    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v26

    .line 943
    .restart local v26    # "part":Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v4

    .line 946
    .local v4, "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 949
    .local v11, "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v27

    .line 951
    .local v27, "partContentType":[B
    if-nez v27, :cond_7

    .line 953
    const/16 v32, 0x1

    return v32

    .line 921
    .end local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v15    # "ctLength":I
    .end local v23    # "i":I
    .end local v27    # "partContentType":[B
    .end local v30    # "partNum":I
    .restart local v31    # "start":[B
    :cond_6
    :try_start_1
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "<"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    new-instance v33, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ">"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 929
    .end local v26    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v31    # "start":[B
    :catch_0
    move-exception v20

    .line 930
    .local v20, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_2

    .line 958
    .end local v20    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v15    # "ctLength":I
    .restart local v23    # "i":I
    .restart local v26    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v27    # "partContentType":[B
    .restart local v30    # "partNum":I
    :cond_7
    sget-object v32, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v33, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    .line 959
    .local v28, "partContentTypeIdentifier":Ljava/lang/Integer;
    if-nez v28, :cond_11

    .line 960
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 969
    :goto_4
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v25

    .line 972
    .local v25, "name":[B
    if-eqz v25, :cond_8

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v32, v0

    if-nez v32, :cond_b

    .line 973
    :cond_8
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v25

    .line 975
    if-eqz v25, :cond_9

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v32, v0

    if-nez v32, :cond_b

    .line 976
    :cond_9
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v25

    .line 977
    if-eqz v25, :cond_a

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v32, v0

    if-nez v32, :cond_b

    .line 978
    :cond_a
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v25

    .line 979
    if-eqz v25, :cond_12

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v32, v0

    if-eqz v32, :cond_12

    .line 980
    const-string/jumbo v32, "PduComposer"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "makeMessageBody name 1= "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_b
    if-eqz v25, :cond_c

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v32, v0

    if-eqz v32, :cond_c

    .line 992
    const-string/jumbo v32, "PduComposer"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "makeMessageBody name 2= "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_c
    const/16 v32, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 995
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 998
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v7

    .line 999
    .local v7, "charset":I
    if-eqz v7, :cond_d

    .line 1000
    const/16 v32, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1001
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 1004
    :cond_d
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 1005
    .local v13, "contentTypeLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1006
    int-to-long v0, v13

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1010
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    .line 1013
    .local v8, "contentId":[B
    if-eqz v8, :cond_e

    array-length v0, v8

    move/from16 v32, v0

    if-eqz v32, :cond_e

    .line 1014
    const/16 v32, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1015
    const/16 v32, 0x0

    aget-byte v32, v8, v32

    const/16 v33, 0x3c

    move/from16 v0, v33

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    array-length v0, v8

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    aget-byte v32, v8, v32

    const/16 v33, 0x3e

    move/from16 v0, v33

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 1016
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 1023
    :cond_e
    :goto_5
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v9

    .line 1025
    .local v9, "contentLocation":[B
    if-eqz v9, :cond_f

    array-length v0, v9

    move/from16 v32, v0

    if-eqz v32, :cond_f

    .line 1026
    const/16 v32, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1027
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1031
    :cond_f
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v22

    .line 1033
    .local v22, "headerLength":I
    const/16 v17, 0x0

    .line 1034
    .local v17, "dataLength":I
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v29

    .line 1036
    .local v29, "partData":[B
    if-eqz v29, :cond_14

    .line 1037
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v33

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 1038
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v17, v0

    .line 1066
    :cond_10
    :goto_6
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v32

    sub-int v32, v32, v22

    move/from16 v0, v17

    move/from16 v1, v32

    if-eq v0, v1, :cond_1a

    .line 1067
    new-instance v32, Ljava/lang/RuntimeException;

    const-string/jumbo v33, "BUG: Length sanity check failed"

    invoke-direct/range {v32 .. v33}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 962
    .end local v7    # "charset":I
    .end local v8    # "contentId":[B
    .end local v9    # "contentLocation":[B
    .end local v13    # "contentTypeLength":I
    .end local v17    # "dataLength":I
    .end local v22    # "headerLength":I
    .end local v25    # "name":[B
    .end local v29    # "partData":[B
    :cond_11
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto/16 :goto_4

    .line 985
    .restart local v25    # "name":[B
    :cond_12
    const/16 v32, 0x1

    return v32

    .line 1018
    .restart local v7    # "charset":I
    .restart local v8    # "contentId":[B
    .restart local v13    # "contentTypeLength":I
    :cond_13
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "<"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    new-instance v33, Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ">"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1040
    .restart local v9    # "contentLocation":[B
    .restart local v17    # "dataLength":I
    .restart local v22    # "headerLength":I
    .restart local v29    # "partData":[B
    :cond_14
    const/4 v14, 0x0

    .line 1042
    .local v14, "cr":Ljava/io/InputStream;
    const/16 v32, 0x400

    :try_start_2
    move/from16 v0, v32

    new-array v6, v0, [B

    .line 1043
    .local v6, "buffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v32, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 1044
    .local v14, "cr":Ljava/io/InputStream;
    const/16 v24, 0x0

    .line 1045
    .local v24, "len":I
    :goto_7
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v24

    const/16 v32, -0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_15

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v24

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1047
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    move/from16 v32, v0

    add-int v32, v32, v24

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1048
    add-int v17, v17, v24

    goto :goto_7

    .line 1057
    :cond_15
    if-eqz v14, :cond_10

    .line 1059
    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6

    .line 1060
    :catch_1
    move-exception v19

    .local v19, "e":Ljava/io/IOException;
    goto/16 :goto_6

    .line 1054
    .end local v6    # "buffer":[B
    .end local v14    # "cr":Ljava/io/InputStream;
    .end local v19    # "e":Ljava/io/IOException;
    .end local v24    # "len":I
    :catch_2
    move-exception v21

    .line 1055
    .local v21, "e":Ljava/lang/RuntimeException;
    const/16 v32, 0x1

    .line 1057
    if-eqz v14, :cond_16

    .line 1059
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1055
    :cond_16
    :goto_8
    return v32

    .line 1060
    :catch_3
    move-exception v19

    .restart local v19    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 1052
    .end local v19    # "e":Ljava/io/IOException;
    .end local v21    # "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v19

    .line 1053
    .restart local v19    # "e":Ljava/io/IOException;
    const/16 v32, 0x1

    .line 1057
    if-eqz v14, :cond_17

    .line 1059
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1053
    :cond_17
    :goto_9
    return v32

    .line 1060
    :catch_5
    move-exception v19

    goto :goto_9

    .line 1050
    .end local v19    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v18

    .line 1051
    .local v18, "e":Ljava/io/FileNotFoundException;
    const/16 v32, 0x1

    .line 1057
    if-eqz v14, :cond_18

    .line 1059
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 1051
    :cond_18
    :goto_a
    return v32

    .line 1060
    :catch_7
    move-exception v19

    .restart local v19    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 1056
    .end local v18    # "e":Ljava/io/FileNotFoundException;
    .end local v19    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v32

    .line 1057
    if-eqz v14, :cond_19

    .line 1059
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 1056
    :cond_19
    :goto_b
    throw v32

    .line 1060
    :catch_8
    move-exception v19

    .restart local v19    # "e":Ljava/io/IOException;
    goto :goto_b

    .line 1070
    .end local v19    # "e":Ljava/io/IOException;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1071
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1072
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 941
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    .line 1076
    .end local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v7    # "charset":I
    .end local v8    # "contentId":[B
    .end local v9    # "contentLocation":[B
    .end local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v13    # "contentTypeLength":I
    .end local v17    # "dataLength":I
    .end local v22    # "headerLength":I
    .end local v25    # "name":[B
    .end local v26    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v27    # "partContentType":[B
    .end local v28    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .end local v29    # "partData":[B
    :cond_1b
    const/16 v32, 0x0

    return v32
.end method

.method private makeNotifyInd()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1263
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_0

    .line 1264
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1265
    iput v6, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 1269
    :cond_0
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1270
    const/16 v4, 0x82

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1273
    const/16 v4, 0x98

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 1274
    return v7

    .line 1278
    :cond_1
    const/16 v4, 0x8d

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 1279
    return v7

    .line 1283
    :cond_2
    const/16 v4, 0x8a

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_3

    .line 1284
    return v7

    .line 1287
    :cond_3
    const/16 v4, 0x8e

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1288
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v4, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v2

    .line 1289
    .local v2, "size":J
    invoke-virtual {p0, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 1291
    const/16 v4, 0x88

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_4

    .line 1292
    return v7

    .line 1295
    :cond_4
    const/16 v4, 0x83

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1296
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v4, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v0

    .line 1297
    .local v0, "contentLocation":[B
    if-eqz v0, :cond_5

    .line 1298
    const-string/jumbo v4, "PduComposer"

    const-string/jumbo v5, "makeNotifyInd contentLocation != null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1304
    :goto_0
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v4, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 1305
    .local v1, "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v1, :cond_6

    .line 1306
    const-string/jumbo v4, "PduComposer"

    const-string/jumbo v5, "makeNotifyInd subject != null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const/16 v4, 0x96

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1308
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1314
    :goto_1
    const/16 v4, 0x85

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1317
    const/16 v4, 0x89

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_7

    .line 1318
    return v7

    .line 1301
    .end local v1    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    const-string/jumbo v4, "PduComposer"

    const-string/jumbo v5, "makeNotifyInd contentLocation  = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1310
    .restart local v1    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_6
    const-string/jumbo v4, "PduComposer"

    const-string/jumbo v5, "makeNotifyInd subject  = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1321
    :cond_7
    const/16 v4, 0x95

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_8

    .line 1322
    return v7

    .line 1325
    :cond_8
    return v6
.end method

.method private makeNotifyResp()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 727
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 728
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 729
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 733
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 734
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 737
    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    return v2

    .line 742
    :cond_1
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    return v2

    .line 747
    :cond_2
    const/16 v0, 0x95

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 748
    return v2

    .line 753
    :cond_3
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 755
    return v1
.end method

.method private makeReadRecInd()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 679
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 680
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 681
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 685
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 686
    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 689
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    return v2

    .line 694
    :cond_1
    const/16 v0, 0x8b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    return v2

    .line 699
    :cond_2
    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 700
    return v2

    .line 704
    :cond_3
    const/16 v0, 0x89

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 705
    return v2

    .line 709
    :cond_4
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 712
    const/16 v0, 0x9b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 713
    return v2

    .line 720
    :cond_5
    return v1
.end method

.method private makeRetrievePdu()I
    .locals 8

    .prologue
    const/16 v7, 0x98

    const/16 v6, 0x84

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1331
    const-string/jumbo v2, "PduComposer"

    const-string/jumbo v3, "makeRetrievePdu begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 1333
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1334
    iput v5, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 1338
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1339
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1341
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v2, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 1342
    .local v1, "trid":[B
    if-nez v1, :cond_1

    .line 1344
    const-string/jumbo v2, "PduComposer"

    const-string/jumbo v3, "Transaction ID is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :goto_0
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 1353
    return v4

    .line 1347
    :cond_1
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1348
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_0

    .line 1357
    :cond_2
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1360
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 1361
    return v4

    .line 1364
    :cond_3
    const/4 v0, 0x0

    .line 1367
    .local v0, "recipient":Z
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v4, :cond_4

    .line 1368
    const/4 v0, 0x1

    .line 1372
    :cond_4
    const/16 v2, 0x82

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v4, :cond_5

    .line 1373
    const/4 v0, 0x1

    .line 1377
    :cond_5
    const/16 v2, 0x81

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v4, :cond_6

    .line 1378
    const/4 v0, 0x1

    .line 1382
    :cond_6
    if-nez v0, :cond_7

    .line 1383
    return v4

    .line 1387
    :cond_7
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1391
    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1394
    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1397
    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1400
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1403
    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1410
    iget-boolean v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mForBackup:Z

    if-eqz v2, :cond_8

    .line 1411
    const/16 v2, 0x9b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1415
    :cond_8
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1418
    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody(I)I

    .line 1419
    const-string/jumbo v2, "PduComposer"

    const-string/jumbo v3, "makeRetrievePdu end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    return v5
.end method

.method private makeSendReqPdu()I
    .locals 6

    .prologue
    const/16 v5, 0x98

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 791
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 792
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 793
    iput v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 797
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 798
    const/16 v2, 0x80

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 801
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 803
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 804
    .local v1, "trid":[B
    if-nez v1, :cond_1

    .line 806
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Transaction-ID is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 808
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 811
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 812
    return v3

    .line 816
    :cond_2
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 819
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 820
    return v3

    .line 823
    :cond_3
    const/4 v0, 0x0

    .line 826
    .local v0, "recipient":Z
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 827
    const/4 v0, 0x1

    .line 831
    :cond_4
    const/16 v2, 0x82

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 832
    const/4 v0, 0x1

    .line 836
    :cond_5
    const/16 v2, 0x81

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_6

    .line 837
    const/4 v0, 0x1

    .line 841
    :cond_6
    if-nez v0, :cond_7

    .line 842
    return v3

    .line 846
    :cond_7
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 850
    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 853
    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 856
    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 859
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 862
    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 865
    const/16 v2, 0x84

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 868
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody(I)I

    .line 870
    return v4
.end method


# virtual methods
.method protected append(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 216
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 214
    return-void
.end method

.method protected appendDateValue(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 411
    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 6
    .param p1, "enStr"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 344
    sget-boolean v4, Lcom/google/android/mms/pdu/PduComposer;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 347
    .local v0, "charset":I
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 348
    .local v3, "textString":[B
    if-nez v3, :cond_2

    .line 349
    return-void

    .line 357
    :cond_2
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 358
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 360
    .local v2, "start":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 361
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 363
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    .line 364
    .local v1, "len":I
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 365
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 366
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 339
    return-void
.end method

.method protected appendLongInteger(J)V
    .locals 11
    .param p1, "longInt"    # J

    .prologue
    const/16 v8, 0x8

    .line 277
    move-wide v4, p1

    .line 280
    .local v4, "temp":J
    const/4 v2, 0x0

    .local v2, "size":I
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    if-ge v2, v8, :cond_0

    .line 281
    ushr-long/2addr v4, v8

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 289
    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v1, v3, 0x8

    .line 291
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 292
    ushr-long v6, p1, v1

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v3, v6

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 293
    add-int/lit8 v1, v1, -0x8

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_1
    return-void
.end method

.method protected appendOctet(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 244
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 471
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 464
    return-void
.end method

.method protected appendQuotedString([B)V
    .locals 2
    .param p1, "text"    # [B

    .prologue
    const/4 v1, 0x0

    .line 454
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 455
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 456
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 447
    return-void
.end method

.method protected appendShortInteger(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 234
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 224
    return-void
.end method

.method protected appendShortLength(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 253
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 323
    return-void
.end method

.method protected appendTextString([B)V
    .locals 3
    .param p1, "text"    # [B

    .prologue
    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 310
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_0

    .line 311
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 314
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 315
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 302
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .locals 13
    .param p1, "value"    # J

    .prologue
    const-wide/16 v10, 0x7f

    .line 384
    const-wide/16 v2, 0x7f

    .line 386
    .local v2, "max":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 387
    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 394
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    .line 395
    mul-int/lit8 v1, v0, 0x7

    ushr-long v4, p1, v1

    .line 396
    .local v4, "temp":J
    and-long/2addr v4, v10

    .line 398
    const-wide/16 v6, 0x80

    or-long/2addr v6, v4

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v1, v6

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 400
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 391
    .end local v4    # "temp":J
    :cond_1
    const/4 v1, 0x7

    shl-long v6, v2, v1

    or-long v2, v6, v10

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_2
    and-long v6, p1, v10

    long-to-int v1, v6

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 374
    return-void
.end method

.method protected appendValueLength(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 433
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 434
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 435
    return-void

    .line 438
    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 424
    return-void
.end method

.method protected arraycopy([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "pos"    # I
    .param p3, "length"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 208
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 206
    return-void
.end method

.method public make()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 161
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 197
    :pswitch_0
    return-object v2

    .line 163
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendReqPdu()I

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    return-object v2

    .line 169
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyInd()I

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    return-object v2

    .line 175
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    return-object v2

    .line 180
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    return-object v2

    .line 185
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    return-object v2

    .line 191
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeRetrievePdu()I

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    return-object v2

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 161
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public make(Z)[B
    .locals 1
    .param p1, "forBackup"    # Z

    .prologue
    .line 1253
    iput-boolean p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mForBackup:Z

    .line 1254
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v0

    return-object v0
.end method
