.class Lcom/android/server/policy/GlobalActions$6$2;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$6;->onToggle(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$6;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$6;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$6$2;->this$1:Lcom/android/server/policy/GlobalActions$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6$2;->this$1:Lcom/android/server/policy/GlobalActions$6;

    iget-object v1, v1, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 298
    const-string/jumbo v2, "airplane_mode_on"

    const/4 v3, 0x0

    .line 296
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 298
    const/4 v2, 0x1

    .line 296
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 299
    .local v0, "airplaneModeOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6$2;->this$1:Lcom/android/server/policy/GlobalActions$6;

    iget-object v2, v1, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    if-eqz v0, :cond_1

    .line 300
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 299
    :goto_1
    invoke-static {v2, v1}, Lcom/android/server/policy/GlobalActions;->-set1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 295
    return-void

    .line 296
    .end local v0    # "airplaneModeOn":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "airplaneModeOn":Z
    goto :goto_0

    .line 300
    :cond_1
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method
