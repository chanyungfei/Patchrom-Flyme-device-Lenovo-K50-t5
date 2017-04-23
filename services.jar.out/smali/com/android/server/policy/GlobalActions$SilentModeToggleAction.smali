.class Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 1066
    const v1, 0x9020064

    .line 1067
    const v2, 0x9020063

    .line 1068
    const v3, 0x104010f

    .line 1069
    const v4, 0x1040110

    .line 1070
    const v5, 0x1040111

    move-object v0, p0

    .line 1066
    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1064
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 1102
    invoke-virtual {p0, p1}, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->setMute(Z)V

    .line 1099
    return-void
.end method

.method setMute(Z)V
    .locals 4
    .param p1, "mute"    # Z

    .prologue
    .line 1091
    const-string/jumbo v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMute on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    new-instance v0, Landroid/content/Intent;

    .line 1093
    const-string/jumbo v1, "android.intent.action.RINGTONE_STATE_CHANGED"

    .line 1092
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "ringtone"

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1095
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1090
    return-void

    .line 1094
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1118
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1114
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 5

    .prologue
    const v4, 0x9020064

    .line 1076
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1077
    .local v0, "ringerMode":I
    const-string/jumbo v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringerMode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    if-nez v0, :cond_0

    .line 1079
    iput v4, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->mEnabledIconResId:I

    .line 1075
    :goto_0
    return-void

    .line 1081
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1082
    const v1, 0x902007a

    iput v1, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->mEnabledIconResId:I

    goto :goto_0

    .line 1085
    :cond_1
    iput v4, p0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;->mEnabledIconResId:I

    goto :goto_0
.end method
