.class Lcom/mediatek/widget/DefaultAccountPickerDialog$1;
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
    .line 86
    iput-object p1, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$1;->this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;

    iput-object p2, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$1;->val$adapter:Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$1;->this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;

    invoke-static {v0, p2}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->-set0(Lcom/mediatek/widget/DefaultAccountPickerDialog;I)I

    .line 90
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$1;->val$adapter:Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$1;->this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;

    invoke-static {v1}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->-get0(Lcom/mediatek/widget/DefaultAccountPickerDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->setActiveStatus(I)V

    .line 91
    const-string/jumbo v0, "DefaultAccountPickerDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$1;->this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;

    invoke-static {v2}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->-get0(Lcom/mediatek/widget/DefaultAccountPickerDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$1;->val$adapter:Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    invoke-virtual {v0}, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->notifyDataSetChanged()V

    .line 88
    return-void
.end method
