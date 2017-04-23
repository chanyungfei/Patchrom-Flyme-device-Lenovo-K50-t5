.class final Lcom/android/server/display/effect/DisplayEffectService$BinderService;
.super Landroid/app/IDisplayEffectManager$Stub;
.source "DisplayEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/effect/DisplayEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/effect/DisplayEffectService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/effect/DisplayEffectService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/effect/DisplayEffectService;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-direct {p0}, Landroid/app/IDisplayEffectManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/effect/DisplayEffectService;Lcom/android/server/display/effect/DisplayEffectService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/effect/DisplayEffectService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;-><init>(Lcom/android/server/display/effect/DisplayEffectService;)V

    return-void
.end method

.method private checkDisplayEffectSettingsPermission(Ljava/lang/String;)Z
    .locals 4
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 533
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v1}, Lcom/android/server/display/effect/DisplayEffectService;->-get0(Lcom/android/server/display/effect/DisplayEffectService;)Landroid/content/Context;

    move-result-object v1

    .line 534
    const-string/jumbo v2, "lenovo.permission.MODIFY_DISPAY_EFFECT_SETTINGS"

    .line 533
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 536
    const/4 v1, 0x1

    return v1

    .line 538
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Display Effect Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 539
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 538
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 540
    const-string/jumbo v2, ", uid="

    .line 538
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 540
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 538
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "DisplayEffectService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return v3
.end method

.method private dumpVaules([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 444
    if-nez p1, :cond_0

    .line 445
    return-object v2

    .line 448
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 450
    .local v0, "result":Ljava/lang/String;
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p1, v2

    .line 451
    .local v1, "string":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    .end local v1    # "string":Ljava/lang/String;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v1}, Lcom/android/server/display/effect/DisplayEffectService;->-get0(Lcom/android/server/display/effect/DisplayEffectService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: can\'t dump DisplayEffect from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 407
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 406
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 408
    const-string/jumbo v2, ", uid="

    .line 406
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 408
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 406
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    return-void

    .line 413
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSupportedMode = [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->getSupportedMode()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->dumpVaules([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMode_settings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMode_native = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->-get2(Lcom/android/server/display/effect/DisplayEffectService;)Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFinalDisplayMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->-get1(Lcom/android/server/display/effect/DisplayEffectService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSupportedDisplayEffect = [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->getSupportedDisplayEffect()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->dumpVaules([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 421
    const-string/jumbo v2, " ]"

    .line 420
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v1}, Lcom/android/server/display/effect/DisplayEffectService;->-get3(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 425
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v1}, Lcom/android/server/display/effect/DisplayEffectService;->-get3(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 427
    const-string/jumbo v1, "null"

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->-get3(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSupportedMaxLevel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->-get3(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 429
    invoke-virtual {p0, v0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->getSupportedMaxLevel(I)I

    move-result v2

    .line 428
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 434
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v1}, Lcom/android/server/display/effect/DisplayEffectService;->-get3(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 435
    const-string/jumbo v1, "null"

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->-get3(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentLevel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->-get3(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 437
    invoke-virtual {p0, v0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->getCurrentLevel(I)I

    move-result v2

    .line 436
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 403
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public getCurrentLevel(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->-wrap1(Lcom/android/server/display/effect/DisplayEffectService;I)I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 4

    .prologue
    .line 522
    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->-get0(Lcom/android/server/display/effect/DisplayEffectService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 524
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "display_mode"

    const/4 v3, 0x2

    .line 523
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 525
    .local v0, "displayMode":I
    return v0
.end method

.method public getSupportedDisplayEffect()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v0}, Lcom/android/server/display/effect/DisplayEffectService;->-get3(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedMaxLevel(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->-wrap2(Lcom/android/server/display/effect/DisplayEffectService;I)I

    move-result v0

    return v0
.end method

.method public getSupportedMode()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v0}, Lcom/android/server/display/effect/DisplayEffectService;->-get4(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCABC(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->-wrap6(Lcom/android/server/display/effect/DisplayEffectService;I)V

    .line 528
    return-void
.end method

.method public setDisplayEffectLevel(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 475
    const-string/jumbo v2, "DisplayEffectService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDisplayEffectLevel: index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 476
    const-string/jumbo v4, ", level = "

    .line 475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 477
    const-string/jumbo v4, ", caller = "

    .line 475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 477
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string/jumbo v2, "setDisplayEffectLevel()"

    invoke-direct {p0, v2}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->checkDisplayEffectSettingsPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    return v6

    .line 483
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v2, p1}, Lcom/android/server/display/effect/DisplayEffectService;->-wrap2(Lcom/android/server/display/effect/DisplayEffectService;I)I

    move-result v1

    .line 485
    .local v1, "maxLevel":I
    if-ltz p2, :cond_1

    if-ge p2, v1, :cond_1

    .line 486
    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v2, p1, p2}, Lcom/android/server/display/effect/DisplayEffectService;->-wrap3(Lcom/android/server/display/effect/DisplayEffectService;II)I

    move-result v2

    if-nez v2, :cond_2

    .line 487
    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->-get3(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, p1

    .line 488
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 489
    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v2, v0, p2}, Lcom/android/server/display/effect/DisplayEffectService;->-wrap4(Lcom/android/server/display/effect/DisplayEffectService;Ljava/lang/String;I)V

    .line 490
    return v5

    .line 494
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "DisplayEffectService"

    const-string/jumbo v3, "setDisplayEffectLevel: invalid level"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_2
    return v6
.end method

.method public setModeFromSettings(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 501
    const-string/jumbo v0, "DisplayEffectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setModeFromSettings: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 502
    const-string/jumbo v2, ", caller = "

    .line 501
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 502
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 501
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string/jumbo v0, "setModeFromSettings()"

    invoke-direct {p0, v0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->checkDisplayEffectSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->-wrap0(Lcom/android/server/display/effect/DisplayEffectService;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    const-string/jumbo v1, "display_mode"

    invoke-static {v0, v1, p1}, Lcom/android/server/display/effect/DisplayEffectService;->-wrap4(Lcom/android/server/display/effect/DisplayEffectService;Ljava/lang/String;I)V

    .line 510
    return p1

    .line 506
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setModeOverride(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 514
    const-string/jumbo v0, "DisplayEffectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setModeOverride: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->-set0(Lcom/android/server/display/effect/DisplayEffectService;I)I

    .line 517
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-static {v0}, Lcom/android/server/display/effect/DisplayEffectService;->-wrap5(Lcom/android/server/display/effect/DisplayEffectService;)V

    .line 518
    return p1
.end method
