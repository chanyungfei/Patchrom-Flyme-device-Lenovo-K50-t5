.class public Lcom/android/internal/telephony/uicc/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/AdnRecord$1;
    }
.end annotation


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_ICC_PROVIDER_NO_ERROR:I = 0x1

.field public static final ERROR_ICC_PROVIDER_NUMBER_TOO_LONG:I = -0x1

.field public static final ERROR_ICC_PROVIDER_TEXT_TOO_LONG:I = -0x2

.field public static final ERROR_ICC_PROVIDER_UNKNOWN:I = 0x0

.field public static final ERROR_ICC_PROVIDER_WRONG_ADN_FORMAT:I = -0xf

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecord"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb

.field private static final SIM_NUM_PATTERN:Ljava/lang/String; = "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"


# instance fields
.field aas:I

.field additionalNumber:Ljava/lang/String;

.field additionalNumber2:Ljava/lang/String;

.field additionalNumber3:Ljava/lang/String;

.field grpIds:Ljava/lang/String;

.field mAlphaTag:Ljava/lang/String;

.field mEfid:I

.field mEmails:[Ljava/lang/String;

.field mExtRecord:I

.field mNumber:Ljava/lang/String;

.field mRecordNumber:I

.field result:I

.field sne:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnRecord$1;-><init>()V

    .line 98
    sput-object v0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 58
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 63
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 172
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 173
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 174
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 175
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 177
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 178
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 179
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 180
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "anr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 58
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 63
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 184
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 185
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 186
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 187
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 188
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 189
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 190
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 191
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 192
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "anr"    # Ljava/lang/String;
    .param p6, "anr2"    # Ljava/lang/String;
    .param p7, "anr3"    # Ljava/lang/String;
    .param p8, "emails"    # [Ljava/lang/String;
    .param p9, "grps"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 58
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 63
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 210
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 211
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 212
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 213
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 214
    iput-object p8, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 215
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 216
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 217
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 218
    iput-object p9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "anr"    # Ljava/lang/String;
    .param p6, "emails"    # [Ljava/lang/String;
    .param p7, "grps"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 58
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 63
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 197
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 198
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 199
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 200
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 201
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 202
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 203
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 204
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 205
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 58
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 63
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 160
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 161
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 162
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 163
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 164
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 165
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 166
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 167
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 168
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "record"    # [B

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 58
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 63
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 142
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 143
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 144
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecord([B)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "anr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 152
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 156
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "record"    # [B

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 137
    return-void
.end method

.method private isContainChineseChar(Ljava/lang/String;)Z
    .locals 5
    .param p1, "alphTag"    # Ljava/lang/String;

    .prologue
    .line 567
    const/4 v2, 0x0

    .line 568
    .local v2, "result":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 570
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 571
    const-string/jumbo v3, "[\u4e00-\u9fa5]"

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 572
    const/4 v2, 0x1

    .line 577
    :cond_0
    return v2

    .line 570
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isPhoneNumberInvaild(Ljava/lang/String;)Z
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, "tempPhoneNumber":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "tempPhoneNumber":Ljava/lang/String;
    const-string/jumbo v1, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    .line 585
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 584
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 586
    const/4 v1, 0x1

    return v1

    .line 589
    .end local v0    # "tempPhoneNumber":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private parseRecord([B)V
    .locals 6
    .param p1, "record"    # [B

    .prologue
    const/4 v5, 0x0

    .line 523
    :try_start_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0xe

    const/4 v4, 0x0

    .line 522
    invoke-static {p1, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 525
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 527
    .local v1, "footerOffset":I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 529
    .local v2, "numberLength":I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 531
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 532
    return-void

    .line 543
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 542
    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 546
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 548
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 549
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 550
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 551
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 552
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v1    # "footerOffset":I
    .end local v2    # "numberLength":I
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "AdnRecord"

    const-string/jumbo v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 557
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 558
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 559
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 560
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 561
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 562
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 333
    if-ne p0, p1, :cond_0

    .line 334
    const/4 v0, 0x1

    return v0

    .line 336
    :cond_0
    if-nez p0, :cond_1

    .line 337
    const-string/jumbo p0, ""

    .line 339
    :cond_1
    if-nez p1, :cond_2

    .line 340
    const-string/jumbo p1, ""

    .line 342
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .param p1, "extRecord"    # [B

    .prologue
    const/4 v3, 0x2

    .line 490
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 491
    return-void

    .line 494
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-eq v1, v3, :cond_1

    .line 496
    return-void

    .line 499
    :cond_1
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    .line 501
    return-void

    .line 504
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 505
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x2

    .line 504
    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "AdnRecord"

    const-string/jumbo v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 13
    .param p1, "recordSize"    # I

    .prologue
    .line 381
    const-string/jumbo v10, "AdnRecord"

    const-string/jumbo v11, "in BuildAdnString"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    add-int/lit8 v7, p1, -0xe

    .line 386
    .local v7, "footerOffset":I
    const/4 v1, 0x0

    .line 389
    .local v1, "alphaIdLength":I
    new-array v0, p1, [B

    .line 390
    .local v0, "adnString":[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, p1, :cond_0

    .line 391
    const/4 v10, -0x1

    aput-byte v10, v0, v9

    .line 390
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 393
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->isPhoneNumberInvaild(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 394
    const-string/jumbo v10, "AdnRecord"

    const-string/jumbo v11, "[buildAdnString] invaild number"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/16 v10, -0xf

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 396
    const/4 v10, 0x0

    return-object v10

    .line 398
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 399
    const-string/jumbo v10, "AdnRecord"

    const-string/jumbo v11, "[buildAdnString] Empty dialing number"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 434
    :goto_1
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 435
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->isContainChineseChar(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 436
    const-string/jumbo v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[buildAdnString] getBytes,alphaTag:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :try_start_0
    const-string/jumbo v10, "AdnRecord"

    const-string/jumbo v11, "call getBytes"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string/jumbo v11, "utf-16be"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 440
    .local v3, "byteTag":[B
    const-string/jumbo v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "byteTag,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 445
    const/4 v10, 0x1

    new-array v8, v10, [B

    .line 446
    .local v8, "header":[B
    const/16 v10, -0x80

    const/4 v11, 0x0

    aput-byte v10, v8, v11

    .line 447
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v8, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 448
    array-length v10, v3

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    if-le v10, v11, :cond_5

    .line 449
    const/4 v10, -0x2

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 450
    const-string/jumbo v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[buildAdnString] after getBytes byteTag.length:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 451
    array-length v12, v3

    .line 450
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 451
    const-string/jumbo v12, " adnString.length:"

    .line 450
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 451
    array-length v12, v0

    .line 450
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v10, 0x0

    return-object v10

    .line 402
    .end local v3    # "byteTag":[B
    .end local v8    # "header":[B
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 403
    const/16 v11, 0x14

    .line 402
    if-le v10, v11, :cond_3

    .line 404
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 405
    const-string/jumbo v10, "AdnRecord"

    .line 406
    const-string/jumbo v11, "[buildAdnString] Max length of dialing number is 20"

    .line 405
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v10, 0x0

    return-object v10

    .line 408
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v7, :cond_4

    .line 410
    const/4 v10, -0x2

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 412
    const-string/jumbo v10, "AdnRecord"

    .line 413
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[buildAdnString] Max length of tag is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 412
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v10, 0x0

    return-object v10

    .line 416
    :cond_4
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 418
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 424
    .local v2, "bcdNumber":[B
    add-int/lit8 v10, v7, 0x1

    array-length v11, v2

    .line 423
    const/4 v12, 0x0

    invoke-static {v2, v12, v0, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 426
    add-int/lit8 v10, v7, 0x0

    .line 427
    array-length v11, v2

    int-to-byte v11, v11

    .line 426
    aput-byte v11, v0, v10

    .line 428
    add-int/lit8 v10, v7, 0xc

    .line 429
    const/4 v11, -0x1

    .line 428
    aput-byte v11, v0, v10

    .line 430
    add-int/lit8 v10, v7, 0xd

    .line 431
    const/4 v11, -0x1

    .line 430
    aput-byte v11, v0, v10

    goto/16 :goto_1

    .line 419
    .end local v2    # "bcdNumber":[B
    :catch_0
    move-exception v6

    .line 420
    .local v6, "exc":Ljava/lang/RuntimeException;
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v10}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 421
    .local v4, "cmdEx":Lcom/android/internal/telephony/CommandException;
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "invalid number for BCD "

    invoke-direct {v10, v11, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 441
    .end local v4    # "cmdEx":Lcom/android/internal/telephony/CommandException;
    .end local v6    # "exc":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v5

    .line 442
    .local v5, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v10, "AdnRecord"

    const-string/jumbo v11, "[buildAdnString] getBytes exception"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v10, 0x0

    return-object v10

    .line 454
    .end local v5    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "byteTag":[B
    .restart local v8    # "header":[B
    :cond_5
    array-length v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v3, v11, v0, v12, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 455
    array-length v10, v3

    add-int/lit8 v1, v10, 0x1

    .line 456
    const-string/jumbo v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "arrarString"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .end local v3    # "byteTag":[B
    .end local v8    # "header":[B
    :cond_6
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v10, :cond_9

    if-le v1, v7, :cond_9

    .line 472
    const/4 v10, -0x2

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 473
    const-string/jumbo v10, "AdnRecord"

    .line 474
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[buildAdnString] Max length of tag is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",alphaIdLength:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 473
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v10, 0x0

    return-object v10

    .line 458
    :cond_7
    const-string/jumbo v10, "AdnRecord"

    const-string/jumbo v11, "[buildAdnString] stringToGsm8BitPacked"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v3

    .line 460
    .restart local v3    # "byteTag":[B
    array-length v1, v3

    .line 461
    array-length v10, v0

    if-le v1, v10, :cond_8

    .line 462
    const/4 v10, -0x2

    iput v10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    .line 463
    const-string/jumbo v10, "AdnRecord"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[buildAdnString] after stringToGsm8BitPacked byteTag.length:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 464
    array-length v12, v3

    .line 463
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 464
    const-string/jumbo v12, " adnString.length:"

    .line 463
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 464
    array-length v12, v0

    .line 463
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v10, 0x0

    return-object v10

    .line 467
    :cond_8
    array-length v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v3, v11, v0, v12, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_2

    .line 478
    .end local v3    # "byteTag":[B
    :cond_9
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public getAasIndex()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    return v0
.end method

.method public getAdditionalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalNumber(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "number":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 249
    .end local v0    # "number":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 242
    .restart local v0    # "number":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .local v0, "number":Ljava/lang/String;
    goto :goto_0

    .line 244
    .local v0, "number":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .local v0, "number":Ljava/lang/String;
    goto :goto_0

    .line 247
    .local v0, "number":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "AdnRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAdditionalNumber Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    return-object v0
.end method

.method public getErrorNumber()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->result:I

    return v0
.end method

.method public getGrpIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordIndex()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    return v0
.end method

.method public getSne()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    return-object v0
.end method

.method public hasExtendedRecord()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 328
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 323
    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 323
    :cond_0
    return v0
.end method

.method public isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 346
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAasIndex(I)V
    .locals 0
    .param p1, "aas"    # I

    .prologue
    .line 289
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 288
    return-void
.end method

.method public setAnr(Ljava/lang/String;)V
    .locals 0
    .param p1, "anr"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setAnr(Ljava/lang/String;I)V
    .locals 3
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 277
    if-nez p2, :cond_0

    .line 278
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 276
    :goto_0
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 280
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    goto :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 282
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    goto :goto_0

    .line 284
    :cond_2
    const-string/jumbo v0, "AdnRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnr Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .param p1, "emails"    # [Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setGrpIds(Ljava/lang/String;)V
    .locals 0
    .param p1, "grps"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setRecordIndex(I)V
    .locals 0
    .param p1, "nIndex"    # I

    .prologue
    .line 305
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 304
    return-void
.end method

.method public setSne(Ljava/lang/String;)V
    .locals 0
    .param p1, "sne"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ADN Record:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 311
    const-string/jumbo v1, ",alphaTag:"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    const-string/jumbo v1, ",number:"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 313
    const-string/jumbo v1, ",anr:"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 314
    const-string/jumbo v1, ",anr2:"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    const-string/jumbo v1, ",anr3:"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 316
    const-string/jumbo v1, ",aas:"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 316
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 317
    const-string/jumbo v1, ",emails:"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 318
    const-string/jumbo v1, ",grpIds:"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    const-string/jumbo v1, ",sne:"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 359
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->additionalNumber3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->grpIds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->aas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    return-void
.end method
