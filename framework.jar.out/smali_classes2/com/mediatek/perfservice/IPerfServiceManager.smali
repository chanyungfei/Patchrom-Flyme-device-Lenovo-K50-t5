.class public interface abstract Lcom/mediatek/perfservice/IPerfServiceManager;
.super Ljava/lang/Object;
.source "IPerfServiceManager.java"


# virtual methods
.method public abstract boostDisable(I)V
.end method

.method public abstract boostEnable(I)V
.end method

.method public abstract boostEnableTimeout(II)V
.end method

.method public abstract boostEnableTimeoutMs(II)V
.end method

.method public abstract dumpAll()V
.end method

.method public abstract getLastBoostPid()I
.end method

.method public abstract getPackName()Ljava/lang/String;
.end method

.method public abstract notifyAppState(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract notifyDisplayType(I)V
.end method

.method public abstract notifyFrameUpdate(I)V
.end method

.method public abstract notifyUserStatus(II)V
.end method

.method public abstract restorePolicy(I)V
.end method

.method public abstract setFavorPid(I)V
.end method

.method public abstract systemReady()V
.end method

.method public abstract userDisable(I)V
.end method

.method public abstract userDisableAll()V
.end method

.method public abstract userEnable(I)V
.end method

.method public abstract userEnableTimeout(II)V
.end method

.method public abstract userEnableTimeoutMs(II)V
.end method

.method public abstract userGetCapability(I)I
.end method

.method public abstract userReg(IIII)I
.end method

.method public abstract userRegBigLittle(IIIIII)I
.end method

.method public abstract userRegScn(II)I
.end method

.method public abstract userRegScnConfig(IIIIII)V
.end method

.method public abstract userResetAll()V
.end method

.method public abstract userRestoreAll()V
.end method

.method public abstract userUnreg(I)V
.end method

.method public abstract userUnregScn(I)V
.end method
