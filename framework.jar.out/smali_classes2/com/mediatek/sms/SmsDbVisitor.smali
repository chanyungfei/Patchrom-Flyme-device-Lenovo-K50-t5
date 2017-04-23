.class public Lcom/mediatek/sms/SmsDbVisitor;
.super Ljava/lang/Object;
.source "SmsDbVisitor.java"


# static fields
.field private static final APST_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.apst.target"

.field private static final BACKUPRESTOR_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.backuprestore"

.field private static final DATATRANSFER_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.datatransfer"

.field private static final DBG:Z = true

.field private static final ESNTRACK_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.esntrack"

.field private static final LOG_TAG:Ljava/lang/String; = "[SmsDbVisitor]"

.field private static final PHONEPRIVACY_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.ppl"

.field private static final RCSMESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.rcs.messageservice"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.mediatek.datatransfer"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "com.mediatek.apst.target"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "com.mediatek.ppl"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "com.mediatek.backuprestore"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "com.mediatek.rcs.messageservice"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "com.mediatek.esntrack"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 52
    return-object v0
.end method
