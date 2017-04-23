.class Lcom/android/server/backup/BackupManagerService$RestoreParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreParams"
.end annotation


# instance fields
.field public dirName:Ljava/lang/String;

.field public filterSet:[Ljava/lang/String;

.field public isSystemRestore:Z

.field public observer:Landroid/app/backup/IRestoreObserver;

.field public pkgInfo:Landroid/content/pm/PackageInfo;

.field public pmToken:I

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field public token:J

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J

    .prologue
    const/4 v1, 0x0

    .line 443
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 446
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    .line 447
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 448
    iput-wide p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    .line 449
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 450
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    .line 452
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    .line 444
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 412
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 415
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    .line 416
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 417
    iput-wide p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    .line 418
    iput-object p7, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 419
    iput v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    .line 420
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    .line 413
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLjava/lang/String;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_pkgName"    # Ljava/lang/String;
    .param p8, "_pmToken"    # I

    .prologue
    const/4 v1, 0x0

    .line 427
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 430
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    .line 431
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 432
    iput-wide p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 434
    iput p8, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    .line 435
    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    .line 436
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p7, v0, v1

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    .line 428
    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "_transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "_dirName"    # Ljava/lang/String;
    .param p4, "_obs"    # Landroid/app/backup/IRestoreObserver;
    .param p5, "_token"    # J
    .param p7, "_filterSet"    # [Ljava/lang/String;
    .param p8, "_isSystemRestore"    # Z

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 462
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->dirName:Ljava/lang/String;

    .line 463
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 464
    iput-wide p5, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    .line 466
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    .line 467
    iput-boolean p8, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    .line 468
    iput-object p7, p0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    .line 460
    return-void
.end method
