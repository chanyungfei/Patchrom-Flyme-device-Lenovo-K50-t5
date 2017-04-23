.class Lcom/android/server/am/AppPcDataManager$3;
.super Landroid/content/BroadcastReceiver;
.source "AppPcDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcDataManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcDataManager;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager$3;->this$0:Lcom/android/server/am/AppPcDataManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    .line 152
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    .line 156
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "android.intent.action.PACKAGE_CHANGED"

    .line 164
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 167
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 174
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.REPLACING"

    .line 154
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 155
    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager$3;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->reInitPackageUserPermissions(Ljava/lang/String;Z)V
    invoke-static {v2, v1, v0}, Lcom/android/server/am/AppPcDataManager;->access$200(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "android.intent.extra.REPLACING"

    .line 157
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 158
    if-nez v0, :cond_3

    .line 162
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$3;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->removePackageUserPermissions(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/am/AppPcDataManager;->access$300(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_3
    return-void

    .line 165
    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$3;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->reInitPackageUserPermissions(Ljava/lang/String;Z)V
    invoke-static {v1, v0, v5}, Lcom/android/server/am/AppPcDataManager;->access$200(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "android.intent.extra.changed_package_list"

    .line 168
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 169
    if-eqz v1, :cond_0

    .line 170
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 171
    iget-object v4, p0, Lcom/android/server/am/AppPcDataManager$3;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->reInitPackageUserPermissions(Ljava/lang/String;Z)V
    invoke-static {v4, v3, v5}, Lcom/android/server/am/AppPcDataManager;->access$200(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Z)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "android.intent.extra.changed_package_list"

    .line 175
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_0

    .line 177
    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 178
    iget-object v4, p0, Lcom/android/server/am/AppPcDataManager$3;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->removePackageUserPermissions(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/android/server/am/AppPcDataManager;->access$300(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
