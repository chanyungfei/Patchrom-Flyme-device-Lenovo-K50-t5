.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_AAS_LOAD_DONE:I = 0x8

.field private static final EVENT_AAS_UPDATE_DONE:I = 0x15

.field private static final EVENT_ANR_LOAD_DONE:I = 0x5

.field private static final EVENT_ANR_RECORD_LOAD_DONE:I = 0xd

.field private static final EVENT_ANR_UPDATE_DONE:I = 0x9

.field private static final EVENT_EMAIL_LENGTH_READ_DONE:I = 0x12

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_EMAIL_RECORD_LOAD_DONE:I = 0x13

.field private static final EVENT_EMAIL_UPDATE_DONE:I = 0xb

.field private static final EVENT_EXT1_LOAD_DONE:I = 0x3e9

.field private static final EVENT_GAS_LOAD_DONE:I = 0x7

.field private static final EVENT_GAS_UPDATE_DONE:I = 0x11

.field private static final EVENT_GET_AAS_RECORD_SIZE_DONE:I = 0x14

.field private static final EVENT_GET_ANR_RECORD_SIZE_DONE:I = 0xe

.field private static final EVENT_GET_RECORDS_SIZE_DONE:I = 0x3e8

.field private static final EVENT_GET_RECORD_SIZE_DONE:I = 0x16

.field private static final EVENT_GRP_LOAD_DONE:I = 0x6

.field private static final EVENT_GRP_RECORD_LOAD_DONE:I = 0xf

.field private static final EVENT_GRP_UPDATE_DONE:I = 0xa

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_IAP_RECORD_LOAD_DONE:I = 0x1a

.field private static final EVENT_IAP_UPDATE_DONE:I = 0xc

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_QUERY_PHB_ADN_INFO:I = 0x1c

.field private static final EVENT_SELECT_EF_FILE_DONE:I = 0x1b

.field private static final EVENT_SNE_LOAD_DONE:I = 0x18

.field private static final EVENT_SNE_RECORD_LOAD_DONE:I = 0x17

.field private static final EVENT_SNE_UPDATE_DONE:I = 0x19

.field private static final EVENT_UPB_CAPABILITY_QUERY_DONE:I = 0x10

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UsimPhoneBookManager"

.field private static final UPB_EF_AAS:I = 0x3

.field private static final UPB_EF_ANR:I = 0x0

.field private static final UPB_EF_EMAIL:I = 0x1

.field private static final UPB_EF_GAS:I = 0x4

.field private static final UPB_EF_GRP:I = 0x5

.field private static final UPB_EF_SNE:I = 0x2

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field public static final USIM_ERROR_GROUP_COUNT:I = -0x14

.field public static final USIM_ERROR_NAME_LEN:I = -0xa

.field public static final USIM_MAX_ANR_COUNT:I = 0x3

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_CONDITIONAL_LENGTH:I = 0x2

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field protected efData:Lcom/android/internal/telephony/EFResponseData;

.field private hasAnrFile:Z

.field private hasEmailFile:Z

.field private hasGrpFile:Z

.field private mAasFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAasForAnrRec:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAasLock:Ljava/lang/Object;

.field private mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field private mAdnFileSize:I

.field private mAdnRecordSize:[I

.field private mAnrFileList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mAnrFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAnrFileSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrRecordSize:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mEmailFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailFileSize:I

.field private mEmailPresentInIap:Z

.field private mEmailRecTable:[I

.field private mEmailRecordSize:I

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExt1ForAnrRec:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mGasForGrp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/UsimGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mGasLock:Ljava/lang/Object;

.field private mIapFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mIapFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mIsSameEmailEfid:Z

.field private final mLock:Ljava/lang/Object;

.field private mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPbrFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRecordSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mRefreshCache:Z

.field private mResult:I

.field private mSneFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mSneFileSize:I

.field private mSneRecordSize:I

.field private final mUPBCapabilityLock:Ljava/lang/Object;

.field private mUpbCap:[I


# direct methods
.method static synthetic -set0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V
    .locals 5
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .prologue
    const/16 v4, 0xfa

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    .line 91
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsSameEmailEfid:Z

    .line 93
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 94
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 95
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    .line 96
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    .line 97
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileSize:I

    .line 98
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    .line 107
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 111
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    .line 112
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    .line 113
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    .line 114
    const/16 v0, 0x190

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    .line 117
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 118
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    .line 119
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    .line 120
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 191
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 192
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 193
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 194
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 196
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    .line 198
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasEmailFile:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasAnrFile:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasGrpFile:Z

    .line 203
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 207
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 211
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 212
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 213
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 214
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 220
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager constructor finished. "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 5
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    const/16 v4, 0xfa

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 223
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    .line 91
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsSameEmailEfid:Z

    .line 93
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 94
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 95
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    .line 96
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    .line 97
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileSize:I

    .line 98
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    .line 107
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 111
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    .line 112
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    .line 113
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    .line 114
    const/16 v0, 0x190

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    .line 117
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 118
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    .line 119
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    .line 120
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 191
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 192
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 193
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 194
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 196
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    .line 198
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasEmailFile:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasAnrFile:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasGrpFile:Z

    .line 225
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 229
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 233
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 234
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 235
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 236
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 242
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager constructor finished. "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method private buildAnrRecord(Ljava/lang/String;II)[B
    .locals 8
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "recordSize"    # I
    .param p3, "aas"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2886
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "buildAnrRecord anr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",recordSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",aas:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2887
    if-gtz p2, :cond_0

    .line 2888
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecordSize()V

    .line 2890
    :cond_0
    iget p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 2891
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "buildAnrRecord recordSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2895
    new-array v0, p2, [B

    .line 2896
    .local v0, "anrString":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 2897
    const/4 v4, -0x1

    aput-byte v4, v0, v2

    .line 2896
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2900
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2901
    .local v3, "updatedAnr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2902
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "[buildAdnString] Empty dialing number"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    return-object v0

    .line 2904
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_3

    .line 2905
    const-string/jumbo v4, "UsimPhoneBookManager"

    .line 2906
    const-string/jumbo v5, "[buildAnrRecord] Max length of dialing number is 20"

    .line 2905
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    return-object v7

    .line 2909
    :cond_3
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 2910
    .local v1, "bcdNumber":[B
    if-eqz v1, :cond_4

    .line 2911
    int-to-byte v4, p3

    aput-byte v4, v0, v6

    .line 2913
    array-length v4, v1

    const/4 v5, 0x2

    .line 2912
    invoke-static {v1, v6, v0, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2914
    array-length v4, v1

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v0, v5

    .line 2917
    :cond_4
    return-object v0
.end method

.method private buildEmailRecord(Ljava/lang/String;II)[B
    .locals 11
    .param p1, "strEmail"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "recordSize"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x0

    .line 2924
    new-array v1, p3, [B

    .line 2926
    .local v1, "eMailRecData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 2927
    aput-byte v7, v1, v2

    .line 2926
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2929
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2951
    :cond_1
    :goto_1
    return-object v1

    .line 2930
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 2931
    .local v0, "eMailData":[B
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-eq v6, v7, :cond_3

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v6, :cond_3

    array-length v6, v1

    add-int/lit8 v3, v6, -0x2

    .line 2932
    .local v3, "maxDataLength":I
    :goto_2
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "buildEmailRecord eMailData.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", maxDataLength="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    array-length v6, v0

    if-le v6, v3, :cond_4

    .line 2935
    return-object v9

    .line 2931
    .end local v3    # "maxDataLength":I
    :cond_3
    array-length v3, v1

    .restart local v3    # "maxDataLength":I
    goto :goto_2

    .line 2937
    :cond_4
    array-length v6, v0

    invoke-static {v0, v10, v1, v10, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2938
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "buildEmailRecord eMailData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", eMailRecData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v6, :cond_1

    .line 2941
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAdnFileids:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "record$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 2942
    .local v4, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v6, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    add-int/lit8 v7, p2, -0x1

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int/2addr v7, v8

    if-ne v6, v7, :cond_5

    .line 2943
    add-int/lit8 v6, p3, -0x2

    iget-byte v7, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mSfi:B

    aput-byte v7, v1, v6

    .line 2944
    add-int/lit8 v6, p3, -0x1

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 2945
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "buildEmailRecord x+1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mSfi:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", x+2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v8, p2, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private changeAdnRecordNumber(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "baseNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4816
    .local p2, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4817
    .local v2, "size":I
    const/4 v1, 0x0

    .line 4820
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4821
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 4822
    .local v0, "adnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v0, :cond_0

    .line 4823
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordIndex(I)V

    .line 4820
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4826
    .end local v0    # "adnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    return-object p2
.end method

.method private checkIsPhbReady()Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4633
    const-string/jumbo v5, "false"

    .line 4634
    .local v5, "strPhbReady":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 4635
    .local v3, "strAllSimState":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 4636
    .local v4, "strCurSimState":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4637
    .local v0, "isSimLocked":Z
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v2

    .line 4638
    .local v2, "slotId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    .line 4639
    .local v6, "subId":[I
    aget v10, v6, v8

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 4641
    .local v1, "phoneId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4642
    const-string/jumbo v10, "gsm.sim.state"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4644
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 4645
    const-string/jumbo v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4646
    .local v7, "values":[Ljava/lang/String;
    if-ltz v1, :cond_0

    array-length v10, v7

    if-ge v1, v10, :cond_0

    aget-object v10, v7, v1

    if-eqz v10, :cond_0

    .line 4647
    aget-object v4, v7, v1

    .line 4651
    .end local v7    # "values":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v10, "NETWORK_LOCKED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "PIN_REQUIRED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4653
    .end local v0    # "isSimLocked":Z
    :goto_0
    if-ne v9, v2, :cond_4

    .line 4654
    const-string/jumbo v10, "gsm.sim.ril.phbready.2"

    const-string/jumbo v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4664
    :cond_1
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[isPhbReady] subId[0]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v6, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", slotId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isPhbReady: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",strSimState: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4666
    const-string/jumbo v10, "true"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v0, :cond_7

    :cond_2
    :goto_2
    return v8

    .line 4651
    .restart local v0    # "isSimLocked":Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 4655
    .end local v0    # "isSimLocked":Z
    :cond_4
    const/4 v10, 0x2

    if-ne v10, v2, :cond_5

    .line 4656
    const-string/jumbo v10, "gsm.sim.ril.phbready.3"

    const-string/jumbo v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 4657
    :cond_5
    const/4 v10, 0x3

    if-ne v10, v2, :cond_6

    .line 4658
    const-string/jumbo v10, "gsm.sim.ril.phbready.4"

    const-string/jumbo v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 4660
    :cond_6
    const-string/jumbo v10, "gsm.sim.ril.phbready"

    const-string/jumbo v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    move v8, v9

    .line 4666
    goto :goto_2
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v0, 0x0

    .line 1004
    if-nez p1, :cond_0

    .line 1005
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 1006
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 1007
    return-void

    .line 1009
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 1003
    return-void
.end method

.method private decodeGas(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "srcGas"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1914
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[decodeGas] gas string is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p1, :cond_1

    const-string/jumbo v5, "null"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 1916
    :cond_0
    return-object v8

    :cond_1
    move-object v5, p1

    .line 1914
    goto :goto_0

    .line 1918
    :cond_2
    const/4 v3, 0x0

    .line 1921
    .local v3, "retGas":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1922
    .local v0, "ba":[B
    if-nez v0, :cond_3

    .line 1923
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "gas string is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    return-object v3

    .line 1926
    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const-string/jumbo v6, "utf-16be"

    const/4 v7, 0x0

    invoke-direct {v4, v0, v7, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "retGas":Ljava/lang/String;
    .local v4, "retGas":Ljava/lang/String;
    move-object v3, v4

    .line 1932
    .end local v0    # "ba":[B
    .end local v4    # "retGas":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 1929
    .restart local v3    # "retGas":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1930
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "[decodeGas] RuntimeException"

    invoke-static {v5, v6, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1927
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 1928
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "[decodeGas] implausible UnsupportedEncodingException"

    invoke-static {v5, v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 1939
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1941
    .local v3, "output":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1942
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1943
    .local v0, "hexInt":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_0

    .line 1944
    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1946
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1949
    .end local v0    # "hexInt":Ljava/lang/String;
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getAdnStorageInfo()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4278
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "getAdnStorageInfo "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v1, :cond_0

    .line 4281
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1c

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPhbStorageInfo(ILandroid/os/Message;)V

    .line 4282
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4284
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 4293
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    return-object v1

    .line 4285
    :catch_0
    move-exception v0

    .line 4286
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in getAdnStorageInfo"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4282
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 4290
    :cond_0
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "GetAdnStorageInfo: filehandle is null."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    return-object v3
.end method

.method private getRecNum([Ljava/lang/String;II[BI)I
    .locals 9
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "pbrRecNum"    # I
    .param p3, "nIapRecNum"    # I
    .param p4, "iapRec"    # [B
    .param p5, "tagNum"    # I

    .prologue
    const/16 v8, 0xff

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 2556
    const/4 v0, 0x0

    .line 2557
    .local v0, "hasEmail":Z
    if-nez p1, :cond_1

    .line 2559
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p4, v4

    if-eq v4, v8, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p4, v4

    if-lez v4, :cond_0

    .line 2560
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    add-int/lit8 v5, v5, -0x1

    aput v6, v4, v5

    .line 2562
    :cond_0
    return v7

    .line 2564
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_4

    .line 2565
    aget-object v4, p1, v1

    if-eqz v4, :cond_2

    aget-object v4, p1, v1

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2564
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2566
    :cond_3
    const/4 v0, 0x1

    .line 2570
    :cond_4
    if-nez v0, :cond_6

    .line 2571
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p4, v4

    if-eq v4, v8, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p4, v4

    if-lez v4, :cond_5

    .line 2572
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    add-int/lit8 v5, v5, -0x1

    aput v6, v4, v5

    .line 2574
    :cond_5
    return v7

    .line 2576
    :cond_6
    aget-byte v3, p4, p5

    .line 2577
    .local v3, "recNum":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRecNum recNum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2578
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-gt v3, v4, :cond_7

    if-lt v3, v8, :cond_a

    .line 2584
    :cond_7
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v2, p2, v4

    .line 2585
    .local v2, "nOffset":I
    move v1, v2

    :goto_2
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v4, v2

    if-ge v1, v4, :cond_8

    .line 2586
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEmailsByAdnIndex: mEmailRecTable["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2587
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v6, v6, v1

    .line 2586
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v4, v4, v1

    if-nez v4, :cond_b

    .line 2589
    add-int/lit8 v4, v1, 0x1

    sub-int v3, v4, v2

    .line 2590
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aput p3, v4, v1

    .line 2595
    .end local v2    # "nOffset":I
    :cond_8
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-le v3, v4, :cond_9

    .line 2596
    const/16 v3, 0xff

    .line 2598
    :cond_9
    if-ne v3, v7, :cond_c

    .line 2599
    const/4 v4, -0x2

    return v4

    .line 2578
    :cond_a
    if-gtz v3, :cond_8

    goto :goto_1

    .line 2585
    .restart local v2    # "nOffset":I
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2601
    .end local v2    # "nOffset":I
    :cond_c
    return v3
.end method

.method private getRecNumForSameEmailEfid([Ljava/lang/String;II[BI)I
    .locals 9
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "pbrRecNum"    # I
    .param p3, "nIapRecNum"    # I
    .param p4, "iapRec"    # [B
    .param p5, "tagNum"    # I

    .prologue
    const/16 v8, 0xff

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 2621
    const/4 v0, 0x0

    .line 2622
    .local v0, "hasEmail":Z
    if-nez p1, :cond_1

    .line 2623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRecNumForSameEmailEfid iapRec["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2624
    const-string/jumbo v5, " = "

    .line 2623
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2624
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    .line 2623
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2625
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p4, v4

    if-eq v4, v8, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p4, v4

    if-lez v4, :cond_0

    .line 2626
    invoke-direct {p0, p2, p4, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->resetEmailRecTable(I[BI)V

    .line 2628
    :cond_0
    return v7

    .line 2630
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_4

    .line 2631
    aget-object v4, p1, v1

    if-eqz v4, :cond_2

    aget-object v4, p1, v1

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2630
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2632
    :cond_3
    const/4 v0, 0x1

    .line 2636
    :cond_4
    if-nez v0, :cond_6

    .line 2637
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p4, v4

    if-eq v4, v8, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, p4, v4

    if-lez v4, :cond_5

    .line 2638
    invoke-direct {p0, p2, p4, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->resetEmailRecTable(I[BI)V

    .line 2640
    :cond_5
    return v7

    .line 2642
    :cond_6
    aget-byte v3, p4, p5

    .line 2643
    .local v3, "recNum":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRecNum recNum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2644
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-gt v3, v4, :cond_7

    if-lt v3, v8, :cond_a

    .line 2650
    :cond_7
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v2, p2, v4

    .line 2651
    .local v2, "nOffset":I
    move v1, v2

    :goto_2
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v4, v2

    if-ge v1, v4, :cond_8

    .line 2652
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEmailsByAdnIndex: mEmailRecTable["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2653
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v6, v6, v1

    .line 2652
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    const/4 v4, 0x1

    if-ne p2, v4, :cond_b

    .line 2655
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v4, v4, v1

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    sub-int v5, v1, v5

    aget v4, v4, v5

    if-nez v4, :cond_c

    .line 2656
    add-int/lit8 v4, v1, 0x1

    sub-int v3, v4, v2

    .line 2657
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    add-int/lit16 v5, p3, 0xfa

    aput v5, v4, v1

    .line 2658
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    sub-int v5, v1, v5

    add-int/lit16 v6, p3, 0xfa

    aput v6, v4, v5

    .line 2659
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEmailsByAdnIndex: then mEmailRecTable["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2660
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v6, v6, v1

    .line 2659
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    .end local v2    # "nOffset":I
    :cond_8
    :goto_3
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-le v3, v4, :cond_9

    .line 2676
    const/16 v3, 0xff

    .line 2678
    :cond_9
    if-ne v3, v7, :cond_d

    .line 2679
    const/4 v4, -0x2

    return v4

    .line 2644
    :cond_a
    if-gtz v3, :cond_8

    goto/16 :goto_1

    .line 2664
    .restart local v2    # "nOffset":I
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v4, v4, v1

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v5, v1

    aget v4, v4, v5

    if-nez v4, :cond_c

    .line 2665
    add-int/lit8 v4, v1, 0x1

    sub-int v3, v4, v2

    .line 2666
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aput p3, v4, v1

    .line 2667
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v5, v1

    aput p3, v4, v5

    .line 2668
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEmailsByAdnIndex: then mEmailRecTable["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2669
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v6, v6, v1

    .line 2668
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2651
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 2681
    .end local v2    # "nOffset":I
    :cond_d
    return v3
.end method

.method private isSameEfidEmailCapacityFree(II)Z
    .locals 5
    .param p1, "pbrRecNUm"    # I
    .param p2, "emailRecIndex"    # I

    .prologue
    .line 2685
    const/4 v0, 0x0

    .line 2686
    .local v0, "free":Z
    if-nez p1, :cond_1

    .line 2687
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v1, v1, p2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, p2

    aget v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2688
    :goto_0
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSameEfidEmailCapacityFree: mEmailRecTable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2689
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v3, v3, p2

    .line 2688
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSameEfidEmailCapacityFree: mEmailRecTable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2691
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v4, p2

    aget v3, v3, v4

    .line 2690
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    :goto_1
    return v0

    .line 2687
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2693
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v1, v1, p2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    sub-int v2, p2, v2

    aget v1, v1, v2

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 2694
    :goto_2
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSameEfidEmailCapacityFree: mEmailRecTable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2695
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v3, v3, p2

    .line 2694
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSameEfidEmailCapacityFree: mEmailRecTable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    sub-int v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2697
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    sub-int v4, p2, v4

    aget v3, v3, v4

    .line 2696
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2693
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2455
    const-string/jumbo v0, "UsimPhoneBookManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    return-void
.end method

.method private queryUpbCapablityAndWait()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1768
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "UsimPhoneBookManager queryUpbCapablityAndWait begin"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1770
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 1771
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v4, 0x0

    aput v4, v2, v1

    .line 1770
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1774
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1775
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1777
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v3

    .line 1783
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UsimPhoneBookManager queryUpbCapablityAndWait done:N_Anr is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1784
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v4, v4, v5

    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1784
    const-string/jumbo v4, ", N_Email is "

    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1784
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1784
    const-string/jumbo v4, ",N_Sne is "

    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1784
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1786
    const-string/jumbo v4, ",N_Aas is "

    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1786
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1786
    const-string/jumbo v4, ", L_Aas is "

    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1786
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1786
    const-string/jumbo v4, ",N_Gas is "

    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1786
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1787
    const-string/jumbo v4, ",L_Gas is "

    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1787
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1787
    const-string/jumbo v4, ", N_Grp is "

    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1787
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    return-void

    .line 1778
    :catch_0
    move-exception v0

    .line 1779
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v4, "Interrupted Exception in queryUpbCapablityAndWait"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1769
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private readAASFileAndWait(I)V
    .locals 13
    .param p1, "recNum"    # I

    .prologue
    const/16 v12, 0xc7

    .line 608
    const-string/jumbo v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readAASFileAndWait "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v9, :cond_1

    .line 610
    :cond_0
    return-void

    .line 612
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 613
    .local v3, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 617
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 618
    .local v2, "efid":I
    const-string/jumbo v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readAASFileAndWait-get AAS EFID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-eqz v9, :cond_5

    .line 620
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 621
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AAS has been loaded for Pbr number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 622
    return-void

    .line 614
    .end local v2    # "efid":I
    :cond_2
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v10, "readAASFileAndWait-PBR have no AAS EF record"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void

    .line 624
    .restart local v2    # "efid":I
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 625
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 626
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 627
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 628
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 629
    .local v7, "pbr":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 630
    .local v4, "fileid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 631
    .local v1, "ef":I
    if-ne v2, v1, :cond_4

    .line 632
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AAS has been loaded for ef "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 633
    return-void

    .line 638
    .end local v1    # "ef":I
    .end local v4    # "fileid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v7    # "pbr":I
    .end local v8    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v9, :cond_6

    .line 639
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 640
    .local v6, "msg":Landroid/os/Message;
    iput p1, v6, Landroid/os/Message;->arg1:I

    .line 641
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v9, v2, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 643
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    return-void

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v10, "Interrupted Exception in readAASFileAndWait"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 648
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "msg":Landroid/os/Message;
    :cond_6
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v10, "readAASFileAndWait-IccFileHandler is null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void
.end method

.method private readAdnFileAndWait(I)V
    .locals 5
    .param p1, "recNum"    # I

    .prologue
    const/16 v4, 0x6f3a

    .line 980
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UsimPhoneBookManager readAdnFileAndWait: recNum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 983
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 981
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 997
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    :goto_0
    return-void

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readAdnFileAndWaitForUICC(I)V
    .locals 9
    .param p1, "recNum"    # I

    .prologue
    const/16 v8, 0xc0

    .line 4780
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readAdnFileAndWaitForUICC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4781
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 4782
    :cond_0
    return-void

    .line 4785
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 4787
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4792
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4793
    .local v1, "efid":I
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readAdnFileAndWaitForUICC: EFADN id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAdnFileids:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "record$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4796
    .local v3, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v5, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v5, v1, :cond_2

    iget v5, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v5, p1, :cond_2

    .line 4797
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UiccPhoneBookManager readAdnFileAndWaitForUICC: recNum is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4799
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 4800
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/16 v7, 0x6f3a

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4799
    invoke-virtual {v5, v1, v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 4803
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4804
    :catch_0
    move-exception v0

    .line 4805
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4788
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "efid":I
    .end local v3    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v4    # "record$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readAdnFileAndWaitForUICC: No ADN tag in pbr record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4789
    return-void

    .line 4779
    .restart local v1    # "efid":I
    .restart local v4    # "record$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private readAnrFileAndWait(I)V
    .locals 22
    .param p1, "recNum"    # I

    .prologue
    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 682
    :cond_0
    return-void

    .line 684
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 685
    .local v8, "fileIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 686
    :cond_2
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readAnrFileAndWait: No anr tag in pbr record "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return-void

    .line 690
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasAnrFile:Z

    .line 691
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readAnrFileAndWait: recNum is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_d

    .line 694
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasAnrFile:Z

    .line 695
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 696
    .local v7, "efid":I
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readAnrFileAndWait: recNum is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 697
    const-string/jumbo v20, " EFANR id is "

    .line 696
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "record$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 700
    .local v15, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_4

    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_4

    .line 701
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v18, v0

    const/16 v19, 0xa9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 702
    iput v10, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    .line 703
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readType2Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 704
    return-void

    .line 709
    .end local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 710
    .local v13, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v18, v0

    mul-int v12, p1, v18

    .line 711
    .local v12, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v18, v0

    add-int v11, v12, v18

    .line 712
    .local v11, "nMax":I
    if-ge v13, v11, :cond_6

    .line 713
    move v11, v13

    .line 716
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 717
    const/16 v18, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 718
    .local v17, "result":Landroid/os/Message;
    mul-int/lit8 v18, p1, 0x3

    add-int v18, v18, v10

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 725
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 731
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v19, "UsimPhoneBookManager readAnrFileAndWait: AnrRecordSize is 0. "

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-void

    .line 721
    .end local v17    # "result":Landroid/os/Message;
    :cond_7
    return-void

    .line 726
    .restart local v17    # "result":Landroid/os/Message;
    :catch_0
    move-exception v6

    .line 727
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v19, "Interrupted Exception in readAnrFileAndWait"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 734
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_8
    move v9, v12

    .local v9, "i":I
    :goto_2
    if-ge v9, v11, :cond_b

    .line 737
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 743
    .local v14, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_9

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_a

    .line 744
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 745
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v4, v0, [I

    .line 746
    .local v4, "data":[I
    const/16 v18, 0x0

    aput p1, v4, v18

    .line 747
    const/16 v18, 0x1

    aput v9, v4, v18

    .line 748
    const/16 v18, 0x2

    aput v10, v4, v18

    .line 749
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readAnrFileAndWait: read anr for  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 750
    const-string/jumbo v20, " adn "

    .line 749
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 750
    const-string/jumbo v20, "( "

    .line 749
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 750
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v20

    .line 749
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 750
    const-string/jumbo v20, ", "

    .line 749
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 750
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v20

    .line 749
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 751
    const-string/jumbo v20, " )  mReadingAnrNum is "

    .line 749
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v20

    .line 749
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v18, v0

    add-int/lit8 v19, v9, 0x1

    sub-int v19, v19, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move/from16 v20, v0

    .line 753
    const/16 v21, 0xd

    .line 752
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 734
    .end local v4    # "data":[I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 738
    .end local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_1
    move-exception v5

    .line 739
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readAnrFileAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 740
    const-string/jumbo v20, "index is "

    .line 739
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    if-nez v18, :cond_c

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 693
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 761
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 763
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "readAnrFileAndWait before mLock.wait "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 765
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 769
    :goto_4
    const-string/jumbo v18, "readAnrFileAndWait after mLock.wait"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 766
    :catch_2
    move-exception v6

    .line 767
    .restart local v6    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v19, "Interrupted Exception in readAnrFileAndWait"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 679
    .end local v6    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "efid":I
    .end local v9    # "i":I
    .end local v11    # "nMax":I
    .end local v12    # "nOffset":I
    .end local v13    # "numAdnRecs":I
    .end local v16    # "record$iterator":Ljava/util/Iterator;
    .end local v17    # "result":Landroid/os/Message;
    :cond_d
    return-void
.end method

.method private readAnrRecordSize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3686
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "UsimPhoneBookManager readAnrRecordSize"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 3688
    :cond_0
    return-void

    .line 3690
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3691
    .local v2, "fileIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3692
    :cond_2
    return-void

    .line 3695
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 3696
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "UsimPhoneBookManager readAnrRecordSize: No anr tag in pbr record "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    return-void

    .line 3700
    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3701
    .local v1, "efid":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v3, :cond_5

    .line 3702
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 3706
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3708
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v4

    .line 3685
    return-void

    .line 3704
    :cond_5
    return-void

    .line 3709
    :catch_0
    move-exception v0

    .line 3710
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in readAnrRecordSize"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3706
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private readEmailFileAndWait(I)V
    .locals 25
    .param p1, "recNum"    # I

    .prologue
    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 363
    :cond_0
    return-void

    .line 365
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 366
    .local v10, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v10, :cond_2

    .line 367
    return-void

    .line 369
    :cond_2
    const/16 v22, 0xca

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 370
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasEmailFile:Z

    .line 371
    const/16 v22, 0xca

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 372
    .local v9, "efid":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readEmailFileAndWait: efid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 373
    const/16 v18, 0x0

    .line 374
    .local v18, "rec":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileids:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "record$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 375
    .local v19, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readEmailFileAndWait mEmailFile record "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v9, :cond_3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_3

    .line 377
    move-object/from16 v18, v19

    .line 378
    .local v18, "rec":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v22, v0

    const/16 v23, 0xa8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 379
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readType1Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 380
    return-void

    .line 381
    :cond_4
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v22, v0

    const/16 v23, 0xa9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 382
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readEmailFileAndWait type2 email "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 393
    .end local v18    # "rec":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v19    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 394
    const/16 v22, 0xc1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 395
    const/16 v22, 0xc1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(IIZ)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_8

    .line 402
    :cond_6
    const-string/jumbo v22, "UsimPhoneBookManager"

    const-string/jumbo v23, "Error: IAP file is empty"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void

    .line 398
    :cond_7
    const-string/jumbo v22, "UsimPhoneBookManager"

    const-string/jumbo v23, "readEmailFileAndWait Error: No IAP file!"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void

    .line 401
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-eqz v22, :cond_6

    .line 406
    :cond_9
    const-string/jumbo v22, "readEmailFileAndWait after read IAP"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 423
    .local v17, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v22, v0

    mul-int v16, p1, v22

    .line 424
    .local v16, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v22, v0

    add-int v15, v16, v22

    .line 425
    .local v15, "nMax":I
    move/from16 v0, v17

    if-ge v0, v15, :cond_a

    .line 426
    move/from16 v15, v17

    .line 428
    :cond_a
    move/from16 v11, v16

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v22, v0

    add-int v22, v22, v16

    move/from16 v0, v22

    if-ge v11, v0, :cond_b

    .line 430
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v23, v22, v11
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 431
    :catch_0
    move-exception v6

    .line 432
    .local v6, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "init RecTable error "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 436
    .end local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_b
    const/16 v21, 0x0

    .line 437
    .local v21, "size":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "size":[I
    check-cast v21, [I

    .line 442
    .local v21, "size":[I
    :goto_1
    if-eqz v21, :cond_c

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    .line 443
    :cond_c
    const-string/jumbo v22, "UsimPhoneBookManager"

    const-string/jumbo v23, "UsimPhoneBookManager readEmailFileAndWait: read record size error."

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void

    .line 440
    .local v21, "size":[I
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v21

    .local v21, "size":[I
    goto :goto_1

    .line 447
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 449
    .local v12, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_f

    .line 450
    const-string/jumbo v22, "UsimPhoneBookManager"

    const-string/jumbo v23, "Warning: IAP size is 0"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void

    .line 454
    :cond_f
    move/from16 v11, v16

    :goto_2
    if-ge v11, v15, :cond_12

    .line 457
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 464
    .local v4, "arec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-gtz v22, :cond_10

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_11

    .line 465
    :cond_10
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v5, v0, [I

    .line 467
    .local v5, "data":[I
    sub-int v22, v11, v16

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 468
    .local v13, "iapRecord":[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v22, v0

    aget-byte v22, v13, v22

    move/from16 v0, v22

    and-int/lit16 v14, v0, 0xff

    .line 469
    .local v14, "index":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readEmailFileAndWait iap["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sub-int v23, v11, v16

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "]="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 470
    if-lez v14, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v14, v0, :cond_13

    .line 454
    .end local v5    # "data":[I
    .end local v13    # "iapRecord":[B
    .end local v14    # "index":I
    :cond_11
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 458
    .end local v4    # "arec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_1
    move-exception v7

    .line 459
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v22, "UsimPhoneBookManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "UsimPhoneBookManager readEmailFileAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 460
    const-string/jumbo v24, "index is "

    .line 459
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v22

    if-nez v22, :cond_14

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 486
    return-void

    .line 470
    .restart local v4    # "arec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v5    # "data":[I
    .restart local v13    # "iapRecord":[B
    .restart local v14    # "index":I
    :cond_13
    const/16 v22, 0xff

    move/from16 v0, v22

    if-ge v14, v0, :cond_11

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 474
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v22, v0

    mul-int v22, v22, v16

    add-int v22, v22, v14

    const/16 v23, 0x0

    aput v22, v5, v23

    .line 475
    const/16 v22, 0x1

    aput v11, v5, v22

    .line 476
    const-string/jumbo v22, "UsimPhoneBookManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "UsimPhoneBookManager readEmailFileAndWait: read email for  "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 477
    const-string/jumbo v24, " adn "

    .line 476
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 477
    const-string/jumbo v24, "( "

    .line 476
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 477
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v24

    .line 476
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 477
    const-string/jumbo v24, ", "

    .line 476
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 477
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v24

    .line 476
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 478
    const-string/jumbo v24, " )  mReadingEmailNum is "

    .line 476
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v24

    .line 476
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v23, v21, v23

    .line 480
    const/16 v24, 0x13

    .line 479
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v9, v14, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    goto/16 :goto_3

    .line 488
    .end local v4    # "arec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5    # "data":[I
    .end local v13    # "iapRecord":[B
    .end local v14    # "index":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 490
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "readEmailFileAndWait before mLock.wait "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 492
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 496
    :goto_4
    const-string/jumbo v22, "readEmailFileAndWait after mLock.wait"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 360
    .end local v9    # "efid":I
    .end local v11    # "i":I
    .end local v12    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v15    # "nMax":I
    .end local v16    # "nOffset":I
    .end local v17    # "numAdnRecs":I
    .end local v20    # "record$iterator":Ljava/util/Iterator;
    .end local v21    # "size":[I
    :cond_15
    return-void

    .line 493
    .restart local v9    # "efid":I
    .restart local v11    # "i":I
    .restart local v12    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v15    # "nMax":I
    .restart local v16    # "nOffset":I
    .restart local v17    # "numAdnRecs":I
    .restart local v20    # "record$iterator":Ljava/util/Iterator;
    .restart local v21    # "size":[I
    :catch_2
    move-exception v8

    .line 494
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v22, "UsimPhoneBookManager"

    const-string/jumbo v23, "Interrupted Exception in readEmailFileAndWait"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 7
    .param p1, "recNum"    # I

    .prologue
    const/4 v6, 0x0

    .line 941
    const/4 v2, 0x0

    .line 942
    .local v2, "emailRec":[B
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 943
    return-object v6

    .line 947
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "emailRec":[B
    check-cast v2, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    .local v2, "emailRec":[B
    array-length v3, v2

    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 953
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager readEmailRecord: emailRec.length is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 954
    array-length v5, v2

    .line 953
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 956
    .local v1, "email":Ljava/lang/String;
    return-object v1

    .line 948
    .end local v1    # "email":Ljava/lang/String;
    .end local v2    # "emailRec":[B
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager readEmailRecord: recNum is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    return-object v6
.end method

.method private readExt1FileAndWait(I)V
    .locals 8
    .param p1, "recNum"    # I

    .prologue
    const/16 v7, 0xc2

    .line 4587
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readExt1FileAndWait "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4588
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 4589
    :cond_0
    return-void

    .line 4591
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 4592
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4596
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4597
    .local v1, "efid":I
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readExt1FileAndWait-get EXT1 EFID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4598
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    if-eqz v4, :cond_3

    .line 4599
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EXT1 has been loaded for Pbr number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4601
    return-void

    .line 4593
    .end local v1    # "efid":I
    :cond_2
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "readExt1FileAndWait-PBR have no Ext1 record"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    return-void

    .line 4617
    .restart local v1    # "efid":I
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v4, :cond_4

    .line 4618
    const/16 v4, 0x3e9

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4619
    .local v3, "msg":Landroid/os/Message;
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 4620
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v4, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 4622
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4586
    :goto_0
    return-void

    .line 4623
    :catch_0
    move-exception v0

    .line 4624
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in readExt1FileAndWait"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4627
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_4
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "readExt1FileAndWait-IccFileHandler is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4628
    return-void
.end method

.method private readGasListAndWait()V
    .locals 6

    .prologue
    .line 1791
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "UsimPhoneBookManager readGasListAndWait begin"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1793
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    if-gtz v1, :cond_0

    .line 1794
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "UsimPhoneBookManager readGasListAndWait no need to read. return"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1795
    return-void

    .line 1797
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v5, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->readUPBGasList(IILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1799
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v2

    .line 1790
    return-void

    .line 1800
    :catch_0
    move-exception v0

    .line 1801
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in readGasListAndWait"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1792
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private readGrpIdsAndWait()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 775
    const-string/jumbo v7, "UsimPhoneBookManager"

    const-string/jumbo v8, "UsimPhoneBookManager readGrpIdsAndWait begin"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 779
    .local v5, "numAdnRecs":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 782
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 789
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 790
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v0

    .line 791
    .local v0, "adnIndex":I
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 792
    .local v1, "data":[I
    aput v4, v1, v10

    .line 793
    aput v0, v1, v11

    .line 794
    const-string/jumbo v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UsimPhoneBookManager readGrpIdsAndWait: read grp for  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 795
    const-string/jumbo v9, " adn "

    .line 794
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 795
    const-string/jumbo v9, "( "

    .line 794
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 795
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v9

    .line 794
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 795
    const-string/jumbo v9, ", "

    .line 794
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 795
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v9

    .line 794
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 796
    const-string/jumbo v9, " )  mReadingGrpNum is "

    .line 794
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 796
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    .line 794
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xf

    invoke-virtual {p0, v8, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Lcom/android/internal/telephony/CommandsInterface;->readUPBGrpEntry(ILandroid/os/Message;)V

    .line 779
    .end local v0    # "adnIndex":I
    .end local v1    # "data":[I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 783
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v2

    .line 784
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UsimPhoneBookManager readGrpIdsAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 785
    const-string/jumbo v9, "index is "

    .line 784
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-nez v7, :cond_3

    .line 802
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 803
    return-void

    .line 805
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 807
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readGrpIdsAndWait before mLock.wait "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 809
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 813
    :goto_1
    const-string/jumbo v7, "readGrpIdsAndWait after mLock.wait"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 773
    return-void

    .line 810
    :catch_1
    move-exception v3

    .line 811
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v7, "UsimPhoneBookManager"

    const-string/jumbo v8, "Interrupted Exception in readAnrFileAndWait"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readIapFileAndWait(IIZ)V
    .locals 21
    .param p1, "pbrIndex"    # I
    .param p2, "efid"    # I
    .param p3, "forceRefresh"    # Z

    .prologue
    .line 503
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "readIapFileAndWait pbrIndex :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ",efid:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ",forceRefresh:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 511
    if-gtz p2, :cond_0

    return-void

    .line 512
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 513
    const-string/jumbo v17, "readIapFileAndWait IapFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 514
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 516
    :cond_1
    const/4 v14, 0x0

    .line 517
    .local v14, "size":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "size":[I
    check-cast v14, [I

    .line 522
    .local v14, "size":[I
    :goto_0
    if-eqz v14, :cond_2

    array-length v0, v14

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 523
    :cond_2
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "UsimPhoneBookManager readIapFileAndWait: read record size error."

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v9, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 528
    return-void

    .line 520
    .end local v9    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v14, "size":[I
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v14

    .local v14, "size":[I
    goto :goto_0

    .line 530
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p1

    if-gt v0, v1, :cond_b

    .line 531
    const-string/jumbo v17, "Create IAP first!"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 532
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .restart local v9    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v16, 0x0

    .line 534
    .local v16, "value":[B
    const/4 v8, 0x0

    .end local v16    # "value":[B
    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_6

    .line 535
    const/16 v17, 0x0

    aget v17, v14, v17

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 536
    .local v16, "value":[B
    const/16 v17, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    aget-byte v15, v16, v17

    .line 537
    .local v15, "tem":B
    const/4 v15, -0x1

    .line 536
    .local v15, "tem":B
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 539
    .end local v15    # "tem":B
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 541
    .end local v16    # "value":[B
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 558
    .end local v8    # "i":I
    .end local v9    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 559
    .local v12, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    mul-int v11, p1, v17

    .line 560
    .local v11, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    add-int v10, v11, v17

    .line 561
    .local v10, "nMax":I
    if-ge v12, v10, :cond_8

    .line 562
    move v10, v12

    .line 565
    :cond_8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "readIapFileAndWait nOffset "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", nMax "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 566
    move v8, v11

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v10, :cond_c

    .line 569
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .local v13, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_9

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_a

    .line 577
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 578
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v5, v0, [I

    .line 579
    .local v5, "data":[I
    const/16 v17, 0x0

    aput p1, v5, v17

    .line 580
    sub-int v17, v8, v11

    const/16 v18, 0x1

    aput v17, v5, v18

    .line 581
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "UsimPhoneBookManager readIapFileAndWait: read iap for  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 582
    const-string/jumbo v19, " adn "

    .line 581
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 582
    const-string/jumbo v19, "( "

    .line 581
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 582
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    .line 581
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 582
    const-string/jumbo v19, ", "

    .line 581
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 582
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    .line 581
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 583
    const-string/jumbo v19, " )  mReadingIapNum is "

    .line 581
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v19

    .line 581
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    sub-int v18, v18, v11

    const/16 v19, 0x0

    aget v19, v14, v19

    .line 585
    const/16 v20, 0x1a

    .line 584
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 566
    .end local v5    # "data":[I
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 543
    .end local v8    # "i":I
    .end local v10    # "nMax":I
    .end local v11    # "nOffset":I
    .end local v12    # "numAdnRecs":I
    .end local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_b
    const-string/jumbo v17, "This IAP has been loaded!"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 544
    if-nez p3, :cond_7

    .line 545
    return-void

    .line 570
    .restart local v8    # "i":I
    .restart local v10    # "nMax":I
    .restart local v11    # "nOffset":I
    .restart local v12    # "numAdnRecs":I
    :catch_0
    move-exception v6

    .line 571
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "UsimPhoneBookManager readIapFileAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 572
    const-string/jumbo v19, "index is "

    .line 571
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v17

    if-nez v17, :cond_d

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 591
    return-void

    .line 593
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 595
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "readIapFileAndWait before mLock.wait "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 597
    :try_start_1
    const-string/jumbo v17, "readIapFileAndWait excute mLock.wait"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    monitor-exit v18

    .line 604
    const-string/jumbo v17, "readIapFileAndWait after mLock.wait"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 502
    return-void

    .line 600
    :catch_1
    move-exception v7

    .line 601
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v19, "Interrupted Exception in readIapFileAndWait"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 596
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17
.end method

.method private readPbrFileAndWait(Z)V
    .locals 4
    .param p1, "is7FFF"    # Z

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x4f30

    invoke-virtual {v1, v3, v2, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;Z)V

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "Interrupted Exception in readPbrFileAndWait"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readSneFileAndWait(I)V
    .locals 7
    .param p1, "recNum"    # I

    .prologue
    const/16 v6, 0xc3

    .line 654
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readSneFileAndWait "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 655
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 656
    :cond_0
    return-void

    .line 658
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 659
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 663
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 664
    .local v0, "efid":I
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readSneFileAndWait: EFSNE id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSneFileids:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "record$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 666
    .local v2, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v4, v0, :cond_2

    iget v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v4, p1, :cond_2

    .line 667
    iget v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-ne v4, v5, :cond_4

    .line 668
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readType2Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 669
    return-void

    .line 660
    .end local v0    # "efid":I
    .end local v2    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readSneFileAndWait: No SNE tag in pbr record "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void

    .line 670
    .restart local v0    # "efid":I
    .restart local v2    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .restart local v3    # "record$iterator":Ljava/util/Iterator;
    :cond_4
    iget v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_5

    .line 671
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readType1Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 672
    return-void

    .line 653
    .end local v2    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_5
    return-void
.end method

.method private readType1Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V
    .locals 21
    .param p1, "record"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .prologue
    .line 3110
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "readType1Ef:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3111
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v18, v0

    const/16 v19, 0xa8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 3112
    return-void

    .line 3114
    :cond_0
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    .line 3115
    .local v13, "pbrIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 3116
    .local v12, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v18, v0

    mul-int v11, v13, v18

    .line 3117
    .local v11, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v18, v0

    add-int v10, v11, v18

    .line 3118
    .local v10, "nMax":I
    if-ge v12, v10, :cond_1

    .line 3119
    move v10, v12

    .line 3121
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3122
    .local v7, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/16 v17, 0x0

    .line 3123
    .local v17, "what":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 3145
    const/16 v17, 0x16

    .line 3146
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 3147
    .local v16, "result":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 3148
    if-eqz v7, :cond_3

    .line 3149
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 3153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3155
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v16    # "result":Landroid/os/Message;
    :goto_0
    monitor-exit v19

    .line 3163
    :goto_1
    const/4 v15, 0x0

    .line 3164
    .local v15, "recordSize":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_1

    .line 3175
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "readType1Ef unsupport tag "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    :goto_2
    if-nez v15, :cond_4

    .line 3179
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v19, "UsimPhoneBookManager readType1Ef: recordSize is 0. "

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    return-void

    .line 3125
    .end local v15    # "recordSize":I
    :sswitch_0
    const/16 v17, 0xe

    .line 3126
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 3127
    .local v9, "msg":Landroid/os/Message;
    if-eqz v7, :cond_2

    .line 3128
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v7, v0, v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 3132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3134
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3135
    :catch_0
    move-exception v5

    .line 3136
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v20, "Interrupted Exception in readType1Ef"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3132
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 3130
    :cond_2
    return-void

    .line 3141
    .end local v9    # "msg":Landroid/os/Message;
    :sswitch_1
    const/16 v17, 0x12

    .line 3142
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readRecordSize(I)V

    goto :goto_1

    .line 3151
    .restart local v16    # "result":Landroid/os/Message;
    :cond_3
    return-void

    .line 3156
    :catch_1
    move-exception v5

    .line 3157
    .restart local v5    # "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v20, "Interrupted Exception in readType1Ef"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 3153
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v18

    monitor-exit v19

    throw v18

    .line 3166
    .end local v16    # "result":Landroid/os/Message;
    .restart local v15    # "recordSize":I
    :sswitch_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    goto :goto_2

    .line 3169
    :sswitch_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    goto :goto_2

    .line 3172
    :sswitch_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    goto :goto_2

    .line 3183
    :cond_4
    move v6, v11

    .local v6, "i":I
    :goto_3
    if-ge v6, v10, :cond_7

    .line 3186
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3193
    .local v14, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_5

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_6

    .line 3194
    :cond_5
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v3, v0, [I

    .line 3195
    .local v3, "data":[I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v18, v0

    const/16 v19, 0x0

    aput v18, v3, v19

    .line 3196
    const/16 v18, 0x1

    aput v6, v3, v18

    .line 3197
    const/4 v8, 0x0

    .line 3198
    .local v8, "loadWhat":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_2

    .line 3223
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "not support tag "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v18, v0

    add-int/lit8 v19, v6, 0x1

    sub-int v19, v19, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v7, v0, v1, v15, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 3183
    .end local v3    # "data":[I
    .end local v8    # "loadWhat":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3187
    .end local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_2
    move-exception v4

    .line 3188
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v18, "UsimPhoneBookManager"

    .line 3189
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "UsimPhoneBookManager readType1Ef: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3190
    const-string/jumbo v20, "index is "

    .line 3189
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3188
    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_3

    .line 3258
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "not support tag "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    :goto_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "readType1Ef before mLock.wait "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3264
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_6
    monitor-exit v19

    .line 3109
    return-void

    .line 3200
    .restart local v3    # "data":[I
    .restart local v8    # "loadWhat":I
    .restart local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :sswitch_5
    const/16 v8, 0xd

    .line 3201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 3202
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " UsimPhoneBookManager readType1Ef: read for  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3203
    const-string/jumbo v20, " adn "

    .line 3202
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3203
    const-string/jumbo v20, "( "

    .line 3202
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3203
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v20

    .line 3202
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3203
    const-string/jumbo v20, ", "

    .line 3202
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3203
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v20

    .line 3202
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3204
    const-string/jumbo v20, " )  mReadingAnrNum is "

    .line 3202
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v20

    .line 3202
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3208
    :sswitch_6
    add-int/lit8 v18, v6, 0x1

    sub-int v18, v18, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v19, v0

    mul-int v19, v19, v11

    add-int v18, v18, v19

    const/16 v19, 0x0

    aput v18, v3, v19

    .line 3209
    const/16 v8, 0x13

    .line 3210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3211
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " UsimPhoneBookManager readType1Ef: read for  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3212
    const-string/jumbo v20, " adn "

    .line 3211
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3212
    const-string/jumbo v20, "( "

    .line 3211
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3212
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v20

    .line 3211
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3212
    const-string/jumbo v20, ", "

    .line 3211
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3212
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v20

    .line 3211
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3213
    const-string/jumbo v20, " )  mReadingEmailNum is "

    .line 3211
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v20

    .line 3211
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3216
    :sswitch_7
    const/16 v8, 0x17

    .line 3217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3218
    const-string/jumbo v18, "UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " UsimPhoneBookManager readType1Ef: read for  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3219
    const-string/jumbo v20, " adn "

    .line 3218
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3219
    const-string/jumbo v20, "( "

    .line 3218
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3219
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v20

    .line 3218
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3219
    const-string/jumbo v20, ", "

    .line 3218
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3219
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v20

    .line 3218
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3220
    const-string/jumbo v20, " )  mReadingSneNum is "

    .line 3218
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v20

    .line 3218
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3234
    .end local v3    # "data":[I
    .end local v8    # "loadWhat":I
    .end local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    if-nez v18, :cond_8

    .line 3235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3236
    return-void

    .line 3238
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_5

    .line 3242
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    if-nez v18, :cond_9

    .line 3243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3244
    return-void

    .line 3246
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_5

    .line 3250
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    if-nez v18, :cond_a

    .line 3251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3252
    return-void

    .line 3254
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_5

    .line 3265
    :catch_3
    move-exception v5

    .line 3266
    .restart local v5    # "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string/jumbo v18, "UsimPhoneBookManager"

    const-string/jumbo v20, "Interrupted Exception in readType1Ef"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_6

    .line 3262
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v18

    monitor-exit v19

    throw v18

    .line 3123
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch

    .line 3164
    :sswitch_data_1
    .sparse-switch
        0xc3 -> :sswitch_4
        0xc4 -> :sswitch_2
        0xca -> :sswitch_3
    .end sparse-switch

    .line 3198
    :sswitch_data_2
    .sparse-switch
        0xc3 -> :sswitch_7
        0xc4 -> :sswitch_5
        0xca -> :sswitch_6
    .end sparse-switch

    .line 3232
    :sswitch_data_3
    .sparse-switch
        0xc3 -> :sswitch_a
        0xc4 -> :sswitch_8
        0xca -> :sswitch_9
    .end sparse-switch
.end method

.method private readType2Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V
    .locals 8
    .param p1, "record"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .prologue
    const/16 v7, 0xc1

    const/4 v6, 0x0

    .line 3272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readType2Ef:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3273
    iget v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-eq v4, v5, :cond_0

    .line 3274
    return-void

    .line 3277
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 3278
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 3279
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "Error: no fileIds"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    return-void

    .line 3283
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3284
    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v5, v4, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(IIZ)V

    .line 3291
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-gt v4, v5, :cond_4

    .line 3292
    :cond_2
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "Error: IAP file is empty"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    return-void

    .line 3287
    :cond_3
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "readType2Ef Error: No IAP file!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    return-void

    .line 3291
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 3295
    const/4 v3, 0x0

    .line 3296
    .local v3, "what":I
    iget v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v4, :sswitch_data_0

    .line 3308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no implement type2 EF "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3309
    return-void

    .line 3298
    :sswitch_0
    const/4 v3, 0x5

    .line 3311
    :goto_0
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3312
    .local v2, "msg":Landroid/os/Message;
    iget v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 3313
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3314
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3316
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v5

    .line 3271
    return-void

    .line 3301
    .end local v2    # "msg":Landroid/os/Message;
    :sswitch_1
    const/4 v3, 0x4

    .line 3302
    goto :goto_0

    .line 3304
    :sswitch_2
    const/16 v3, 0x18

    .line 3305
    goto :goto_0

    .line 3317
    .restart local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 3318
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v6, "Interrupted Exception in readType2Ef"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3314
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 3296
    nop

    :sswitch_data_0
    .sparse-switch
        0xc3 -> :sswitch_2
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch
.end method

.method private refreshCache()V
    .locals 3

    .prologue
    .line 336
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_0

    .line 337
    return-void

    .line 339
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 341
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 342
    .local v1, "numRecs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 343
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_1
    return-void
.end method

.method private resetEmailRecTable(I[BI)V
    .locals 5
    .param p1, "pbrRecNum"    # I
    .param p2, "iapRec"    # [B
    .param p3, "value"    # I

    .prologue
    .line 2605
    if-nez p1, :cond_0

    .line 2606
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    aput p3, v1, v2

    .line 2607
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, v3

    aput p3, v1, v2

    .line 2608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetEmailRecTable  mEmailRecTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v3, p2, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetEmailRecTable  mEmailRecTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v3, p2, v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2604
    :goto_0
    return-void

    .line 2611
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v1, p2, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    rem-int v0, v1, v2

    .line 2612
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aput p3, v1, v0

    .line 2613
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, v0

    aput p3, v1, v2

    .line 2614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetEmailRecTable  mEmailRecTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetEmailRecTable  mEmailRecTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2616
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v3, v0

    aget v2, v2, v3

    .line 2615
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePhoneAdnRecord()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 817
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 818
    return-void

    .line 820
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 821
    .local v5, "numAdnRecs":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    .line 830
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 831
    const/4 v8, 0x0

    .line 833
    .local v8, "record":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "record":[B
    check-cast v8, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    .local v8, "record":[B
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v8, v9

    .line 840
    .local v7, "recNum":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_1

    .line 841
    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    .line 843
    .local v2, "emails":[Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v12

    .line 847
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 854
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v6, :cond_4

    .line 855
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 860
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 830
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 834
    .end local v7    # "recNum":I
    .end local v8    # "record":[B
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v10, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "i":I
    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 872
    .local v4, "len":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    if-nez v9, :cond_3

    .line 873
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(I)V

    .line 875
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v5, :cond_6

    .line 876
    const/4 v1, 0x0

    .line 878
    .local v1, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    .line 882
    .local v1, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_5

    .line 875
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 848
    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "len":I
    .restart local v2    # "emails":[Ljava/lang/String;
    .restart local v7    # "recNum":I
    .restart local v8    # "record":[B
    :catch_1
    move-exception v0

    .line 849
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "UsimPhoneBookManager updatePhoneAdnRecord: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 850
    const-string/jumbo v11, "index is "

    .line 849
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 858
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    invoke-direct {v6, v9, v10, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    goto :goto_1

    .line 888
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v7    # "recNum":I
    .end local v8    # "record":[B
    .restart local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "len":I
    :cond_5
    :try_start_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 895
    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .line 896
    .restart local v2    # "emails":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v12, v2, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 897
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 898
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 889
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_2
    move-exception v0

    .line 890
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "UsimPhoneBookManager updatePhoneAdnRecord: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 891
    const-string/jumbo v11, "index is "

    .line 890
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :goto_5
    return-void

    .line 879
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_5
.end method

.method private updatePhoneAdnRecord(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V
    .locals 20
    .param p2, "efrecord"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3324
    .local p1, "fileRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updatePhoneAdnRecord "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3325
    if-nez p2, :cond_0

    .line 3326
    return-void

    .line 3328
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3329
    .local v10, "numAdnRecs":I
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    .line 3330
    .local v11, "pbrIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    mul-int v9, v11, v17

    .line 3331
    .local v9, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    add-int v8, v9, v17

    .line 3332
    .local v8, "nMax":I
    if-ge v10, v8, :cond_1

    .line 3333
    move v8, v10

    .line 3336
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updatePhoneAdnRecord offset:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ",nMax:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", mAdnFileSize:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 3337
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v18, v0

    .line 3336
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3339
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v17, v0

    const/16 v18, 0xa9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 3340
    move v6, v9

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_4

    .line 3343
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3350
    .local v12, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5

    .line 3351
    :cond_2
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5

    .line 3340
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3344
    .end local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v5

    .line 3345
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "UsimPhoneBookManager updatePhoneAdnRecord: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3346
    const-string/jumbo v19, "index is "

    .line 3345
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "i":I
    :cond_4
    return-void

    .line 3354
    .restart local v6    # "i":I
    .restart local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_5
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " updatePhoneAdnRecord "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "th "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3355
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    .line 3354
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    const/4 v14, 0x0

    .line 3358
    .local v14, "record":[B
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 3359
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "updatePhoneAdnRecord mIapFileList = null"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    return-void

    .line 3362
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 3363
    .local v7, "iaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez v7, :cond_7

    .line 3364
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "updatePhoneAdnRecord iaplist = null"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    return-void

    .line 3367
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_8

    .line 3368
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "Warning: IAP size is 0"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    return-void

    .line 3371
    :cond_8
    sub-int v17, v6, v9

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "record":[B
    check-cast v14, [B
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3376
    .local v14, "record":[B
    if-nez v14, :cond_9

    .line 3377
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error, No Iap for ADN "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3372
    .end local v7    # "iaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v14    # "record":[B
    :catch_1
    move-exception v5

    .line 3373
    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3380
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v7    # "iaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v14    # "record":[B
    :cond_9
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    move/from16 v17, v0

    aget-byte v17, v14, v17

    move/from16 v0, v17

    and-int/lit16 v13, v0, 0xff

    .line 3382
    .local v13, "recNum":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updatePhoneAdnRecord recNum["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "]="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3383
    if-lez v13, :cond_3

    const/16 v17, 0xff

    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    .line 3385
    const/4 v4, 0x0

    .line 3387
    .local v4, "data":[B
    add-int/lit8 v17, v13, -0x1

    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "data":[B
    check-cast v4, [B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3392
    .local v4, "data":[B
    if-nez v4, :cond_a

    .line 3393
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error record,data is null;"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3388
    .end local v4    # "data":[B
    :catch_2
    move-exception v5

    .line 3389
    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v17, "UsimPhoneBookManager"

    const-string/jumbo v18, "updatePhoneAdnRecord mIapFileList = null"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3396
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "data":[B
    :cond_a
    if-eqz v12, :cond_3

    .line 3397
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 3426
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "not supported tag "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3399
    :sswitch_0
    const/16 v17, 0x1

    aget-byte v3, v4, v17

    .line 3400
    .local v3, "anrRecLength":I
    if-lez v3, :cond_3

    const/16 v17, 0xb

    move/from16 v0, v17

    if-gt v3, v0, :cond_3

    .line 3402
    const/16 v17, 0x1

    aget-byte v17, v4, v17

    .line 3401
    const/16 v18, 0x2

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v4, v0, v1}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 3403
    .local v2, "anr":Ljava/lang/String;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " updatePhoneAdnRecord "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3404
    const-string/jumbo v19, " th anr is "

    .line 3403
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    if-eqz v2, :cond_3

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 3406
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 3412
    .end local v2    # "anr":Ljava/lang/String;
    .end local v3    # "anrRecLength":I
    :sswitch_1
    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v16

    .line 3413
    .local v16, "val":Ljava/lang/String;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " updatePhoneAdnRecord "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3414
    const-string/jumbo v19, " th email is "

    .line 3413
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 3416
    const/16 v18, 0x0

    aput-object v16, v17, v18

    .line 3415
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3420
    .end local v16    # "val":Ljava/lang/String;
    :sswitch_2
    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v15

    .line 3421
    .local v15, "sne":Ljava/lang/String;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " updatePhoneAdnRecord "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3422
    const-string/jumbo v19, " th sne is "

    .line 3421
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    invoke-virtual {v12, v15}, Lcom/android/internal/telephony/uicc/AdnRecord;->setSne(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3397
    nop

    :sswitch_data_0
    .sparse-switch
        0xc3 -> :sswitch_2
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch
.end method

.method private updatePhoneAdnRecordByEmailFile(I)V
    .locals 16
    .param p1, "nPbrRecNum"    # I

    .prologue
    .line 3002
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v13, :cond_0

    .line 3003
    return-void

    .line 3005
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v8, p1, v13

    .line 3007
    .local v8, "nOffset":I
    move v4, v8

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v13, v8

    if-ge v4, v13, :cond_1

    .line 3009
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    const/4 v14, 0x0

    aput v14, v13, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3007
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3010
    :catch_0
    move-exception v1

    .line 3011
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v13, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "UsimPhoneBookManager updatePhoneAdnRecordByEmailFile: mEmailRecTable ArrayIndexOutOfBoundsException, nPbrRecNum is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-nez v13, :cond_2

    .line 3017
    return-void

    .line 3023
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3029
    .local v5, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v5, :cond_7

    .line 3030
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_3

    .line 3031
    const-string/jumbo v13, "UsimPhoneBookManager"

    const-string/jumbo v14, "Warning: IAP size is 0"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    return-void

    .line 3024
    .end local v5    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_1
    move-exception v2

    .line 3025
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v13, "Index out of bounds."

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3026
    return-void

    .line 3042
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v5    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 3043
    .local v9, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    mul-int v6, p1, v13

    .line 3044
    .local v6, "nAdnOffset":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    add-int v7, v8, v13

    .line 3045
    .local v7, "nMax":I
    if-ge v9, v7, :cond_4

    .line 3046
    move v7, v9

    .line 3048
    :cond_4
    const-string/jumbo v13, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "UsimPhoneBookManager updatePhoneAdnRecordByEmailFile:  nAdnOffset is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3049
    const-string/jumbo v15, "nMax is "

    .line 3048
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    move v4, v6

    :goto_1
    if-ge v4, v7, :cond_7

    .line 3053
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3059
    .local v10, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_5

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_6

    .line 3061
    :cond_5
    const/4 v12, 0x0

    .line 3063
    .local v12, "record":[B
    sub-int v13, v4, v6

    :try_start_3
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "record":[B
    check-cast v12, [B
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3069
    .local v12, "record":[B
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v13, v12, v13

    and-int/lit16 v11, v13, 0xff

    .line 3070
    .local v11, "recNum":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updatePhoneAdnRecordByEmailFile "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ",recNum["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3071
    const-string/jumbo v14, "]="

    .line 3070
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3072
    const/4 v13, -0x1

    if-eq v11, v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-gt v11, v13, :cond_6

    .line 3073
    const/4 v13, 0x1

    new-array v3, v13, [Ljava/lang/String;

    .line 3075
    .local v3, "emails":[Ljava/lang/String;
    add-int/lit8 v13, v11, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v3, v14

    .line 3077
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v14, v14, p1

    add-int/2addr v14, v11

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v15, v4, 0x1

    aput v15, v13, v14
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3085
    invoke-virtual {v10, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 3086
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v4, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3050
    .end local v3    # "emails":[Ljava/lang/String;
    .end local v11    # "recNum":I
    .end local v12    # "record":[B
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 3054
    .end local v10    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_2
    move-exception v2

    .line 3055
    .restart local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v13, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "UsimPhoneBookManager updatePhoneAdnRecordByEmailFile: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3056
    const-string/jumbo v15, "index is "

    .line 3055
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    return-void

    .line 3064
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v10    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_3
    move-exception v2

    .line 3065
    .restart local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v13, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error: updatePhoneAdnRecord : No IAP record for ADN "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3066
    const-string/jumbo v15, " , continuing"

    .line 3065
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "nAdnOffset":I
    .end local v7    # "nMax":I
    .end local v9    # "numAdnRecs":I
    .end local v10    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_7
    return-void

    .line 3078
    .restart local v3    # "emails":[Ljava/lang/String;
    .restart local v6    # "nAdnOffset":I
    .restart local v7    # "nMax":I
    .restart local v9    # "numAdnRecs":I
    .restart local v10    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v11    # "recNum":I
    .restart local v12    # "record":[B
    :catch_4
    move-exception v2

    .line 3079
    .restart local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v13, "UsimPhoneBookManager"

    .line 3080
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error: updatePhoneAdnRecord : Email record index out of table storage "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3081
    const-string/jumbo v15, " , continuing"

    .line 3080
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3079
    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updatePhoneAdnRecordWithAnrByIndex(III[B)V
    .locals 10
    .param p1, "recNum"    # I
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I
    .param p4, "anrRecData"    # [B

    .prologue
    .line 1807
    const-string/jumbo v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updatePhoneAdnRecordWithAnrByIndex the "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "th anr record is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1808
    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    .line 1807
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const/4 v7, 0x1

    aget-byte v4, p4, v7

    .line 1813
    .local v4, "anrRecLength":I
    const/4 v7, 0x0

    aget-byte v3, p4, v7

    .line 1814
    .local v3, "anrAas":I
    if-lez v4, :cond_0

    const/16 v7, 0xb

    if-gt v4, v7, :cond_0

    .line 1815
    const/4 v7, 0x1

    aget-byte v7, p4, v7

    const/4 v8, 0x2

    invoke-static {p4, v8, v7}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1820
    .local v2, "anr":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1806
    .end local v2    # "anr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1821
    .restart local v2    # "anr":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 1822
    .local v0, "aas":Ljava/lang/String;
    if-lez v3, :cond_2

    const/16 v7, 0xff

    if-eq v3, v7, :cond_2

    .line 1823
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-eqz v7, :cond_2

    .line 1824
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1825
    .local v1, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v3, v7, :cond_2

    .line 1826
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "aas":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1830
    .end local v1    # "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " updatePhoneAdnRecordWithAnrByIndex "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1831
    const-string/jumbo v9, " th anr is "

    .line 1830
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1831
    const-string/jumbo v9, " the anrIndex is "

    .line 1830
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1842
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v6, v2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 1843
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1844
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAasIndex(I)V

    .line 1846
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1836
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v5

    .line 1837
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UsimPhoneBookManager updatePhoneAdnRecordWithAnrByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1838
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1837
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1838
    const-string/jumbo v9, "index is "

    .line 1837
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    return-void
.end method

.method private updatePhoneAdnRecordWithEmailByIndex(II[B)V
    .locals 10
    .param p1, "emailIndex"    # I
    .param p2, "index"    # I
    .param p3, "emailRecData"    # [B

    .prologue
    const/4 v9, 0x0

    .line 3458
    if-nez p3, :cond_0

    .line 3459
    return-void

    .line 3462
    :cond_0
    array-length v3, p3

    .line 3463
    .local v3, "length":I
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v6, :cond_1

    array-length v6, p3

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 3464
    array-length v6, p3

    add-int/lit8 v3, v6, -0x2

    .line 3467
    :cond_1
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePhoneAdnRecordWithEmailByIndex length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    new-array v5, v3, [B

    .line 3470
    .local v5, "validEMailData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 3471
    const/4 v6, -0x1

    aput-byte v6, v5, v2

    .line 3470
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3473
    :cond_2
    invoke-static {p3, v9, v5, v9, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3475
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validEMailData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", validEmailLen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 3479
    .local v1, "email":Ljava/lang/String;
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePhoneAdnRecordWithEmailByIndex index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3480
    const-string/jumbo v8, " emailRecData record is "

    .line 3479
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    if-eqz v1, :cond_3

    const-string/jumbo v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3487
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    add-int/lit8 v7, p1, -0x1

    add-int/lit8 v8, p2, 0x1

    aput v8, v6, v7

    .line 3457
    .end local v1    # "email":Ljava/lang/String;
    :goto_2
    return-void

    .line 3482
    .restart local v1    # "email":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 3483
    .local v4, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 3484
    const/4 v7, 0x0

    aput-object v1, v6, v7

    .line 3483
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3488
    .end local v1    # "email":Ljava/lang/String;
    .end local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v0

    .line 3489
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[JE]updatePhoneAdnRecordWithEmailByIndex "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updatePhoneAdnRecordWithGrpByIndex(II[I)V
    .locals 8
    .param p1, "recIndex"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIds"    # [I

    .prologue
    .line 2966
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePhoneAdnRecordWithGrpByIndex the "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "th grp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le p1, v5, :cond_0

    .line 2968
    return-void

    .line 2970
    :cond_0
    array-length v2, p3

    .line 2972
    .local v2, "grpSize":I
    if-lez v2, :cond_2

    .line 2975
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2982
    .local v4, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePhoneAdnRecordWithGrpByIndex the adnIndex is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2983
    const-string/jumbo v7, "; the original index is "

    .line 2982
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2983
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v7

    .line 2982
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2986
    .local v1, "grpIdsSb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_1

    .line 2987
    aget v5, p3, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2988
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2986
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2976
    .end local v1    # "grpIdsSb":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v0

    .line 2977
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UsimPhoneBookManager updatePhoneAdnRecordWithGrpByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2978
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2977
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2978
    const-string/jumbo v7, "index is "

    .line 2977
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    return-void

    .line 2990
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "grpIdsSb":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    add-int/lit8 v5, v2, -0x1

    aget v5, p3, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2992
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 2994
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePhoneAdnRecordWithGrpByIndex grpIds is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2996
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePhoneAdnRecordWithGrpByIndex the rec:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    .end local v1    # "grpIdsSb":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    return-void
.end method

.method private updatePhoneAdnRecordWithSneByIndex(II[B)V
    .locals 6
    .param p1, "recNum"    # I
    .param p2, "index"    # I
    .param p3, "recData"    # [B

    .prologue
    .line 4202
    if-nez p3, :cond_0

    .line 4203
    return-void

    .line 4205
    :cond_0
    array-length v3, p3

    const/4 v4, 0x0

    invoke-static {p3, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 4206
    .local v2, "sne":Ljava/lang/String;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePhoneAdnRecordWithSneByIndex index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4207
    const-string/jumbo v5, " recData record is "

    .line 4206
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4208
    if-eqz v2, :cond_1

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4201
    :cond_1
    :goto_0
    return-void

    .line 4211
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4218
    .local v1, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setSne(Ljava/lang/String;)V

    goto :goto_0

    .line 4212
    .end local v1    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v0

    .line 4213
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager updatePhoneAdnRecordWithSneByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4214
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4214
    const-string/jumbo v5, "index is "

    .line 4213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4215
    return-void
.end method

.method private updateType2Anr(Ljava/lang/String;ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V
    .locals 37
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "record"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .prologue
    .line 3494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType2Anr anr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",adnIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",record:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3495
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v26, v3, v4

    .line 3496
    .local v26, "pbrRecNum":I
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v22, v3, v4

    .line 3497
    .local v22, "iapRecNum":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType2Anr pbrRecNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",iapRecNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 3500
    return-void

    .line 3502
    :cond_0
    if-nez p3, :cond_1

    .line 3503
    return-void

    .line 3506
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_2

    .line 3507
    return-void

    .line 3509
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    .line 3510
    .local v20, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v20, :cond_3

    .line 3511
    return-void

    .line 3517
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3523
    .local v25, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez v25, :cond_4

    .line 3524
    return-void

    .line 3518
    .end local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_0
    move-exception v19

    .line 3519
    .local v19, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "Index out of bounds."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3520
    return-void

    .line 3526
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_4
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 3527
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "Warning: IAP size is 0"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    return-void

    .line 3530
    :cond_5
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 3531
    .local v6, "iap":[B
    if-nez v6, :cond_6

    .line 3532
    return-void

    .line 3534
    :cond_6
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v3, v6, v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v23, v0

    .line 3535
    .local v23, "index":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType2Anr orignal index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3536
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 3537
    :cond_7
    if-lez v23, :cond_8

    .line 3538
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    const/4 v4, -0x1

    aput-byte v4, v6, v3

    .line 3539
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0xc1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3541
    add-int/lit8 v5, v22, 0x1

    const/16 v7, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const/4 v7, 0x0

    .line 3540
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 3548
    :cond_8
    return-void

    .line 3544
    :cond_9
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "updateType2Anr Error: No IAP file!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    return-void

    .line 3552
    :cond_a
    const/16 v18, 0x0

    .line 3553
    .local v18, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v3, :sswitch_data_0

    .line 3572
    .end local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :goto_0
    const/4 v9, 0x0

    .line 3573
    .local v9, "recNum":I
    if-nez v18, :cond_d

    .line 3574
    return-void

    .line 3555
    .end local v9    # "recNum":I
    .restart local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    if-nez v3, :cond_b

    .line 3556
    const-string/jumbo v3, "updateType2Anr mAnrFileList null"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3557
    return-void

    .line 3559
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    check-cast v18, Ljava/util/ArrayList;

    .local v18, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    goto :goto_0

    .line 3562
    .local v18, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    if-nez v3, :cond_c

    .line 3563
    const-string/jumbo v3, "updateType2Anr mEmailFileList null"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3564
    return-void

    .line 3566
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    check-cast v18, Ljava/util/ArrayList;

    .local v18, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    goto :goto_0

    .line 3576
    .end local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v9    # "recNum":I
    :cond_d
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 3577
    .local v33, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType2Anr size :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3578
    if-lez v23, :cond_f

    move/from16 v0, v23

    move/from16 v1, v33

    if-gt v0, v1, :cond_f

    .line 3579
    move/from16 v9, v23

    .line 3637
    :cond_e
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType2Anr final index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3638
    if-nez v9, :cond_19

    .line 3639
    return-void

    .line 3582
    :cond_f
    add-int/lit8 v3, v33, 0x1

    new-array v0, v3, [I

    move-object/from16 v24, v0

    .line 3583
    .local v24, "indexArray":[I
    const/16 v21, 0x1

    .local v21, "i":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v33

    if-gt v0, v1, :cond_10

    .line 3584
    const/4 v3, 0x0

    aput v3, v24, v21

    .line 3583
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 3586
    :cond_10
    const/16 v21, 0x0

    :goto_3
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_12

    .line 3587
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [B

    .line 3588
    .local v35, "value":[B
    if-eqz v35, :cond_11

    .line 3589
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v3, v35, v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v34, v0

    .line 3590
    .local v34, "tem":I
    if-lez v34, :cond_11

    const/16 v3, 0xff

    move/from16 v0, v34

    if-ge v0, v3, :cond_11

    move/from16 v0, v34

    move/from16 v1, v33

    if-gt v0, v1, :cond_11

    .line 3591
    const/4 v3, 0x1

    aput v3, v24, v34

    .line 3586
    .end local v34    # "tem":I
    :cond_11
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 3596
    .end local v35    # "value":[B
    :cond_12
    const/16 v32, 0x0

    .line 3597
    .local v32, "sharedAnr":Z
    const/16 v29, 0x0

    .line 3598
    .local v29, "re":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "r$iterator":Ljava/util/Iterator;
    :cond_13
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 3599
    .local v27, "r":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-eq v3, v4, :cond_13

    .line 3600
    move-object/from16 v29, v27

    .line 3604
    .end local v27    # "r":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v29    # "re":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_14
    if-eqz v29, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v3, v4, :cond_15

    .line 3605
    const/16 v32, 0x1

    .line 3607
    :cond_15
    if-eqz v32, :cond_17

    .line 3611
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    .line 3613
    .local v31, "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v31, :cond_17

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_17

    .line 3614
    const/16 v21, 0x0

    :goto_4
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_17

    .line 3615
    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [B

    .line 3616
    .restart local v35    # "value":[B
    if-eqz v35, :cond_16

    .line 3617
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v3, v35, v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v34, v0

    .line 3618
    .restart local v34    # "tem":I
    if-lez v34, :cond_16

    const/16 v3, 0xff

    move/from16 v0, v34

    if-ge v0, v3, :cond_16

    move/from16 v0, v34

    move/from16 v1, v33

    if-gt v0, v1, :cond_16

    .line 3619
    const/4 v3, 0x1

    aput v3, v24, v34
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3614
    .end local v34    # "tem":I
    :cond_16
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 3624
    .end local v31    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v35    # "value":[B
    :catch_1
    move-exception v19

    .line 3625
    .restart local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "Index out of bounds."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3626
    return-void

    .line 3630
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_17
    const/16 v21, 0x1

    :goto_5
    move/from16 v0, v21

    move/from16 v1, v33

    if-gt v0, v1, :cond_e

    .line 3631
    aget v3, v24, v21

    if-nez v3, :cond_18

    .line 3632
    move/from16 v9, v21

    goto/16 :goto_1

    .line 3630
    :cond_18
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 3641
    .end local v21    # "i":I
    .end local v24    # "indexArray":[I
    .end local v28    # "r$iterator":Ljava/util/Iterator;
    .end local v32    # "sharedAnr":Z
    :cond_19
    const/4 v10, 0x0

    .line 3642
    .local v10, "data":[B
    const/16 v36, 0x0

    .line 3643
    .local v36, "what":I
    const/4 v8, 0x0

    .line 3644
    .local v8, "fileId":I
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v3, :sswitch_data_1

    .line 3666
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3669
    .end local v10    # "data":[B
    :goto_6
    if-eqz v10, :cond_1a

    .line 3670
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 3671
    move/from16 v0, v23

    if-eq v9, v0, :cond_1a

    .line 3672
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    int-to-byte v4, v9

    aput-byte v4, v6, v3

    .line 3673
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3674
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 3675
    add-int/lit8 v13, v22, 0x1

    const/16 v3, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    const/4 v15, 0x0

    move-object v14, v6

    .line 3674
    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 3493
    :cond_1a
    return-void

    .line 3648
    .restart local v10    # "data":[B
    :sswitch_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3655
    .local v30, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAasIndex()I

    move-result v17

    .line 3656
    .local v17, "aas":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;II)[B

    move-result-object v10

    .line 3657
    .local v10, "data":[B
    const/16 v36, 0x9

    .line 3658
    move-object/from16 v0, p3

    iget v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    goto :goto_6

    .line 3649
    .end local v17    # "aas":I
    .end local v30    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .local v10, "data":[B
    :catch_2
    move-exception v19

    .line 3650
    .restart local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager updateType2Anr: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3651
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3650
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3651
    const-string/jumbo v5, "index is "

    .line 3650
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3651
    add-int/lit8 v5, p2, -0x1

    .line 3650
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3661
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    :sswitch_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v10

    .line 3662
    .local v10, "data":[B
    const/16 v36, 0xb

    .line 3663
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto/16 :goto_6

    .line 3678
    .end local v10    # "data":[B
    :cond_1b
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "updateType2Anr Error: No IAP file!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    return-void

    .line 3553
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch

    .line 3644
    :sswitch_data_1
    .sparse-switch
        0xc4 -> :sswitch_2
        0xca -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public addContactToGroup(II)Z
    .locals 18
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .prologue
    .line 2033
    const/4 v13, 0x0

    .line 2034
    .local v13, "ret":Z
    const-string/jumbo v14, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "UsimPhoneBookManager addContactToGroup adnIndex is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2035
    const-string/jumbo v16, " to grp "

    .line 2034
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v14, :cond_0

    if-gtz p1, :cond_1

    .line 2037
    :cond_0
    const-string/jumbo v14, "UsimPhoneBookManager"

    const-string/jumbo v15, "UsimPhoneBookManager addContactToGroup no records or invalid index."

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    const/4 v14, 0x0

    return v14

    .line 2036
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move/from16 v0, p1

    if-gt v0, v14, :cond_0

    .line 2040
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2043
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v16, p1, -0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2050
    .local v12, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v12, :cond_5

    .line 2051
    :try_start_1
    const-string/jumbo v14, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " addContactToGroup the adn index is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2052
    const-string/jumbo v17, " old grpList is "

    .line 2051
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2052
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v17

    .line 2051
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v8

    .line 2054
    .local v8, "grpList":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2055
    .local v2, "bExist":Z
    const/4 v11, -0x1

    .line 2058
    .local v11, "nOrder":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v16, 0x7

    aget v5, v14, v16

    .line 2059
    .local v5, "grpCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v16, 0x7

    aget v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    move-object/from16 v16, v0

    const/16 v17, 0x5

    aget v16, v16, v17

    move/from16 v0, v16

    if-le v14, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v16, 0x5

    aget v9, v14, v16

    .line 2060
    .local v9, "grpMaxCount":I
    :goto_0
    new-array v6, v5, [I

    .line 2061
    .local v6, "grpIdArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v5, :cond_3

    .line 2062
    const/4 v14, 0x0

    aput v14, v6, v10

    .line 2061
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2044
    .end local v2    # "bExist":Z
    .end local v5    # "grpCount":I
    .end local v6    # "grpIdArray":[I
    .end local v8    # "grpList":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    .end local v11    # "nOrder":I
    .end local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v3

    .line 2045
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v14, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "UsimPhoneBookManager addContactToGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 2045
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2046
    const-string/jumbo v17, "index is "

    .line 2045
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2046
    add-int/lit8 v17, p1, -0x1

    .line 2045
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2047
    const/4 v14, 0x0

    monitor-exit v15

    return v14

    .line 2059
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "bExist":Z
    .restart local v5    # "grpCount":I
    .restart local v8    # "grpList":Ljava/lang/String;
    .restart local v11    # "nOrder":I
    .restart local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v16, 0x7

    aget v9, v14, v16

    .restart local v9    # "grpMaxCount":I
    goto :goto_0

    .line 2064
    .restart local v6    # "grpIdArray":[I
    .restart local v10    # "i":I
    :cond_3
    if-eqz v8, :cond_9

    .line 2065
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2066
    .local v7, "grpIds":[Ljava/lang/String;
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    .line 2067
    aget-object v14, v7, v10

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    aput v14, v6, v10

    .line 2068
    aget v14, v6, v10

    move/from16 v0, p2

    if-ne v0, v14, :cond_6

    .line 2069
    const/4 v2, 0x1

    .line 2070
    const-string/jumbo v14, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " addContactToGroup the adn is already in the group. i is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    .end local v7    # "grpIds":[Ljava/lang/String;
    :cond_4
    :goto_3
    if-nez v2, :cond_5

    if-ltz v11, :cond_5

    .line 2086
    aput p2, v6, v11

    .line 2087
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2088
    const/16 v16, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 2087
    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2090
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2094
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v14, :cond_5

    .line 2095
    const/4 v13, 0x1

    .line 2096
    add-int/lit8 v14, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v1, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2097
    const-string/jumbo v14, "UsimPhoneBookManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " addContactToGroup the adn index is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2098
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v17

    .line 2097
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "bExist":Z
    .end local v5    # "grpCount":I
    .end local v6    # "grpIdArray":[I
    .end local v8    # "grpList":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    .end local v11    # "nOrder":I
    :cond_5
    monitor-exit v15

    .line 2104
    return v13

    .line 2074
    .restart local v2    # "bExist":Z
    .restart local v5    # "grpCount":I
    .restart local v6    # "grpIdArray":[I
    .restart local v7    # "grpIds":[Ljava/lang/String;
    .restart local v8    # "grpList":Ljava/lang/String;
    .restart local v9    # "grpMaxCount":I
    .restart local v10    # "i":I
    .restart local v11    # "nOrder":I
    :cond_6
    if-gez v11, :cond_8

    :try_start_5
    aget v14, v6, v10

    if-eqz v14, :cond_7

    aget v14, v6, v10

    const/16 v16, 0xff

    move/from16 v0, v16

    if-ne v14, v0, :cond_8

    .line 2075
    :cond_7
    move v11, v10

    .line 2076
    const-string/jumbo v14, "UsimPhoneBookManager"

    .line 2077
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " addContactToGroup found an unsed position in the group list. i is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2076
    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 2082
    .end local v7    # "grpIds":[Ljava/lang/String;
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 2091
    :catch_1
    move-exception v4

    .line 2092
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v14, "UsimPhoneBookManager"

    const-string/jumbo v16, "Interrupted Exception in addContactToGroup"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 2040
    .end local v2    # "bExist":Z
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "grpCount":I
    .end local v6    # "grpIdArray":[I
    .end local v8    # "grpList":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    .end local v11    # "nOrder":I
    .end local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14
.end method

.method public checkEmailCapacityFree(I[Ljava/lang/String;)Z
    .locals 8
    .param p1, "adnIndex"    # I
    .param p2, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2703
    add-int/lit8 v4, p1, -0x1

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v3, v4, v5

    .line 2704
    .local v3, "pbrRecNum":I
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v2, v3, v4

    .line 2705
    .local v2, "nOffset":I
    const/4 v0, 0x0

    .line 2706
    .local v0, "hasEmail":Z
    if-nez p2, :cond_0

    .line 2707
    return v6

    .line 2709
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_3

    .line 2710
    aget-object v4, p2, v1

    if-eqz v4, :cond_1

    aget-object v4, p2, v1

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2709
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2711
    :cond_2
    const/4 v0, 0x1

    .line 2715
    :cond_3
    if-nez v0, :cond_4

    .line 2716
    return v6

    .line 2719
    :cond_4
    move v1, v2

    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v4, v2

    if-ge v1, v4, :cond_7

    .line 2720
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v4, v4, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsSameEmailEfid:Z

    if-eqz v4, :cond_5

    .line 2721
    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSameEfidEmailCapacityFree(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2722
    return v6

    .line 2725
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v4, v4, v1

    if-nez v4, :cond_6

    .line 2726
    return v6

    .line 2719
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2730
    :cond_7
    return v7
.end method

.method public checkEmailLength([Ljava/lang/String;)Z
    .locals 7
    .param p1, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 2734
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-eq v2, v6, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    add-int/lit8 v1, v2, -0x2

    .line 2736
    .local v1, "maxDataLength":I
    :goto_0
    if-eqz p1, :cond_1

    aget-object v2, p1, v5

    if-eqz v2, :cond_1

    .line 2737
    aget-object v2, p1, v5

    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 2738
    .local v0, "eMailData":[B
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkEmailLength eMailData.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", maxDataLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    if-eq v1, v6, :cond_1

    array-length v2, v0

    if-le v2, v1, :cond_1

    .line 2740
    return v5

    .line 2734
    .end local v0    # "eMailData":[B
    .end local v1    # "maxDataLength":I
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .restart local v1    # "maxDataLength":I
    goto :goto_0

    .line 2743
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public getAdnListFromUsim()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4812
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAnrCount()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4097
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "UsimPhoneBookManager getAnrCount begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v3, v3, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v3, :cond_0

    .line 4099
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Csim :getAnrCount hasAnrFile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasAnrFile:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasAnrFile:Z

    if-eqz v3, :cond_2

    .line 4101
    return v1

    .line 4104
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4105
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-gtz v4, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4106
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4108
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    .line 4115
    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    if-nez v3, :cond_3

    return v2

    .line 4109
    :catch_0
    move-exception v0

    .line 4110
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in getAnrCount"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4104
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 4117
    :cond_3
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager getAnrCount done: N_ANR is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4120
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v3, v3, v2

    if-lez v3, :cond_4

    :goto_1
    return v1

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public getEmailCount()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4124
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "UsimPhoneBookManager getEmailCount begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4125
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v3, v3, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v3, :cond_0

    .line 4126
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Csim :getEmailCount hasEmailFile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasEmailFile:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4127
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasEmailFile:Z

    if-eqz v3, :cond_2

    .line 4128
    return v1

    .line 4131
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4132
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4133
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4136
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    .line 4143
    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v3, :cond_3

    return v2

    .line 4137
    :catch_0
    move-exception v0

    .line 4138
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v4, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in getEmailCount"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4131
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 4145
    :cond_3
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager getEmailCount done: N_EMAIL is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4147
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v3, v3, v1

    if-lez v3, :cond_4

    :goto_1
    return v1

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    .locals 22

    .prologue
    .line 4297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/4 v8, 0x1

    .line 4298
    .local v8, "is3G":Z
    :goto_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getPhonebookMemStorageExt isUsim "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4299
    if-nez v8, :cond_1

    .line 4300
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPhonebookMemStorageExt2G()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    move-result-object v19

    return-object v19

    .line 4297
    .end local v8    # "is3G":Z
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "is3G":Z
    goto :goto_0

    .line 4302
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 4303
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 4306
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 4307
    const/16 v19, 0x0

    return-object v19

    .line 4309
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getPhonebookMemStorageExt slice "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    move-object/from16 v16, v0

    .line 4311
    .local v16, "response":[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_4

    .line 4312
    new-instance v19, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    invoke-direct/range {v19 .. v19}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;-><init>()V

    aput-object v19, v16, v7

    .line 4311
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4315
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 4316
    const-string/jumbo v19, "mPhoneBookRecords has not been loaded."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4317
    return-object v16

    .line 4319
    :cond_5
    const/16 v17, 0x0

    .line 4320
    .local v17, "size":[I
    const/16 v18, 0x0

    .line 4323
    .local v18, "used":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAdnFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v17    # "size":[I
    .local v15, "record$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4324
    .local v14, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4325
    .local v17, "size":[I
    if-eqz v17, :cond_6

    .line 4326
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnLength(I)V

    .line 4330
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnTotal(I)V

    .line 4333
    :cond_6
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnType(I)V

    .line 4334
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSliceIndex(I)V

    .line 4336
    const/16 v18, 0x0

    .line 4337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4338
    .local v12, "numAdnRecs":I
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v20, v0

    mul-int v11, v19, v20

    .line 4339
    .local v11, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v19, v0

    add-int v10, v11, v19

    .line 4340
    .local v10, "nMax":I
    if-ge v12, v10, :cond_7

    move v10, v12

    .line 4341
    :cond_7
    const/4 v13, 0x0

    .line 4342
    .local v13, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    move v7, v11

    .end local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :goto_3
    if-ge v7, v10, :cond_a

    .line 4344
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4349
    :goto_4
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_9

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_9

    .line 4350
    :goto_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Adn: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4351
    add-int/lit8 v18, v18, 0x1

    .line 4352
    const/4 v13, 0x0

    .line 4342
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 4345
    :catch_0
    move-exception v5

    .line 4346
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v19, "UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "getPhonebookMemStorageExt: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 4347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 4346
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 4347
    const-string/jumbo v21, "index is "

    .line 4346
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4349
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_9
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_8

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_8

    goto :goto_5

    .line 4356
    :cond_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "adn used "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4357
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnUsed(I)V

    goto/16 :goto_2

    .line 4361
    .end local v10    # "nMax":I
    .end local v11    # "nOffset":I
    .end local v12    # "numAdnRecs":I
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4362
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4363
    .restart local v17    # "size":[I
    if-eqz v17, :cond_c

    .line 4364
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAnrLength(I)V

    .line 4365
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAnrTotal(I)V

    .line 4367
    :cond_c
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAnrType(I)V

    .line 4368
    const/16 v18, 0x0

    .line 4369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4370
    .restart local v12    # "numAdnRecs":I
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v20, v0

    mul-int v11, v19, v20

    .line 4371
    .restart local v11    # "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v19, v0

    add-int v10, v11, v19

    .line 4372
    .restart local v10    # "nMax":I
    if-ge v12, v10, :cond_d

    .line 4373
    move v10, v12

    .line 4375
    :cond_d
    const/4 v13, 0x0

    .line 4376
    .restart local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v2, 0x0

    .line 4377
    .local v2, "anrStr":Ljava/lang/String;
    move v7, v11

    .end local v2    # "anrStr":Ljava/lang/String;
    .end local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int v19, v19, v11

    move/from16 v0, v19

    if-ge v7, v0, :cond_10

    .line 4379
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v13, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4384
    :goto_8
    if-nez v13, :cond_f

    .line 4385
    const-string/jumbo v19, "null anr rec "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4377
    :cond_e
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 4380
    :catch_1
    move-exception v5

    .line 4381
    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v19, "UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "getPhonebookMemStorageExt: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 4382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 4381
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 4382
    const-string/jumbo v21, "index is "

    .line 4381
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4388
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_f
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v2

    .line 4389
    .local v2, "anrStr":Ljava/lang/String;
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_e

    .line 4390
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "anrStr: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4391
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 4394
    .end local v2    # "anrStr":Ljava/lang/String;
    :cond_10
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "anr used: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4395
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAnrUsed(I)V

    goto/16 :goto_6

    .line 4398
    .end local v10    # "nMax":I
    .end local v11    # "nOffset":I
    .end local v12    # "numAdnRecs":I
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_16

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4399
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4400
    .restart local v17    # "size":[I
    if-eqz v17, :cond_12

    .line 4401
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setEmailLength(I)V

    .line 4402
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setEmailTotal(I)V

    .line 4404
    :cond_12
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setEmailType(I)V

    .line 4405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4406
    .restart local v12    # "numAdnRecs":I
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v20, v0

    mul-int v11, v19, v20

    .line 4407
    .restart local v11    # "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v19, v0

    add-int v10, v11, v19

    .line 4408
    .restart local v10    # "nMax":I
    if-ge v12, v10, :cond_13

    .line 4409
    move v10, v12

    .line 4411
    :cond_13
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "numAdnRecs:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4412
    const/16 v18, 0x0

    .line 4413
    move v7, v11

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v19, v0

    add-int v19, v19, v11

    move/from16 v0, v19

    if-ge v7, v0, :cond_15

    .line 4415
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    move-object/from16 v19, v0

    aget v19, v19, v7
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    if-lez v19, :cond_14

    .line 4416
    add-int/lit8 v18, v18, 0x1

    .line 4413
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 4418
    :catch_2
    move-exception v4

    .line 4419
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "get mEmailRecTable error "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4423
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_15
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "emailList used:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4424
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setEmailUsed(I)V

    goto/16 :goto_a

    .line 4427
    .end local v10    # "nMax":I
    .end local v11    # "nOffset":I
    .end local v12    # "numAdnRecs":I
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mExt1Fileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4428
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4429
    .restart local v17    # "size":[I
    if-eqz v17, :cond_17

    .line 4430
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Length(I)V

    .line 4431
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Total(I)V

    .line 4433
    :cond_17
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Type(I)V

    .line 4434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4435
    :try_start_3
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readExt1FileAndWait(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v20

    .line 4437
    const/16 v18, 0x0

    .line 4438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 4439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 4440
    .local v6, "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v6, :cond_1a

    .line 4441
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 4442
    .local v9, "len":I
    const/4 v7, 0x0

    :goto_d
    if-ge v7, v9, :cond_1a

    .line 4443
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 4444
    .local v3, "arr":[B
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "ext1["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4445
    if-eqz v3, :cond_19

    array-length v0, v3

    move/from16 v19, v0

    if-lez v19, :cond_19

    .line 4446
    const/16 v19, 0x0

    aget-byte v19, v3, v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_18

    const/16 v19, 0x0

    aget-byte v19, v3, v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 4447
    :cond_18
    add-int/lit8 v18, v18, 0x1

    .line 4442
    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 4434
    .end local v3    # "arr":[B
    .end local v6    # "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v9    # "len":I
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    .line 4453
    :cond_1a
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Used(I)V

    goto/16 :goto_c

    .line 4456
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mGasFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4457
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4458
    .restart local v17    # "size":[I
    if-eqz v17, :cond_1c

    .line 4459
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setGasLength(I)V

    .line 4460
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setGasTotal(I)V

    .line 4462
    :cond_1c
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setGasType(I)V

    goto :goto_e

    .line 4465
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAasFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4466
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4467
    .restart local v17    # "size":[I
    if-eqz v17, :cond_1e

    .line 4468
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAasLength(I)V

    .line 4469
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAasTotal(I)V

    .line 4471
    :cond_1e
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAasType(I)V

    goto :goto_f

    .line 4475
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSneFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_10
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_21

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4476
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4477
    .restart local v17    # "size":[I
    if-eqz v17, :cond_20

    .line 4478
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSneLength(I)V

    .line 4479
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSneTotal(I)V

    .line 4481
    :cond_20
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSneType(I)V

    goto :goto_10

    .line 4484
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mCcpFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_11
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_23

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4485
    .restart local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4486
    .restart local v17    # "size":[I
    if-eqz v17, :cond_22

    .line 4487
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setCcpLength(I)V

    .line 4488
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setCcpTotal(I)V

    .line 4490
    :cond_22
    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setCcpType(I)V

    goto :goto_11

    .line 4493
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v17    # "size":[I
    :cond_23
    const/4 v7, 0x0

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_24

    .line 4494
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getPhonebookMemStorageExt["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v16, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4493
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 4496
    :cond_24
    return-object v16
.end method

.method public getPhonebookMemStorageExt2G()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    .locals 15

    .prologue
    const/16 v11, 0x6f4a

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 4500
    new-array v6, v13, [Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    .line 4501
    .local v6, "response":[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    new-instance v9, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    invoke-direct {v9}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;-><init>()V

    aput-object v9, v6, v12

    .line 4502
    const/4 v7, 0x0

    .line 4503
    .local v7, "size":[I
    const/16 v9, 0x6f3a

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v7

    .line 4504
    .local v7, "size":[I
    if-eqz v7, :cond_0

    .line 4505
    aget-object v9, v6, v12

    aget v10, v7, v12

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnLength(I)V

    .line 4506
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isAdnAccessible()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4507
    aget-object v9, v6, v12

    aget v10, v7, v14

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnTotal(I)V

    .line 4512
    :cond_0
    :goto_0
    aget-object v9, v6, v12

    const/16 v10, 0xa8

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnType(I)V

    .line 4513
    aget-object v9, v6, v12

    invoke-virtual {v9, v13}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSliceIndex(I)V

    .line 4515
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v7

    .line 4516
    if-eqz v7, :cond_1

    .line 4517
    aget-object v9, v6, v12

    aget v10, v7, v12

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Length(I)V

    .line 4518
    aget-object v9, v6, v12

    aget v10, v7, v14

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Total(I)V

    .line 4520
    :cond_1
    aget-object v9, v6, v12

    const/16 v10, 0xaa

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Type(I)V

    .line 4521
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 4522
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v9, :cond_5

    .line 4523
    const/16 v9, 0x3e9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 4524
    .local v5, "msg":Landroid/os/Message;
    const/4 v9, 0x0

    iput v9, v5, Landroid/os/Message;->arg1:I

    .line 4525
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v11, 0x6f4a

    invoke-virtual {v9, v11, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4527
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v10

    .line 4536
    const/4 v8, 0x0

    .line 4537
    .local v8, "used":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    if-eqz v9, :cond_6

    .line 4538
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4539
    .local v2, "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v2, :cond_6

    .line 4540
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4541
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_6

    .line 4542
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 4543
    .local v0, "arr":[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ext1["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4544
    if-eqz v0, :cond_3

    array-length v9, v0

    if-lez v9, :cond_3

    .line 4545
    aget-byte v9, v0, v12

    if-eq v9, v13, :cond_2

    aget-byte v9, v0, v12

    if-ne v9, v14, :cond_3

    .line 4546
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 4541
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4509
    .end local v0    # "arr":[B
    .end local v2    # "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v8    # "used":I
    :cond_4
    aget-object v9, v6, v12

    invoke-virtual {v9, v12}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnTotal(I)V

    goto/16 :goto_0

    .line 4528
    .restart local v5    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 4529
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v11, "Interrupted Exception in readExt1FileAndWait"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 4521
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 4532
    :cond_5
    :try_start_3
    const-string/jumbo v9, "UsimPhoneBookManager"

    const-string/jumbo v11, "readExt1FileAndWait-IccFileHandler is null"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v10

    .line 4533
    return-object v6

    .line 4552
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v8    # "used":I
    :cond_6
    aget-object v9, v6, v12

    invoke-virtual {v9, v8}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Used(I)V

    .line 4553
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPhonebookMemStorageExt2G:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v6, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4554
    return-object v6
.end method

.method public getSneRecordLen()I
    .locals 12

    .prologue
    const/16 v11, 0xc3

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 4169
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasSne()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4170
    return v9

    .line 4172
    :cond_0
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSneRecordLen: mSneRecordSize is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4173
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    if-lez v6, :cond_1

    .line 4174
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    return v6

    .line 4176
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 4177
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_2

    .line 4178
    return v9

    .line 4180
    :cond_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4181
    .local v1, "efid":I
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSneRecordLen: EFSNE id is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4182
    const/16 v5, 0x16

    .line 4183
    .local v5, "what":I
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4184
    .local v4, "result":Landroid/os/Message;
    iput v11, v4, Landroid/os/Message;->arg1:I

    .line 4185
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 4186
    .local v3, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v3, :cond_3

    .line 4187
    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 4191
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4193
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v7

    .line 4198
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    return v6

    .line 4189
    :cond_3
    return v9

    .line 4194
    :catch_0
    move-exception v0

    .line 4195
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v6, "UsimPhoneBookManager"

    const-string/jumbo v8, "Interrupted Exception in readType1Ef"

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4191
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public getUsimAasById(II)Ljava/lang/String;
    .locals 6
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 3759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsimAasById by id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",pbrIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3760
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v3, :cond_3

    .line 3761
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3762
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "No PBR files"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    return-object v5

    .line 3765
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3766
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3767
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    monitor-exit v4

    .line 3768
    return-object v5

    .line 3770
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 3772
    .local v2, "numRecs":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3774
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 3775
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3774
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v4

    .line 3779
    .end local v0    # "i":I
    .end local v2    # "numRecs":I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3780
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3781
    .local v1, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    .line 3782
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 3765
    .end local v1    # "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3785
    :cond_4
    return-object v5
.end method

.method public getUsimAasList()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/AlphaTag;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 3716
    const-string/jumbo v10, "getUsimAasList start"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3717
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportAas()Z

    move-result v10

    if-nez v10, :cond_0

    .line 3718
    return-object v11

    .line 3720
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3721
    .local v6, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/uicc/AlphaTag;>;"
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 3722
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_2

    .line 3723
    const-string/jumbo v10, "UsimPhoneBookManager"

    const-string/jumbo v11, "No PBR files"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    return-object v6

    .line 3726
    :cond_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 3727
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3728
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_3

    monitor-exit v11

    .line 3729
    return-object v6

    .line 3731
    :cond_3
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 3732
    .local v4, "numRecs":I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v10, :cond_4

    .line 3733
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3735
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 3736
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_5

    .line 3737
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3736
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    monitor-exit v11

    .line 3742
    .end local v2    # "i":I
    .end local v4    # "numRecs":I
    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3743
    .local v1, "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 3744
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3745
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3746
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3747
    .local v5, "pbrIndex":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3748
    .local v7, "size":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v7, :cond_7

    .line 3749
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3750
    .local v9, "value":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "aasIndex:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",pbrIndex:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",value:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3751
    new-instance v8, Lcom/mediatek/internal/telephony/uicc/AlphaTag;

    add-int/lit8 v10, v2, 0x1

    invoke-direct {v8, v10, v9, v5}, Lcom/mediatek/internal/telephony/uicc/AlphaTag;-><init>(ILjava/lang/String;I)V

    .line 3752
    .local v8, "tag":Lcom/mediatek/internal/telephony/uicc/AlphaTag;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3748
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3726
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v1    # "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "pbrIndex":I
    .end local v7    # "size":I
    .end local v8    # "tag":Lcom/mediatek/internal/telephony/uicc/AlphaTag;
    .end local v9    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 3755
    .restart local v1    # "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_8
    return-object v6
.end method

.method public getUsimAasMaxCount()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 4062
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "UsimPhoneBookManager getUsimAasMaxCount begin"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4064
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x3

    aget v1, v1, v3

    if-gtz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4065
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4067
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 4074
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UsimPhoneBookManager getUsimAasMaxCount done: N_AAS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v4

    return v1

    .line 4068
    :catch_0
    move-exception v0

    .line 4069
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in getUsimAasMaxCount"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4063
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUsimAasMaxNameLen()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 4044
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "UsimPhoneBookManager getUsimAasMaxNameLen begin"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4046
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x4

    aget v1, v1, v3

    if-gtz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4047
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4049
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 4056
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UsimPhoneBookManager getUsimAasMaxNameLen done: L_AAS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4058
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v4

    return v1

    .line 4050
    :catch_0
    move-exception v0

    .line 4051
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in getUsimAasMaxNameLen"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4045
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUsimGroupById(I)Ljava/lang/String;
    .locals 5
    .param p1, "nGasId"    # I

    .prologue
    .line 1866
    const/4 v0, 0x0

    .line 1867
    .local v0, "grpName":Ljava/lang/String;
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UsimPhoneBookManager getUsimGroupById nGasId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 1869
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 1870
    .local v1, "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    if-eqz v1, :cond_0

    .line 1871
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 1872
    .local v0, "grpName":Ljava/lang/String;
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsimGroupById index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1873
    const-string/jumbo v4, ", name is "

    .line 1872
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    .end local v0    # "grpName":Ljava/lang/String;
    .end local v1    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_0
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UsimPhoneBookManager getUsimGroupById grpName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    return-object v0
.end method

.method public getUsimGroups()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/UsimGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1852
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager getUsimGroups "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1854
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    .line 1859
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->queryUpbCapablityAndWait()V

    .line 1860
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readGasListAndWait()V

    .line 1862
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    return-object v0

    .line 1853
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUsimGrpMaxCount()I
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 2429
    const/4 v2, -0x1

    .line 2431
    .local v2, "ret":I
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "UsimPhoneBookManager getUsimGrpMaxCount begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2433
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 2434
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x0

    aput v5, v3, v1

    .line 2433
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2437
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2438
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2440
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v4

    .line 2447
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v2, v3, v6

    .line 2448
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager getUsimGrpMaxCount done: N_Gas is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    return v2

    .line 2441
    :catch_0
    move-exception v0

    .line 2442
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in getUsimGrpMaxCount"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2432
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getUsimGrpMaxNameLen()I
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 2404
    const/4 v2, -0x1

    .line 2406
    .local v2, "ret":I
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "UsimPhoneBookManager getUsimGrpMaxNameLen begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2408
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 2409
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x0

    aput v5, v3, v1

    .line 2408
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2412
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2413
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2415
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v4

    .line 2421
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v2, v3, v6

    .line 2422
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager getUsimGrpMaxNameLen done: L_Gas is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2423
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v5, v5, v6

    .line 2422
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    return v2

    .line 2416
    :catch_0
    move-exception v0

    .line 2417
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in getUsimGrpMaxNameLen"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2407
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 48
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1015
    const/16 v43, 0x0

    .line 1016
    .local v43, "userData":[I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    sparse-switch v44, :sswitch_data_0

    .line 1013
    .end local v43    # "userData":[I
    :cond_0
    :goto_0
    return-void

    .line 1018
    .restart local v43    # "userData":[I
    :sswitch_0
    const-string/jumbo v44, "UsimPhoneBookManager"

    const-string/jumbo v45, "EVENT_QUERY_PHB_ADN_INFO"

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1020
    .local v8, "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_1

    .line 1021
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [I

    .line 1022
    .local v25, "info":[I
    if-eqz v25, :cond_2

    .line 1023
    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [I

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget v45, v25, v45

    const/16 v46, 0x0

    aput v45, v44, v46

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v44, v0

    const/16 v45, 0x1

    aget v45, v25, v45

    const/16 v46, 0x1

    aput v45, v44, v46

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v44, v0

    const/16 v45, 0x2

    aget v45, v25, v45

    const/16 v46, 0x2

    aput v45, v44, v46

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v44, v0

    const/16 v45, 0x3

    aget v45, v25, v45

    const/16 v46, 0x3

    aput v45, v44, v46

    .line 1028
    const-string/jumbo v44, "UsimPhoneBookManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "recordSize[0]="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget v46, v46, v47

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, ",recordSize[1]="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v46, v0

    const/16 v47, 0x1

    aget v46, v46, v47

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 1029
    const-string/jumbo v46, "recordSize[2]="

    .line 1028
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v46, v0

    const/16 v47, 0x2

    aget v46, v46, v47

    .line 1028
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 1029
    const-string/jumbo v46, ",recordSize[3]="

    .line 1028
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v46, v0

    const/16 v47, 0x3

    aget v46, v46, v47

    .line 1028
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    .end local v25    # "info":[I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1040
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "ar":Landroid/os/AsyncResult;
    :goto_2
    monitor-exit v45

    goto/16 :goto_0

    .line 1032
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    .restart local v25    # "info":[I
    :cond_2
    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [I

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x0

    aput v45, v44, v46

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x1

    aput v45, v44, v46

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x2

    aput v45, v44, v46

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x3

    aput v45, v44, v46

    goto :goto_1

    .line 1039
    .end local v25    # "info":[I
    :catchall_0
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1044
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    const-string/jumbo v44, "UsimPhoneBookManager"

    const-string/jumbo v45, "UsimPhoneBookManager handleMessage: EVENT_PBR_LOAD_DONE"

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1046
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_3

    .line 1047
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    move/from16 v44, v0

    if-eqz v44, :cond_3

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    .line 1050
    .local v17, "fileIds0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map;

    .line 1051
    .local v18, "fileIds1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v17, :cond_3

    if-eqz v18, :cond_3

    .line 1052
    const-string/jumbo v44, "UsimPhoneBookManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "new PbrFile fileIds0="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, " fileIds1="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/16 v44, 0xca

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_3

    const/16 v44, 0xca

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v18

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_3

    .line 1054
    const/16 v44, 0xca

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/Integer;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1055
    .local v12, "efid0":I
    const/16 v44, 0xca

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v18

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/Integer;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1056
    .local v13, "efid1":I
    const-string/jumbo v44, "UsimPhoneBookManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "PbrFile efid0="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, " efid1="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    if-ne v12, v13, :cond_3

    .line 1058
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsSameEmailEfid:Z

    .line 1059
    const-string/jumbo v44, "UsimPhoneBookManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "PbrFiles mIsSameEmailEfid:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsSameEmailEfid:Z

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    .end local v12    # "efid0":I
    .end local v13    # "efid1":I
    .end local v17    # "fileIds0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v18    # "fileIds1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1066
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_2

    .line 1065
    :catchall_1
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1070
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    const-string/jumbo v44, "Loading USIM ADN records done"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1071
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1072
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    if-eqz v44, :cond_6

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    move/from16 v44, v0

    if-eqz v44, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v44

    if-lez v44, :cond_4

    .line 1074
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v44, v0

    if-eqz v44, :cond_4

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v45

    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/util/ArrayList;

    .line 1075
    move-object/from16 v0, p0

    move/from16 v1, v45

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->changeAdnRecordNumber(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1077
    .local v7, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1089
    .end local v7    # "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1090
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_2

    .line 1089
    :catchall_2
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1079
    :cond_4
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v44, v0

    if-eqz v44, :cond_5

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/util/ArrayList;

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1081
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Loading USIM ADN records "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1083
    :cond_5
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Loading USIM ADN records ar.result:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1087
    :cond_6
    const-string/jumbo v44, "Loading USIM ADN records fail."

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1094
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1095
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 1096
    .local v16, "fileId":I
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_9

    .line 1097
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, [I

    .line 1103
    .local v36, "recordSize":[I
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v44, v0

    const/16 v45, 0x3

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_8

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    move-object/from16 v44, v0

    if-nez v44, :cond_7

    .line 1105
    const-string/jumbo v44, "mAnrFileSize is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1106
    new-instance v44, Ljava/util/HashMap;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    .line 1109
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    move-object/from16 v44, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    const/16 v46, 0x2

    aget v46, v36, v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "mAnrFileSize mEfTag: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, " mAnrFileSize: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    move-object/from16 v45, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    .line 1110
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1115
    :goto_4
    const/16 v44, 0x0

    aget v44, v36, v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 1116
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Loading USIM ANR records size done mAnrRecordSize:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1123
    .end local v36    # "recordSize":[I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1124
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_2

    .line 1123
    :catchall_3
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1112
    .restart local v36    # "recordSize":[I
    :catch_0
    move-exception v10

    .line 1113
    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v44, "mAnrFileSize Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 1118
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_8
    const-string/jumbo v44, "UsimPhoneBookManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "get wrong EF record size format"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1121
    .end local v36    # "recordSize":[I
    :cond_9
    const-string/jumbo v44, "UsimPhoneBookManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "get EF record size failed"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1128
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "fileId":I
    :sswitch_4
    const-string/jumbo v44, "Loading USIM ANR records done "

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1129
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1130
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_b

    .line 1131
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/util/ArrayList;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecords:Ljava/util/ArrayList;

    .line 1132
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 1133
    .local v34, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecords:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    move-object/from16 v44, v0

    if-nez v44, :cond_a

    .line 1135
    const-string/jumbo v44, "mAnrFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1136
    new-instance v44, Ljava/util/HashMap;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    .line 1139
    :cond_a
    :try_start_5
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "mAnrFileList mEfTag: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    move-object/from16 v44, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecords:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1146
    .end local v34    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1147
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/16 :goto_2

    .line 1146
    :catchall_4
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1141
    .restart local v34    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :catch_1
    move-exception v10

    .line 1142
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v44, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 1152
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v34    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :sswitch_5
    const-string/jumbo v44, "Loading USIM ANR record done"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1153
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1154
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    .end local v43    # "userData":[I
    check-cast v43, [I

    .line 1155
    .local v43, "userData":[I
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1157
    .local v38, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v38, :cond_c

    .line 1158
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v24

    .line 1160
    .local v24, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v24, :cond_c

    .line 1161
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Loading USIM ANR record done result is "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1162
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v45

    .line 1161
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1163
    const/16 v44, 0x0

    aget v44, v43, v44

    const/16 v45, 0x1

    aget v45, v43, v45

    const/16 v46, 0x2

    aget v46, v43, v46

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move-object/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithAnrByIndex(III[B)V

    .line 1167
    .end local v24    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1168
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "haman, mReadingAnrNum when load done after minus: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ", mNeedNotify:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v44

    if-nez v44, :cond_d

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v44

    if-eqz v44, :cond_d

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1173
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    monitor-exit v45

    .line 1177
    :cond_d
    const-string/jumbo v44, "Loading USIM ANR record done end"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1172
    :catchall_5
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1180
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v38    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v43, "userData":[I
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1181
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 1182
    .local v29, "pbrIndex":I
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Loading USIM IAP records done "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1183
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_f

    .line 1184
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/util/ArrayList;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    if-nez v44, :cond_e

    .line 1186
    const-string/jumbo v44, "IapFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1187
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 1190
    :cond_e
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, v29

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1196
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1197
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto/16 :goto_2

    .line 1196
    :catchall_6
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1191
    :catch_2
    move-exception v10

    .line 1192
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v44, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 1202
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v29    # "pbrIndex":I
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 1203
    .local v28, "pbr":I
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Loading USIM Email records done "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1204
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1205
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_10

    .line 1206
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/util/ArrayList;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 1207
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 1208
    .restart local v34    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 1210
    .end local v34    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    if-nez v44, :cond_11

    .line 1211
    const-string/jumbo v44, "mEmailFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1212
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    .line 1215
    :cond_11
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, v28

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_3

    .line 1219
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1220
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto/16 :goto_2

    .line 1219
    :catchall_7
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1216
    :catch_3
    move-exception v10

    .line 1217
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v44, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 1224
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v28    # "pbr":I
    :sswitch_8
    const-string/jumbo v44, "Loading USIM Email length done"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1225
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1226
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_13

    .line 1227
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, [I

    .line 1228
    .restart local v36    # "recordSize":[I
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v44, v0

    const/16 v45, 0x3

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_12

    .line 1229
    const/16 v44, 0x2

    aget v44, v36, v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    .line 1230
    const/16 v44, 0x0

    aget v44, v36, v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 1231
    const-string/jumbo v44, "UsimPhoneBookManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Email filesize="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, "recordSize="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    .end local v36    # "recordSize":[I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1240
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto/16 :goto_2

    .line 1239
    :catchall_8
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1233
    .restart local v36    # "recordSize":[I
    :cond_12
    const-string/jumbo v44, "UsimPhoneBookManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "get wrong EFEMAIL record size format"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1236
    .end local v36    # "recordSize":[I
    :cond_13
    const-string/jumbo v44, "UsimPhoneBookManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "get EF record size failed"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1244
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1245
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    .end local v43    # "userData":[I
    check-cast v43, [I

    .line 1246
    .local v43, "userData":[I
    iget-object v14, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1247
    .local v14, "em":Lcom/android/internal/telephony/uicc/IccIoResult;
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Loading USIM email record done email index:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const/16 v45, 0x0

    aget v45, v43, v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ", adn i:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const/16 v45, 0x1

    aget v45, v43, v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1248
    if-eqz v14, :cond_14

    .line 1249
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v24

    .line 1251
    .restart local v24    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v24, :cond_14

    .line 1252
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Loading USIM Email record done result is "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1253
    iget-object v0, v14, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v45

    .line 1252
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1254
    const/16 v44, 0x0

    aget v44, v43, v44

    const/16 v45, 0x1

    aget v45, v43, v45

    iget-object v0, v14, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithEmailByIndex(II[B)V

    .line 1258
    .end local v24    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1259
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "haman, mReadingEmailNum when load done after minus: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ", mNeedNotify:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v44

    if-nez v44, :cond_15

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v44

    if-eqz v44, :cond_15

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1264
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    monitor-exit v45

    .line 1268
    :cond_15
    const-string/jumbo v44, "Loading USIM Email record done end"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1263
    :catchall_9
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1271
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "em":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v43, "userData":[I
    :sswitch_a
    const-string/jumbo v44, "Updating USIM Email records done"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1272
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1273
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_0

    .line 1274
    const-string/jumbo v44, "Updating USIM Email records successfully!"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1278
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_b
    const-string/jumbo v44, "Updating USIM IAP records done"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1279
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1280
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_0

    .line 1281
    const-string/jumbo v44, "Updating USIM IAP records successfully!"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1285
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    const-string/jumbo v44, "Updating USIM ANR records done"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1286
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1287
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1289
    .local v37, "res":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v37, :cond_0

    .line 1290
    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v15

    .line 1292
    .local v15, "exception":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v15, :cond_0

    .line 1293
    const-string/jumbo v44, "Updating USIM ANR records successfully!"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1298
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "exception":Lcom/android/internal/telephony/uicc/IccException;
    .end local v37    # "res":Lcom/android/internal/telephony/uicc/IccIoResult;
    :sswitch_d
    const-string/jumbo v44, "Load USIM GRP record done"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1299
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1300
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    .end local v43    # "userData":[I
    check-cast v43, [I

    .line 1302
    .local v43, "userData":[I
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v44, v0

    if-eqz v44, :cond_17

    .line 1303
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [I

    .line 1305
    .local v21, "grpIds":[I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v44, v0

    if-lez v44, :cond_17

    .line 1306
    const-string/jumbo v44, "Load USIM GRP record done result is "

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1307
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_a
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v22

    move/from16 v1, v44

    if-ge v0, v1, :cond_16

    .line 1308
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, " "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    aget v45, v21, v22

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ","

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1307
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 1310
    :cond_16
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Load USIM GRP record done result is "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1311
    const/16 v44, 0x0

    aget v44, v43, v44

    const/16 v45, 0x1

    aget v45, v43, v45

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 1315
    .end local v21    # "grpIds":[I
    .end local v22    # "i":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1316
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "haman, mReadingGrpNum when load done after minus: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ",mNeedNotify:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v44

    if-nez v44, :cond_18

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v44

    if-eqz v44, :cond_18

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1321
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    monitor-exit v45

    .line 1325
    :cond_18
    const-string/jumbo v44, "Loading USIM Grp record done end"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1320
    :catchall_a
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1328
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .local v43, "userData":[I
    :sswitch_e
    const-string/jumbo v44, "Query UPB capability done"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1329
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1330
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_19

    .line 1331
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, [I

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    .line 1334
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1335
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    goto/16 :goto_2

    .line 1334
    :catchall_b
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1339
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    const-string/jumbo v44, "Load UPB GAS done"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1340
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1341
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_1a

    .line 1342
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    .line 1343
    .local v20, "gasList":[Ljava/lang/String;
    if-eqz v20, :cond_1a

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v44, v0

    if-lez v44, :cond_1a

    .line 1344
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 1345
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_b
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v22

    move/from16 v1, v44

    if-ge v0, v1, :cond_1a

    .line 1347
    aget-object v44, v20, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->decodeGas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1348
    .local v19, "gas":Ljava/lang/String;
    new-instance v42, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    add-int/lit8 v44, v22, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v44

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;-><init>(ILjava/lang/String;)V

    .line 1349
    .local v42, "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Load UPB GAS done i is "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ", gas is "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1345
    add-int/lit8 v22, v22, 0x1

    goto :goto_b

    .line 1354
    .end local v19    # "gas":Ljava/lang/String;
    .end local v20    # "gasList":[Ljava/lang/String;
    .end local v22    # "i":I
    .end local v42    # "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1355
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    goto/16 :goto_2

    .line 1354
    :catchall_c
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1359
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    const-string/jumbo v44, "update UPB GAS done"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1360
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1361
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_1b

    .line 1362
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 1374
    :goto_c
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "update UPB GAS done mResult is "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1376
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    goto/16 :goto_2

    .line 1375
    :catchall_d
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1364
    :cond_1b
    iget-object v9, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/android/internal/telephony/CommandException;

    .line 1366
    .local v9, "e":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v44

    sget-object v45, Lcom/android/internal/telephony/CommandException$Error;->TEXT_STRING_TOO_LONG:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_1c

    .line 1367
    const/16 v44, -0xa

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_c

    .line 1368
    :cond_1c
    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v44

    sget-object v45, Lcom/android/internal/telephony/CommandException$Error;->SIM_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_1d

    .line 1369
    const/16 v44, -0x14

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_c

    .line 1371
    :cond_1d
    const/16 v44, -0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_c

    .line 1380
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "e":Lcom/android/internal/telephony/CommandException;
    :sswitch_11
    const-string/jumbo v44, "update UPB GRP done"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1381
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1382
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_1e

    .line 1383
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 1387
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1388
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    goto/16 :goto_2

    .line 1387
    :catchall_e
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1385
    :cond_1e
    const/16 v44, -0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_d

    .line 1392
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1393
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 1394
    .local v30, "pbrIndexAAS":I
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "EVENT_AAS_LOAD_DONE done pbr "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1395
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_1f

    .line 1396
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/util/ArrayList;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecords:Ljava/util/ArrayList;

    .line 1398
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecords:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    if-eqz v44, :cond_22

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecords:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v39

    .line 1400
    .local v39, "size":I
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1401
    .local v26, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_e
    move/from16 v0, v22

    move/from16 v1, v39

    if-ge v0, v1, :cond_21

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecords:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1403
    .local v5, "aas":[B
    if-nez v5, :cond_20

    .line 1404
    const/16 v44, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1401
    :goto_f
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 1407
    :cond_20
    array-length v0, v5

    move/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v5, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    .line 1408
    .local v6, "aasAlphaTag":Ljava/lang/String;
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "AAS["

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, "]="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ",byte="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1409
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v45

    .line 1408
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1410
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1412
    .end local v5    # "aas":[B
    .end local v6    # "aasAlphaTag":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    move-object/from16 v44, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    .end local v22    # "i":I
    .end local v26    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v39    # "size":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1416
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    goto/16 :goto_2

    .line 1415
    :catchall_f
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1420
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v30    # "pbrIndexAAS":I
    :sswitch_13
    const-string/jumbo v44, "EVENT_AAS_UPDATE_DONE done."

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1422
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    goto/16 :goto_2

    .line 1421
    :catchall_10
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1426
    :sswitch_14
    const-string/jumbo v44, "Loading record length done"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1427
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1428
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1429
    .local v11, "efTag":I
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_25

    .line 1430
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, [I

    .line 1431
    .restart local v36    # "recordSize":[I
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v44, v0

    const/16 v45, 0x3

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_24

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v44, v0

    if-nez v44, :cond_23

    .line 1433
    new-instance v44, Ljava/util/HashMap;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    .line 1435
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v44, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    .end local v36    # "recordSize":[I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1444
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_11

    monitor-exit v45

    .line 1446
    const-string/jumbo v44, "EVENT_GET_RECORDS_SIZE_DON end mLock.notify"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1437
    .restart local v36    # "recordSize":[I
    :cond_24
    const-string/jumbo v44, "UsimPhoneBookManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "get wrong record size format"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1440
    .end local v36    # "recordSize":[I
    :cond_25
    const-string/jumbo v44, "UsimPhoneBookManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "get EF record size failed"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1443
    :catchall_11
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1449
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "efTag":I
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1450
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 1451
    .local v31, "pbrIndexExt1":I
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "EVENT_EXT1_LOAD_DONE done pbr "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1452
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_27

    .line 1453
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/util/ArrayList;

    .line 1455
    .local v35, "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v35, :cond_27

    .line 1456
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "EVENT_EXT1_LOAD_DONE done size "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    move-object/from16 v44, v0

    if-nez v44, :cond_26

    .line 1458
    new-instance v44, Ljava/util/HashMap;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    .line 1460
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    move-object/from16 v44, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    .end local v35    # "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1464
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_12

    goto/16 :goto_2

    .line 1463
    :catchall_12
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1468
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v31    # "pbrIndexExt1":I
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1469
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v41, v0

    .line 1470
    .local v41, "tag":I
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_29

    .line 1471
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, [I

    .line 1477
    .restart local v36    # "recordSize":[I
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v44, v0

    const/16 v45, 0x3

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_28

    .line 1478
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Loading USIM records size done tag:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, "file size "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1479
    const/16 v45, 0x2

    aget v45, v36, v45

    .line 1478
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1479
    const-string/jumbo v45, ", record size "

    .line 1478
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1479
    const/16 v45, 0x0

    aget v45, v36, v45

    .line 1478
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1480
    packed-switch v41, :pswitch_data_0

    .line 1486
    const-string/jumbo v44, "UsimPhoneBookManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "unsupported tag when loading record size "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    .end local v36    # "recordSize":[I
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1500
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_13

    goto/16 :goto_2

    .line 1499
    :catchall_13
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1482
    .restart local v36    # "recordSize":[I
    :pswitch_0
    const/16 v44, 0x2

    aget v44, v36, v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileSize:I

    .line 1483
    const/16 v44, 0x0

    aget v44, v36, v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    goto :goto_11

    .line 1491
    :cond_28
    const-string/jumbo v44, "UsimPhoneBookManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "get wrong EF record size format tag:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, ",exception"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 1492
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v46, v0

    .line 1491
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1496
    .end local v36    # "recordSize":[I
    :cond_29
    const-string/jumbo v44, "UsimPhoneBookManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "get EF record size failed"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1504
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v41    # "tag":I
    :sswitch_17
    const-string/jumbo v44, "Loading USIM SNE record done"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1505
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1506
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    .end local v43    # "userData":[I
    check-cast v43, [I

    .line 1507
    .local v43, "userData":[I
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1509
    .local v32, "r":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v32, :cond_2a

    .line 1510
    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v24

    .line 1512
    .restart local v24    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v24, :cond_2a

    .line 1513
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Loading USIM SNE record done result is "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1514
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v45

    .line 1513
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1515
    const/16 v44, 0x0

    aget v44, v43, v44

    const/16 v45, 0x1

    aget v45, v43, v45

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithSneByIndex(II[B)V

    .line 1519
    .end local v24    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1520
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "haman, mReadingSneNum when load done after minus: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ",mNeedNotify:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v44

    if-nez v44, :cond_2b

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v44

    if-eqz v44, :cond_2b

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1525
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_14

    monitor-exit v45

    .line 1529
    :cond_2b
    const-string/jumbo v44, "Loading USIM SNE record done end"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1524
    :catchall_14
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1532
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v32    # "r":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v43, "userData":[I
    :sswitch_18
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v40, v0

    .line 1533
    .local v40, "snePbr":I
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Loading USIM SNE records done "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1534
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1535
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    const/16 v27, 0x0

    .line 1536
    .local v27, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_2c

    .line 1537
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v27, v0

    .end local v27    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    check-cast v27, Ljava/util/ArrayList;

    .line 1538
    .local v27, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 1539
    .restart local v34    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 1541
    .end local v27    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v34    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    if-nez v44, :cond_2d

    .line 1542
    const-string/jumbo v44, "mSneFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1543
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    .line 1546
    :cond_2d
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v40

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_19} :catch_4

    .line 1550
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1551
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_15

    goto/16 :goto_2

    .line 1550
    :catchall_15
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1547
    :catch_4
    move-exception v10

    .line 1548
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v44, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_12

    .line 1555
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v40    # "snePbr":I
    :sswitch_19
    const-string/jumbo v44, "update UPB SNE done"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1556
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1557
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-eqz v44, :cond_2e

    .line 1558
    const-string/jumbo v44, "UsimPhoneBookManager"

    const-string/jumbo v45, "EVENT_SNE_UPDATE_DONE exception"

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v46, v0

    invoke-static/range {v44 .. v46}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1560
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1561
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_16

    goto/16 :goto_2

    .line 1560
    :catchall_16
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1568
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1569
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    .end local v43    # "userData":[I
    check-cast v43, [I

    .line 1570
    .local v43, "userData":[I
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1571
    .local v33, "re":Lcom/android/internal/telephony/uicc/IccIoResult;
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Loading USIM Iap record done pbr:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const/16 v45, 0x0

    aget v45, v43, v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ", i:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const/16 v45, 0x1

    aget v45, v43, v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1572
    if-eqz v33, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    if-eqz v44, :cond_2f

    .line 1573
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v24

    .line 1575
    .restart local v24    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v24, :cond_2f

    .line 1576
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Loading USIM Iap record done result is "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 1577
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v45

    .line 1576
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1582
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget v45, v43, v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 1584
    .local v23, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v44

    if-lez v44, :cond_31

    .line 1585
    const/16 v44, 0x1

    aget v44, v43, v44

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v23

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1c} :catch_5

    .line 1595
    .end local v23    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v24    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_2f
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1596
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "haman, mReadingIapNum when load done after minus: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ",mNeedNotify "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v44

    if-nez v44, :cond_0

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v44

    if-eqz v44, :cond_30

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1600
    const-string/jumbo v44, "EVENT_IAP_RECORD_LOAD_DONE before mLock.notify"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1602
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_17

    monitor-exit v45

    .line 1605
    :cond_30
    const-string/jumbo v44, "EVENT_IAP_RECORD_LOAD_DONE end mLock.notify"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1587
    .restart local v23    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v24    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_31
    :try_start_1e
    const-string/jumbo v44, "UsimPhoneBookManager"

    const-string/jumbo v45, "Warning: IAP size is 0"

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_1e} :catch_5

    goto/16 :goto_13

    .line 1589
    .end local v23    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_5
    move-exception v10

    .line 1590
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v44, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1601
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v24    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :catchall_17
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1609
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v33    # "re":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v43, "userData":[I
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1611
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v44, v0

    if-nez v44, :cond_32

    .line 1612
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/internal/telephony/EFResponseData;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    .line 1617
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1618
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_18

    goto/16 :goto_2

    .line 1617
    :catchall_18
    move-exception v44

    monitor-exit v45

    throw v44

    .line 1614
    :cond_32
    const-string/jumbo v44, "UsimPhoneBookManager"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Select EF file fail"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1016
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x5 -> :sswitch_4
        0x7 -> :sswitch_f
        0x8 -> :sswitch_12
        0x9 -> :sswitch_c
        0xa -> :sswitch_11
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_5
        0xe -> :sswitch_3
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_10
        0x12 -> :sswitch_8
        0x13 -> :sswitch_9
        0x15 -> :sswitch_13
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_0
        0x3e8 -> :sswitch_14
        0x3e9 -> :sswitch_15
    .end sparse-switch

    .line 1480
    :pswitch_data_0
    .packed-switch 0xc3
        :pswitch_0
    .end packed-switch
.end method

.method public hasExistGroup(Ljava/lang/String;)I
    .locals 6
    .param p1, "grpName"    # Ljava/lang/String;

    .prologue
    .line 2382
    const/4 v0, -0x1

    .line 2383
    .local v0, "grpId":I
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager hasExistGroup grpName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    if-nez p1, :cond_0

    .line 2385
    return v0

    .line 2387
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2388
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2389
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 2390
    .local v2, "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2391
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUsimGroupById index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2392
    const-string/jumbo v5, ", name is "

    .line 2391
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v0

    .line 2399
    .end local v1    # "i":I
    .end local v2    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_1
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager hasExistGroup grpId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    return v0

    .line 2388
    .restart local v1    # "i":I
    .restart local v2    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hasSne()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4151
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4152
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 4153
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 4154
    :cond_0
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "hasSne No PBR files"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 4155
    return v4

    :cond_1
    monitor-exit v2

    .line 4158
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4159
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4160
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "hasSne:  true"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    const/4 v1, 0x1

    return v1

    .line 4151
    .end local v0    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 4163
    .restart local v0    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "hasSne:  false"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4164
    return v4
.end method

.method public insertUsimAas(Ljava/lang/String;)I
    .locals 25
    .param p1, "aasName"    # Ljava/lang/String;

    .prologue
    .line 3854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertUsimAas "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3855
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 3856
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 3858
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v17

    .line 3859
    .local v17, "limit":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    .line 3860
    .local v16, "len":I
    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 3861
    const/4 v2, 0x0

    return v2

    .line 3863
    :cond_2
    const/4 v15, -0x1

    .line 3864
    .local v15, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 3865
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v2, :cond_5

    .line 3866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3867
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "insertUsimAas No PBR "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3868
    const/4 v2, -0x1

    monitor-exit v24

    return v2

    .line 3870
    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_4

    .line 3872
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "insertUsimAas No PBR files"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3873
    const/4 v2, -0x1

    monitor-exit v24

    return v2

    .line 3875
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v20

    .line 3876
    .local v20, "numRecs":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3877
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    .line 3878
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V

    .line 3877
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3882
    .end local v14    # "i":I
    .end local v20    # "numRecs":I
    :cond_5
    const/16 v21, -0x1

    .line 3883
    .local v21, "pbrIndex":I
    const/4 v5, 0x0

    .line 3884
    .local v5, "aasIndex":I
    const/4 v13, 0x0

    .line 3885
    .local v13, "found":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 3887
    .local v12, "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_6
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v13, :cond_8

    .line 3902
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertUsimAas pbrIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",aasIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3903
    if-nez v13, :cond_b

    .line 3905
    const/4 v2, -0x2

    monitor-exit v24

    return v2

    .line 3888
    :cond_8
    :try_start_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 3889
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 3890
    .local v19, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 3892
    .local v22, "size":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_2
    move/from16 v0, v22

    if-ge v14, v0, :cond_6

    .line 3893
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 3894
    .local v23, "value":Ljava/lang/String;
    if-eqz v23, :cond_9

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 3895
    :cond_9
    const/4 v13, 0x1

    .line 3896
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 3897
    add-int/lit8 v5, v14, 0x1

    .line 3898
    goto :goto_1

    .line 3892
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 3907
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v14    # "i":I
    .end local v19    # "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "size":I
    .end local v23    # "value":Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3908
    .local v6, "temp":Ljava/lang/String;
    const/16 v2, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 3909
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3911
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3915
    :goto_3
    :try_start_5
    iget-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 3916
    .local v9, "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertUsimAas UPB_EF_AAS: ar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3917
    if-eqz v9, :cond_c

    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_e

    .line 3918
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 3919
    .local v18, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v18, :cond_d

    .line 3920
    add-int/lit8 v2, v5, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3921
    const-string/jumbo v2, "insertUsimAas update mAasForAnrRec done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_d
    monitor-exit v24

    .line 3923
    return v5

    .line 3912
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 3913
    .local v10, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in insertUsimAas"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 3864
    .end local v5    # "aasIndex":I
    .end local v6    # "temp":Ljava/lang/String;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v13    # "found":Z
    .end local v21    # "pbrIndex":I
    :catchall_0
    move-exception v2

    monitor-exit v24

    throw v2

    .line 3925
    .restart local v5    # "aasIndex":I
    .restart local v6    # "temp":Ljava/lang/String;
    .restart local v8    # "msg":Landroid/os/Message;
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    .restart local v12    # "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .restart local v13    # "found":Z
    .restart local v21    # "pbrIndex":I
    :cond_e
    :try_start_7
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertUsimAas exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3926
    const/4 v2, -0x1

    monitor-exit v24

    return v2
.end method

.method public declared-synchronized insertUsimGroup(Ljava/lang/String;)I
    .locals 11
    .param p1, "grpName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1953
    const/4 v3, -0x1

    .line 1954
    .local v3, "index":I
    :try_start_0
    const-string/jumbo v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UsimPhoneBookManager insertUsimGroup grpName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1956
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1957
    :cond_0
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager insertUsimGroup fail "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 1993
    return v3

    .line 1959
    :cond_1
    const/4 v8, 0x0

    .line 1960
    .local v8, "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    const/4 v9, 0x0

    .line 1961
    .local v9, "i":I
    const/4 v9, 0x0

    .end local v8    # "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 1962
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 1963
    .local v8, "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1964
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v3

    .line 1965
    const-string/jumbo v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UsimPhoneBookManager insertUsimGroup index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    .end local v8    # "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_2
    if-gez v3, :cond_4

    .line 1970
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager insertUsimGroup fail: gas file is full."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1971
    const/16 v0, -0x14

    monitor-exit p0

    .line 1972
    return v0

    .line 1961
    .restart local v8    # "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1974
    .end local v8    # "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_4
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1975
    .local v4, "temp":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1976
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1975
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1978
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1983
    :goto_2
    :try_start_7
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-gez v0, :cond_5

    .line 1984
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "result is negative. insertUsimGroup"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return v0

    .line 1979
    :catch_0
    move-exception v7

    .line 1980
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_9
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "Interrupted Exception in insertUsimGroup"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 1955
    .end local v4    # "temp":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "i":I
    :catchall_0
    move-exception v0

    :try_start_a
    monitor-exit v10

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1987
    .restart local v4    # "temp":Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_5
    :try_start_b
    invoke-virtual {v8, p1}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 1988
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0, v9, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 347
    return-void
.end method

.method public isAdnAccessible()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4713
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_1

    .line 4714
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4715
    const/16 v3, 0x1b

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4717
    .local v2, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v5, 0x6f3a

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->selectEFFile(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4720
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 4726
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    if-eqz v3, :cond_1

    .line 4727
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    invoke-virtual {v3}, Lcom/android/internal/telephony/EFResponseData;->getFileStatus()I

    move-result v1

    .line 4736
    .local v1, "fs":I
    and-int/lit8 v3, v1, 0x5

    if-lez v3, :cond_0

    .line 4737
    return v7

    .line 4721
    .end local v1    # "fs":I
    :catch_0
    move-exception v0

    .line 4722
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in readType1Ef"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4714
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4739
    .restart local v1    # "fs":I
    .restart local v2    # "response":Landroid/os/Message;
    :cond_0
    return v6

    .line 4743
    .end local v1    # "fs":I
    .end local v2    # "response":Landroid/os/Message;
    :cond_1
    return v7
.end method

.method public isAnrCapacityFree(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I

    .prologue
    const/4 v8, 0x0

    .line 2461
    add-int/lit8 v5, p2, -0x1

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v3, v5, v6

    .line 2462
    .local v3, "pbrRecNum":I
    add-int/lit8 v5, p2, -0x1

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v0, v5, v6

    .line 2465
    .local v0, "anrRecNum":I
    if-eqz p1, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2488
    :cond_0
    const/4 v5, 0x1

    return v5

    .line 2465
    :cond_1
    if-lez p3, :cond_0

    .line 2467
    :try_start_0
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAnrCapacityFree anr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2469
    :cond_2
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "isAnrCapacityFree: mAnrFileSize is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    return v8

    .line 2473
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    mul-int/lit8 v6, v3, 0x3

    add-int/2addr v6, p3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2474
    .local v4, "size":I
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAnrCapacityFree size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    add-int/lit8 v5, v0, 0x1

    if-ge v4, v5, :cond_0

    .line 2477
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAnrCapacityFree: anrRecNum out of size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2478
    return v8

    .line 2483
    .end local v4    # "size":I
    :catch_0
    move-exception v2

    .line 2484
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAnrCapacityFree exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    return v8

    .line 2480
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 2481
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v6, "isAnrCapacityFree Index out of bounds."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    return v8
.end method

.method public isSupportAas()Z
    .locals 5

    .prologue
    .line 4670
    const/4 v0, 0x0

    .line 4671
    .local v0, "isSupport":Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 4673
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_1

    .line 4674
    const-class v3, Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;

    .line 4676
    .local v1, "mUpbmExt":Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;
    if-eqz v1, :cond_0

    .line 4677
    invoke-interface {v1}, Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;->isSupportAas()Z

    move-result v0

    .line 4685
    .end local v0    # "isSupport":Z
    .end local v1    # "mUpbmExt":Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSupportAas: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4687
    return v0

    .line 4679
    .restart local v0    # "isSupport":Z
    .restart local v1    # "mUpbmExt":Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;
    :cond_0
    const-string/jumbo v3, "mUpbmExt is null."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4682
    .end local v1    # "mUpbmExt":Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;
    :cond_1
    const-string/jumbo v3, "phone is null."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isSupportSne()Z
    .locals 5

    .prologue
    .line 4691
    const/4 v0, 0x0

    .line 4692
    .local v0, "isSupport":Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 4694
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_1

    .line 4695
    const-class v3, Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;

    .line 4697
    .local v1, "mUpbmExt":Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;
    if-eqz v1, :cond_0

    .line 4698
    invoke-interface {v1}, Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;->isSupportSne()Z

    move-result v0

    .line 4706
    .end local v0    # "isSupport":Z
    .end local v1    # "mUpbmExt":Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSupportSne: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4708
    return v0

    .line 4700
    .restart local v0    # "isSupport":Z
    .restart local v1    # "mUpbmExt":Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;
    :cond_0
    const-string/jumbo v3, "mUpbmExt is null."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4703
    .end local v1    # "mUpbmExt":Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;
    :cond_1
    const-string/jumbo v3, "phone is null."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isUsimPhbEfAndNeedReset(I)Z
    .locals 8
    .param p1, "fileId"    # I

    .prologue
    const/16 v7, 0xcb

    const/4 v6, 0x0

    .line 4751
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUsimPhbEfAndNeedReset, fileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4753
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 4754
    :cond_0
    const-string/jumbo v4, "isUsimPhbEfAndNeedReset, No PBR files"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4755
    return v6

    .line 4753
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 4758
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 4759
    .local v3, "numRecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_6

    .line 4760
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4761
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v2, 0xc0

    .local v2, "j":I
    :goto_1
    if-gt v2, v7, :cond_5

    .line 4762
    const/16 v4, 0xc5

    if-eq v2, v4, :cond_2

    const/16 v4, 0xc9

    if-ne v2, v4, :cond_4

    .line 4764
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUsimPhbEfAndNeedReset, not reset EF: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4761
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4762
    :cond_4
    if-eq v2, v7, :cond_2

    .line 4766
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 4767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUsimPhbEfAndNeedReset, return true with EF: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4768
    const/4 v4, 0x1

    return v4

    .line 4759
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4773
    .end local v0    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "j":I
    :cond_6
    const-string/jumbo v4, "isUsimPhbEfAndNeedReset, return false."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4774
    return v6
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 260
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 261
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 262
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPhoneBookRecords.size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 263
    const-string/jumbo v7, ",mRefreshCache "

    .line 262
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 263
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 262
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v4, :cond_0

    .line 265
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 266
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    .line 268
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    .line 271
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v5

    .line 272
    return-object v6

    .line 276
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_3

    .line 277
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V

    .line 280
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_4

    .line 281
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V

    .line 284
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_5

    .line 285
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 286
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/16 v6, 0x6f3a

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 288
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/16 v6, 0xca

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 289
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/16 v6, 0xca

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readRecordSize(I)V

    .line 291
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/16 v6, 0xc0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 292
    .local v0, "adnEf":I
    if-lez v0, :cond_7

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v3

    .line 294
    .local v3, "size":[I
    if-eqz v3, :cond_7

    array-length v4, v3

    const/4 v6, 0x3

    if-ne v4, v6, :cond_7

    .line 295
    const/4 v4, 0x2

    aget v4, v3, v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    .line 298
    .end local v3    # "size":[I
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecordSize()V

    .line 299
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 302
    .local v2, "numRecs":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v4, v4, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v4, :cond_8

    .line 304
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_9

    .line 305
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readAdnFileAndWaitForUicc: numRecs = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWaitForUICC(I)V

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "i":I
    :cond_8
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 312
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 313
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-object v4

    .line 315
    :cond_a
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v4, :cond_b

    .line 316
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 318
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 319
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_e

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportAas()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 321
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V

    .line 323
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportSne()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 324
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readSneFileAndWait(I)V

    .line 326
    :cond_d
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 327
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 329
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readGrpIdsAndWait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    .line 332
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object v4

    .line 260
    .end local v0    # "adnEf":I
    .end local v1    # "i":I
    .end local v2    # "numRecs":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public loadPBRFiles()V
    .locals 2

    .prologue
    .line 4080
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4081
    return-void

    .line 4083
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4086
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v0, :cond_1

    .line 4087
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V

    .line 4090
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v0, :cond_2

    .line 4091
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 4079
    return-void

    .line 4083
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public moveContactFromGroupsToGroups(I[I[I)Z
    .locals 19
    .param p1, "adnIndex"    # I
    .param p2, "fromGrpIdList"    # [I
    .param p3, "toGrpIdList"    # [I

    .prologue
    .line 2215
    const/4 v14, 0x0

    .line 2217
    .local v14, "ret":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v15, :cond_0

    if-gtz p1, :cond_1

    .line 2218
    :cond_0
    const-string/jumbo v15, "UsimPhoneBookManager"

    const-string/jumbo v16, "moveContactFromGroupsToGroups no records or invalid index."

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    const/4 v15, 0x0

    return v15

    .line 2217
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move/from16 v0, p1

    if-gt v0, v15, :cond_0

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2223
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v17, p1, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2224
    .local v13, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v13, :cond_12

    .line 2227
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v17, 0x7

    aget v5, v15, v17

    .line 2228
    .local v5, "grpCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v17, 0x7

    aget v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    move-object/from16 v17, v0

    const/16 v18, 0x5

    aget v17, v17, v18

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v17, 0x5

    aget v9, v15, v17

    .line 2229
    .local v9, "grpMaxCount":I
    :goto_0
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v8

    .line 2231
    .local v8, "grpIds":Ljava/lang/String;
    const-string/jumbo v17, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " moveContactFromGroupsToGroups the adn index is "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2232
    const-string/jumbo v18, " original grpIds is "

    .line 2231
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2233
    const-string/jumbo v18, ", fromGrpIdList: "

    .line 2231
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2233
    if-nez p2, :cond_3

    const-string/jumbo v15, "null"

    .line 2231
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2234
    const-string/jumbo v18, ", toGrpIdList: "

    .line 2231
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2234
    if-nez p3, :cond_4

    const-string/jumbo v15, "null"

    .line 2231
    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    new-array v6, v5, [I

    .line 2238
    .local v6, "grpIdIntArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v5, :cond_5

    .line 2239
    const/4 v15, 0x0

    aput v15, v6, v10

    .line 2238
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2228
    .end local v6    # "grpIdIntArray":[I
    .end local v8    # "grpIds":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v17, 0x7

    aget v9, v15, v17

    .restart local v9    # "grpMaxCount":I
    goto :goto_0

    .restart local v8    # "grpIds":Ljava/lang/String;
    :cond_3
    move-object/from16 v15, p2

    .line 2233
    goto :goto_1

    :cond_4
    move-object/from16 v15, p3

    .line 2234
    goto :goto_2

    .line 2243
    .restart local v6    # "grpIdIntArray":[I
    .restart local v10    # "i":I
    :cond_5
    if-eqz v8, :cond_6

    .line 2244
    const-string/jumbo v15, ","

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2245
    .local v7, "grpIdStrArray":[Ljava/lang/String;
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_6

    .line 2246
    aget-object v15, v7, v10

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    aput v15, v6, v10

    .line 2245
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 2251
    .end local v7    # "grpIdStrArray":[Ljava/lang/String;
    :cond_6
    if-eqz p2, :cond_9

    .line 2252
    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p2

    array-length v15, v0

    if-ge v10, v15, :cond_9

    .line 2253
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_6
    if-ge v11, v9, :cond_8

    .line 2254
    aget v15, v6, v11

    aget v17, p2, v10

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    .line 2255
    const/4 v15, 0x0

    aput v15, v6, v11

    .line 2253
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 2252
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2262
    .end local v11    # "j":I
    :cond_9
    if-eqz p3, :cond_11

    .line 2263
    const/4 v10, 0x0

    :goto_7
    move-object/from16 v0, p3

    array-length v15, v0

    if-ge v10, v15, :cond_11

    .line 2264
    const/4 v2, 0x0

    .line 2265
    .local v2, "bEmpty":Z
    const/4 v3, 0x0

    .line 2268
    .local v3, "bExist":Z
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_8
    if-ge v12, v9, :cond_a

    .line 2269
    aget v15, v6, v12

    aget v17, p3, v10

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    .line 2270
    const/4 v3, 0x1

    .line 2275
    :cond_a
    if-eqz v3, :cond_d

    .line 2276
    const-string/jumbo v15, "UsimPhoneBookManager"

    const-string/jumbo v17, "moveContactFromGroupsToGroups the adn is already in the group."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 2268
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 2281
    :cond_d
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_9
    if-ge v11, v9, :cond_f

    .line 2282
    aget v15, v6, v11

    if-eqz v15, :cond_e

    aget v15, v6, v11

    const/16 v17, 0xff

    move/from16 v0, v17

    if-ne v15, v0, :cond_10

    .line 2283
    :cond_e
    const/4 v2, 0x1

    .line 2284
    aget v15, p3, v10

    aput v15, v6, v11

    .line 2289
    :cond_f
    if-nez v2, :cond_b

    .line 2290
    const-string/jumbo v15, "UsimPhoneBookManager"

    const-string/jumbo v17, "moveContactFromGroupsToGroups no empty to add."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2291
    const/4 v15, 0x0

    monitor-exit v16

    return v15

    .line 2281
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 2296
    .end local v2    # "bEmpty":Z
    .end local v3    # "bExist":Z
    .end local v11    # "j":I
    .end local v12    # "k":I
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2297
    const/16 v17, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 2296
    move/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v15, v0, v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2299
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2304
    :goto_a
    :try_start_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v15, :cond_12

    .line 2305
    const/4 v14, 0x1

    .line 2306
    add-int/lit8 v15, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v15, v1, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2307
    const-string/jumbo v15, "UsimPhoneBookManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " updateContactToGroups the adn index is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 2308
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v18

    .line 2307
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v5    # "grpCount":I
    .end local v6    # "grpIdIntArray":[I
    .end local v8    # "grpIds":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    :cond_12
    monitor-exit v16

    .line 2314
    return v14

    .line 2300
    .restart local v5    # "grpCount":I
    .restart local v6    # "grpIdIntArray":[I
    .restart local v8    # "grpIds":Ljava/lang/String;
    .restart local v9    # "grpMaxCount":I
    .restart local v10    # "i":I
    :catch_0
    move-exception v4

    .line 2301
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v15, "UsimPhoneBookManager"

    const-string/jumbo v17, "Interrupted Exception in updateContactToGroups"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    .line 2222
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "grpCount":I
    .end local v6    # "grpIdIntArray":[I
    .end local v8    # "grpIds":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    .end local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15
.end method

.method parseType1EmailFile(I)V
    .locals 8
    .param p1, "numRecs"    # I

    .prologue
    .line 903
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 904
    const/4 v3, 0x0

    .line 906
    .local v3, "emailRec":[B
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 907
    return-void

    .line 910
    :cond_0
    const/4 v4, 0x0

    .end local v3    # "emailRec":[B
    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_2

    .line 912
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    .local v3, "emailRec":[B
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-byte v0, v3, v6

    .line 919
    .local v0, "adnRecNum":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_3

    .line 910
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 913
    .end local v0    # "adnRecNum":I
    .end local v3    # "emailRec":[B
    :catch_0
    move-exception v1

    .line 914
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v6, "UsimPhoneBookManager"

    const-string/jumbo v7, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    return-void

    .line 923
    .restart local v0    # "adnRecNum":I
    .restart local v3    # "emailRec":[B
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .line 925
    .local v2, "email":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 930
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 931
    .local v5, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_4

    .line 932
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .restart local v5    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public readEFLinearRecordSize(I)[I
    .locals 6
    .param p1, "fileId"    # I

    .prologue
    .line 4566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readEFLinearRecordSize fileid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4567
    const/16 v3, 0x3e8

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4568
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 4569
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4570
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4572
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4576
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 4577
    :goto_1
    if-eqz v2, :cond_0

    .line 4578
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readEFLinearRecordSize fileid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ",len:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ",total:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4579
    const/4 v5, 0x1

    aget v5, v2, v5

    .line 4578
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4579
    const-string/jumbo v5, ",count:"

    .line 4578
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4579
    const/4 v5, 0x2

    aget v5, v2, v5

    .line 4578
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v4

    .line 4582
    return-object v2

    .line 4573
    :catch_0
    move-exception v0

    .line 4574
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in readRecordSize"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4569
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4576
    :cond_1
    const/4 v2, 0x0

    .local v2, "recordSize":[I
    goto :goto_1
.end method

.method readRecordSize(I)V
    .locals 4
    .param p1, "fileId"    # I

    .prologue
    .line 960
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 961
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    .line 959
    return-void

    .line 964
    :catch_0
    move-exception v0

    .line 965
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in readRecordSize"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 960
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public declared-synchronized removeContactFromGroup(II)Z
    .locals 15
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .prologue
    monitor-enter p0

    .line 2108
    const/4 v10, 0x0

    .line 2109
    .local v10, "ret":Z
    :try_start_0
    const-string/jumbo v11, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "UsimPhoneBookManager removeContactFromGroup adnIndex is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2110
    const-string/jumbo v13, " to grp "

    .line 2109
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    if-gtz p1, :cond_1

    .line 2112
    :cond_0
    const-string/jumbo v11, "UsimPhoneBookManager"

    const-string/jumbo v12, "UsimPhoneBookManager removeContactFromGroup no records or invalid index."

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2113
    const/4 v11, 0x0

    monitor-exit p0

    return v11

    .line 2111
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v0, p1

    if-gt v0, v11, :cond_0

    .line 2115
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2118
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v13, p1, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2125
    .local v9, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v9, :cond_5

    .line 2126
    :try_start_3
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v6

    .line 2127
    .local v6, "grpList":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 2128
    const-string/jumbo v11, "UsimPhoneBookManager"

    const-string/jumbo v13, " the adn is not in any group. "

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2129
    const/4 v11, 0x0

    monitor-exit p0

    return v11

    .line 2119
    .end local v6    # "grpList":Ljava/lang/String;
    .end local v9    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v2

    .line 2120
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_5
    const-string/jumbo v11, "UsimPhoneBookManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "UsimPhoneBookManager removeContactFromGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2121
    iget-object v14, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2120
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2121
    const-string/jumbo v14, "index is "

    .line 2120
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2121
    add-int/lit8 v14, p1, -0x1

    .line 2120
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2122
    const/4 v11, 0x0

    monitor-exit p0

    return v11

    .line 2131
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v6    # "grpList":Ljava/lang/String;
    .restart local v9    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    :try_start_7
    const-string/jumbo v11, ","

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2132
    .local v5, "grpIds":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2133
    .local v1, "bExist":Z
    const/4 v8, -0x1

    .line 2134
    .local v8, "nOrder":I
    array-length v11, v5

    new-array v4, v11, [I

    .line 2135
    .local v4, "grpIdArray":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v11, v5

    if-ge v7, v11, :cond_4

    .line 2136
    aget-object v11, v5, v7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v4, v7

    .line 2137
    aget v11, v4, v7

    move/from16 v0, p2

    if-ne v0, v11, :cond_3

    .line 2138
    const/4 v1, 0x1

    .line 2139
    move v8, v7

    .line 2140
    const-string/jumbo v11, "UsimPhoneBookManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " removeContactFromGroup the adn is in the group. i is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2144
    :cond_4
    if-eqz v1, :cond_6

    if-ltz v8, :cond_6

    .line 2145
    const/4 v11, 0x0

    aput v11, v4, v8

    .line 2146
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2147
    const/16 v13, 0xa

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 2146
    move/from16 v0, p1

    invoke-interface {v11, v0, v4, v13}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2149
    :try_start_8
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2153
    :goto_1
    :try_start_9
    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v11, :cond_5

    .line 2154
    const/4 v10, 0x1

    .line 2155
    add-int/lit8 v11, p1, -0x1

    move/from16 v0, p1

    invoke-direct {p0, v11, v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2156
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v1    # "bExist":Z
    .end local v4    # "grpIdArray":[I
    .end local v5    # "grpIds":[Ljava/lang/String;
    .end local v6    # "grpList":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "nOrder":I
    :cond_5
    :goto_2
    :try_start_a
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit p0

    .line 2163
    return v10

    .line 2150
    .restart local v1    # "bExist":Z
    .restart local v4    # "grpIdArray":[I
    .restart local v5    # "grpIds":[Ljava/lang/String;
    .restart local v6    # "grpList":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "nOrder":I
    :catch_1
    move-exception v3

    .line 2151
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_b
    const-string/jumbo v11, "UsimPhoneBookManager"

    const-string/jumbo v13, "Interrupted Exception in removeContactFromGroup"

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    .line 2115
    .end local v1    # "bExist":Z
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "grpIdArray":[I
    .end local v5    # "grpIds":[Ljava/lang/String;
    .end local v6    # "grpList":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "nOrder":I
    .end local v9    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v11

    :try_start_c
    monitor-exit v12

    throw v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v11

    monitor-exit p0

    throw v11

    .line 2159
    .restart local v1    # "bExist":Z
    .restart local v4    # "grpIdArray":[I
    .restart local v5    # "grpIds":[Ljava/lang/String;
    .restart local v6    # "grpList":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "nOrder":I
    .restart local v9    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_6
    :try_start_d
    const-string/jumbo v11, "UsimPhoneBookManager"

    const-string/jumbo v13, " removeContactFromGroup the adn is not in the group. "

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2
.end method

.method public removeContactGroup(I)Z
    .locals 14
    .param p1, "adnIndex"    # I

    .prologue
    .line 2323
    const/4 v8, 0x0

    .line 2324
    .local v8, "ret":Z
    const-string/jumbo v10, "UsimPhoneBookManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "UsimPhoneBookManager removeContactsGroup adnIndex is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2326
    :cond_0
    return v8

    .line 2328
    :cond_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2331
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v12, p1, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2338
    .local v7, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-nez v7, :cond_2

    .line 2323
    const/4 v10, 0x0

    monitor-exit v11

    .line 2339
    return v10

    .line 2332
    .end local v7    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v0

    .line 2333
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1
    const-string/jumbo v10, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "UsimPhoneBookManager removeContactGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2334
    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2333
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2334
    const-string/jumbo v13, "index is "

    .line 2333
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2334
    add-int/lit8 v13, p1, -0x1

    .line 2333
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2335
    const/4 v10, 0x0

    monitor-exit v11

    return v10

    .line 2341
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v7    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    :try_start_2
    const-string/jumbo v10, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "UsimPhoneBookManager removeContactsGroup rec is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 2343
    .local v4, "grpList":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 2323
    const/4 v10, 0x0

    monitor-exit v11

    .line 2344
    return v10

    .line 2346
    :cond_3
    :try_start_3
    const-string/jumbo v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2347
    .local v3, "grpIds":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2348
    .local v5, "hasGroup":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v10, v3

    if-ge v6, v10, :cond_4

    .line 2349
    aget-object v10, v3, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2350
    .local v9, "value":I
    if-lez v9, :cond_5

    const/16 v10, 0xff

    if-ge v9, v10, :cond_5

    .line 2351
    const/4 v5, 0x1

    .line 2355
    .end local v9    # "value":I
    :cond_4
    if-eqz v5, :cond_7

    .line 2356
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v12, 0x0

    new-array v12, v12, [I

    .line 2357
    const/16 v13, 0xa

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 2356
    invoke-interface {v10, p1, v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2360
    :try_start_4
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2365
    :goto_1
    :try_start_5
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v10, :cond_7

    .line 2366
    const/4 v8, 0x1

    .line 2367
    array-length v10, v3

    new-array v2, v10, [I

    .line 2368
    .local v2, "grpIdArray":[I
    const/4 v6, 0x0

    :goto_2
    array-length v10, v3

    if-ge v6, v10, :cond_6

    .line 2369
    const/4 v10, 0x0

    aput v10, v2, v6

    .line 2368
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2348
    .end local v2    # "grpIdArray":[I
    .restart local v9    # "value":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2361
    .end local v9    # "value":I
    :catch_1
    move-exception v1

    .line 2362
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v10, "UsimPhoneBookManager"

    const-string/jumbo v12, "Interrupted Exception in removeContactGroup"

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2328
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "grpIds":[Ljava/lang/String;
    .end local v4    # "grpList":Ljava/lang/String;
    .end local v5    # "hasGroup":Z
    .end local v6    # "i":I
    .end local v7    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 2371
    .restart local v2    # "grpIdArray":[I
    .restart local v3    # "grpIds":[Ljava/lang/String;
    .restart local v4    # "grpList":Ljava/lang/String;
    .restart local v5    # "hasGroup":Z
    .restart local v6    # "i":I
    .restart local v7    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_6
    add-int/lit8 v10, p1, -0x1

    :try_start_6
    invoke-direct {p0, v10, p1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2372
    const-string/jumbo v10, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " removeContactGroup the adn index is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2373
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v13

    .line 2372
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v2    # "grpIdArray":[I
    :cond_7
    monitor-exit v11

    .line 2377
    return v8
.end method

.method public removeUsimAasById(II)Z
    .locals 16
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    .line 3789
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removeUsimAasById by id "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v14, ",pbrIndex "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3790
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v5, :cond_3

    .line 3791
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3792
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v14, "No PBR files"

    invoke-static {v5, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    const/4 v5, 0x1

    return v5

    .line 3795
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 3796
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3797
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 3798
    const/4 v5, 0x1

    monitor-exit v14

    return v5

    .line 3800
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v13

    .line 3802
    .local v13, "numRecs":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3803
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v13, :cond_2

    .line 3804
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3803
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v14

    .line 3808
    .end local v10    # "i":I
    .end local v13    # "numRecs":I
    :cond_3
    move/from16 v3, p1

    .line 3809
    .local v3, "aasIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 3810
    .local v9, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v9, :cond_4

    const/16 v5, 0xc7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3814
    const/16 v5, 0xc7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3815
    .local v2, "efid":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removeUsimAasById result,efid:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3817
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3818
    .local v1, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v1, :cond_9

    .line 3820
    const/16 v5, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 3821
    .local v6, "msg":Landroid/os/Message;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v11

    .line 3822
    .local v11, "len":I
    new-array v4, v11, [B

    .line 3823
    .local v4, "aasString":[B
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    if-ge v10, v11, :cond_5

    .line 3824
    const/4 v5, -0x1

    aput-byte v5, v4, v10

    .line 3823
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3795
    .end local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v2    # "efid":I
    .end local v3    # "aasIndex":I
    .end local v4    # "aasString":[B
    .end local v6    # "msg":Landroid/os/Message;
    .end local v9    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    .end local v11    # "len":I
    :catchall_0
    move-exception v5

    monitor-exit v14

    throw v5

    .line 3811
    .restart local v3    # "aasIndex":I
    .restart local v9    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v14, "removeUsimAasById-PBR have no AAS EF record"

    invoke-static {v5, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    const/4 v5, 0x0

    return v5

    .line 3826
    .restart local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v2    # "efid":I
    .restart local v4    # "aasString":[B
    .restart local v6    # "msg":Landroid/os/Message;
    .restart local v10    # "i":I
    .restart local v11    # "len":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 3827
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3830
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit v14

    .line 3835
    iget-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 3836
    .local v7, "ar":Landroid/os/AsyncResult;
    if-eqz v7, :cond_6

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_8

    .line 3837
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 3838
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_7

    .line 3839
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "remove aas done "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3840
    add-int/lit8 v5, v3, -0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v5, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3842
    :cond_7
    const/4 v5, 0x1

    return v5

    .line 3831
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 3832
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v15, "Interrupted Exception in removesimAasById"

    invoke-static {v5, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 3826
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v5

    monitor-exit v14

    throw v5

    .line 3844
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    :cond_8
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "removeUsimAasById exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    const/4 v5, 0x0

    return v5

    .line 3848
    .end local v4    # "aasString":[B
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "i":I
    .end local v11    # "len":I
    :cond_9
    const-string/jumbo v5, "UsimPhoneBookManager"

    const-string/jumbo v14, "removeUsimAasById-IccFileHandler is null"

    invoke-static {v5, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    const/4 v5, 0x0

    return v5
.end method

.method public declared-synchronized removeUsimGroupById(I)Z
    .locals 8
    .param p1, "nGasId"    # I

    .prologue
    monitor-enter p0

    .line 1881
    const/4 v1, 0x0

    .line 1882
    .local v1, "ret":Z
    :try_start_0
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager removeUsimGroupById nGasId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1885
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le p1, v3, :cond_2

    .line 1886
    :cond_0
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "UsimPhoneBookManager removeUsimGroupById fail "

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 1909
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsimPhoneBookManager removeUsimGroupById result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 1910
    return v1

    .line 1888
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 1889
    .local v2, "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " removeUsimGroupById index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1891
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1892
    const/16 v5, 0x11

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1891
    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1894
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1902
    :goto_1
    :try_start_5
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v3, :cond_1

    .line 1903
    const/4 v1, 0x1

    .line 1904
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 1905
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1883
    .end local v2    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit v4

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1895
    .restart local v2    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :catch_0
    move-exception v0

    .line 1896
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "Interrupted Exception in removeUsimGroupById"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1899
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "UsimPhoneBookManager removeUsimGroupById fail: this gas doesn\'t exist "

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    .line 249
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 250
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 251
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 252
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 254
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFileRecords:Ljava/util/ArrayList;

    .line 255
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager reset finished. "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method public updateAdnAas(II)Z
    .locals 9
    .param p1, "adnIndex"    # I
    .param p2, "aasIndex"    # I

    .prologue
    .line 4021
    add-int/lit8 v6, p1, -0x1

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v4, v6, v7

    .line 4022
    .local v4, "pbrRecNum":I
    add-int/lit8 v6, p1, -0x1

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v3, v6, v7

    .line 4026
    .local v3, "index":I
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4033
    .local v5, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAasIndex(I)V

    .line 4035
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v2, v6, :cond_0

    .line 4036
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 4037
    .local v0, "anr":Ljava/lang/String;
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;II)V

    .line 4035
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4027
    .end local v0    # "anr":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v1

    .line 4028
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UsimPhoneBookManager updateADNAAS: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4029
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 4028
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4029
    const-string/jumbo v8, "index is "

    .line 4028
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4029
    add-int/lit8 v8, p1, -0x1

    .line 4028
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    const/4 v6, 0x0

    return v6

    .line 4040
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "i":I
    .restart local v5    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_0
    const/4 v6, 0x1

    return v6
.end method

.method public updateAnrByAdnIndex(Ljava/lang/String;II)V
    .locals 18
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I

    .prologue
    .line 2494
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v14, v3, v5

    .line 2495
    .local v14, "pbrRecNum":I
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v10, v3, v5

    .line 2496
    .local v10, "anrRecNum":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 2497
    return-void

    .line 2499
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 2501
    .local v13, "fileIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2502
    :cond_1
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "UsimPhoneBookManager updateAnrByAdnIndex: No anr tag in pbr record 0"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    return-void

    .line 2505
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2506
    :cond_3
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v5, "UsimPhoneBookManager updateAnrByAdnIndex: mPhoneBookRecords is empty"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    return-void

    .line 2509
    :cond_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p3

    if-gt v3, v0, :cond_5

    .line 2510
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAnrByAdnIndex anr file size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    return-void

    .line 2514
    :cond_5
    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2515
    .local v4, "efid":I
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UsimPhoneBookManager updateAnrByAdnIndex recNum: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " EFANR id is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    const/4 v12, 0x0

    .line 2518
    .local v12, "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "record$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 2519
    .local v16, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v3, v4, :cond_6

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v3, v14, :cond_6

    .line 2520
    move-object/from16 v12, v16

    .line 2521
    .local v12, "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move/from16 v0, p3

    iput v0, v12, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    .line 2522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAnrByAdnIndex anrIndex:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v12, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2527
    .end local v12    # "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v16    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_7
    if-nez v12, :cond_8

    .line 2528
    const-string/jumbo v3, "updateAnrByAdnIndex no efrecord "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2529
    return-void

    .line 2532
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAnrByAdnIndex efrecord "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2533
    iget v3, v12, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-ne v3, v5, :cond_9

    .line 2534
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateType2Anr(Ljava/lang/String;ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 2535
    return-void

    .line 2540
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2547
    .local v15, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v15}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAasIndex()I

    move-result v9

    .line 2548
    .local v9, "aas":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;II)[B

    move-result-object v6

    .line 2549
    .local v6, "data":[B
    if-eqz v6, :cond_a

    .line 2550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v5, v10, 0x1

    .line 2551
    const/16 v7, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 2550
    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 2491
    :cond_a
    return-void

    .line 2541
    .end local v6    # "data":[B
    .end local v9    # "aas":I
    .end local v15    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v11

    .line 2542
    .local v11, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UsimPhoneBookManager updateAnrByAdnIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2543
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2542
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2543
    const-string/jumbo v7, "index is "

    .line 2542
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2543
    add-int/lit8 v7, p2, -0x1

    .line 2542
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    return-void
.end method

.method public updateContactToGroups(I[I)Z
    .locals 11
    .param p1, "adnIndex"    # I
    .param p2, "grpIdList"    # [I

    .prologue
    const/4 v7, 0x0

    .line 2167
    const/4 v5, 0x0

    .line 2169
    .local v5, "ret":Z
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    if-gtz p1, :cond_1

    .line 2170
    :cond_0
    const-string/jumbo v6, "UsimPhoneBookManager"

    const-string/jumbo v8, "UsimPhoneBookManager updateContactToGroups no records or invalid index."

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    return v7

    .line 2169
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt p1, v6, :cond_0

    if-eqz p2, :cond_0

    .line 2174
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UsimPhoneBookManager updateContactToGroups grpIdList is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2175
    const-string/jumbo v9, " to grp list count "

    .line 2174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2175
    array-length v9, p2

    .line 2174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2178
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2179
    .local v4, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v4, :cond_5

    .line 2180
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " addContactToGroup the adn index is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2181
    const-string/jumbo v10, " old grpList is "

    .line 2180
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2181
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v10

    .line 2180
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v9, 0x7

    aget v1, v6, v9

    .line 2183
    .local v1, "grpCount":I
    array-length v6, p2

    if-le v6, v1, :cond_2

    .line 2184
    const-string/jumbo v6, "UsimPhoneBookManager"

    const-string/jumbo v9, "updateContactToGroups length of grpIdList > grpCount."

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 2185
    return v7

    .line 2188
    :cond_2
    :try_start_1
    new-array v2, v1, [I

    .line 2189
    .local v2, "grpIdArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 2190
    array-length v6, p2

    if-ge v3, v6, :cond_3

    aget v6, p2, v3

    :goto_1
    aput v6, v2, v3

    .line 2191
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateContactToGroups i:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", grpIdArray["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v2, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v6, v7

    .line 2190
    goto :goto_1

    .line 2194
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2195
    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2194
    invoke-interface {v6, p1, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2197
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2201
    :goto_2
    :try_start_3
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v6, :cond_5

    .line 2202
    const/4 v5, 0x1

    .line 2203
    add-int/lit8 v6, p1, -0x1

    invoke-direct {p0, v6, p1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2204
    const-string/jumbo v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " updateContactToGroups the adn index is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2205
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v9

    .line 2204
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "grpCount":I
    .end local v2    # "grpIdArray":[I
    .end local v3    # "i":I
    :cond_5
    monitor-exit v8

    .line 2210
    return v5

    .line 2198
    .restart local v1    # "grpCount":I
    .restart local v2    # "grpIdArray":[I
    .restart local v3    # "i":I
    :catch_0
    move-exception v0

    .line 2199
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v6, "UsimPhoneBookManager"

    const-string/jumbo v7, "Interrupted Exception in updateContactToGroups"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 2177
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "grpCount":I
    .end local v2    # "grpIdArray":[I
    .end local v3    # "i":I
    .end local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6
.end method

.method public updateEmailsByAdnIndex([Ljava/lang/String;I)I
    .locals 28
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "adnIndex"    # I

    .prologue
    .line 2750
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v5, v3, v4

    .line 2751
    .local v5, "pbrRecNum":I
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v24, v3, v4

    .line 2753
    .local v24, "nIapRecNum":I
    const/16 v25, -0x3

    .line 2754
    .local v25, "recNum":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 2755
    const/4 v3, 0x0

    return v3

    .line 2757
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map;

    .line 2758
    .local v22, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v22, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2759
    :cond_1
    const/4 v3, 0x0

    return v3

    .line 2761
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2762
    :cond_3
    const/4 v3, 0x0

    return v3

    .line 2764
    :cond_4
    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2765
    const-string/jumbo v3, "UsimPhoneBookManager"

    .line 2766
    const-string/jumbo v4, "UsimPhoneBookManager updateEmailsByAdnIndex: No email tag in pbr record 0"

    .line 2765
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    const/4 v3, 0x0

    return v3

    .line 2770
    :cond_5
    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2771
    .local v9, "efid":I
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UsimPhoneBookManager updateEmailsByAdnIndex: pbrrecNum is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2772
    const-string/jumbo v6, " EFEMAIL id is "

    .line 2771
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    .line 2791
    const/4 v7, 0x0

    .line 2793
    .local v7, "iapRec":[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 2794
    .local v23, "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 2795
    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "iapRec":[B
    check-cast v7, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2804
    .local v7, "iapRec":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v3, v3, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsSameEmailEfid:Z

    if-eqz v3, :cond_7

    .line 2805
    add-int/lit8 v6, v24, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getRecNumForSameEmailEfid([Ljava/lang/String;II[BI)I

    move-result v25

    .line 2809
    :goto_0
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UsimPhoneBookManager updateEmailsByAdnIndex: Email recNum is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    const/4 v3, -0x2

    move/from16 v0, v25

    if-ne v3, v0, :cond_8

    .line 2811
    const/4 v3, -0x1

    return v3

    .line 2797
    .local v7, "iapRec":[B
    :cond_6
    :try_start_1
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "Warning: IAP size is 0"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2798
    const/4 v3, 0x0

    return v3

    .line 2800
    .end local v7    # "iapRec":[B
    .end local v23    # "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_0
    move-exception v18

    .line 2801
    .local v18, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "Index out of bounds."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2802
    const/4 v3, 0x0

    return v3

    .line 2807
    .end local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    .local v7, "iapRec":[B
    .restart local v23    # "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_7
    add-int/lit8 v6, v24, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getRecNum([Ljava/lang/String;II[BI)I

    move-result v25

    goto :goto_0

    .line 2814
    :cond_8
    const-string/jumbo v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEmailsByAdnIndex: found Email recNum is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v0, v25

    int-to-byte v4, v0

    aput-byte v4, v7, v3

    .line 2817
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2818
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2825
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v10, v24, 0x1

    .line 2826
    const/16 v3, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 2825
    const/4 v12, 0x0

    move-object v11, v7

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 2829
    const/16 v3, 0xff

    move/from16 v0, v25

    if-eq v0, v3, :cond_c

    const/4 v3, -0x1

    move/from16 v0, v25

    if-eq v0, v3, :cond_c

    .line 2830
    const/16 v19, 0x0

    .line 2831
    .local v19, "eMailAd":Ljava/lang/String;
    if-eqz p1, :cond_c

    .line 2833
    const/4 v3, 0x0

    :try_start_2
    aget-object v19, p1, v3
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2837
    .end local v19    # "eMailAd":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v3, :cond_a

    .line 2838
    const/4 v3, 0x0

    return v3

    .line 2821
    :cond_9
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "updateEmailsByAdnIndex Error: No IAP file!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    const/4 v3, 0x0

    return v3

    .line 2834
    .restart local v19    # "eMailAd":Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 2835
    .restart local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "UsimPhoneBookManager"

    const-string/jumbo v4, "Error: updateEmailsByAdnIndex no email address, continuing"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2840
    .end local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v19    # "eMailAd":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v11

    .line 2842
    .local v11, "eMailRecData":[B
    if-nez v11, :cond_b

    .line 2843
    const/4 v3, -0x2

    return v3

    .line 2847
    :cond_b
    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2848
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 2849
    const/16 v3, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    const/4 v12, 0x0

    move/from16 v10, v25

    .line 2848
    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 2882
    .end local v7    # "iapRec":[B
    .end local v11    # "eMailRecData":[B
    .end local v23    # "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_c
    :goto_2
    const/4 v3, 0x0

    return v3

    .line 2854
    :cond_d
    const/16 v20, 0x0

    .line 2855
    .local v20, "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileids:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "record$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 2856
    .local v26, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v3, v9, :cond_e

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v3, v5, :cond_e

    .line 2857
    move-object/from16 v20, v26

    .line 2861
    .end local v20    # "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v26    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateEmailsByAdnIndex record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2862
    if-nez v20, :cond_10

    .line 2863
    const/4 v3, 0x0

    return v3

    .line 2865
    :cond_10
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_11

    .line 2866
    const/4 v3, 0x0

    return v3

    .line 2870
    :cond_11
    if-eqz p1, :cond_12

    move-object/from16 v0, p1

    array-length v3, v0

    if-gtz v3, :cond_13

    :cond_12
    const/16 v21, 0x0

    .line 2871
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v3, :cond_14

    .line 2872
    const/4 v3, 0x0

    return v3

    .line 2870
    :cond_13
    const/4 v3, 0x0

    aget-object v21, p1, v3

    .local v21, "email":Ljava/lang/String;
    goto :goto_3

    .line 2874
    .end local v21    # "email":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v15

    .line 2875
    .local v15, "data":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateEmailsByAdnIndex build type1 email record:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2876
    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 2875
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2877
    if-eqz v15, :cond_c

    .line 2878
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v14, v24, 0x1

    .line 2879
    const/16 v3, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 2878
    const/16 v16, 0x0

    move v13, v9

    invoke-virtual/range {v12 .. v17}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2
.end method

.method public updateSneByAdnIndex(Ljava/lang/String;I)V
    .locals 17
    .param p1, "sne"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I

    .prologue
    .line 4225
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UsimPhoneBookManager updateSneByAdnIndex sne is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",adnIndex "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4227
    add-int/lit8 v1, p2, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v12, v1, v2

    .line 4228
    .local v12, "pbrRecNum":I
    add-int/lit8 v1, p2, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v11, v1, v2

    .line 4229
    .local v11, "nIapRecNum":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 4230
    :cond_0
    return-void

    .line 4232
    :cond_1
    const/16 v1, 0x19

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4234
    .local v7, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 4235
    .local v10, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v10, :cond_3

    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4240
    :cond_2
    return-void

    .line 4236
    :cond_3
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "updateSneByAdnIndex: No SNE tag in pbr record 0"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    return-void

    .line 4242
    :cond_4
    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 4243
    .local v9, "efid":I
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSneByAdnIndex: EFSNE id is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4244
    const/4 v3, 0x0

    .line 4245
    .local v3, "efIndex":I
    const/4 v15, 0x0

    .line 4246
    .local v15, "sneEf":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSneFileids:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "record$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4247
    .local v13, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v1, v13, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v1, v12, :cond_5

    .line 4248
    add-int/lit8 v3, v3, 0x1

    .line 4249
    iget v1, v13, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v1, v9, :cond_5

    .line 4250
    move-object v15, v13

    .line 4255
    .end local v13    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v15    # "sneEf":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_6
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSneByAdnIndex: efIndex is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 4257
    if-eqz p1, :cond_7

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 4259
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    move/from16 v0, p2

    invoke-interface {v1, v2, v3, v0, v7}, Lcom/android/internal/telephony/CommandsInterface;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4266
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4270
    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSneByAdnIndex update IAP? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4271
    if-eqz v15, :cond_8

    iget v1, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v2, 0xa9

    if-ne v1, v2, :cond_8

    .line 4272
    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    monitor-exit v16

    .line 4223
    return-void

    .line 4261
    :cond_9
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4263
    .local v5, "temp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    const/4 v6, 0x0

    move/from16 v4, p2

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4256
    .end local v5    # "temp":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v16

    throw v1

    .line 4267
    :catch_0
    move-exception v8

    .line 4268
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v1, "UsimPhoneBookManager"

    const-string/jumbo v2, "Interrupted Exception in updateSneByAdnIndex"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateUsimAas(IILjava/lang/String;)Z
    .locals 20
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "aasName"    # Ljava/lang/String;

    .prologue
    .line 3933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimAas index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",pbrIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",aasName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v2, :cond_3

    .line 3935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3936
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "updateUsimAas No PBR "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    const/4 v2, 0x0

    return v2

    .line 3939
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3940
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 3942
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v4, "updateUsimAas No PBR files"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3943
    const/4 v2, 0x0

    monitor-exit v3

    return v2

    .line 3945
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v17

    .line 3946
    .local v17, "numRecs":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3947
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    .line 3948
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3947
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v3

    .line 3952
    .end local v12    # "i":I
    .end local v17    # "numRecs":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimAas not found pbr index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3954
    const/4 v2, 0x0

    return v2

    .line 3939
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 3956
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 3957
    .local v16, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v16, :cond_5

    .line 3958
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no aas for pbr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3959
    const/4 v2, 0x0

    return v2

    .line 3961
    :cond_5
    if-lez p1, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-le v0, v2, :cond_7

    .line 3962
    :cond_6
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateUsimAas not found aas index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    const/4 v2, 0x0

    return v2

    .line 3965
    :cond_7
    add-int/lit8 v2, p1, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3966
    .local v9, "aas":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimAas old aas "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3970
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 3972
    :cond_8
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeUsimAasById(II)Z

    move-result v2

    return v2

    .line 3975
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v14

    .line 3976
    .local v14, "limit":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    .line 3977
    .local v13, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimAas aas limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3978
    if-le v13, v14, :cond_a

    .line 3979
    const/4 v2, 0x0

    return v2

    .line 3981
    :cond_a
    const/16 v18, 0x0

    .line 3982
    .local v18, "offset":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_1
    move/from16 v0, p2

    if-ge v12, v0, :cond_c

    .line 3983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 3984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v18, v18, v2

    .line 3982
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 3987
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimAas offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3988
    add-int v5, p1, v18

    .line 3989
    .local v5, "aasIndex":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3990
    .local v6, "temp":Ljava/lang/String;
    const/16 v2, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 3991
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3992
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3994
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit v19

    .line 3999
    iget-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 4000
    .local v10, "ar":Landroid/os/AsyncResult;
    if-eqz v10, :cond_d

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    .line 4001
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 4002
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v15, :cond_e

    .line 4003
    add-int/lit8 v2, p1, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4004
    const-string/jumbo v2, "updateUsimAas update mAasForAnrRec done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4006
    :cond_e
    const/4 v2, 0x1

    return v2

    .line 3995
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    .line 3996
    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v2, "UsimPhoneBookManager"

    const-string/jumbo v3, "Interrupted Exception in updateUsimAas"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 3991
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v19

    throw v2

    .line 4008
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    :cond_f
    const-string/jumbo v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateUsimAas exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4009
    const/4 v2, 0x0

    return v2
.end method

.method public declared-synchronized updateUsimGroup(ILjava/lang/String;)I
    .locals 11
    .param p1, "nGasId"    # I
    .param p2, "grpName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 1997
    const/4 v8, -0x1

    .line 1998
    .local v8, "ret":I
    :try_start_0
    const-string/jumbo v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UsimPhoneBookManager updateUsimGroup nGasId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2001
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 2003
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 2004
    :cond_0
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "UsimPhoneBookManager updateUsimGroup fail "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v0, :cond_4

    .line 2016
    move v8, p1

    .line 2017
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 2018
    .local v9, "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    if-eqz v9, :cond_3

    .line 2019
    const-string/jumbo v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUsimGroup index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    invoke-virtual {v9, p2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->setAlphaTag(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v9    # "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :goto_1
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 2028
    return v8

    .line 2005
    :cond_2
    if-eqz p2, :cond_1

    .line 2006
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2007
    .local v4, "temp":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2008
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 2007
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2010
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2011
    :catch_0
    move-exception v7

    .line 2012
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "Interrupted Exception in updateUsimGroup"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2000
    .end local v4    # "temp":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v10

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2022
    .restart local v9    # "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_3
    :try_start_7
    const-string/jumbo v0, "UsimPhoneBookManager"

    const-string/jumbo v1, "updateUsimGroup the entry doesn\'t exist "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2025
    .end local v9    # "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_4
    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public updateUsimPhonebookRecordsList(ILcom/android/internal/telephony/uicc/AdnRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;

    .prologue
    .line 2955
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimPhonebookRecordsList update the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "th record."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 2957
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2958
    .local v0, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2959
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 2961
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2954
    .end local v0    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    return-void
.end method
