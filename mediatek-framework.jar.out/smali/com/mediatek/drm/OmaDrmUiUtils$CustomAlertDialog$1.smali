.class Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;
.super Ljava/lang/Object;
.source "OmaDrmUiUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;->this$1:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 1075
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;->this$1:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->-get0(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1076
    const-string/jumbo v0, "OmaDrmUiUtils"

    const-string/jumbo v1, "CustomerAlertDialog: execute the original dismiss listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;->this$1:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->-get0(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;->this$1:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->-get1(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;->this$1:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->-get1(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1082
    :try_start_0
    const-string/jumbo v0, "OmaDrmUiUtils"

    const-string/jumbo v2, "CustomerAlertDialog: remove this dialog from queue"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;->this$1:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->-get1(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;->this$1:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$1;->this$1:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-static {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->-set0(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1074
    return-void

    .line 1081
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
