.class Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DefaultAccountSelectionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/DefaultAccountSelectionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtherAccountSelectionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;


# direct methods
.method private constructor <init>(Lcom/mediatek/widget/DefaultAccountSelectionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/widget/DefaultAccountSelectionBar;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/widget/DefaultAccountSelectionBar;Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/widget/DefaultAccountSelectionBar;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;-><init>(Lcom/mediatek/widget/DefaultAccountSelectionBar;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v5, "DefaultAccountSelectionBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[onReceive] action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v5, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    invoke-static {v5}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->-get1(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Lcom/mediatek/widget/CustomAccountRemoteViews;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/widget/CustomAccountRemoteViews;->getOtherAccounts()Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "accountItems":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    const-string/jumbo v5, "SELECT_OTHER_ACCOUNTS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    invoke-static {v5}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->-get0(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_3

    .line 132
    iget-object v5, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    invoke-static {v5}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->-get0(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    invoke-static {v5}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->-get0(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    :cond_0
    const-string/jumbo v5, "DefaultAccountSelectionBar"

    const-string/jumbo v6, "--- wrong activity status ---"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 138
    :cond_1
    iget-object v5, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    invoke-static {v5}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->-get0(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 140
    .local v3, "fm":Landroid/app/FragmentManager;
    const-string/jumbo v5, "DefaultAccountPickerDialog"

    invoke-virtual {v3, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-nez v5, :cond_2

    .line 142
    iget-object v5, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    invoke-static {v5}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->-get0(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->build(Landroid/content/Context;)Lcom/mediatek/widget/DefaultAccountPickerDialog;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->setData(Ljava/util/List;)Lcom/mediatek/widget/DefaultAccountPickerDialog;

    move-result-object v2

    .line 144
    .local v2, "defaultAccountPickerDialog":Lcom/mediatek/widget/DefaultAccountPickerDialog;
    iget-object v5, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    invoke-static {v5}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->-get0(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 146
    .local v4, "ft":Landroid/app/FragmentTransaction;
    const-string/jumbo v5, "DefaultAccountPickerDialog"

    invoke-virtual {v4, v2, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 147
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 153
    .end local v2    # "defaultAccountPickerDialog":Lcom/mediatek/widget/DefaultAccountPickerDialog;
    .end local v3    # "fm":Landroid/app/FragmentManager;
    .end local v4    # "ft":Landroid/app/FragmentTransaction;
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    iget-object v6, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;->this$0:Lcom/mediatek/widget/DefaultAccountSelectionBar;

    invoke-static {v6}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->-get0(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->-wrap0(Lcom/mediatek/widget/DefaultAccountSelectionBar;Landroid/content/Context;)V

    .line 124
    return-void

    .line 150
    :cond_3
    const-string/jumbo v5, "DefaultAccountSelectionBar"

    const-string/jumbo v6, "--- wrong context ---"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
