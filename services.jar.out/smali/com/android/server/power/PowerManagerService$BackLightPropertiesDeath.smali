.class final Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackLightPropertiesDeath"
.end annotation


# instance fields
.field public mBinder:Landroid/os/IBinder;

.field public mGamma:F

.field public mMaximum:I

.field public mMinimum:I

.field public mOwnerPid:I

.field public mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Ljava/lang/String;IFII)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerPid"    # I
    .param p5, "gamma"    # F
    .param p6, "minimum"    # I
    .param p7, "maximum"    # I

    .prologue
    const/4 v1, -0x1

    .line 4206
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4202
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mGamma:F

    .line 4203
    iput v1, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mMinimum:I

    .line 4204
    iput v1, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mMaximum:I

    .line 4208
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mBinder:Landroid/os/IBinder;

    .line 4209
    iput-object p3, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mPackageName:Ljava/lang/String;

    .line 4210
    iput p4, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mOwnerPid:I

    .line 4211
    iput p5, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mGamma:F

    .line 4212
    iput p6, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mMinimum:I

    .line 4213
    iput p7, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mMaximum:I

    .line 4207
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 4245
    const-string/jumbo v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set BackLight Properties, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4246
    const-string/jumbo v2, " is died, "

    .line 4245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4247
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set0(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;)Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;

    .line 4248
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v0

    const/high16 v1, 0x7fc00000    # NaNf

    invoke-virtual {v0, v1, v3, v3}, Landroid/hardware/display/DisplayManagerInternal;->setBackLightProperties(FII)V

    .line 4243
    return-void
.end method

.method public hasSameProperties(Ljava/lang/String;IFII)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerPid"    # I
    .param p3, "gamma"    # F
    .param p4, "minimum"    # I
    .param p5, "maximum"    # I

    .prologue
    const/4 v0, 0x0

    .line 4218
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mOwnerPid:I

    if-ne v1, p2, :cond_0

    .line 4219
    iget v1, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mGamma:F

    cmpl-float v1, v1, p3

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mMinimum:I

    if-ne v1, p4, :cond_0

    .line 4220
    iget v1, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mMaximum:I

    if-ne v1, p5, :cond_0

    const/4 v0, 0x1

    .line 4218
    :cond_0
    return v0
.end method

.method public updateProperties(Ljava/lang/String;IFII)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerPid"    # I
    .param p3, "gamma"    # F
    .param p4, "minimum"    # I
    .param p5, "maximum"    # I

    .prologue
    .line 4225
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4226
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Existing BlackLight Properties packageName changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4228
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mPackageName:Ljava/lang/String;

    .line 4227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4228
    const-string/jumbo v2, " to "

    .line 4227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4226
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4230
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mOwnerPid:I

    if-eq v0, p2, :cond_1

    .line 4231
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Existing BlackLight Properties pid changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4233
    iget v2, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mOwnerPid:I

    .line 4232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4233
    const-string/jumbo v2, " to "

    .line 4232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4231
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4235
    :cond_1
    iput p3, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mGamma:F

    .line 4236
    iput p4, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mMinimum:I

    .line 4237
    iput p5, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mMaximum:I

    .line 4224
    return-void
.end method
