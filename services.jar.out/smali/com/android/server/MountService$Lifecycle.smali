.class public Lcom/android/server/MountService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mMountService:Lcom/android/server/MountService;

.field private oldDefaultPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 165
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/MountService$Lifecycle;->oldDefaultPath:Ljava/lang/String;

    .line 167
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    .line 183
    const-string/jumbo v0, "MountService"

    const-string/jumbo v1, "MountService onBootPhase"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-static {v0}, Lcom/android/server/MountService;->-wrap16(Lcom/android/server/MountService;)V

    .line 187
    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 188
    const-string/jumbo v0, "MountService"

    const-string/jumbo v1, "MountService onBootPhase: PHASE_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/MountService;->-set0(Z)Z

    .line 190
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->oldDefaultPath:Ljava/lang/String;

    const-string/jumbo v1, "emulated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/android/server/MountService$Lifecycle;->oldDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 191
    :cond_2
    const-string/jumbo v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set defaut path to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService$Lifecycle;->oldDefaultPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v0, Lcom/android/server/MountService;->sSelf:Lcom/android/server/MountService;

    iget-object v1, p0, Lcom/android/server/MountService$Lifecycle;->oldDefaultPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->setDefaultPath(Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/android/server/MountService;->sSelf:Lcom/android/server/MountService;

    invoke-static {v0}, Lcom/android/server/MountService;->-wrap18(Lcom/android/server/MountService;)V

    goto :goto_0
.end method

.method public onCleanupUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 206
    const-string/jumbo v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MountService onCleanupUser, userHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-static {v0, p1}, Lcom/android/server/MountService;->-wrap12(Lcom/android/server/MountService;I)V

    .line 205
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 173
    const-string/jumbo v0, "MountService"

    const-string/jumbo v1, "MountService onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/MountService;->-set0(Z)Z

    .line 175
    new-instance v0, Lcom/android/server/MountService;

    invoke-virtual {p0}, Lcom/android/server/MountService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    .line 176
    const-string/jumbo v0, "mount"

    iget-object v1, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/MountService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 177
    sget-object v0, Lcom/android/server/MountService;->sSelf:Lcom/android/server/MountService;

    invoke-static {v0}, Lcom/android/server/MountService;->-wrap4(Lcom/android/server/MountService;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService$Lifecycle;->oldDefaultPath:Ljava/lang/String;

    .line 178
    const-string/jumbo v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get Default path onStart default path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService$Lifecycle;->oldDefaultPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public onStartUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 200
    const-string/jumbo v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MountService onStartUser, userHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-static {v0, p1}, Lcom/android/server/MountService;->-wrap13(Lcom/android/server/MountService;I)V

    .line 199
    return-void
.end method
