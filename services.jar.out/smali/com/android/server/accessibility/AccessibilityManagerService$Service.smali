.class Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Service"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;
    }
.end annotation


# instance fields
.field mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field mComponentName:Landroid/content/ComponentName;

.field public mEventDispatchHandler:Landroid/os/Handler;

.field mEventTypes:I

.field mFeedbackType:I

.field mFetchFlags:I

.field mId:I

.field mIntent:Landroid/content/Intent;

.field public mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

.field mIsAutomation:Z

.field mIsDefault:Z

.field final mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

.field mNotificationTimeout:J

.field final mOverlayWindowToken:Landroid/os/IBinder;

.field mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field mRequestEnhancedWebAccessibility:Z

.field mRequestFilterKeyEvents:Z

.field mRequestTouchExplorationMode:Z

.field final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field mRetrieveInteractiveWindows:Z

.field mService:Landroid/os/IBinder;

.field mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field final mUserId:I

.field mWasConnectedAndDied:Z

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyAccessibilityEventInternal(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyClearAccessibilityCacheInternal()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 0
    .param p1, "gestureId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyGestureInternal(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/KeyEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyKeyEventInternal(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "userId"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    const/4 v5, 0x0

    .line 2020
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    .line 1960
    iput v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    .line 1972
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    .line 1996
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mOverlayWindowToken:Landroid/os/IBinder;

    .line 2000
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1999
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    .line 2002
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    .line 2008
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    .line 2017
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    .line 2018
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 2017
    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    .line 2022
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    .line 2023
    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 2024
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get18()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-set0(I)I

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    .line 2025
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    .line 2026
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2027
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get17()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    .line 2028
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v0, :cond_0

    .line 2029
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    .line 2030
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.client_label"

    .line 2031
    const v2, 0x104042c

    .line 2030
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2032
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.client_intent"

    .line 2033
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2032
    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2035
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 2021
    return-void
.end method

.method private expandNotifications()V
    .locals 5

    .prologue
    .line 2884
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2886
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    .line 2887
    const-string/jumbo v4, "statusbar"

    .line 2886
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 2888
    .local v0, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V

    .line 2890
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2883
    return-void
.end method

.method private expandQuickSettings()V
    .locals 5

    .prologue
    .line 2894
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2896
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    .line 2897
    const-string/jumbo v4, "statusbar"

    .line 2896
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 2898
    .local v0, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expandSettingsPanel()V

    .line 2900
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2893
    return-void
.end method

.method private getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 3
    .param p1, "windowId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2925
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get5(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 2926
    .local v0, "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    if-nez v0, :cond_0

    .line 2927
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 2929
    .restart local v0    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->-get0(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2930
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->-get0(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    return-object v1

    .line 2935
    :cond_1
    return-object v2
.end method

.method private notifyAccessibilityEventInternal(I)V
    .locals 6
    .param p1, "eventType"    # I

    .prologue
    .line 2759
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2760
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2764
    .local v1, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-nez v1, :cond_0

    monitor-exit v4

    .line 2765
    return-void

    .line 2768
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2785
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-nez v0, :cond_1

    monitor-exit v4

    .line 2786
    return-void

    .line 2789
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2790
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2791
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    .line 2795
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 2799
    :try_start_3
    invoke-interface {v1, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2806
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 2755
    :goto_1
    return-void

    .line 2793
    :cond_2
    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2759
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2803
    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v1    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catch_0
    move-exception v2

    .line 2804
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v3, "AccessibilityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error during sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2806
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_1

    .line 2805
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    .line 2806
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 2805
    throw v3
.end method

.method private notifyClearAccessibilityCacheInternal()V
    .locals 4

    .prologue
    .line 2846
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2847
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v2

    .line 2849
    if-eqz v0, :cond_0

    .line 2851
    :try_start_1
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->clearAccessibilityCache()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2844
    :cond_0
    :goto_0
    return-void

    .line 2846
    .end local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 2852
    .restart local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catch_0
    move-exception v1

    .line 2853
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityManagerService"

    const-string/jumbo v3, "Error during requesting accessibility info cache to be cleared."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyGestureInternal(I)V
    .locals 5
    .param p1, "gestureId"    # I

    .prologue
    .line 2827
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2828
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v2

    .line 2830
    if-eqz v0, :cond_0

    .line 2832
    :try_start_1
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onGesture(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2825
    :cond_0
    :goto_0
    return-void

    .line 2827
    .end local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 2833
    .restart local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catch_0
    move-exception v1

    .line 2834
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error during sending gesture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2835
    const-string/jumbo v4, " to "

    .line 2834
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2835
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 2834
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyKeyEventInternal(Landroid/view/KeyEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 2841
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->notifyKeyEvent(Landroid/view/KeyEvent;I)V

    .line 2840
    return-void
.end method

.method private openRecents()V
    .locals 6

    .prologue
    .line 2904
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2907
    .local v2, "token":J
    const-string/jumbo v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 2906
    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 2909
    .local v1, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2914
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2903
    return-void

    .line 2910
    :catch_0
    move-exception v0

    .line 2911
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "AccessibilityManagerService"

    const-string/jumbo v5, "Error toggling recent apps."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resolveAccessibilityWindowIdForFindFocusLocked(II)I
    .locals 1
    .param p1, "windowId"    # I
    .param p2, "focusType"    # I

    .prologue
    .line 2946
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 2947
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0

    .line 2949
    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 2950
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2951
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    return v0

    .line 2952
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 2953
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    return v0

    .line 2956
    :cond_2
    return p1
.end method

.method private resolveAccessibilityWindowIdLocked(I)I
    .locals 1
    .param p1, "accessibilityWindowId"    # I

    .prologue
    .line 2939
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 2940
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getActiveWindowId()I

    move-result v0

    return v0

    .line 2942
    :cond_0
    return p1
.end method

.method private sendDownAndUpKeyEvents(I)V
    .locals 19
    .param p1, "keyCode"    # I

    .prologue
    .line 2860
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2863
    .local v16, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2864
    .local v2, "downTime":J
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2865
    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    .line 2866
    const/16 v13, 0x101

    const/4 v14, 0x0

    move-wide v4, v2

    move/from16 v7, p1

    .line 2864
    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v15

    .line 2867
    .local v15, "down":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v6

    .line 2868
    const/4 v7, 0x0

    .line 2867
    invoke-virtual {v6, v15, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2869
    invoke-virtual {v15}, Landroid/view/KeyEvent;->recycle()V

    .line 2872
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2873
    .local v4, "upTime":J
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2874
    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    .line 2875
    const/16 v13, 0x101

    const/4 v14, 0x0

    move/from16 v7, p1

    .line 2873
    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    .line 2876
    .local v18, "up":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v6

    .line 2877
    const/4 v7, 0x0

    .line 2876
    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2878
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    .line 2880
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2859
    return-void
.end method

.method private showGlobalActions()V
    .locals 1

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get15(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->showGlobalActions()V

    .line 2917
    return-void
.end method


# virtual methods
.method public bindLocked()Z
    .locals 5

    .prologue
    .line 2079
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 2080
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v1, :cond_1

    .line 2081
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    .line 2082
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    .line 2084
    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 2083
    const v4, 0x2000001

    .line 2081
    invoke-virtual {v1, v2, p0, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2085
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2101
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 2088
    :cond_1
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2089
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 2090
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 2099
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-set0(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    goto :goto_0
.end method

.method public binderDied()V
    .locals 4

    .prologue
    .line 2697
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2702
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isConnectedLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2

    .line 2703
    return-void

    .line 2705
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mWasConnectedAndDied:Z

    .line 2706
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->flush()V

    .line 2707
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-static {v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 2709
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap22(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2710
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resetLocked()V

    .line 2711
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-eqz v1, :cond_1

    .line 2714
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2715
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2716
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->destroyUiAutomationService()V

    .line 2717
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2718
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v2

    .line 2696
    return-void

    .line 2697
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public canReceiveEventsLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2127
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public canRetrieveInteractiveWindowsLocked()Z
    .locals 1

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2144
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRetrieveInteractiveWindows:Z

    .line 2143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "dump"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2631
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Service[label="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2632
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2631
    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", feedbackType"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2634
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    invoke-static {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2633
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", capabilities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", eventTypes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2637
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2636
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", notificationTimeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2639
    const-string/jumbo v0, "]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2628
    return-void

    .line 2630
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z
    .locals 19
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2376
    const/4 v2, 0x0

    .line 2377
    .local v2, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v5

    .line 2378
    .local v5, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2382
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    .line 2384
    const/4 v6, -0x2

    .line 2382
    invoke-virtual {v3, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v17

    .line 2385
    .local v17, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get3(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    move/from16 v0, v17

    if-eq v0, v3, :cond_0

    .line 2386
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    .line 2388
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v18

    .line 2390
    .local v18, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    .line 2391
    .local v13, "permissionGranted":Z
    if-nez v13, :cond_1

    .line 2392
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    .line 2394
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 2395
    .local v2, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v2, :cond_2

    .line 2396
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    .line 2399
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2401
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2402
    const/4 v5, 0x0

    .end local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    :cond_3
    monitor-exit v4

    .line 2405
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 2406
    .local v9, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2407
    .local v14, "identityToken":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v18

    invoke-static {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v12

    .line 2410
    .local v12, "spec":Landroid/view/MagnificationSpec;
    :try_start_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    or-int v8, v3, p6

    move-wide/from16 v3, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v10, p7

    .line 2409
    invoke-interface/range {v2 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2412
    const/4 v3, 0x1

    .line 2418
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2420
    if-eqz v5, :cond_4

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2421
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    .line 2412
    :cond_4
    return v3

    .line 2378
    .end local v2    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v9    # "interrogatingPid":I
    .end local v12    # "spec":Landroid/view/MagnificationSpec;
    .end local v13    # "permissionGranted":Z
    .end local v14    # "identityToken":J
    .end local v17    # "resolvedUserId":I
    .end local v18    # "resolvedWindowId":I
    .restart local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2413
    .end local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v2    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v9    # "interrogatingPid":I
    .restart local v12    # "spec":Landroid/view/MagnificationSpec;
    .restart local v13    # "permissionGranted":Z
    .restart local v14    # "identityToken":J
    .restart local v17    # "resolvedUserId":I
    .restart local v18    # "resolvedWindowId":I
    :catch_0
    move-exception v16

    .line 2418
    .local v16, "re":Landroid/os/RemoteException;
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2420
    if-eqz v5, :cond_5

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2421
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    .line 2424
    :cond_5
    const/4 v3, 0x0

    return v3

    .line 2417
    .end local v16    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    .line 2418
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2420
    if-eqz v5, :cond_6

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2421
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    .line 2417
    :cond_6
    throw v3
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 20
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2319
    const/4 v3, 0x0

    .line 2320
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v7

    .line 2321
    .local v7, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2325
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    .line 2327
    const/4 v6, -0x2

    .line 2325
    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v18

    .line 2328
    .local v18, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get3(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    move/from16 v0, v18

    if-eq v0, v4, :cond_0

    .line 2329
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2331
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v19

    .line 2333
    .local v19, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 2334
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_1

    .line 2335
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2337
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 2338
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v3, :cond_2

    .line 2339
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2342
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2344
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2345
    const/4 v7, 0x0

    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :cond_3
    monitor-exit v5

    .line 2348
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 2349
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2350
    .local v16, "identityToken":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v14

    .line 2353
    .local v14, "spec":Landroid/view/MagnificationSpec;
    :try_start_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    .line 2352
    invoke-interface/range {v3 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2355
    const/4 v4, 0x1

    .line 2361
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2363
    if-eqz v7, :cond_4

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2364
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2355
    :cond_4
    return v4

    .line 2321
    .end local v2    # "permissionGranted":Z
    .end local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v11    # "interrogatingPid":I
    .end local v14    # "spec":Landroid/view/MagnificationSpec;
    .end local v16    # "identityToken":J
    .end local v18    # "resolvedUserId":I
    .end local v19    # "resolvedWindowId":I
    .restart local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2356
    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v2    # "permissionGranted":Z
    .restart local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v11    # "interrogatingPid":I
    .restart local v14    # "spec":Landroid/view/MagnificationSpec;
    .restart local v16    # "identityToken":J
    .restart local v18    # "resolvedUserId":I
    .restart local v19    # "resolvedWindowId":I
    :catch_0
    move-exception v15

    .line 2361
    .local v15, "re":Landroid/os/RemoteException;
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2363
    if-eqz v7, :cond_5

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2364
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2367
    :cond_5
    const/4 v4, 0x0

    return v4

    .line 2360
    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    .line 2361
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2363
    if-eqz v7, :cond_6

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2364
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2360
    :cond_6
    throw v4
.end method

.method public findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 20
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "viewIdResName"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2262
    const/4 v3, 0x0

    .line 2263
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v7

    .line 2264
    .local v7, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2268
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    .line 2270
    const/4 v6, -0x2

    .line 2268
    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v18

    .line 2271
    .local v18, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get3(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    move/from16 v0, v18

    if-eq v0, v4, :cond_0

    .line 2272
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2274
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v19

    .line 2276
    .local v19, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 2277
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_1

    .line 2278
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2280
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 2281
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v3, :cond_2

    .line 2282
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2285
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2287
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2288
    const/4 v7, 0x0

    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :cond_3
    monitor-exit v5

    .line 2291
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 2292
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2293
    .local v16, "identityToken":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v14

    .line 2296
    .local v14, "spec":Landroid/view/MagnificationSpec;
    :try_start_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    .line 2295
    invoke-interface/range {v3 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2298
    const/4 v4, 0x1

    .line 2304
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2306
    if-eqz v7, :cond_4

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2307
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2298
    :cond_4
    return v4

    .line 2264
    .end local v2    # "permissionGranted":Z
    .end local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v11    # "interrogatingPid":I
    .end local v14    # "spec":Landroid/view/MagnificationSpec;
    .end local v16    # "identityToken":J
    .end local v18    # "resolvedUserId":I
    .end local v19    # "resolvedWindowId":I
    .restart local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2299
    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v2    # "permissionGranted":Z
    .restart local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v11    # "interrogatingPid":I
    .restart local v14    # "spec":Landroid/view/MagnificationSpec;
    .restart local v16    # "identityToken":J
    .restart local v18    # "resolvedUserId":I
    .restart local v19    # "resolvedWindowId":I
    :catch_0
    move-exception v15

    .line 2304
    .local v15, "re":Landroid/os/RemoteException;
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2306
    if-eqz v7, :cond_5

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2307
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2310
    :cond_5
    const/4 v4, 0x0

    return v4

    .line 2303
    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    .line 2304
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2306
    if-eqz v7, :cond_6

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2307
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2303
    :cond_6
    throw v4
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 22
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "focusType"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2433
    const/4 v5, 0x0

    .line 2434
    .local v5, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v9

    .line 2435
    .local v9, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2439
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    .line 2441
    const/4 v8, -0x2

    .line 2439
    invoke-virtual {v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v20

    .line 2442
    .local v20, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get3(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    move/from16 v0, v20

    if-eq v0, v6, :cond_0

    .line 2443
    const/4 v6, 0x0

    monitor-exit v7

    return v6

    .line 2445
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdForFindFocusLocked(II)I

    move-result v21

    .line 2448
    .local v21, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 2449
    .local v4, "permissionGranted":Z
    if-nez v4, :cond_1

    .line 2450
    const/4 v6, 0x0

    monitor-exit v7

    return v6

    .line 2452
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 2453
    .local v5, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v5, :cond_2

    .line 2454
    const/4 v6, 0x0

    monitor-exit v7

    return v6

    .line 2457
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2459
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2460
    const/4 v9, 0x0

    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    :cond_3
    monitor-exit v7

    .line 2463
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 2464
    .local v13, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2465
    .local v18, "identityToken":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v21

    invoke-static {v6, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v16

    .line 2468
    .local v16, "spec":Landroid/view/MagnificationSpec;
    :try_start_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-wide/from16 v14, p7

    .line 2467
    invoke-interface/range {v5 .. v16}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2470
    const/4 v6, 0x1

    .line 2476
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2478
    if-eqz v9, :cond_4

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2479
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    .line 2470
    :cond_4
    return v6

    .line 2435
    .end local v4    # "permissionGranted":Z
    .end local v5    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v13    # "interrogatingPid":I
    .end local v16    # "spec":Landroid/view/MagnificationSpec;
    .end local v18    # "identityToken":J
    .end local v20    # "resolvedUserId":I
    .end local v21    # "resolvedWindowId":I
    .restart local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2471
    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v4    # "permissionGranted":Z
    .restart local v5    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v13    # "interrogatingPid":I
    .restart local v16    # "spec":Landroid/view/MagnificationSpec;
    .restart local v18    # "identityToken":J
    .restart local v20    # "resolvedUserId":I
    .restart local v21    # "resolvedWindowId":I
    :catch_0
    move-exception v17

    .line 2476
    .local v17, "re":Landroid/os/RemoteException;
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2478
    if-eqz v9, :cond_5

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2479
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    .line 2482
    :cond_5
    const/4 v6, 0x0

    return v6

    .line 2475
    .end local v17    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    .line 2476
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2478
    if-eqz v9, :cond_6

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2479
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    .line 2475
    :cond_6
    throw v6
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 20
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "direction"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2491
    const/4 v3, 0x0

    .line 2492
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v7

    .line 2493
    .local v7, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2497
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    .line 2499
    const/4 v6, -0x2

    .line 2497
    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v18

    .line 2500
    .local v18, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get3(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    move/from16 v0, v18

    if-eq v0, v4, :cond_0

    .line 2501
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2503
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v19

    .line 2505
    .local v19, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 2506
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_1

    .line 2507
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2509
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 2510
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v3, :cond_2

    .line 2511
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2514
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2516
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2517
    const/4 v7, 0x0

    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :cond_3
    monitor-exit v5

    .line 2520
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 2521
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2522
    .local v16, "identityToken":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v14

    .line 2525
    .local v14, "spec":Landroid/view/MagnificationSpec;
    :try_start_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    .line 2524
    invoke-interface/range {v3 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2527
    const/4 v4, 0x1

    .line 2533
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2535
    if-eqz v7, :cond_4

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2536
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2527
    :cond_4
    return v4

    .line 2493
    .end local v2    # "permissionGranted":Z
    .end local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v11    # "interrogatingPid":I
    .end local v14    # "spec":Landroid/view/MagnificationSpec;
    .end local v16    # "identityToken":J
    .end local v18    # "resolvedUserId":I
    .end local v19    # "resolvedWindowId":I
    .restart local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2528
    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v2    # "permissionGranted":Z
    .restart local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v11    # "interrogatingPid":I
    .restart local v14    # "spec":Landroid/view/MagnificationSpec;
    .restart local v16    # "identityToken":J
    .restart local v18    # "resolvedUserId":I
    .restart local v19    # "resolvedWindowId":I
    :catch_0
    move-exception v15

    .line 2533
    .local v15, "re":Landroid/os/RemoteException;
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2535
    if-eqz v7, :cond_5

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2536
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2539
    :cond_5
    const/4 v4, 0x0

    return v4

    .line 2532
    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    .line 2533
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2535
    if-eqz v7, :cond_6

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2536
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2532
    :cond_6
    throw v4
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 2

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 2137
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 8
    .param p1, "windowId"    # I

    .prologue
    const/4 v7, 0x0

    .line 2230
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap16(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 2231
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2235
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    .line 2237
    const/4 v6, -0x2

    .line 2235
    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 2238
    .local v1, "resolvedUserId":I
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get3(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eq v1, v4, :cond_0

    monitor-exit v5

    .line 2239
    return-object v7

    .line 2242
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 2243
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_1

    monitor-exit v5

    .line 2244
    return-object v7

    .line 2246
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    .line 2247
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v2, :cond_2

    .line 2248
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    .line 2249
    .local v3, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 2250
    return-object v3

    .end local v3    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_2
    monitor-exit v5

    .line 2252
    return-object v7

    .line 2231
    .end local v0    # "permissionGranted":Z
    .end local v1    # "resolvedUserId":I
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getWindows()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 2196
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap16(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 2197
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2201
    :try_start_0
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v7

    .line 2203
    const/4 v9, -0x2

    .line 2201
    invoke-virtual {v7, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 2204
    .local v2, "resolvedUserId":I
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get3(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eq v2, v7, :cond_0

    monitor-exit v8

    .line 2205
    return-object v10

    .line 2208
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 2209
    .local v1, "permissionGranted":Z
    if-nez v1, :cond_1

    monitor-exit v8

    .line 2210
    return-object v10

    .line 2212
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_2

    monitor-exit v8

    .line 2213
    return-object v10

    .line 2215
    :cond_2
    :try_start_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2216
    .local v6, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 2217
    .local v5, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_3

    .line 2218
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 2220
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    .line 2221
    .local v4, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {v4, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 2222
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_3
    monitor-exit v8

    .line 2224
    return-object v6

    .line 2197
    .end local v0    # "i":I
    .end local v1    # "permissionGranted":Z
    .end local v2    # "resolvedUserId":I
    .end local v5    # "windowCount":I
    .end local v6    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public isConnectedLocked()Z
    .locals 1

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public linkToOwnDeathLocked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2669
    return-void
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2730
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2731
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 2735
    .local v0, "eventType":I
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 2736
    .local v2, "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    .line 2737
    .local v3, "oldEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2739
    move v4, v0

    .line 2740
    .local v4, "what":I
    if-eqz v3, :cond_0

    .line 2741
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2742
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 2745
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2746
    .local v1, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    iget-wide v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    invoke-virtual {v5, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 2729
    return-void

    .line 2730
    .end local v0    # "eventType":I
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "oldEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v4    # "what":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public notifyClearAccessibilityNodeInfoCache()V
    .locals 2

    .prologue
    .line 2821
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    .line 2822
    const/4 v1, 0x3

    .line 2821
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->sendEmptyMessage(I)Z

    .line 2820
    return-void
.end method

.method public notifyGesture(I)V
    .locals 3
    .param p1, "gestureId"    # I

    .prologue
    .line 2811
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const/4 v1, 0x1

    .line 2812
    const/4 v2, 0x0

    .line 2811
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2810
    return-void
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const/4 v1, 0x2

    .line 2817
    const/4 v2, 0x0

    .line 2816
    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2815
    return-void
.end method

.method public onAdded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2649
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->linkToOwnDeathLocked()V

    .line 2650
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2652
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get15(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mOverlayWindowToken:Landroid/os/IBinder;

    .line 2653
    const/16 v4, 0x7f0

    .line 2652
    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2655
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2648
    return-void

    .line 2654
    :catchall_0
    move-exception v2

    .line 2655
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2654
    throw v2
.end method

.method public onRemoved()V
    .locals 5

    .prologue
    .line 2660
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2662
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get15(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mOverlayWindowToken:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2664
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2666
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unlinkToOwnDeathLocked()V

    .line 2659
    return-void

    .line 2663
    :catchall_0
    move-exception v2

    .line 2664
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2663
    throw v2
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 2172
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2173
    :try_start_0
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 2174
    invoke-static {p2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 2175
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-static {v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 2176
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap15(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2177
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mWasConnectedAndDied:Z

    if-eqz v2, :cond_1

    .line 2178
    :cond_0
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2179
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mWasConnectedAndDied:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2181
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mOverlayWindowToken:Landroid/os/IBinder;

    invoke-interface {v2, p0, v4, v5}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    .line 2182
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    .line 2171
    return-void

    .line 2183
    :catch_0
    move-exception v0

    .line 2184
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "AccessibilityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error while setting connection for service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2186
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2172
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2189
    .restart local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 2644
    return-void
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 20
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "action"    # I
    .param p5, "arguments"    # Landroid/os/Bundle;
    .param p6, "interactionId"    # I
    .param p7, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p8, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2548
    const/4 v3, 0x0

    .line 2549
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2553
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    .line 2555
    const/4 v6, -0x2

    .line 2553
    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v17

    .line 2556
    .local v17, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get3(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    move/from16 v0, v17

    if-eq v0, v4, :cond_0

    .line 2557
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2559
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v18

    .line 2560
    .local v18, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 2562
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_1

    .line 2563
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2565
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 2566
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v3, :cond_2

    .line 2567
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    :cond_2
    monitor-exit v5

    .line 2571
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 2572
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2575
    .local v14, "identityToken":J
    :try_start_3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v12, p8

    .line 2574
    invoke-interface/range {v3 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2581
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2583
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 2549
    .end local v2    # "permissionGranted":Z
    .end local v11    # "interrogatingPid":I
    .end local v14    # "identityToken":J
    .end local v17    # "resolvedUserId":I
    .end local v18    # "resolvedWindowId":I
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2576
    .restart local v2    # "permissionGranted":Z
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v11    # "interrogatingPid":I
    .restart local v14    # "identityToken":J
    .restart local v17    # "resolvedUserId":I
    .restart local v18    # "resolvedWindowId":I
    :catch_0
    move-exception v16

    .line 2581
    .local v16, "re":Landroid/os/RemoteException;
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2580
    .end local v16    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    .line 2581
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2580
    throw v4
.end method

.method public performGlobalAction(I)Z
    .locals 8
    .param p1, "action"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2588
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2592
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    .line 2594
    const/4 v5, -0x2

    .line 2592
    invoke-virtual {v3, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 2595
    .local v2, "resolvedUserId":I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get3(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eq v2, v3, :cond_0

    monitor-exit v4

    .line 2596
    return v7

    :cond_0
    monitor-exit v4

    .line 2599
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2601
    .local v0, "identity":J
    packed-switch p1, :pswitch_data_0

    .line 2623
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2621
    return v7

    .line 2588
    .end local v0    # "identity":J
    .end local v2    # "resolvedUserId":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2603
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedUserId":I
    :pswitch_0
    const/4 v3, 0x4

    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->sendDownAndUpKeyEvents(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2623
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2604
    return v6

    .line 2606
    :pswitch_1
    const/4 v3, 0x3

    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->sendDownAndUpKeyEvents(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2623
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2607
    return v6

    .line 2609
    :pswitch_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->openRecents()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2623
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2610
    return v6

    .line 2612
    :pswitch_3
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->expandNotifications()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2623
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2613
    return v6

    .line 2615
    :pswitch_4
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->expandQuickSettings()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2623
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2616
    return v6

    .line 2618
    :pswitch_5
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->showGlobalActions()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2623
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2619
    return v6

    .line 2622
    :catchall_1
    move-exception v3

    .line 2623
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2622
    throw v3

    .line 2601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public resetLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2678
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2679
    const-string/jumbo v1, "AccessibilityManagerService"

    const-string/jumbo v2, "resetLocked()"

    new-instance v3, Ljava/lang/Throwable;

    const-string/jumbo v4, "resetLocked()"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2684
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v3, v2, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2688
    :goto_0
    iput-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 2689
    iput-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 2677
    return-void

    .line 2685
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2039
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    .line 2040
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    .line 2041
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 2042
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2043
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2045
    :cond_0
    iget-wide v4, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    .line 2046
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    .line 2048
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2049
    const/16 v4, 0x10

    .line 2048
    if-lt v1, v4, :cond_2

    .line 2050
    :cond_1
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 2051
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    .line 2057
    :cond_2
    :goto_1
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 2058
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    .line 2063
    :goto_2
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    .line 2065
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestEnhancedWebAccessibility:Z

    .line 2067
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestFilterKeyEvents:Z

    .line 2069
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_9

    :goto_6
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRetrieveInteractiveWindows:Z

    .line 2038
    return-void

    :cond_3
    move v1, v3

    .line 2046
    goto :goto_0

    .line 2053
    :cond_4
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    goto :goto_1

    .line 2060
    :cond_5
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    goto :goto_2

    :cond_6
    move v1, v3

    .line 2063
    goto :goto_3

    :cond_7
    move v1, v3

    .line 2065
    goto :goto_4

    :cond_8
    move v1, v3

    .line 2067
    goto :goto_5

    :cond_9
    move v2, v3

    .line 2069
    goto :goto_6
.end method

.method public setOnKeyEventResult(ZI)V
    .locals 1
    .param p1, "handled"    # Z
    .param p2, "sequence"    # I

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->setOnKeyEventResult(ZI)V

    .line 2131
    return-void
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 2149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2151
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2155
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2156
    .local v2, "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v2, :cond_0

    .line 2157
    invoke-virtual {v2, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 2158
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 2162
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-static {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 2163
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2166
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2148
    return-void

    .line 2160
    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2151
    .end local v2    # "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2165
    :catchall_1
    move-exception v4

    .line 2166
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2165
    throw v4
.end method

.method public unbindLocked()Z
    .locals 3

    .prologue
    .line 2111
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 2112
    const/4 v1, 0x0

    return v1

    .line 2114
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 2115
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->flush()V

    .line 2116
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v1, :cond_1

    .line 2117
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2121
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap22(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2122
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resetLocked()V

    .line 2123
    const/4 v1, 0x1

    return v1

    .line 2119
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->destroyUiAutomationService()V

    goto :goto_0
.end method

.method public unlinkToOwnDeathLocked()V
    .locals 2

    .prologue
    .line 2674
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2673
    return-void
.end method
