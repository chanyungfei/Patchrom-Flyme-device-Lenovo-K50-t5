.class public Landroid/app/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/Window$OnWindowDismissedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Dialog$ListenersHandler;,
        Landroid/app/Dialog$1;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x44

.field private static final DBG:Z

.field private static final DIALOG_HIERARCHY_TAG:Ljava/lang/String; = "android:dialogHierarchy"

.field private static final DIALOG_SHOWING_TAG:Ljava/lang/String; = "android:dialogShowing"

.field private static final DISMISS:I = 0x43

.field private static final SHOW:I = 0x45

.field private static final TAG:Ljava/lang/String; = "Dialog"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeTypeStarting:I

.field private mCancelAndDismissTaken:Ljava/lang/String;

.field private mCancelMessage:Landroid/os/Message;

.field protected mCancelable:Z

.field private mCanceled:Z

.field final mContext:Landroid/content/Context;

.field private mCreated:Z

.field mDecor:Landroid/view/View;

.field private final mDismissAction:Ljava/lang/Runnable;

.field private mDismissMessage:Landroid/os/Message;

.field private final mHandler:Landroid/os/Handler;

.field private mListenersHandler:Landroid/os/Handler;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mOwnerActivity:Landroid/app/Activity;

.field private mSearchEvent:Landroid/view/SearchEvent;

.field private mShowMessage:Landroid/os/Message;

.field private mShowing:Z

.field mWindow:Landroid/view/Window;

.field final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/app/Dialog;->DBG:Z

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .prologue
    .line 171
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 170
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "createContextThemeWrapper"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v4, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 118
    iput-boolean v3, p0, Landroid/app/Dialog;->mCreated:Z

    .line 119
    iput-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    .line 120
    iput-boolean v3, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 122
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    .line 134
    iput v3, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 136
    new-instance v2, Landroid/app/Dialog$1;

    invoke-direct {v2, p0}, Landroid/app/Dialog$1;-><init>(Landroid/app/Dialog;)V

    iput-object v2, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    .line 175
    if-eqz p3, :cond_1

    .line 176
    if-nez p2, :cond_0

    .line 177
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 178
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010308

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 179
    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    .line 181
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 186
    :goto_0
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    .line 188
    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 189
    .local v1, "w":Landroid/view/Window;
    iput-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    .line 190
    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 191
    invoke-virtual {v1, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 192
    iget-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2, v5, v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 193
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 195
    new-instance v2, Landroid/app/Dialog$ListenersHandler;

    invoke-direct {v2, p0}, Landroid/app/Dialog$ListenersHandler;-><init>(Landroid/app/Dialog;)V

    iput-object v2, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    .line 174
    return-void

    .line 183
    .end local v1    # "w":Landroid/view/Window;
    :cond_1
    iput-object p1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 212
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 213
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 210
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelCallback"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 205
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 206
    iput-object p3, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 203
    return-void
.end method

.method private getAssociatedActivity()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1110
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 1111
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1112
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1113
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 1114
    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 1116
    :cond_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    .line 1117
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    goto :goto_0

    .line 1118
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    const/4 v1, 0x0

    .local v1, "context":Landroid/content/Context;
    goto :goto_0

    .line 1121
    .end local v1    # "context":Landroid/content/Context;
    :cond_2
    if-nez v0, :cond_3

    :goto_1
    return-object v2

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_1
.end method

.method private sendDismissMessage()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 399
    :cond_0
    return-void
.end method

.method private sendShowMessage()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 406
    :cond_0
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 569
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 1217
    iget-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1218
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 1220
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1222
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1216
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 967
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 966
    :cond_0
    return-void
.end method

.method public create()V
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_0

    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 272
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 363
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 364
    invoke-virtual {p0}, Landroid/app/Dialog;->dismissDialog()V

    .line 362
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method dismissDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 371
    sget-boolean v0, Landroid/app/Dialog;->DBG:Z

    if-eqz v0, :cond_0

    .line 372
    const-string/jumbo v0, "Dialog"

    const-string/jumbo v1, "dismissDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    const-string/jumbo v0, "Dialog"

    const-string/jumbo v1, "Tried to dismissDialog() but the Dialog\'s window was already destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void

    .line 376
    :cond_1
    return-void

    .line 385
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    .line 388
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 390
    :cond_3
    iput-object v2, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 391
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 392
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    .line 393
    iput-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    .line 395
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    .line 370
    return-void

    .line 386
    :catchall_0
    move-exception v0

    .line 387
    iget-object v1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_4

    .line 388
    iget-object v1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 390
    :cond_4
    iput-object v2, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 391
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 392
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    .line 393
    iput-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    .line 395
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    .line 386
    throw v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 844
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    const/4 v0, 0x1

    return v0

    .line 847
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 773
    iget-object v1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v1, p0, v2, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    return v3

    .line 776
    :cond_0
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    return v3

    .line 779
    :cond_1
    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 780
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 779
    :cond_2
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 793
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    const/4 v0, 0x1

    return v0

    .line 796
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Dialog;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method dispatchOnCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 416
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    .line 415
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v3, -0x1

    .line 851
    invoke-virtual {p0}, Landroid/app/Dialog;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 852
    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 854
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 855
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_1

    .line 856
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 857
    .local v0, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 859
    const/4 v2, 0x0

    return v2

    .line 856
    .end local v0    # "isFullScreen":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isFullScreen":Z
    goto :goto_0

    .line 855
    .end local v0    # "isFullScreen":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isFullScreen":Z
    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 810
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    const/4 v0, 0x1

    return v0

    .line 813
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 827
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    const/4 v0, 0x1

    return v0

    .line 830
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 525
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 512
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1185
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getOwnerActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getSearchEvent()Landroid/view/SearchEvent;
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Landroid/app/Dialog;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public final getVolumeControlStream()I
    .locals 1

    .prologue
    .line 1325
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :cond_0
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 976
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 975
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1101
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-ne p1, v0, :cond_0

    .line 1102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    .line 1100
    :cond_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1090
    iput-object p1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    .line 1089
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 751
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 653
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 745
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1012
    const/4 v0, 0x0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1018
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 430
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 984
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 926
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 873
    if-nez p1, :cond_0

    .line 874
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 877
    :cond_0
    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 866
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 754
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 604
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 605
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 606
    const/4 v0, 0x1

    return v0

    .line 609
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 618
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 670
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 631
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 633
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 634
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 905
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 895
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 896
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 898
    :cond_0
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 945
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 951
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 912
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 913
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 911
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 938
    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 884
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 885
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 886
    .local v0, "goforit":Z
    if-eqz v0, :cond_0

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    :cond_0
    return v1

    .line 888
    .end local v0    # "goforit":Z
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 478
    const-string/jumbo v1, "android:dialogHierarchy"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 479
    .local v0, "dialogHierarchyState":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 481
    return-void

    .line 483
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 484
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 485
    const-string/jumbo v1, "android:dialogShowing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 477
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 459
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 460
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "android:dialogShowing"

    iget-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 461
    iget-boolean v1, p0, Landroid/app/Dialog;->mCreated:Z

    if-eqz v1, :cond_0

    .line 462
    const-string/jumbo v1, "android:dialogHierarchy"

    iget-object v2, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 464
    :cond_0
    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1033
    iget-object v4, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 1034
    const-string/jumbo v5, "search"

    .line 1033
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1037
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-direct {p0}, Landroid/app/Dialog;->getAssociatedActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 1038
    .local v3, "appName":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v1

    move v5, v2

    .line 1039
    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1040
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1041
    const/4 v1, 0x1

    return v1

    .line 1043
    :cond_0
    return v2
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .prologue
    .line 1025
    iput-object p1, p0, Landroid/app/Dialog;->mSearchEvent:Landroid/view/SearchEvent;

    .line 1026
    invoke-virtual {p0}, Landroid/app/Dialog;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 436
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 443
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 684
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 686
    const/4 v0, 0x1

    return v0

    .line 689
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 707
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 740
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 739
    :cond_0
    return-void
.end method

.method public onWindowDismissed()V
    .locals 0

    .prologue
    .line 760
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 759
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 748
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v1, 0x0

    .line 1063
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    if-nez v0, :cond_0

    .line 1064
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 1066
    :cond_0
    return-object v1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 1075
    :try_start_0
    iput p2, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1076
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1078
    iput v1, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1076
    return-object v0

    .line 1077
    :catchall_0
    move-exception v0

    .line 1078
    iput v1, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1077
    throw v0
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1005
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 1004
    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 958
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 957
    :cond_0
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 991
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 990
    return-void
.end method

.method public final requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 1149
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public setCancelMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1255
    iput-object p1, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 1254
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1193
    iput-boolean p1, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 1192
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 1205
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_1

    .line 1209
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 1204
    return-void

    .line 1206
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 535
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 534
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 546
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 545
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 558
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    return-void
.end method

.method public setDismissMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1292
    iput-object p1, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    .line 1291
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1173
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1172
    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 1181
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 1180
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 1157
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 1156
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1165
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 1164
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x0

    .line 1237
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1238
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnCancelListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1240
    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1240
    const-string/jumbo v2, " and can not be replaced."

    .line 1239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1238
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1242
    :cond_0
    if-eqz p1, :cond_1

    .line 1243
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 1236
    :goto_0
    return-void

    .line 1245
    :cond_1
    iput-object v1, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v1, 0x0

    .line 1263
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1264
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnDismissListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1266
    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1266
    const-string/jumbo v2, " and can not be replaced."

    .line 1265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1264
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1268
    :cond_0
    if-eqz p1, :cond_1

    .line 1269
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    .line 1262
    :goto_0
    return-void

    .line 1271
    :cond_1
    iput-object v1, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 1332
    iput-object p1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1331
    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;

    .prologue
    const/4 v0, 0x0

    .line 1280
    if-eqz p1, :cond_0

    .line 1281
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    .line 1279
    :goto_0
    return-void

    .line 1283
    :cond_0
    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public final setOwnerActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 242
    iput-object p1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 244
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 241
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 589
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 588
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 578
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 577
    return-void
.end method

.method public final setVolumeControlStream(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1318
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 1317
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 285
    sget-boolean v3, Landroid/app/Dialog;->DBG:Z

    if-eqz v3, :cond_0

    .line 286
    const-string/jumbo v3, "Dialog"

    const-string/jumbo v4, "show"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v3, :cond_3

    .line 290
    iget-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 291
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v6}, Landroid/view/Window;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v6}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 294
    :cond_1
    iget-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :cond_2
    return-void

    .line 299
    :cond_3
    iput-boolean v5, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 301
    iget-boolean v3, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v3, :cond_4

    .line 302
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 305
    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->onStart()V

    .line 306
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 308
    iget-object v3, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v6}, Landroid/view/Window;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 309
    iget-object v3, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 310
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 311
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 312
    new-instance v3, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v3, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v3, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    .line 315
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_5
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 316
    .local v1, "l":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_6

    .line 318
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 319
    .local v2, "nl":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 320
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 322
    move-object v1, v2

    .line 326
    .end local v2    # "nl":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    :try_start_0
    iget-object v3, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v3, v4, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    .line 329
    invoke-direct {p0}, Landroid/app/Dialog;->sendShowMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 336
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v3

    iget-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloating(Landroid/os/IBinder;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 337
    const-string/jumbo v3, "Dialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[BMW] show-setLayout(MATCH_PARENT, WRAP_CONTENT) l.token = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 338
    iget-object v5, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 337
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v4, -0x1

    .line 340
    const/4 v5, -0x2

    .line 339
    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 284
    :cond_7
    return-void

    .line 330
    :catchall_0
    move-exception v3

    throw v3
.end method

.method public takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cancel"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p3, "dismiss"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v1, 0x0

    .line 1298
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1299
    iput-object v1, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1304
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1305
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1306
    iput-object p1, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1308
    const/4 v0, 0x1

    return v0

    .line 1300
    :cond_1
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1301
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .prologue
    .line 1134
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 1133
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 998
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 997
    return-void
.end method
