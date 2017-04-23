.class Lcom/android/server/storage/DeviceStorageMonitorService$1;
.super Landroid/os/Handler;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 197
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 198
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get5(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get7(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get3(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-set6(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    .line 200
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get3(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-set2(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 204
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    const v4, 0x1080027

    .line 204
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 208
    const v4, 0x805003b

    .line 207
    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 204
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 211
    const v4, 0x805003c

    .line 210
    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 204
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 213
    const v4, 0x8050047

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/server/storage/DeviceStorageMonitorService$1$1;

    invoke-direct {v5, p0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$1$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;Landroid/content/Context;)V

    .line 204
    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 222
    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 204
    invoke-virtual {v2, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 223
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get10(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v4

    const-wide/32 v6, 0x3200000

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 225
    const v2, 0x805003d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/android/server/storage/DeviceStorageMonitorService$1$2;

    invoke-direct {v4, p0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$1$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;Landroid/content/Context;)V

    .line 224
    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->-set4(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 239
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "context":Landroid/content/Context;
    :cond_3
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get5(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d3

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 240
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get5(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_4

    .line 242
    const-string/jumbo v2, "ctsrunning"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    .line 243
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get5(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 248
    :cond_4
    :goto_0
    return-void

    .line 245
    :cond_5
    const-string/jumbo v2, "DeviceStorageMonitorService"

    const-string/jumbo v3, "In CTS Running,do not show the no space dailog"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_6
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v2, :cond_7

    .line 253
    const-string/jumbo v2, "DeviceStorageMonitorService"

    const-string/jumbo v3, "Will not process invalid message"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 256
    :cond_7
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_8

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkMemory(Z)V

    .line 195
    return-void

    :cond_8
    move v2, v3

    .line 256
    goto :goto_1
.end method
