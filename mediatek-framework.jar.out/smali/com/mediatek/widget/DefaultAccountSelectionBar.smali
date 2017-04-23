.class public Lcom/mediatek/widget/DefaultAccountSelectionBar;
.super Ljava/lang/Object;
.source "DefaultAccountSelectionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;
    }
.end annotation


# static fields
.field public static final SELECT_OTHER_ACCOUNTS_ACTION:Ljava/lang/String; = "SELECT_OTHER_ACCOUNTS"

.field private static final TAG:Ljava/lang/String; = "DefaultAccountSelectionBar"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

.field private mIsRegister:Z

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/widget/DefaultAccountSelectionBar;)Lcom/mediatek/widget/CustomAccountRemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/widget/DefaultAccountSelectionBar;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->hideNotification(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mIsRegister:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    iput-object p1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mPackageName:Ljava/lang/String;

    .line 45
    invoke-direct {p0, p3}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->configureView(Ljava/util/List;)V

    .line 47
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotificationManager:Landroid/app/NotificationManager;

    .line 49
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    const/high16 v1, 0x8020000

    .line 49
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 49
    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 52
    const/4 v1, 0x2

    .line 49
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotification:Landroid/app/Notification;

    .line 54
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotification:Landroid/app/Notification;

    const/16 v1, 0x22

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 41
    return-void
.end method

.method private configureView(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    new-instance v0, Lcom/mediatek/widget/CustomAccountRemoteViews;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/mediatek/widget/CustomAccountRemoteViews;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

    .line 98
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews;->configureView()V

    .line 96
    return-void
.end method

.method private hideNotification(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;-><init>(Lcom/mediatek/widget/DefaultAccountSelectionBar;Lcom/mediatek/widget/DefaultAccountSelectionBar$OtherAccountSelectionReceiver;)V

    iput-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "SELECT_OTHER_ACCOUNTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method private unregisterReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    :cond_0
    iput-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x8110046

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 88
    const-string/jumbo v0, "DefaultAccountSelectionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In package hide accountBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,mIsRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mIsRegister:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-boolean v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mIsRegister:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews;->getOtherAccounts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->unregisterReceiver(Landroid/content/Context;)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mIsRegister:Z

    .line 86
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

    invoke-virtual {v1}, Lcom/mediatek/widget/CustomAccountRemoteViews;->getNormalRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 72
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

    invoke-virtual {v1}, Lcom/mediatek/widget/CustomAccountRemoteViews;->getBigRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 74
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotification:Landroid/app/Notification;

    const v2, 0x8110046

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 75
    const-string/jumbo v0, "DefaultAccountSelectionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In package show accountBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,mIsRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mIsRegister:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-boolean v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mIsRegister:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews;->getOtherAccounts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->registerReceiver(Landroid/content/Context;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mIsRegister:Z

    .line 69
    :cond_0
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    invoke-direct {p0, p1}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->configureView(Ljava/util/List;)V

    .line 62
    return-void
.end method
