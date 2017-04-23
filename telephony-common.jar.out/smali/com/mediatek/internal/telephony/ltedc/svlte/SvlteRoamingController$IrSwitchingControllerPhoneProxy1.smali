.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;
.super Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;
.source "SvlteRoamingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IrSwitchingControllerPhoneProxy1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1$1;
    }
.end annotation


# static fields
.field private static final EVENT_GMSS_RAT_CHANGED_1:I = 0x65

.field private static final TAG:Ljava/lang/String; = "IrSwitchingControllerPhoneProxy1"


# instance fields
.field private mIRHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;I)V
    .locals 1
    .param p1, "lteDcPhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .param p2, "phoneProxyIndex"    # I

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;-><init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;I)V

    .line 258
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1$1;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;->mIRHandler:Landroid/os/Handler;

    .line 280
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;->registerGmss()V

    .line 278
    return-void
.end method


# virtual methods
.method protected logdForController(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IrSwitchingControllerPhoneProxy1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->-wrap0(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method protected registerGmss()V
    .locals 4

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerGmss, mIRHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;->mIRHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;->logdForController(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;->mIRHandler:Landroid/os/Handler;

    .line 287
    const/16 v2, 0x65

    const/4 v3, 0x0

    .line 286
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForGmssRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 284
    return-void
.end method

.method protected unregisterGmss()V
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterGmss, mIRHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;->mIRHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;->logdForController(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;->mIRHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForGmssRatChanged(Landroid/os/Handler;)V

    .line 291
    return-void
.end method
