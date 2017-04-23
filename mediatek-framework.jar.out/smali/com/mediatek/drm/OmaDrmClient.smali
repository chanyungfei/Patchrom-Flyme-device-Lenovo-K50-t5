.class public Lcom/mediatek/drm/OmaDrmClient;
.super Ljava/lang/Object;
.source "OmaDrmClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/drm/OmaDrmClient$getCidListener;,
        Lcom/mediatek/drm/OmaDrmClient$ProgressListener;,
        Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;,
        Lcom/mediatek/drm/OmaDrmClient$Progress;
    }
.end annotation


# static fields
.field public static CTA_CANCEL_DONE:I = 0x0

.field public static CTA_DONE:I = 0x0

.field public static CTA_ERROR:I = 0x0

.field public static CTA_ERROR_BADKEY:I = 0x0

.field public static CTA_ERROR_CANCEL:I = 0x0

.field public static CTA_ERROR_GENRIC:I = 0x0

.field public static CTA_ERROR_INVALID_INPUT:I = 0x0

.field public static CTA_ERROR_NONE:I = 0x0

.field public static CTA_ERROR_NOSPACE:I = 0x0

.field public static CTA_MULTI_MEDIA_DECRYPT_DONE:I = 0x0

.field public static CTA_MULTI_MEDIA_ENCRYPT_DONE:I = 0x0

.field public static CTA_UPDATING:I = 0x0

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field private static final TAG:Ljava/lang/String; = "OmaDrmClient"

.field public static sConsumeDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsCtaDrmSupport:Z

.field private static sIsOmaDrmSupport:Z

.field public static sLicenseDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field public static sProtectionInfoDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field public static sSecureTimerDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mProgressInfoListener:Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;

.field private mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;


# direct methods
.method static synthetic -get0(Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmClient$ProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/drm/OmaDrmClient;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/drm/OmaDrmClient;->parseEventMsg(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    sput-object v0, Lcom/mediatek/drm/OmaDrmClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    sput-object v0, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    sput-object v0, Lcom/mediatek/drm/OmaDrmClient;->sProtectionInfoDialogQueue:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    sput-object v0, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    .line 96
    sput-boolean v2, Lcom/mediatek/drm/OmaDrmClient;->sIsOmaDrmSupport:Z

    .line 99
    sput-boolean v2, Lcom/mediatek/drm/OmaDrmClient;->sIsCtaDrmSupport:Z

    .line 102
    const-string/jumbo v0, "ro.mtk_oma_drm_support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/mediatek/drm/OmaDrmClient;->sIsOmaDrmSupport:Z

    .line 103
    const-string/jumbo v0, "ro.mtk_cta_drm_support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    sput-boolean v1, Lcom/mediatek/drm/OmaDrmClient;->sIsCtaDrmSupport:Z

    .line 847
    sput v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    .line 851
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_GENRIC:I

    .line 855
    const/4 v0, -0x2

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_BADKEY:I

    .line 859
    const/4 v0, -0x3

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NOSPACE:I

    .line 863
    const/4 v0, -0x5

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_CANCEL:I

    .line 867
    const/4 v0, -0x6

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_INVALID_INPUT:I

    .line 871
    const/4 v0, -0x7

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR:I

    .line 875
    const/16 v0, 0x64

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_DONE:I

    .line 879
    const/16 v0, 0x65

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_CANCEL_DONE:I

    .line 883
    const/16 v0, 0x66

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_UPDATING:I

    .line 888
    const/16 v0, 0x6e

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_MULTI_MEDIA_ENCRYPT_DONE:I

    .line 893
    const/16 v0, 0x6f

    sput v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_MULTI_MEDIA_DECRYPT_DONE:I

    .line 69
    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v1, v2

    .line 103
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1255
    iput-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    .line 1256
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;-><init>(Lcom/mediatek/drm/OmaDrmClient;Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;)V

    iput-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mProgressInfoListener:Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;

    .line 112
    const-string/jumbo v0, "OmaDrmClient"

    const-string/jumbo v1, "create OmaDrmClient instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmClient;->mContext:Landroid/content/Context;

    .line 114
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 111
    return-void
.end method

.method private getResultFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Landroid/drm/DrmInfo;

    .prologue
    .line 1261
    const/4 v0, 0x0

    .line 1262
    .local v0, "data":[B
    if-eqz p1, :cond_0

    .line 1263
    invoke-virtual {p1}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v0

    .line 1265
    .end local v0    # "data":[B
    :cond_0
    const-string/jumbo v2, ""

    .line 1266
    .local v2, "message":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1269
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2    # "message":Ljava/lang/String;
    const-string/jumbo v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    .restart local v2    # "message":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 1270
    .end local v2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1271
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "OmaDrmClient"

    const-string/jumbo v4, "Unsupported hongen encoding type of the returned DrmInfo data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const-string/jumbo v2, ""

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isCtaDrmSupport()Z
    .locals 1

    .prologue
    .line 1284
    sget-boolean v0, Lcom/mediatek/drm/OmaDrmClient;->sIsCtaDrmSupport:Z

    return v0
.end method

.method public static isOmaDrmEnabled()Z
    .locals 1

    .prologue
    .line 814
    sget-boolean v0, Lcom/mediatek/drm/OmaDrmClient;->sIsOmaDrmSupport:Z

    return v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const-string/jumbo v0, "OmaDrmClient"

    const-string/jumbo v1, "new OmaDrmClient instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v0, p0}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private parseEventMsg(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1193
    new-instance v1, Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1194
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "::"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1195
    .local v0, "dataArr":[Ljava/lang/String;
    array-length v4, v0

    .line 1196
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1197
    aget-object v5, v0, v2

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1198
    .local v3, "keyValue":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-ne v6, v5, :cond_0

    .line 1199
    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1203
    :cond_0
    const-string/jumbo v5, "OmaDrmClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hongen map is not right:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1206
    .end local v3    # "keyValue":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
    .locals 1
    .param p1, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    return-object v0
.end method

.method public acquireRights(Landroid/drm/DrmInfoRequest;)I
    .locals 1
    .param p1, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->acquireRights(Landroid/drm/DrmInfoRequest;)I

    move-result v0

    return v0
.end method

.method public canHandle(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public cancel(Ljava/io/FileDescriptor;)I
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 1091
    const-string/jumbo v4, "OmaDrmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cancel() fd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",toString "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    new-instance v2, Landroid/drm/DrmInfoRequest;

    .line 1093
    const-string/jumbo v4, "application/vnd.mtk.cta5.message"

    .line 1092
    const/16 v5, 0x7e5

    invoke-direct {v2, v5, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1094
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v4, "action"

    const-string/jumbo v5, "CTA5Cancel"

    invoke-virtual {v2, v4, v5}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1095
    const-string/jumbo v4, "CTA5Fd"

    invoke-virtual {v2, v4, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1097
    iget-object v4, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1098
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/drm/OmaDrmClient;->getResultFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1099
    .local v1, "message":Ljava/lang/String;
    const-string/jumbo v4, "success"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1100
    sget v3, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    .line 1101
    .local v3, "result":I
    :goto_0
    return v3

    .line 1100
    .end local v3    # "result":I
    :cond_0
    sget v3, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_CANCEL:I

    .restart local v3    # "result":I
    goto :goto_0
.end method

.method public changePassword(Ljava/io/FileDescriptor;[B[B)I
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "oldKey"    # [B
    .param p3, "newKey"    # [B

    .prologue
    .line 1024
    const-string/jumbo v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changePassword() : oldKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", newKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    new-instance v1, Landroid/drm/DrmInfoRequest;

    .line 1026
    const-string/jumbo v2, "application/vnd.mtk.cta5.message"

    .line 1025
    const/16 v3, 0x7e5

    invoke-direct {v1, v3, v2}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1027
    .local v1, "request":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v2, "action"

    .line 1028
    const-string/jumbo v3, "CTA5ChangePassword"

    .line 1027
    invoke-virtual {v1, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1029
    const-string/jumbo v2, "CTA5Fd"

    invoke-virtual {v1, v2, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1030
    const-string/jumbo v2, "CTA5oldKey"

    invoke-virtual {v1, v2, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1031
    const-string/jumbo v2, "CTA5newKey"

    invoke-virtual {v1, v2, p3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1032
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1033
    .local v0, "info":Landroid/drm/DrmInfo;
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    return v2
.end method

.method public checkRightsStatus(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;I)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .prologue
    .line 440
    const-string/jumbo v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkRightsStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v0

    .line 442
    .local v0, "result":I
    const-string/jumbo v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkRightsStatus : result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;I)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 418
    const-string/jumbo v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkRightsStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    .line 420
    .local v0, "result":I
    const-string/jumbo v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkRightsStatus : result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return v0
.end method

.method public clearToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 1323
    const-string/jumbo v4, "OmaDrmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clearToken filePath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    const/4 v3, 0x0

    .line 1325
    .local v3, "result":Z
    new-instance v2, Landroid/drm/DrmInfoRequest;

    .line 1326
    const-string/jumbo v4, "application/vnd.mtk.cta5.message"

    .line 1325
    const/16 v5, 0x7e6

    invoke-direct {v2, v5, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1327
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v4, "action"

    const-string/jumbo v5, "CTA5Cleartoken"

    invoke-virtual {v2, v4, v5}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1328
    const-string/jumbo v4, "CTA5FilePath"

    invoke-virtual {v2, v4, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1329
    const-string/jumbo v4, "CTA5Token"

    invoke-virtual {v2, v4, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1330
    iget-object v4, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1331
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/drm/OmaDrmClient;->getResultFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1332
    .local v1, "message":Ljava/lang/String;
    const-string/jumbo v4, "success"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1333
    :goto_0
    return v3

    .line 1332
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public consumeRights(Landroid/net/Uri;I)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .prologue
    const/16 v5, -0x7d0

    .line 669
    const-string/jumbo v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "consumeRights: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    if-eqz p1, :cond_0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p1, :cond_1

    .line 672
    :cond_0
    const-string/jumbo v2, "OmaDrmClient"

    const-string/jumbo v3, "consumeRights : Given uri is not valid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return v5

    .line 675
    :cond_1
    invoke-static {p2}, Lcom/mediatek/drm/OmaDrmStore$Action;->isValid(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 676
    const-string/jumbo v2, "OmaDrmClient"

    const-string/jumbo v3, "consumeRights : Given action is not valid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return v5

    .line 680
    :cond_2
    const/4 v1, 0x0

    .line 682
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 687
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lcom/mediatek/drm/OmaDrmClient;->consumeRights(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 683
    .local v1, "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalArgumentException @consumeRights : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return v5
.end method

.method public consumeRights(Ljava/lang/String;I)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    const/16 v5, -0x7d0

    .line 699
    const-string/jumbo v6, "OmaDrmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "consumeRights : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " with action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    if-eqz p1, :cond_0

    const-string/jumbo v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 702
    :cond_0
    const-string/jumbo v6, "OmaDrmClient"

    const-string/jumbo v7, "consumeRights : Given path is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return v5

    .line 705
    :cond_1
    invoke-static {p2}, Lcom/mediatek/drm/OmaDrmStore$Action;->isValid(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 706
    const-string/jumbo v6, "OmaDrmClient"

    const-string/jumbo v7, "consumeRights : Given action is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return v5

    .line 712
    :cond_2
    new-instance v4, Landroid/drm/DrmInfoRequest;

    .line 713
    const-string/jumbo v6, "application/vnd.oma.drm.content"

    .line 712
    const/16 v7, 0x7e5

    invoke-direct {v4, v7, v6}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 714
    .local v4, "request":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v6, "action"

    .line 715
    const-string/jumbo v7, "consumeRights"

    .line 714
    invoke-virtual {v4, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 716
    const-string/jumbo v6, "data"

    invoke-virtual {v4, v6, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 717
    const-string/jumbo v6, "data_extra_1"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 719
    iget-object v6, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v6, v4}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 722
    .local v2, "info":Landroid/drm/DrmInfo;
    invoke-virtual {v2}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v0

    .line 723
    .local v0, "data":[B
    const-string/jumbo v3, ""

    .line 724
    .local v3, "message":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 727
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .end local v3    # "message":Ljava/lang/String;
    const-string/jumbo v6, "US-ASCII"

    invoke-direct {v3, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .restart local v3    # "message":Ljava/lang/String;
    :cond_3
    :goto_0
    const-string/jumbo v6, "OmaDrmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "consumeRights : >"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string/jumbo v6, "success"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 736
    const/4 v5, 0x0

    .line 735
    :cond_4
    return v5

    .line 728
    .end local v3    # "message":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 729
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v6, "OmaDrmClient"

    const-string/jumbo v7, "Unsupported encoding type of the returned DrmInfo data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string/jumbo v3, ""

    .restart local v3    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method public decrypt(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)I
    .locals 5
    .param p1, "cipher_fd"    # Ljava/io/FileDescriptor;
    .param p2, "clear_fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 957
    const-string/jumbo v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decrypt() : cipher_fd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", clear_fd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 959
    :cond_0
    const-string/jumbo v2, "OmaDrmClient"

    const-string/jumbo v3, "encrypt bad input parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_INVALID_INPUT:I

    return v2

    .line 962
    :cond_1
    new-instance v1, Landroid/drm/DrmInfoRequest;

    .line 963
    const-string/jumbo v2, "application/vnd.mtk.cta5.message"

    .line 962
    const/16 v3, 0x7e5

    invoke-direct {v1, v3, v2}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 964
    .local v1, "request":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "CTA5Decrypt"

    invoke-virtual {v1, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 965
    const-string/jumbo v2, "CTA5clearFd"

    invoke-virtual {v1, v2, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 966
    const-string/jumbo v2, "CTA5cipherFd"

    invoke-virtual {v1, v2, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 967
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 968
    .local v0, "info":Landroid/drm/DrmInfo;
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    return v2
.end method

.method public decrypt(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[B)I
    .locals 5
    .param p1, "cipher_fd"    # Ljava/io/FileDescriptor;
    .param p2, "clear_fd"    # Ljava/io/FileDescriptor;
    .param p3, "key"    # [B

    .prologue
    .line 982
    const-string/jumbo v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decrypt() : cipher_fd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", clear_fd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 984
    :cond_0
    const-string/jumbo v2, "OmaDrmClient"

    const-string/jumbo v3, "encrypt bad input parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_INVALID_INPUT:I

    return v2

    .line 987
    :cond_1
    new-instance v1, Landroid/drm/DrmInfoRequest;

    .line 988
    const-string/jumbo v2, "application/vnd.mtk.cta5.message"

    .line 987
    const/16 v3, 0x7e5

    invoke-direct {v1, v3, v2}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 989
    .local v1, "request":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "CTA5Decrypt"

    invoke-virtual {v1, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 990
    const-string/jumbo v2, "CTA5clearFd"

    invoke-virtual {v1, v2, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 991
    const-string/jumbo v2, "CTA5cipherFd"

    invoke-virtual {v1, v2, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 992
    const-string/jumbo v2, "CTA5key"

    invoke-virtual {v1, v2, p3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 993
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 994
    .local v0, "info":Landroid/drm/DrmInfo;
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    return v2
.end method

.method public encrypt(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)I
    .locals 5
    .param p1, "clear_fd"    # Ljava/io/FileDescriptor;
    .param p2, "cipher_fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 904
    const-string/jumbo v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encrypt() : cipher_fd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", clear_fd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 906
    :cond_0
    const-string/jumbo v2, "OmaDrmClient"

    const-string/jumbo v3, "encrypt bad input parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_INVALID_INPUT:I

    return v2

    .line 909
    :cond_1
    new-instance v1, Landroid/drm/DrmInfoRequest;

    .line 910
    const-string/jumbo v2, "application/vnd.mtk.cta5.message"

    .line 909
    const/16 v3, 0x7e5

    invoke-direct {v1, v3, v2}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 911
    .local v1, "request":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "CTA5Encrypt"

    invoke-virtual {v1, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 912
    const-string/jumbo v2, "CTA5clearFd"

    invoke-virtual {v1, v2, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 913
    const-string/jumbo v2, "CTA5cipherFd"

    invoke-virtual {v1, v2, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 914
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 915
    .local v0, "info":Landroid/drm/DrmInfo;
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    return v2
.end method

.method public encrypt(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/lang/String;)I
    .locals 5
    .param p1, "clear_fd"    # Ljava/io/FileDescriptor;
    .param p2, "cipher_fd"    # Ljava/io/FileDescriptor;
    .param p3, "mime"    # Ljava/lang/String;

    .prologue
    .line 928
    const-string/jumbo v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encrypt() : cipher_fd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", clear_fd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 930
    :cond_0
    const-string/jumbo v2, "OmaDrmClient"

    const-string/jumbo v3, "encrypt bad input parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_INVALID_INPUT:I

    return v2

    .line 933
    :cond_1
    if-nez p3, :cond_2

    .line 934
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->encrypt(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)I

    move-result v2

    return v2

    .line 936
    :cond_2
    new-instance v1, Landroid/drm/DrmInfoRequest;

    .line 937
    const-string/jumbo v2, "application/vnd.mtk.cta5.message"

    .line 936
    const/16 v3, 0x7e5

    invoke-direct {v1, v3, v2}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 938
    .local v1, "request":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "CTA5Encrypt"

    invoke-virtual {v1, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 939
    const-string/jumbo v2, "CTA5clearFd"

    invoke-virtual {v1, v2, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 940
    const-string/jumbo v2, "CTA5cipherFd"

    invoke-virtual {v1, v2, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 941
    const-string/jumbo v2, "CTA5rawMime"

    invoke-virtual {v1, v2, p3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 942
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 944
    .local v0, "info":Landroid/drm/DrmInfo;
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    return v2
.end method

.method public getAvailableDrmEngines()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->getAvailableDrmEngines()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .prologue
    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDrmClient()Landroid/drm/DrmManagerClient;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method public getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(Landroid/net/Uri;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 747
    const-string/jumbo v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMethod : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v0

    .line 750
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 751
    const-string/jumbo v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 752
    .local v1, "m":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 756
    .end local v1    # "m":Ljava/lang/Integer;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getMethod(Ljava/lang/String;)I
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 766
    const-string/jumbo v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMethod : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 769
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 770
    const-string/jumbo v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 771
    .local v1, "m":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 772
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 775
    .end local v1    # "m":Ljava/lang/Integer;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress(Ljava/io/FileDescriptor;)Lcom/mediatek/drm/OmaDrmClient$Progress;
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const-wide/16 v2, 0x1

    .line 1067
    const-string/jumbo v1, "OmaDrmClient"

    const-string/jumbo v4, "getProgress()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    new-instance v7, Landroid/drm/DrmInfoRequest;

    .line 1069
    const-string/jumbo v1, "application/vnd.mtk.cta5.message"

    .line 1068
    const/16 v4, 0x7e5

    invoke-direct {v7, v4, v1}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1070
    .local v7, "request":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v1, "action"

    const-string/jumbo v4, "CTA5GetProgress"

    invoke-virtual {v7, v1, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1071
    const-string/jumbo v1, "CTA5Fd"

    invoke-virtual {v7, v1, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1072
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, v7}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1073
    .local v0, "info":Landroid/drm/DrmInfo;
    new-instance v1, Lcom/mediatek/drm/OmaDrmClient$Progress;

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/drm/OmaDrmClient$Progress;-><init>(JJI)V

    return-object v1
.end method

.method public getThubnail(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 1042
    const-string/jumbo v0, "OmaDrmClient"

    const-string/jumbo v1, "getThubnail()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThubnail(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "height"    # I
    .param p3, "width"    # I

    .prologue
    .line 1055
    const-string/jumbo v0, "OmaDrmClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getThubnail():fd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v0, 0x0

    return-object v0
.end method

.method public getToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1291
    const-string/jumbo v3, "OmaDrmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getToken filePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const/4 v2, 0x0

    .line 1293
    .local v2, "result":Ljava/lang/String;
    new-instance v1, Landroid/drm/DrmInfoRequest;

    .line 1294
    const-string/jumbo v3, "application/vnd.mtk.cta5.message"

    .line 1293
    const/16 v4, 0x7e6

    invoke-direct {v1, v4, v3}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1295
    .local v1, "request":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v3, "action"

    const-string/jumbo v4, "CTA5Gettoken"

    invoke-virtual {v1, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1296
    const-string/jumbo v3, "CTA5FilePath"

    invoke-virtual {v1, v3, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1297
    iget-object v3, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1298
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/drm/OmaDrmClient;->getResultFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v2

    .line 1299
    .local v2, "result":Ljava/lang/String;
    return-object v2
.end method

.method public installDrmEngine(Ljava/lang/String;)V
    .locals 1
    .param p1, "engineFilePath"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->installDrmEngine(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public installDrmMsg(Landroid/net/Uri;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v5, -0x7d0

    .line 491
    const-string/jumbo v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installDrmMsg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    if-eqz p1, :cond_0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p1, :cond_1

    .line 494
    :cond_0
    const-string/jumbo v2, "OmaDrmClient"

    const-string/jumbo v3, "installDrmMsg : Given uri is not valid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return v5

    .line 498
    :cond_1
    const/4 v1, 0x0

    .line 500
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 505
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/drm/OmaDrmClient;->installDrmMsg(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 501
    .local v1, "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalArgumentException @installDrmMsg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return v5
.end method

.method public installDrmMsg(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 516
    const-string/jumbo v0, "OmaDrmClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "installDrmMsg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/drm/OmaDrmClient;->installDrmMsg(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public installDrmMsg(Ljava/lang/String;Z)I
    .locals 23
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "useFd"    # Z

    .prologue
    .line 562
    const-string/jumbo v19, "OmaDrmClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "installDrmMsg FD path : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    if-eqz p1, :cond_0

    const-string/jumbo v19, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 565
    :cond_0
    const-string/jumbo v19, "OmaDrmClient"

    const-string/jumbo v20, "installDrmMsg : Given path is not valid"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/16 v19, -0x7d0

    return v19

    .line 568
    :cond_1
    const/4 v15, 0x0

    .line 569
    .local v15, "info":Landroid/drm/DrmInfo;
    const/4 v11, 0x0

    .line 570
    .local v11, "dmStream":Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .line 571
    .local v7, "dcfStream":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 572
    .local v9, "dmFd":Ljava/io/FileDescriptor;
    const/4 v4, 0x0

    .line 574
    .local v4, "dcfFd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 575
    .local v10, "dmFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 576
    new-instance v12, Ljava/io/RandomAccessFile;

    const-string/jumbo v19, "rw"

    move-object/from16 v0, v19

    invoke-direct {v12, v10, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    .local v12, "dmStream":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v11    # "dmStream":Ljava/io/RandomAccessFile;
    move-result-object v9

    .local v9, "dmFd":Ljava/io/FileDescriptor;
    move-object v11, v12

    .line 579
    .end local v9    # "dmFd":Ljava/io/FileDescriptor;
    .end local v12    # "dmStream":Ljava/io/RandomAccessFile;
    :cond_2
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/mediatek/drm/OmaDrmUtils;->generateDcfFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 580
    .local v6, "dcfPath":Ljava/lang/String;
    const-string/jumbo v19, "OmaDrmClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "installDrmMsg :dcfPathL: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-nez v6, :cond_9

    .line 582
    const-string/jumbo v19, "OmaDrmClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "installDrmMsg : dcfPath is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 583
    if-eqz v11, :cond_3

    .line 585
    :try_start_3
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 590
    :cond_3
    :goto_0
    const/16 v19, -0x7d0

    .line 623
    if-eqz v11, :cond_4

    .line 625
    :try_start_4
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 590
    :cond_4
    :goto_1
    return v19

    .line 586
    :catch_0
    move-exception v13

    .line 587
    .local v13, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v19, "OmaDrmClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "close dm stream: I/O Exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 619
    .end local v4    # "dcfFd":Ljava/io/FileDescriptor;
    .end local v6    # "dcfPath":Ljava/lang/String;
    .end local v7    # "dcfStream":Ljava/io/FileOutputStream;
    .end local v10    # "dmFile":Ljava/io/File;
    .end local v13    # "e":Ljava/io/IOException;
    .end local v15    # "info":Landroid/drm/DrmInfo;
    :catch_1
    move-exception v16

    .line 621
    .local v16, "ioe":Ljava/io/IOException;
    :goto_2
    :try_start_6
    const-string/jumbo v19, "OmaDrmClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "getOriginalMimeType: File I/O exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 623
    if-eqz v11, :cond_5

    .line 625
    :try_start_7
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 630
    :cond_5
    :goto_3
    if-eqz v7, :cond_6

    .line 632
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 640
    .end local v16    # "ioe":Ljava/io/IOException;
    :cond_6
    :goto_4
    const/4 v3, 0x0

    .line 641
    .local v3, "data":[B
    if-eqz v15, :cond_7

    .line 642
    invoke-virtual {v15}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v3

    .line 644
    .end local v3    # "data":[B
    :cond_7
    const-string/jumbo v17, ""

    .line 645
    .local v17, "message":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 648
    :try_start_9
    new-instance v17, Ljava/lang/String;

    .end local v17    # "message":Ljava/lang/String;
    const-string/jumbo v19, "US-ASCII"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_9

    .line 654
    .restart local v17    # "message":Ljava/lang/String;
    :cond_8
    :goto_5
    const-string/jumbo v19, "OmaDrmClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "installDrmMsg FD path: >"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string/jumbo v19, "success"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 657
    const/16 v19, 0x0

    .line 656
    :goto_6
    return v19

    .line 626
    .end local v17    # "message":Ljava/lang/String;
    .restart local v4    # "dcfFd":Ljava/io/FileDescriptor;
    .restart local v6    # "dcfPath":Ljava/lang/String;
    .restart local v7    # "dcfStream":Ljava/io/FileOutputStream;
    .restart local v10    # "dmFile":Ljava/io/File;
    .restart local v15    # "info":Landroid/drm/DrmInfo;
    :catch_2
    move-exception v13

    .line 627
    .restart local v13    # "e":Ljava/io/IOException;
    const-string/jumbo v20, "OmaDrmClient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "close dm stream: I/O Exception: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 592
    .end local v13    # "e":Ljava/io/IOException;
    :cond_9
    :try_start_a
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    .local v5, "dcfFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_a

    .line 594
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 596
    :cond_a
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 597
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 598
    .local v8, "dcfStream":Ljava/io/FileOutputStream;
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .end local v7    # "dcfStream":Ljava/io/FileOutputStream;
    move-result-object v4

    .local v4, "dcfFd":Ljava/io/FileDescriptor;
    move-object v7, v8

    .line 602
    .end local v4    # "dcfFd":Ljava/io/FileDescriptor;
    .end local v8    # "dcfStream":Ljava/io/FileOutputStream;
    :cond_b
    :try_start_c
    new-instance v18, Landroid/drm/DrmInfoRequest;

    .line 603
    const-string/jumbo v19, "application/vnd.oma.drm.message"

    .line 602
    const/16 v20, 0x7e5

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 604
    .local v18, "request":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v19, "action"

    const-string/jumbo v20, "installDrmMsgByFd"

    invoke-virtual/range {v18 .. v20}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 605
    const-string/jumbo v19, "dmFd"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 608
    const-string/jumbo v19, "dcfFd"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 609
    const-string/jumbo v19, "OmaDrmClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "installDrmMsg FD:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v15

    .line 612
    .local v15, "info":Landroid/drm/DrmInfo;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 613
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 615
    :cond_c
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 616
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 623
    :cond_d
    if-eqz v11, :cond_e

    .line 625
    :try_start_d
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 630
    :cond_e
    :goto_7
    if-eqz v7, :cond_6

    .line 632
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_4

    .line 633
    :catch_3
    move-exception v13

    .line 634
    .restart local v13    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "OmaDrmClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "close dcf stream: I/O Exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 626
    .end local v13    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v13

    .line 627
    .restart local v13    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "OmaDrmClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "close dm stream: I/O Exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 626
    .end local v5    # "dcfFile":Ljava/io/File;
    .end local v6    # "dcfPath":Ljava/lang/String;
    .end local v10    # "dmFile":Ljava/io/File;
    .end local v13    # "e":Ljava/io/IOException;
    .end local v15    # "info":Landroid/drm/DrmInfo;
    .end local v18    # "request":Landroid/drm/DrmInfoRequest;
    .restart local v16    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v13

    .line 627
    .restart local v13    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "OmaDrmClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "close dm stream: I/O Exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 633
    .end local v13    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v13

    .line 634
    .restart local v13    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "OmaDrmClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "close dcf stream: I/O Exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 622
    .end local v13    # "e":Ljava/io/IOException;
    .end local v16    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    .line 623
    :goto_8
    if-eqz v11, :cond_f

    .line 625
    :try_start_f
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 630
    :cond_f
    :goto_9
    if-eqz v7, :cond_10

    .line 632
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 622
    :cond_10
    :goto_a
    throw v19

    .line 626
    :catch_7
    move-exception v13

    .line 627
    .restart local v13    # "e":Ljava/io/IOException;
    const-string/jumbo v20, "OmaDrmClient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "close dm stream: I/O Exception: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 633
    .end local v13    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v13

    .line 634
    .restart local v13    # "e":Ljava/io/IOException;
    const-string/jumbo v20, "OmaDrmClient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "close dcf stream: I/O Exception: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 649
    .end local v13    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v14

    .line 650
    .local v14, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v19, "OmaDrmClient"

    const-string/jumbo v20, "Unsupported encoding type of the returned DrmInfo data"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string/jumbo v17, ""

    .restart local v17    # "message":Ljava/lang/String;
    goto/16 :goto_5

    .line 657
    .end local v14    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_11
    const/16 v19, -0x7d0

    goto/16 :goto_6

    .line 622
    .end local v17    # "message":Ljava/lang/String;
    .local v4, "dcfFd":Ljava/io/FileDescriptor;
    .restart local v7    # "dcfStream":Ljava/io/FileOutputStream;
    .local v9, "dmFd":Ljava/io/FileDescriptor;
    .restart local v10    # "dmFile":Ljava/io/File;
    .restart local v12    # "dmStream":Ljava/io/RandomAccessFile;
    .local v15, "info":Landroid/drm/DrmInfo;
    :catchall_1
    move-exception v19

    move-object v11, v12

    .end local v12    # "dmStream":Ljava/io/RandomAccessFile;
    .local v11, "dmStream":Ljava/io/RandomAccessFile;
    goto :goto_8

    .end local v7    # "dcfStream":Ljava/io/FileOutputStream;
    .end local v9    # "dmFd":Ljava/io/FileDescriptor;
    .end local v11    # "dmStream":Ljava/io/RandomAccessFile;
    .restart local v5    # "dcfFile":Ljava/io/File;
    .restart local v6    # "dcfPath":Ljava/lang/String;
    .restart local v8    # "dcfStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v19

    move-object v7, v8

    .end local v8    # "dcfStream":Ljava/io/FileOutputStream;
    .local v7, "dcfStream":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 619
    .end local v5    # "dcfFile":Ljava/io/File;
    .end local v6    # "dcfPath":Ljava/lang/String;
    .local v7, "dcfStream":Ljava/io/FileOutputStream;
    .restart local v9    # "dmFd":Ljava/io/FileDescriptor;
    .restart local v12    # "dmStream":Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v16

    .restart local v16    # "ioe":Ljava/io/IOException;
    move-object v11, v12

    .end local v12    # "dmStream":Ljava/io/RandomAccessFile;
    .restart local v11    # "dmStream":Ljava/io/RandomAccessFile;
    goto/16 :goto_2

    .end local v7    # "dcfStream":Ljava/io/FileOutputStream;
    .end local v9    # "dmFd":Ljava/io/FileDescriptor;
    .end local v11    # "dmStream":Ljava/io/RandomAccessFile;
    .end local v16    # "ioe":Ljava/io/IOException;
    .restart local v5    # "dcfFile":Ljava/io/File;
    .restart local v6    # "dcfPath":Ljava/lang/String;
    .restart local v8    # "dcfStream":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v16

    .restart local v16    # "ioe":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "dcfStream":Ljava/io/FileOutputStream;
    .local v7, "dcfStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method public isCTAFile(Ljava/io/FileDescriptor;)Z
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 1110
    new-instance v2, Landroid/drm/DrmInfoRequest;

    .line 1111
    const-string/jumbo v4, "application/vnd.mtk.cta5.message"

    .line 1110
    const/16 v5, 0x7e5

    invoke-direct {v2, v5, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1112
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v4, "action"

    const-string/jumbo v5, "CTA5IsCtaFile"

    invoke-virtual {v2, v4, v5}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1113
    const-string/jumbo v4, "CTA5Fd"

    invoke-virtual {v2, v4, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1114
    iget-object v4, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1115
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/drm/OmaDrmClient;->getResultFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1116
    .local v1, "message":Ljava/lang/String;
    const-string/jumbo v4, "success"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1117
    .local v3, "result":Z
    :goto_0
    return v3

    .line 1116
    .end local v3    # "result":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "result":Z
    goto :goto_0
.end method

.method public isCTAFile(Ljava/lang/String;)Z
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1126
    new-instance v2, Landroid/drm/DrmInfoRequest;

    .line 1127
    const-string/jumbo v4, "application/vnd.mtk.cta5.message"

    .line 1126
    const/16 v5, 0x7e5

    invoke-direct {v2, v5, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1128
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v4, "action"

    const-string/jumbo v5, "CTA5IsCtaFile"

    invoke-virtual {v2, v4, v5}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1129
    const-string/jumbo v4, "CTA5FilePath"

    invoke-virtual {v2, v4, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1130
    iget-object v4, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1131
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/drm/OmaDrmClient;->getResultFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, "message":Ljava/lang/String;
    const-string/jumbo v4, "success"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1133
    .local v3, "result":Z
    :goto_0
    return v3

    .line 1132
    .end local v3    # "result":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "result":Z
    goto :goto_0
.end method

.method public isTokenValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 1306
    const-string/jumbo v4, "OmaDrmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isTokenValid filePath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const/4 v3, 0x0

    .line 1308
    .local v3, "result":Z
    new-instance v2, Landroid/drm/DrmInfoRequest;

    .line 1309
    const-string/jumbo v4, "application/vnd.mtk.cta5.message"

    .line 1308
    const/16 v5, 0x7e6

    invoke-direct {v2, v5, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1310
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v4, "action"

    const-string/jumbo v5, "CTA5Checktoken"

    invoke-virtual {v2, v4, v5}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1311
    const-string/jumbo v4, "CTA5FilePath"

    invoke-virtual {v2, v4, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1312
    const-string/jumbo v4, "CTA5Token"

    invoke-virtual {v2, v4, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1313
    iget-object v4, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1314
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/drm/OmaDrmClient;->getResultFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1315
    .local v1, "message":Ljava/lang/String;
    const-string/jumbo v4, "success"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1316
    :goto_0
    return v3

    .line 1315
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public processDrmInfo(Landroid/drm/DrmInfo;)I
    .locals 1
    .param p1, "drmInfo"    # Landroid/drm/DrmInfo;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 133
    const-string/jumbo v0, "OmaDrmClient"

    const-string/jumbo v1, "release OmaDrmClient instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 132
    :cond_0
    return-void
.end method

.method public removeAllRights()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->removeAllRights()I

    move-result v0

    return v0
.end method

.method public removeRights(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->removeRights(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public removeRights(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public rescanDrmMediaFiles(Landroid/content/Context;Landroid/drm/DrmRights;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rights"    # Landroid/drm/DrmRights;
    .param p3, "callback"    # Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;

    .prologue
    .line 792
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    new-instance v3, Lcom/mediatek/drm/OmaDrmClient$getCidListener;

    invoke-direct {v3, p0, p1, p3}, Lcom/mediatek/drm/OmaDrmClient$getCidListener;-><init>(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)V

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 796
    new-instance v0, Landroid/drm/DrmInfo;

    .line 797
    invoke-virtual {p2}, Landroid/drm/DrmRights;->getData()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/drm/DrmRights;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 796
    const/16 v4, 0x7e6

    invoke-direct {v0, v4, v2, v3}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    .line 798
    .local v0, "info":Landroid/drm/DrmInfo;
    const-string/jumbo v2, "action"

    .line 799
    const-string/jumbo v3, "getContentId"

    .line 798
    invoke-virtual {v0, v2, v3}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 801
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v1

    .line 802
    .local v1, "result":I
    const-string/jumbo v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OmaDrmClient#rescanDrmMediaFiles: > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return v1
.end method

.method public saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "drmRights"    # Landroid/drm/DrmRights;
    .param p2, "rightsPath"    # Ljava/lang/String;
    .param p3, "contentPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/drm/DrmManagerClient;->saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setKey([B)I
    .locals 5
    .param p1, "key"    # [B

    .prologue
    .line 1006
    const-string/jumbo v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setKey() : key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    new-instance v1, Landroid/drm/DrmInfoRequest;

    .line 1008
    const-string/jumbo v2, "application/vnd.mtk.cta5.message"

    .line 1007
    const/16 v3, 0x7e5

    invoke-direct {v1, v3, v2}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1009
    .local v1, "request":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "CTA5SetKey"

    invoke-virtual {v1, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1010
    const-string/jumbo v2, "CTA5key"

    invoke-virtual {v1, v2, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1011
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1012
    .local v0, "info":Landroid/drm/DrmInfo;
    sget v2, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    return v2
.end method

.method public setProgressListener(Lcom/mediatek/drm/OmaDrmClient$ProgressListener;)I
    .locals 2
    .param p1, "progressListener"    # Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmClient;->mProgressListener:Lcom/mediatek/drm/OmaDrmClient$ProgressListener;

    .line 1081
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mProgressInfoListener:Lcom/mediatek/drm/OmaDrmClient$ProgressInfoListener;

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V

    .line 1082
    sget v0, Lcom/mediatek/drm/OmaDrmClient;->CTA_ERROR_NONE:I

    return v0
.end method
