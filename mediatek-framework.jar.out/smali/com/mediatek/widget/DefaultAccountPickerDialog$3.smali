.class Lcom/mediatek/widget/DefaultAccountPickerDialog$3;
.super Ljava/lang/Object;
.source "DefaultAccountPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/widget/DefaultAccountPickerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;

.field final synthetic val$adapter:Lcom/mediatek/widget/DefaultAccountPickerAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/widget/DefaultAccountPickerDialog;Lcom/mediatek/widget/DefaultAccountPickerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/widget/DefaultAccountPickerDialog;
    .param p2, "val$adapter"    # Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$3;->this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;

    iput-object p2, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$3;->val$adapter:Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 107
    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$3;->this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;

    invoke-static {v1}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->-get0(Lcom/mediatek/widget/DefaultAccountPickerDialog;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 108
    const-string/jumbo v1, "DefaultAccountPickerDialog"

    const-string/jumbo v2, "--- No item is selected ---"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$3;->val$adapter:Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$3;->this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;

    invoke-static {v2}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->-get0(Lcom/mediatek/widget/DefaultAccountPickerDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->getItem(I)Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$3;->this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;

    invoke-virtual {v1}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 114
    const-string/jumbo v1, "DefaultAccountPickerDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sent broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$3;->this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;

    invoke-static {v3}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->-get0(Lcom/mediatek/widget/DefaultAccountPickerDialog;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$3;->this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;

    invoke-virtual {v1}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    :cond_1
    return-void
.end method
