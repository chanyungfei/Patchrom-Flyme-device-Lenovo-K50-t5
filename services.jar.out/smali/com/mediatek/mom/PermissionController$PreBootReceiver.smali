.class Lcom/mediatek/mom/PermissionController$PreBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PermissionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/PermissionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreBootReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mom/PermissionController;


# direct methods
.method private constructor <init>(Lcom/mediatek/mom/PermissionController;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mediatek/mom/PermissionController$PreBootReceiver;->this$0:Lcom/mediatek/mom/PermissionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/mom/PermissionController;Lcom/mediatek/mom/PermissionController$1;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/mediatek/mom/PermissionController$PreBootReceiver;-><init>(Lcom/mediatek/mom/PermissionController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "android.intent.action.ACTION_PREBOOT_IPO"

    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionController$PreBootReceiver;->this$0:Lcom/mediatek/mom/PermissionController;

    # invokes: Lcom/mediatek/mom/PermissionController;->requestAttachment()V
    invoke-static {v0}, Lcom/mediatek/mom/PermissionController;->access$000(Lcom/mediatek/mom/PermissionController;)V

    goto :goto_0
.end method
