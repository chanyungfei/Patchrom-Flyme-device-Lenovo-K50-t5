.class public Lcom/android/server/am/LockTaskNotify;
.super Ljava/lang/Object;
.source "LockTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LockTaskNotify$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockTaskNotify"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/am/LockTaskNotify$H;

.field private mLastToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 48
    new-instance v0, Lcom/android/server/am/LockTaskNotify$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/LockTaskNotify$H;-><init>(Lcom/android/server/am/LockTaskNotify;Lcom/android/server/am/LockTaskNotify$H;)V

    iput-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    .line 44
    return-void
.end method

.method private makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 97
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 99
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 100
    return-object v0
.end method


# virtual methods
.method public handleShowToast(I)V
    .locals 6
    .param p1, "lockTaskModeState"    # I

    .prologue
    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, "text":Ljava/lang/String;
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 58
    iget-object v4, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const v5, 0x1040568

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v2, :cond_5

    .line 79
    return-void

    .line 59
    .restart local v2    # "text":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 61
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 62
    .local v3, "windowManager":Landroid/view/IWindowManager;
    const/4 v1, 0x1

    .line 63
    .local v1, "hasNavigationBar":Z
    if-eqz v3, :cond_2

    .line 65
    :try_start_0
    invoke-interface {v3}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 69
    .end local v1    # "hasNavigationBar":Z
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 70
    iget-object v5, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/LockTaskNotify;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    const v4, 0x1040567

    .line 70
    :goto_2
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    goto :goto_0

    .line 66
    .restart local v1    # "hasNavigationBar":Z
    .local v2, "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 71
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "hasNavigationBar":Z
    :cond_3
    const v4, 0x1040566

    goto :goto_2

    .line 73
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    .line 74
    const v5, 0x80500df

    .line 73
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    goto :goto_0

    .line 81
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "windowManager":Landroid/view/IWindowManager;
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    if-eqz v4, :cond_6

    .line 82
    iget-object v4, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 84
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/server/am/LockTaskNotify;->makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    .line 55
    return-void
.end method

.method public show(Z)V
    .locals 2
    .param p1, "starting"    # Z

    .prologue
    .line 88
    const v0, 0x104056a

    .line 89
    .local v0, "showString":I
    if-eqz p1, :cond_0

    .line 90
    const v0, 0x1040569

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/LockTaskNotify;->makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;

    .line 87
    return-void
.end method

.method public showToast(I)V
    .locals 3
    .param p1, "lockTaskModeState"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/LockTaskNotify$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 51
    return-void
.end method
