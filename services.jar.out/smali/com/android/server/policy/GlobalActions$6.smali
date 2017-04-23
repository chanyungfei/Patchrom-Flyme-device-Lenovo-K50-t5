.class Lcom/android/server/policy/GlobalActions$6;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;IIIII)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # I
    .param p6, "$anonymous4"    # I

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 262
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2
    .param p1, "buttonOn"    # Z

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    const-string/jumbo v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$6;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 321
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-set1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 314
    :cond_1
    return-void

    .line 320
    :cond_2
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 344
    invoke-super {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onToggle(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    .line 265
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    const-string/jumbo v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/policy/GlobalActions;->-set3(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 271
    .local v0, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 272
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 264
    .end local v0    # "ecmDialogIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 275
    :cond_0
    if-eqz p1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get1(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get1(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 278
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1, v5}, Lcom/android/server/policy/GlobalActions;->-set0(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    const v3, 0x1040112

    .line 280
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 282
    const v3, 0x909003f

    .line 280
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 285
    new-instance v3, Lcom/android/server/policy/GlobalActions$6$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$6$1;-><init>(Lcom/android/server/policy/GlobalActions$6;)V

    .line 284
    const v4, 0x1040013

    .line 280
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 291
    const v3, 0x1040009

    .line 280
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/policy/GlobalActions;->-set0(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 293
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get1(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 294
    new-instance v2, Lcom/android/server/policy/GlobalActions$6$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActions$6$2;-><init>(Lcom/android/server/policy/GlobalActions$6;)V

    .line 293
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 301
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get1(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 302
    const/16 v2, 0x7d9

    .line 301
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 303
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get1(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 304
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get1(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 305
    const/high16 v2, 0x10000

    .line 304
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto/16 :goto_0

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$6;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1, p1}, Lcom/android/server/policy/GlobalActions;->-wrap0(Lcom/android/server/policy/GlobalActions;Z)V

    goto/16 :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x1

    return v0
.end method
