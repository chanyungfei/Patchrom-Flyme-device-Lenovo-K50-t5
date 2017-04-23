.class public Lcom/mediatek/recovery/RegisteredRecoveryFile;
.super Ljava/lang/Object;
.source "RegisteredRecoveryFile.java"


# static fields
.field static final BACKUP_FLAG_BOOT:I = 0x1

.field static final BACKUP_FLAG_DEMAND:I = 0x2

.field static final BACKUP_FLAG_NONE:I = 0x0

.field static final DEFAULT_ACTION_NONE:I = 0x0

.field static final DEFAULT_ACTION_RECOVER:I = 0x2

.field static final DEFAULT_ACTION_REMOVE:I = 0x1


# instance fields
.field public backupFile:Ljava/io/File;

.field public backupFlag:I

.field public className:Ljava/lang/String;

.field public defaultActionFlag:I

.field public methodName:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    const-string/jumbo v0, "doRecover"

    .line 50
    iput-object v0, p0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->methodName:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    .line 54
    iput v1, p0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    return-void
.end method


# virtual methods
.method HasCustomizedMethod()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
