.class Lcom/android/server/am/ActivityManagerService$IPOActivityManagerService;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IPOActivityManagerService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 23565
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$IPOActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createIPOWin(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23574
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$IPOActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->createIPOWin(Landroid/content/Context;)V

    .line 23573
    return-void
.end method

.method public ipoBootCompleted()V
    .locals 1

    .prologue
    .line 23579
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$IPOActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->ipoBootCompleted()V

    .line 23578
    return-void
.end method

.method public launchPowrOffAlarm(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "recover"    # Ljava/lang/Boolean;
    .param p2, "shutdown"    # Ljava/lang/Boolean;

    .prologue
    .line 23584
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$IPOActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPowerOffAlarmUtility:Lcom/android/server/am/PowerOffAlarmUtility;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/PowerOffAlarmUtility;->launchPowrOffAlarm(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 23583
    return-void
.end method

.method public removeIPOWin(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23569
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$IPOActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->removeIPOWin(Landroid/content/Context;)V

    .line 23568
    return-void
.end method

.method public updateFirstBoot(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/Boolean;

    .prologue
    .line 23589
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$IPOActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPowerOffAlarmUtility:Lcom/android/server/am/PowerOffAlarmUtility;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/PowerOffAlarmUtility;->mFirstBoot:Z

    .line 23588
    return-void
.end method
