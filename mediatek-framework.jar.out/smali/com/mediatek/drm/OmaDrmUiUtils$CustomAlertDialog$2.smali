.class Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;
.super Ljava/lang/Object;
.source "OmaDrmUiUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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
    .line 1091
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;->this$1:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;->this$1:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->-get2(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1094
    const-string/jumbo v0, "OmaDrmUiUtils"

    const-string/jumbo v1, "CustomerAlertDialog: execute the original show listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;->this$1:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->-get2(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;->this$1:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->-get1(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;->this$1:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->-get1(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1100
    :try_start_0
    const-string/jumbo v0, "OmaDrmUiUtils"

    const-string/jumbo v2, "CustomerAlertDialog: add this dialog to queue"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;->this$1:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->-get1(Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog$2;->this$1:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1092
    :cond_1
    return-void

    .line 1099
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
