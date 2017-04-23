.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;
.super Landroid/os/AsyncTask;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendPrivateKeyAliasResponse(Ljava/lang/String;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$keyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Landroid/security/IKeyChainAliasCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "val$alias"    # Ljava/lang/String;
    .param p3, "val$keyChainAliasResponse"    # Landroid/security/IKeyChainAliasCallback;

    .prologue
    .line 3331
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$alias:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$keyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "unused"    # [Ljava/lang/Object;

    .prologue
    .line 3333
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "unused":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 3335
    :try_start_0
    const-string/jumbo v1, "DevicePolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendPrivateKeyAliasResponse alias = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$alias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3336
    const-string/jumbo v3, ", keyChainAliasResponse = "

    .line 3335
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3336
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$keyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;

    .line 3335
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$keyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$alias:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/security/IKeyChainAliasCallback;->alias(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3343
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 3338
    :catch_0
    move-exception v0

    .line 3341
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DevicePolicyManagerService"

    const-string/jumbo v2, "error while responding to callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
