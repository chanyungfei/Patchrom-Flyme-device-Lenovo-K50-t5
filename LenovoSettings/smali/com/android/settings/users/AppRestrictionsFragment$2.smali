.class Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;->onPackageChanged(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;->access$200(Lcom/flyme/deviceoriginalsettings/users/AppRestrictionsFragment;Landroid/content/Intent;)V

    .line 139
    return-void
.end method