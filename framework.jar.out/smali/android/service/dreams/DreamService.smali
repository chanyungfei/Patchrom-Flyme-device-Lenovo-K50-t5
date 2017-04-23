.class public Landroid/service/dreams/DreamService;
.super Landroid/app/Service;
.source "DreamService.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamService$DreamServiceWrapper;
    }
.end annotation


# static fields
.field public static final DREAM_META_DATA:Ljava/lang/String; = "android.service.dream"

.field public static final DREAM_SERVICE:Ljava/lang/String; = "dreams"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.dreams.DreamService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCanDoze:Z

.field private mDebug:Z

.field private mDozeScreenBrightness:I

.field private mDozeScreenState:I

.field private mDozing:Z

.field private mFinished:Z

.field private mFullscreen:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInteractive:Z

.field private mLowProfile:Z

.field private final mSandman:Landroid/service/dreams/IDreamManager;

.field private mScreenBright:Z

.field private mStarted:Z

.field private mWaking:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowToken:Landroid/os/IBinder;

.field private mWindowless:Z


# direct methods
.method static synthetic -get0(Landroid/service/dreams/DreamService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/service/dreams/DreamService;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    return v0
.end method

.method static synthetic -get2(Landroid/service/dreams/DreamService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Landroid/service/dreams/DreamService;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic -get4(Landroid/service/dreams/DreamService;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    return v0
.end method

.method static synthetic -set0(Landroid/service/dreams/DreamService;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/service/dreams/DreamService;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/service/dreams/DreamService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/service/dreams/DreamService;Z)V
    .locals 0
    .param p1, "fromSystem"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/dreams/DreamService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    .line 187
    iput-boolean v3, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    .line 189
    iput-boolean v3, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    .line 196
    iput v2, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    .line 199
    iput-boolean v2, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    .line 202
    const-string/jumbo v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    .line 201
    return-void
.end method

.method private applyFlags(III)I
    .locals 2
    .param p1, "oldFlags"    # I
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    .prologue
    .line 1088
    not-int v0, p3

    and-int/2addr v0, p1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private applySystemUiVisibilityFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1081
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1082
    :goto_0
    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-direct {p0, v1, p1, p2}, Landroid/service/dreams/DreamService;->applyFlags(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1080
    :cond_0
    return-void

    .line 1081
    :cond_1
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    goto :goto_0
.end method

.method private applyWindowFlags(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1067
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 1068
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1069
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1, p1, p2}, Landroid/service/dreams/DreamService;->applyFlags(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1070
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1071
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private final attach(Landroid/os/IBinder;Z)V
    .locals 11
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z

    .prologue
    const/16 v10, 0x7e7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 983
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-eqz v3, :cond_0

    .line 984
    iget-object v3, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "attach() called when already attached with token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return-void

    .line 987
    :cond_0
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    if-eqz v3, :cond_2

    .line 988
    :cond_1
    iget-object v3, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "attach() called after dream already finished"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :try_start_0
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    const/4 v4, 0x1

    invoke-interface {v3, p1, v4}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 994
    :goto_0
    return-void

    .line 997
    :cond_2
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    .line 998
    iput-boolean p2, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    .line 999
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    if-eqz v3, :cond_7

    .line 1002
    :cond_3
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-nez v3, :cond_6

    .line 1003
    new-instance v3, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    .line 1004
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 1005
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 1006
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v7, -0x1000000

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1007
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/view/Window;->setFormat(I)V

    .line 1009
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Attaching window token: %s to window of type %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 1010
    aput-object p1, v7, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 1009
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_4
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1013
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1014
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1015
    const v3, 0x10302f0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1016
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1021
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eqz v3, :cond_8

    const/16 v3, 0x400

    .line 1016
    :goto_1
    const v7, 0x490101

    or-int/2addr v7, v3

    .line 1022
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eqz v3, :cond_9

    const/16 v3, 0x80

    .line 1016
    :goto_2
    or-int/2addr v3, v7

    or-int/2addr v3, v6

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1024
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1027
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/high16 v6, -0x80000000

    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 1028
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const-string/jumbo v6, "dream"

    invoke-virtual {v3, v9, p1, v6, v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 1031
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    if-eqz v3, :cond_5

    move v4, v5

    .line 1030
    :cond_5
    invoke-direct {p0, v4, v5}, Landroid/service/dreams/DreamService;->applySystemUiVisibilityFlags(II)V

    .line 1035
    :try_start_1
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1050
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/service/dreams/DreamService$1;

    invoke-direct {v4, p0}, Landroid/service/dreams/DreamService$1;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 982
    return-void

    .line 1000
    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Only doze dreams can be windowless"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_8
    move v3, v4

    .line 1021
    goto :goto_1

    :cond_9
    move v3, v4

    .line 1022
    goto :goto_2

    .line 1036
    :catch_0
    move-exception v1

    .line 1040
    .local v1, "ex":Landroid/view/WindowManager$BadTokenException;
    iget-object v3, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "attach() called after window token already removed, dream will finish soon"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iput-object v9, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    .line 1043
    return-void

    .line 991
    .end local v1    # "ex":Landroid/view/WindowManager$BadTokenException;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_1
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1126
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private final detach()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 942
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    if-eqz v1, :cond_1

    .line 943
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "detach(): Calling onDreamingStopped()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_0
    iput-boolean v6, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    .line 945
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 948
    :cond_1
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_3

    .line 950
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "detach(): Removing window from window manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_2
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 952
    iput-object v5, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    .line 955
    :cond_3
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-eqz v1, :cond_4

    .line 957
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    .line 958
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Dream"

    .line 957
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_5

    .line 962
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/service/dreams/IDreamManager;->removeToken(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    :goto_0
    iput-object v5, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    .line 971
    iput-boolean v6, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    .line 941
    :cond_4
    return-void

    .line 967
    :cond_5
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No dream manager found"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 963
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getSystemUiVisibilityFlagValue(IZ)Z
    .locals 3
    .param p1, "flag"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1076
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 1077
    :goto_0
    if-nez v0, :cond_1

    .end local p2    # "defaultValue":Z
    :goto_1
    return p2

    .line 1076
    .restart local p2    # "defaultValue":Z
    :cond_0
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    goto :goto_0

    .line 1077
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    move p2, v1

    goto :goto_1
.end method

.method private getWindowFlagValue(IZ)Z
    .locals 2
    .param p1, "flag"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1063
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_0
.end method

.method private updateDoze()V
    .locals 5

    .prologue
    .line 638
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v1, :cond_0

    .line 640
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    iget v4, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    invoke-interface {v1, v2, v3, v4}, Landroid/service/dreams/IDreamManager;->startDozing(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 641
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private wakeUp(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    .prologue
    .line 895
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wakeUp(): fromSystem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 896
    const-string/jumbo v3, ", mWaking="

    .line 895
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 896
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    .line 895
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 896
    const-string/jumbo v3, ", mFinished="

    .line 895
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 896
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    .line 895
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_0
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-eqz v1, :cond_2

    .line 894
    :cond_1
    :goto_0
    return-void

    .line 899
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    .line 904
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onWakeUp()V

    .line 908
    if-nez p1, :cond_1

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v1, :cond_1

    .line 909
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-nez v1, :cond_3

    .line 910
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WakeUp was called before the dream was attached."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 913
    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 914
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 458
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    return-void
.end method

.method public canDoze()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    return v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 267
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 268
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on genericMotionEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 270
    const/4 v0, 0x1

    return v0

    .line 272
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 217
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 218
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on keyEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 220
    return v2

    .line 221
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 222
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on back key"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 224
    return v2

    .line 226
    :cond_3
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 232
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 233
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on keyShortcutEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 235
    const/4 v0, 0x1

    return v0

    .line 237
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 245
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 246
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on touchEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 248
    const/4 v0, 0x1

    return v0

    .line 250
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 256
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 257
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on trackballEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 259
    const/4 v0, 0x1

    return v0

    .line 261
    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1093
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/dreams/DreamService$2;

    invoke-direct {v1, p0, p1, p3}, Landroid/service/dreams/DreamService$2;-><init>(Landroid/service/dreams/DreamService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 1098
    const-string/jumbo v3, ""

    const-wide/16 v4, 0x3e8

    move-object v2, p2

    .line 1093
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 1092
    return-void
.end method

.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-nez v0, :cond_7

    .line 1105
    const-string/jumbo v0, "stopped"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    const-string/jumbo v0, "  flags:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, " interactive"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1112
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isLowProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, " lowprofile"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    :cond_1
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, " fullscreen"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1114
    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isScreenBright()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, " bright"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1115
    :cond_3
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isWindowless()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, " windowless"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1116
    :cond_4
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, " dozing"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1118
    :cond_5
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1119
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  doze screen state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  doze screen brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1102
    :cond_6
    return-void

    .line 1107
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "running (token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1117
    :cond_8
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, " candoze"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 471
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final finish()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 864
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finish(): mFinished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_0
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v1, :cond_1

    .line 867
    iput-boolean v4, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    .line 869
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-nez v1, :cond_2

    .line 870
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Finish was called before the dream was attached."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :goto_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->stopSelf()V

    .line 863
    :cond_1
    return-void

    .line 873
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 874
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDozeScreenBrightness()I
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    return v0
.end method

.method public getDozeScreenState()I
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 385
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 680
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    return v0
.end method

.method public isInteractive()Z
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    return v0
.end method

.method public isLowProfile()Z
    .locals 2

    .prologue
    .line 519
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->getSystemUiVisibilityFlagValue(IZ)Z

    move-result v0

    return v0
.end method

.method public isScreenBright()Z
    .locals 2

    .prologue
    .line 566
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    const/16 v1, 0x80

    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->getWindowFlagValue(IZ)Z

    move-result v0

    return v0
.end method

.method public isWindowless()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 373
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 368
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 833
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBind() intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Class name is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const-string/jumbo v1, "PhotoTableDream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "FlipperDream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 838
    :cond_1
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 841
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Permission Disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return-object v4

    .line 845
    :cond_2
    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Permission Enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    new-instance v1, Landroid/service/dreams/DreamService$DreamServiceWrapper;

    invoke-direct {v1, p0, v4}, Landroid/service/dreams/DreamService$DreamServiceWrapper;-><init>(Landroid/service/dreams/DreamService;Landroid/service/dreams/DreamService$DreamServiceWrapper;)V

    return-object v1

    .line 851
    :cond_3
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBind() intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_4
    new-instance v1, Landroid/service/dreams/DreamService$DreamServiceWrapper;

    invoke-direct {v1, p0, v4}, Landroid/service/dreams/DreamService$DreamServiceWrapper;-><init>(Landroid/service/dreams/DreamService;Landroid/service/dreams/DreamService$DreamServiceWrapper;)V

    return-object v1
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 793
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 792
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 925
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_0
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    .line 931
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 924
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 333
    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    .prologue
    .line 801
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_0
    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    .prologue
    .line 810
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStopped()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 338
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/SearchEvent;

    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onWakeUp()V
    .locals 0

    .prologue
    .line 827
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    .line 826
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 313
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 323
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 356
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 410
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 409
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 426
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 425
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 446
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "dbg"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    .line 208
    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 779
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 780
    invoke-static {p1}, Landroid/service/dreams/DreamService;->clampAbsoluteBrightness(I)I

    move-result p1

    .line 782
    :cond_0
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    if-eq v0, p1, :cond_1

    .line 783
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    .line 784
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 778
    :cond_1
    return-void
.end method

.method public setDozeScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 730
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    if-eq v0, p1, :cond_0

    .line 731
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    .line 732
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 729
    :cond_0
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    .prologue
    .line 530
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eq v1, p1, :cond_0

    .line 531
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    .line 532
    const/16 v0, 0x400

    .line 533
    .local v0, "flag":I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eqz v1, :cond_1

    .line 532
    const/16 v1, 0x400

    .line 533
    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    .line 529
    .end local v0    # "flag":I
    :cond_0
    return-void

    .line 533
    .restart local v0    # "flag":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInteractive(Z)V
    .locals 0
    .param p1, "interactive"    # Z

    .prologue
    .line 484
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    .line 483
    return-void
.end method

.method public setLowProfile(Z)V
    .locals 2
    .param p1, "lowProfile"    # Z

    .prologue
    .line 505
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    if-eq v1, p1, :cond_0

    .line 506
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    .line 507
    const/4 v0, 0x1

    .line 508
    .local v0, "flag":I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    if-eqz v1, :cond_1

    .line 507
    const/4 v1, 0x1

    .line 508
    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applySystemUiVisibilityFlags(II)V

    .line 504
    .end local v0    # "flag":I
    :cond_0
    return-void

    .line 508
    .restart local v0    # "flag":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScreenBright(Z)V
    .locals 2
    .param p1, "screenBright"    # Z

    .prologue
    .line 552
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eq v1, p1, :cond_0

    .line 553
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    .line 554
    const/16 v0, 0x80

    .line 555
    .local v0, "flag":I
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eqz v1, :cond_1

    .line 554
    const/16 v1, 0x80

    .line 555
    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    .line 551
    .end local v0    # "flag":I
    :cond_0
    return-void

    .line 555
    .restart local v0    # "flag":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWindowless(Z)V
    .locals 0
    .param p1, "windowless"    # Z

    .prologue
    .line 575
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    .line 574
    return-void
.end method

.method public startDozing()V
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v0, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    .line 633
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    goto :goto_0
.end method

.method public stopDozing()V
    .locals 3

    .prologue
    .line 659
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v1, :cond_0

    .line 660
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    .line 662
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/service/dreams/IDreamManager;->stopDozing(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final wakeUp()V
    .locals 1

    .prologue
    .line 891
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    .line 890
    return-void
.end method
