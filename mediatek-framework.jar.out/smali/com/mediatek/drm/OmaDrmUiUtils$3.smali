.class final Lcom/mediatek/drm/OmaDrmUiUtils$3;
.super Ljava/lang/Object;
.source "OmaDrmUiUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$rightsIssuerFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "val$rightsIssuerFinal"    # Ljava/lang/String;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmUiUtils$3;->val$rightsIssuerFinal:Ljava/lang/String;

    iput-object p2, p0, Lcom/mediatek/drm/OmaDrmUiUtils$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 762
    const-string/jumbo v1, "OmaDrmUiUtils"

    const-string/jumbo v2, "showRefreshLicenseDialog: start to refresh license"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmUiUtils$3;->val$rightsIssuerFinal:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 765
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmUiUtils$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 761
    return-void
.end method
