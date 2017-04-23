.class public Lcom/android/server/policy/MtkPhoneWindowUtility;
.super Ljava/lang/Object;
.source "MtkPhoneWindowUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MtkPhoneWindowUtility$MtkPolicyHandler;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static DEBUG_LAYOUT:Z = false

.field private static final MSG_DISABLE_FLOATING_MONITOR:I = 0x3e9

.field private static final MSG_ENABLE_FLOATING_MONITOR:I = 0x3e8

.field private static final MSG_MTK_POLICY:I = 0x3e8

.field static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field mContext:Landroid/content/Context;

.field mFloatingMonitorEventListener:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mHandler:Landroid/os/Handler;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/policy/MtkPhoneWindowUtility;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/MtkPhoneWindowUtility;->disableFloatingMonitor()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/MtkPhoneWindowUtility;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/MtkPhoneWindowUtility;->enableFloatingMonitor()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/MtkPhoneWindowUtility;->DEBUG:Z

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/MtkPhoneWindowUtility;->DEBUG_LAYOUT:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/server/policy/MtkPhoneWindowUtility$MtkPolicyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/MtkPhoneWindowUtility$MtkPolicyHandler;-><init>(Lcom/android/server/policy/MtkPhoneWindowUtility;Lcom/android/server/policy/MtkPhoneWindowUtility$MtkPolicyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mHandler:Landroid/os/Handler;

    .line 108
    iput-object v1, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    .line 69
    iput-object p1, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 68
    return-void
.end method

.method private disableFloatingMonitor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 128
    iget-object v1, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    .line 127
    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 129
    iput-object v2, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    .line 125
    :cond_0
    return-void
.end method

.method private enableFloatingMonitor()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget-object v1, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->updatFocusWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 111
    return-void

    .line 116
    :cond_0
    new-instance v0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    iget-object v1, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 115
    iput-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    .line 117
    iget-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    goto :goto_0
.end method

.method public static makeNewWindowManager()Landroid/view/WindowManagerPolicy;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lcom/android/server/policy/MtkPhoneWindowManager;

    invoke-direct {v0}, Lcom/android/server/policy/MtkPhoneWindowManager;-><init>()V

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method updateFocus2FloatMonitor(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "focusWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 138
    iget-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 140
    const/4 v1, 0x1

    .line 139
    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isFullFloatWindow()Z

    move-result v0

    .line 138
    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public updateRect(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/server/policy/MtkPhoneWindowUtility;->mFloatingMonitorEventListener:Lcom/android/server/policy/FloatingMonitorPointerEventListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->updateMonitorRect(IIII)V

    .line 81
    :cond_0
    return-void
.end method
