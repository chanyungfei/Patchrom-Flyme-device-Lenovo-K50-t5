.class final Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/AlertDialog;
.source "UserSwitchingDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowShownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UserSwitchingDialog$1;
    }
.end annotation


# static fields
.field private static final MSG_START_USER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManagerUserSwitchingDialog"

.field private static final WINDOW_SHOWN_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUser:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 7
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .param p4, "userName"    # Ljava/lang/String;
    .param p5, "aboveSystem"    # Z

    .prologue
    const/4 v6, 0x0

    .line 55
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 112
    new-instance v3, Lcom/android/server/am/UserSwitchingDialog$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog;)V

    iput-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 58
    iput p3, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    .line 61
    invoke-virtual {p0, v6}, Lcom/android/server/am/UserSwitchingDialog;->setCancelable(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 64
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900f9

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 65
    .local v2, "view":Landroid/view/View;
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 66
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v6

    const v5, 0x10404eb

    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/android/server/am/UserSwitchingDialog;->setView(Landroid/view/View;)V

    .line 69
    if-eqz p5, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 73
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x110

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 75
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onWindowShown()V
    .locals 2

    .prologue
    .line 94
    const-string/jumbo v0, "ActivityManagerUserSwitchingDialog"

    const-string/jumbo v1, "onWindowShown called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->startUser()V

    .line 93
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 80
    const-string/jumbo v1, "ActivityManagerUserSwitchingDialog"

    const-string/jumbo v2, "show called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 82
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 89
    const-wide/16 v4, 0xbb8

    .line 88
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 79
    return-void
.end method

.method startUser()V
    .locals 3

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    if-nez v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityManagerService;->startUserInForeground(ILandroid/app/Dialog;)Z

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "decorView":Landroid/view/View;
    :cond_1
    monitor-exit p0

    .line 98
    return-void

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
