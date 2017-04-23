.class final Landroid/app/FragmentManagerImpl;
.super Landroid/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;,
        Landroid/app/FragmentManagerImpl$1;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAvailIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroid/app/FragmentContainer;

.field mController:Landroid/app/FragmentController;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroid/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/FragmentHostCallback",
            "<*>;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroid/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpActions:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    .line 405
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 405
    invoke-direct {p0}, Landroid/app/FragmentManager;-><init>()V

    .line 468
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 481
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 482
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 484
    new-instance v0, Landroid/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$1;-><init>(Landroid/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    .line 405
    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    .prologue
    .line 1437
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    if-eqz v0, :cond_0

    .line 1438
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1439
    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    .line 1438
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1441
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1442
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1442
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1436
    :cond_1
    return-void
.end method

.method static modifiesAlpha(Landroid/animation/Animator;)Z
    .locals 8
    .param p0, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 517
    if-nez p0, :cond_0

    .line 518
    return v6

    .line 520
    :cond_0
    instance-of v4, p0, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    move-object v2, p0

    .line 521
    check-cast v2, Landroid/animation/ValueAnimator;

    .line 522
    .local v2, "valueAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 523
    .local v3, "values":[Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 524
    const-string/jumbo v4, "alpha"

    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 525
    return v7

    .line 523
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    .end local v1    # "i":I
    .end local v2    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local v3    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_2
    instance-of v4, p0, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_4

    .line 529
    check-cast p0, Landroid/animation/AnimatorSet;

    .end local p0    # "anim":Landroid/animation/Animator;
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 530
    .local v0, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 531
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-static {v4}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 532
    return v7

    .line 530
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 536
    .end local v0    # "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v1    # "i":I
    :cond_4
    return v6
.end method

.method public static reverseTransit(I)I
    .locals 1
    .param p0, "transit"    # I

    .prologue
    .line 2143
    const/4 v0, 0x0

    .line 2144
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_0

    .line 2155
    :goto_0
    return v0

    .line 2146
    :sswitch_0
    const/16 v0, 0x2002

    .line 2147
    goto :goto_0

    .line 2149
    :sswitch_1
    const/16 v0, 0x1001

    .line 2150
    goto :goto_0

    .line 2152
    :sswitch_2
    const/16 v0, 0x1003

    .line 2153
    goto :goto_0

    .line 2144
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 552
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 553
    :cond_0
    return-void

    .line 555
    :cond_1
    invoke-static {p1, p2}, Landroid/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 556
    new-instance v0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v0, p1}, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 551
    :cond_2
    return-void
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x0

    .line 540
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 541
    :cond_0
    return v0

    .line 543
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_2

    .line 544
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v1

    .line 543
    if-eqz v1, :cond_2

    .line 545
    invoke-static {p1}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v0

    .line 543
    :cond_2
    return v0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .prologue
    const/4 v5, 0x0

    .line 492
    const-string/jumbo v3, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v1, Landroid/util/LogWriter;

    const-string/jumbo v3, "FragmentManager"

    const/4 v4, 0x6

    invoke-direct {v1, v4, v3}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 494
    .local v1, "logw":Landroid/util/LogWriter;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    const/16 v3, 0x400

    invoke-direct {v2, v1, v5, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 495
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v3, :cond_0

    .line 496
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Activity state:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :try_start_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    const-string/jumbo v4, "  "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v2, v5}, Landroid/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 513
    throw p1

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 501
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 504
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Fragment manager state:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :try_start_1
    const-string/jumbo v3, "  "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v2, v4}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 507
    :catch_1
    move-exception v0

    .line 508
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 509
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 1
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .prologue
    .line 2160
    const/4 v0, -0x1

    .line 2161
    .local v0, "animAttr":I
    sparse-switch p0, :sswitch_data_0

    .line 2178
    :goto_0
    return v0

    .line 2163
    :sswitch_0
    if-eqz p1, :cond_0

    .line 2164
    const/4 v0, 0x0

    goto :goto_0

    .line 2165
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2168
    :sswitch_1
    if-eqz p1, :cond_1

    .line 2169
    const/4 v0, 0x2

    goto :goto_0

    .line 2170
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 2173
    :sswitch_2
    if-eqz p1, :cond_2

    .line 2174
    const/4 v0, 0x4

    goto :goto_0

    .line 2175
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 2161
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroid/app/BackStackRecord;)V
    .locals 1
    .param p1, "state"    # Landroid/app/BackStackRecord;

    .prologue
    .line 1594
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1597
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1598
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1593
    return-void
.end method

.method public addFragment(Landroid/app/Fragment;Z)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "moveToStateNow"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1217
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1220
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    .line 1222
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1223
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1224
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1226
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    iput-boolean v3, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1228
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mRemoving:Z

    .line 1229
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1230
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1232
    :cond_3
    if-eqz p2, :cond_4

    .line 1233
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    .line 1216
    :cond_4
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 636
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 639
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    return-void
.end method

.method public allocBackStackIndex(Landroid/app/BackStackRecord;)I
    .locals 4
    .param p1, "bse"    # Landroid/app/BackStackRecord;

    .prologue
    .line 1474
    monitor-enter p0

    .line 1475
    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    .line 1476
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1477
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1479
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1480
    .local v0, "index":I
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_2
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1482
    return v0

    .line 1485
    .end local v0    # "index":I
    :cond_3
    :try_start_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1486
    .restart local v0    # "index":I
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_4
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1488
    return v0

    .line 1474
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V
    .locals 2
    .param p2, "container"    # Landroid/app/FragmentContainer;
    .param p3, "parent"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentHostCallback",
            "<*>;",
            "Landroid/app/FragmentContainer;",
            "Landroid/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1963
    .local p1, "host":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<*>;"
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1964
    :cond_0
    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 1965
    iput-object p2, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    .line 1966
    iput-object p3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    .line 1962
    return-void
.end method

.method public attachFragment(Landroid/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1359
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_5

    .line 1361
    iput-boolean v5, p1, Landroid/app/Fragment;->mDetached:Z

    .line 1362
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-nez v0, :cond_5

    .line 1363
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1366
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1367
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1369
    :cond_2
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_3
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    iput-boolean v3, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1372
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_4

    .line 1373
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1375
    :cond_4
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1358
    :cond_5
    return-void
.end method

.method public beginTransaction()Landroid/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 562
    new-instance v0, Landroid/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method public detachFragment(Landroid/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1340
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1342
    iput-boolean v2, p1, Landroid/app/Fragment;->mDetached:Z

    .line 1343
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_4

    .line 1345
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1346
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove from detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1349
    :cond_2
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1350
    iput-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1352
    :cond_3
    iput-boolean v5, p1, Landroid/app/Fragment;->mAdded:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 1353
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1339
    :cond_4
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1979
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1980
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1978
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2015
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2016
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2017
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2018
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 2019
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2016
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2014
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2109
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2111
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2112
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 2113
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2114
    const/4 v2, 0x1

    return v2

    .line 2110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2119
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public dispatchCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1974
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1975
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1973
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 2048
    const/4 v3, 0x0

    .line 2049
    .local v3, "show":Z
    const/4 v2, 0x0

    .line 2050
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 2051
    const/4 v1, 0x0

    .end local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 2052
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2053
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 2054
    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2055
    const/4 v3, 0x1

    .line 2056
    if-nez v2, :cond_0

    .line 2057
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2059
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2051
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2065
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_2
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 2066
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 2067
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2068
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2066
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2069
    :cond_3
    invoke-virtual {v0}, Landroid/app/Fragment;->onDestroyOptionsMenu()V

    goto :goto_2

    .line 2074
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_4
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 2076
    return v3
.end method

.method public dispatchDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2006
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    .line 2007
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2008
    invoke-virtual {p0, v2, v2}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2009
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 2010
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    .line 2011
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    .line 2005
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 2

    .prologue
    .line 2002
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2001
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 3

    .prologue
    .line 2026
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2027
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2028
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2029
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 2030
    invoke-virtual {v0}, Landroid/app/Fragment;->performLowMemory()V

    .line 2027
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2025
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2095
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2096
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2097
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2098
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 2099
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2100
    const/4 v2, 0x1

    return v2

    .line 2096
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2105
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2123
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2125
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2126
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 2127
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2124
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2122
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchPause()V
    .locals 2

    .prologue
    .line 1994
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1993
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2080
    const/4 v2, 0x0

    .line 2081
    .local v2, "show":Z
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 2082
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2083
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2084
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 2085
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2086
    const/4 v2, 0x1

    .line 2082
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2091
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public dispatchResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1989
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1990
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1988
    return-void
.end method

.method public dispatchStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1984
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1985
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1983
    return-void
.end method

.method public dispatchStop()V
    .locals 2

    .prologue
    .line 1998
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1997
    return-void
.end method

.method public dispatchTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 2037
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2038
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2039
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2040
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 2041
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performTrimMemory(I)V

    .line 2038
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2036
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 711
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 714
    .local v4, "innerPrefix":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 715
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 716
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 717
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Active Fragments in "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 718
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 719
    const-string/jumbo v6, ":"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 721
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 722
    .local v2, "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 723
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 724
    if-eqz v2, :cond_0

    .line 725
    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 720
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 731
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v3    # "i":I
    :cond_1
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 732
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 733
    .restart local v0    # "N":I
    if-lez v0, :cond_2

    .line 734
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Added Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 736
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 737
    .restart local v2    # "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 738
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 743
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v3    # "i":I
    :cond_2
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 744
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 745
    .restart local v0    # "N":I
    if-lez v0, :cond_3

    .line 746
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Fragments Created Menus:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 748
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 749
    .restart local v2    # "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 750
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 755
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v3    # "i":I
    :cond_3
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 756
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 757
    .restart local v0    # "N":I
    if-lez v0, :cond_4

    .line 758
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Back Stack:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 759
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_4

    .line 760
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 761
    .local v1, "bs":Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 762
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 759
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 768
    .end local v0    # "N":I
    .end local v1    # "bs":Landroid/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_4
    monitor-enter p0

    .line 769
    :try_start_0
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 770
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 771
    .restart local v0    # "N":I
    if-lez v0, :cond_5

    .line 772
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Back Stack Indices:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_5

    .line 774
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 775
    .restart local v1    # "bs":Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 776
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 773
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 781
    .end local v0    # "N":I
    .end local v1    # "bs":Landroid/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_5
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 782
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "mAvailBackStackIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 783
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit p0

    .line 787
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 788
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 789
    .restart local v0    # "N":I
    if-lez v0, :cond_7

    .line 790
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Pending Actions:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_7

    .line 792
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 793
    .local v5, "r":Ljava/lang/Runnable;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 794
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 791
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 768
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 799
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "FragmentManager misc state:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mHost="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 801
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mContainer="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 802
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v6, :cond_8

    .line 803
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mParent="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 805
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mCurState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 806
    const-string/jumbo v6, " mStateSaved="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 807
    const-string/jumbo v6, " mDestroyed="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 808
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v6, :cond_9

    .line 809
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 812
    :cond_9
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 813
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mNoTransactionsBecause="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 814
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    :cond_a
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 817
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mAvailIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 818
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    :cond_b
    return-void
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "allowStateLoss"    # Z

    .prologue
    .line 1455
    if-nez p2, :cond_0

    .line 1456
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1458
    :cond_0
    monitor-enter p0

    .line 1459
    :try_start_0
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_2

    .line 1460
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1462
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1465
    :cond_3
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1466
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1467
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1468
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    .line 1454
    return-void
.end method

.method public execPendingActions()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1533
    iget-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v5, :cond_0

    .line 1534
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Recursive entry to executePendingTransactions"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1537
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v6}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 1538
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Must be called from main thread of process"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1541
    :cond_1
    const/4 v0, 0x0

    .line 1546
    .local v0, "didSomething":Z
    :goto_0
    monitor-enter p0

    .line 1547
    :try_start_0
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    monitor-exit p0

    .line 1569
    iget-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v5, :cond_9

    .line 1570
    const/4 v3, 0x0

    .line 1571
    .local v3, "loadersRunning":Z
    const/4 v2, 0x0

    .end local v3    # "loadersRunning":Z
    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 1572
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1573
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_3

    iget-object v5, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v5, :cond_3

    .line 1574
    iget-object v5, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v5

    or-int/2addr v3, v5

    .line 1571
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1551
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v2    # "i":I
    :cond_4
    :try_start_1
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1552
    .local v4, "numActions":I
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    array-length v5, v5

    if-ge v5, v4, :cond_6

    .line 1553
    :cond_5
    new-array v5, v4, [Ljava/lang/Runnable;

    iput-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    .line 1555
    :cond_6
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1556
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1557
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1560
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1561
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v4, :cond_7

    .line 1562
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    aget-object v5, v5, v2

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1563
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    aput-object v7, v5, v2

    .line 1561
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1546
    .end local v2    # "i":I
    .end local v4    # "numActions":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1565
    .restart local v2    # "i":I
    .restart local v4    # "numActions":I
    :cond_7
    iput-boolean v8, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1566
    const/4 v0, 0x1

    goto :goto_0

    .line 1577
    .end local v4    # "numActions":I
    :cond_8
    if-nez v3, :cond_9

    .line 1578
    iput-boolean v8, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1579
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1582
    .end local v2    # "i":I
    :cond_9
    return v0
.end method

.method public executePendingTransactions()Z
    .locals 1

    .prologue
    .line 567
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentById(I)Landroid/app/Fragment;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 1381
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1383
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1384
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1385
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_0

    .line 1386
    return-object v0

    .line 1383
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1390
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 1392
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 1393
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1394
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_2

    .line 1395
    return-object v0

    .line 1392
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1399
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_3
    return-object v3
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1403
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1405
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1406
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1407
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1408
    return-object v0

    .line 1405
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1412
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 1414
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 1415
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1416
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1417
    return-object v0

    .line 1414
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1421
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_3
    return-object v3
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 4
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1425
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1426
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1427
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1428
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1429
    return-object v0

    .line 1426
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1433
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-object v3
.end method

.method public freeBackStackIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1519
    monitor-enter p0

    .line 1520
    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1521
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1524
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1518
    return-void

    .line 1519
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 631
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 660
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 661
    .local v1, "index":I
    if-ne v1, v2, :cond_0

    .line 662
    return-object v3

    .line 664
    :cond_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 665
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 666
    const-string/jumbo v4, ": index "

    .line 665
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 668
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 669
    .local v0, "f":Landroid/app/Fragment;
    if-nez v0, :cond_2

    .line 670
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 671
    const-string/jumbo v4, ": index "

    .line 670
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 673
    :cond_2
    return-object v0
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    .prologue
    .line 2275
    return-object p0
.end method

.method public hideFragment(Landroid/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v5, 0x1

    .line 1264
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hide: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_0
    iget-boolean v2, p1, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_4

    .line 1267
    iget-object v2, p1, Landroid/app/Fragment;->mAnimatingShowHide:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    .line 1268
    iget-object v2, p1, Landroid/app/Fragment;->mAnimatingShowHide:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 1271
    :cond_1
    iput-boolean v5, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1272
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1273
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2, p3}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1275
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_5

    .line 1276
    iput-object v0, p1, Landroid/app/Fragment;->mAnimatingShowHide:Landroid/animation/Animator;

    .line 1277
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1280
    move-object v1, p1

    .line 1281
    .local v1, "finalFragment":Landroid/app/Fragment;
    new-instance v2, Landroid/app/FragmentManagerImpl$6;

    invoke-direct {v2, p0, v1}, Landroid/app/FragmentManagerImpl$6;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/Fragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1290
    iget-object v2, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v2, v0}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 1291
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1296
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "finalFragment":Landroid/app/Fragment;
    :cond_2
    :goto_0
    iget-boolean v2, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_3

    .line 1297
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1299
    :cond_3
    invoke-virtual {p1, v5}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 1263
    :cond_4
    return-void

    .line 1293
    .restart local v0    # "anim":Landroid/animation/Animator;
    :cond_5
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 2135
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2136
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    .line 2134
    :goto_0
    return-void

    .line 2138
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 691
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    return v0
.end method

.method loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;
    .locals 9
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 825
    iget v5, p1, Landroid/app/Fragment;->mNextAnim:I

    .line 824
    invoke-virtual {p1, p2, p3, v5}, Landroid/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v2

    .line 826
    .local v2, "animObj":Landroid/animation/Animator;
    if-eqz v2, :cond_0

    .line 827
    return-object v2

    .line 830
    :cond_0
    iget v5, p1, Landroid/app/Fragment;->mNextAnim:I

    if-eqz v5, :cond_1

    .line 831
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p1, Landroid/app/Fragment;->mNextAnim:I

    invoke-static {v5, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 832
    .local v1, "anim":Landroid/animation/Animator;
    if-eqz v1, :cond_1

    .line 833
    return-object v1

    .line 837
    .end local v1    # "anim":Landroid/animation/Animator;
    :cond_1
    if-nez p2, :cond_2

    .line 838
    return-object v8

    .line 841
    :cond_2
    invoke-static {p2, p3}, Landroid/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v4

    .line 842
    .local v4, "styleIndex":I
    if-gez v4, :cond_3

    .line 843
    return-object v8

    .line 846
    :cond_3
    if-nez p4, :cond_4

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 847
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    .line 849
    :cond_4
    if-nez p4, :cond_5

    .line 850
    return-object v8

    .line 853
    :cond_5
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 854
    sget-object v6, Lcom/android/internal/R$styleable;->FragmentAnimation:[I

    .line 853
    invoke-virtual {v5, p4, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 855
    .local v3, "attrs":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 856
    .local v0, "anim":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 858
    if-nez v0, :cond_6

    .line 859
    return-object v8

    .line 862
    :cond_6
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    return-object v5
.end method

.method makeActive(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    .line 1183
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 1184
    return-void

    .line 1187
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1188
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1191
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    .line 1192
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    :goto_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_3
    return-void

    .line 1195
    :cond_4
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    .line 1196
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method makeInactive(Landroid/app/Fragment;)V
    .locals 4
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 1202
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 1203
    return-void

    .line 1206
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1208
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1211
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p1}, Landroid/app/Fragment;->initState()V

    .line 1201
    return-void
.end method

.method moveToState(IIIZ)V
    .locals 8
    .param p1, "newState"    # I
    .param p2, "transit"    # I
    .param p3, "transitStyle"    # I
    .param p4, "always"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1139
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No activity"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1143
    :cond_0
    if-nez p4, :cond_1

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ne v0, p1, :cond_1

    .line 1144
    return-void

    .line 1147
    :cond_1
    iput p1, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 1148
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1149
    const/4 v7, 0x0

    .line 1150
    .local v7, "loadersRunning":Z
    const/4 v6, 0x0

    .end local v7    # "loadersRunning":Z
    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 1151
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1152
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 1153
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1154
    iget-object v0, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_2

    .line 1155
    iget-object v0, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v0

    or-int/2addr v7, v0

    .line 1150
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1160
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_3
    if-nez v7, :cond_4

    .line 1161
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1164
    :cond_4
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 1165
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    .line 1166
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1138
    .end local v6    # "i":I
    :cond_5
    return-void
.end method

.method moveToState(IZ)V
    .locals 1
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1135
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 1134
    return-void
.end method

.method moveToState(Landroid/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 1131
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1130
    return-void
.end method

.method moveToState(Landroid/app/Fragment;IIIZ)V
    .locals 10
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I
    .param p5, "keepActive"    # Z

    .prologue
    .line 879
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 884
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    if-le p2, v0, :cond_2

    .line 885
    const/4 p2, 0x1

    .line 887
    :cond_2
    iget-boolean v0, p1, Landroid/app/Fragment;->mRemoving:Z

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/app/Fragment;->mState:I

    if-le p2, v0, :cond_3

    .line 889
    iget p2, p1, Landroid/app/Fragment;->mState:I

    .line 893
    :cond_3
    iget-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    const/4 v0, 0x3

    if-le p2, v0, :cond_4

    .line 894
    const/4 p2, 0x3

    .line 896
    :cond_4
    iget v0, p1, Landroid/app/Fragment;->mState:I

    if-ge v0, p2, :cond_1e

    .line 900
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Landroid/app/Fragment;->mInLayout:Z

    if-eqz v0, :cond_8

    .line 903
    :cond_5
    iget-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v0, :cond_6

    .line 908
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 909
    iget v2, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 911
    :cond_6
    iget v0, p1, Landroid/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1127
    :cond_7
    :goto_0
    iput p2, p1, Landroid/app/Fragment;->mState:I

    .line 878
    return-void

    .line 901
    :cond_8
    return-void

    .line 913
    :pswitch_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_9
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 915
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 916
    const-string/jumbo v1, "android:view_state"

    .line 915
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 917
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 918
    const-string/jumbo v1, "android:target_state"

    .line 917
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 919
    iget-object v0, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v0, :cond_a

    .line 920
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 921
    const-string/jumbo v1, "android:target_req_state"

    const/4 v2, 0x0

    .line 920
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/app/Fragment;->mTargetRequestCode:I

    .line 923
    :cond_a
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 924
    const-string/jumbo v1, "android:user_visible_hint"

    const/4 v2, 0x1

    .line 923
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 925
    iget-boolean v0, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_b

    .line 926
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    .line 927
    const/4 v0, 0x3

    if-le p2, v0, :cond_b

    .line 928
    const/4 p2, 0x3

    .line 932
    :cond_b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v0, p1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 933
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    iput-object v0, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    .line 934
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_c

    .line 935
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    iget-object v0, v0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 934
    :goto_1
    iput-object v0, p1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 936
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    .line 937
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 938
    iget-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_d

    .line 939
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 940
    const-string/jumbo v2, " did not call through to super.onAttach()"

    .line 939
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_c
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;

    move-result-object v0

    goto :goto_1

    .line 942
    :cond_d
    iget-object v0, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    if-nez v0, :cond_e

    .line 943
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/app/FragmentHostCallback;->onAttachFragment(Landroid/app/Fragment;)V

    .line 946
    :cond_e
    iget-boolean v0, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_f

    .line 947
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 949
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mRetaining:Z

    .line 950
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_11

    .line 955
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 954
    invoke-virtual {p1, v0}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 955
    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v2, 0x0

    .line 954
    invoke-virtual {p1, v0, v2, v1}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 956
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 957
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 958
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_10

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 959
    :cond_10
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 963
    :cond_11
    :pswitch_1
    const/4 v0, 0x1

    if-le p2, v0, :cond_19

    .line 964
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_12
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_17

    .line 966
    const/4 v7, 0x0

    .line 967
    .local v7, "container":Landroid/view/ViewGroup;
    iget v0, p1, Landroid/app/Fragment;->mContainerId:I

    if-eqz v0, :cond_13

    .line 968
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    iget v1, p1, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "container":Landroid/view/ViewGroup;
    check-cast v7, Landroid/view/ViewGroup;

    .line 969
    .local v7, "container":Landroid/view/ViewGroup;
    if-nez v7, :cond_13

    iget-boolean v0, p1, Landroid/app/Fragment;->mRestored:Z

    if-eqz v0, :cond_1d

    .line 977
    .end local v7    # "container":Landroid/view/ViewGroup;
    :cond_13
    :goto_2
    iput-object v7, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 979
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 978
    invoke-virtual {p1, v0}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 979
    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 978
    invoke-virtual {p1, v0, v7, v1}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 980
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 981
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 982
    if-eqz v7, :cond_15

    .line 983
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0, p4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v6

    .line 985
    .local v6, "anim":Landroid/animation/Animator;
    if-eqz v6, :cond_14

    .line 986
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 987
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0, v6}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 988
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 990
    :cond_14
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 992
    .end local v6    # "anim":Landroid/animation/Animator;
    :cond_15
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_16

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 993
    :cond_16
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 997
    :cond_17
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 998
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 999
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1001
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1005
    :cond_19
    :pswitch_2
    const/4 v0, 0x3

    if-le p2, v0, :cond_1b

    .line 1006
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_1a
    invoke-virtual {p1}, Landroid/app/Fragment;->performStart()V

    .line 1010
    :cond_1b
    :pswitch_3
    const/4 v0, 0x4

    if-le p2, v0, :cond_7

    .line 1011
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mResumed:Z

    .line 1013
    invoke-virtual {p1}, Landroid/app/Fragment;->performResume()V

    .line 1015
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1016
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_0

    .line 970
    .restart local v7    # "container":Landroid/view/ViewGroup;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No view found for id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 972
    iget v2, p1, Landroid/app/Fragment;->mContainerId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 971
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 972
    const-string/jumbo v2, " ("

    .line 971
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 973
    invoke-virtual {p1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 971
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 974
    const-string/jumbo v2, ") for fragment "

    .line 971
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 970
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto/16 :goto_2

    .line 1019
    .end local v7    # "container":Landroid/view/ViewGroup;
    :cond_1e
    iget v0, p1, Landroid/app/Fragment;->mState:I

    if-le v0, p2, :cond_7

    .line 1020
    iget v0, p1, Landroid/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 1079
    :cond_1f
    :goto_3
    :pswitch_4
    const/4 v0, 0x1

    if-ge p2, v0, :cond_7

    .line 1080
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_20

    .line 1081
    iget-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v0, :cond_20

    .line 1088
    iget-object v6, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 1089
    .restart local v6    # "anim":Landroid/animation/Animator;
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 1090
    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    .line 1093
    .end local v6    # "anim":Landroid/animation/Animator;
    :cond_20
    iget-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v0, :cond_2b

    .line 1098
    iput p2, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    .line 1099
    const/4 p2, 0x1

    goto/16 :goto_0

    .line 1022
    :pswitch_5
    const/4 v0, 0x5

    if-ge p2, v0, :cond_22

    .line 1023
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_21

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_21
    invoke-virtual {p1}, Landroid/app/Fragment;->performPause()V

    .line 1025
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mResumed:Z

    .line 1028
    :cond_22
    :pswitch_6
    const/4 v0, 0x4

    if-ge p2, v0, :cond_24

    .line 1029
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_23
    invoke-virtual {p1}, Landroid/app/Fragment;->performStop()V

    .line 1034
    :cond_24
    :pswitch_7
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1f

    .line 1035
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_25

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_25
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_26

    .line 1039
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_26

    .line 1040
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    .line 1043
    :cond_26
    invoke-virtual {p1}, Landroid/app/Fragment;->performDestroyView()V

    .line 1044
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_29

    iget-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_29

    .line 1045
    const/4 v6, 0x0

    .line 1046
    .local v6, "anim":Landroid/animation/Animator;
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lez v0, :cond_27

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_2a

    .line 1050
    .end local v6    # "anim":Landroid/animation/Animator;
    :cond_27
    :goto_4
    if-eqz v6, :cond_28

    .line 1051
    iget-object v7, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1052
    .restart local v7    # "container":Landroid/view/ViewGroup;
    iget-object v9, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1053
    .local v9, "view":Landroid/view/View;
    move-object v8, p1

    .line 1054
    .local v8, "fragment":Landroid/app/Fragment;
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1055
    iput-object v6, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 1056
    iput p2, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    .line 1057
    new-instance v0, Landroid/app/FragmentManagerImpl$5;

    invoke-direct {v0, p0, v7, v9, v8}, Landroid/app/FragmentManagerImpl$5;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1068
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1069
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0, v6}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 1070
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 1073
    .end local v7    # "container":Landroid/view/ViewGroup;
    .end local v8    # "fragment":Landroid/app/Fragment;
    .end local v9    # "view":Landroid/view/View;
    :cond_28
    iget-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1075
    :cond_29
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1076
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_3

    .line 1047
    .restart local v6    # "anim":Landroid/animation/Animator;
    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v6

    .local v6, "anim":Landroid/animation/Animator;
    goto :goto_4

    .line 1101
    .end local v6    # "anim":Landroid/animation/Animator;
    :cond_2b
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_2c
    iget-boolean v0, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_2d

    .line 1103
    invoke-virtual {p1}, Landroid/app/Fragment;->performDestroy()V

    .line 1106
    :cond_2d
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    .line 1107
    invoke-virtual {p1}, Landroid/app/Fragment;->onDetach()V

    .line 1108
    iget-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_2e

    .line 1109
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1110
    const-string/jumbo v2, " did not call through to super.onDetach()"

    .line 1109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1112
    :cond_2e
    if-nez p5, :cond_7

    .line 1113
    iget-boolean v0, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_2f

    .line 1114
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeInactive(Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 1116
    :cond_2f
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 1117
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    .line 1118
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 1119
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    goto/16 :goto_0

    .line 911
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1020
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 1

    .prologue
    .line 1970
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1969
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2183
    const-string/jumbo v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2184
    return-object v4

    .line 2187
    :cond_0
    const-string/jumbo v0, "class"

    invoke-interface {p4, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2189
    .local v8, "fname":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->Fragment:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2190
    .local v6, "a":Landroid/content/res/TypedArray;
    if-nez v8, :cond_1

    .line 2191
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2193
    :cond_1
    invoke-virtual {v6, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 2194
    .local v9, "id":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2195
    .local v10, "tag":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2197
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 2198
    .local v7, "containerId":I
    :goto_0
    if-ne v7, v5, :cond_3

    if-ne v9, v5, :cond_3

    if-nez v10, :cond_3

    .line 2199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2200
    const-string/jumbo v3, ": Must specify unique android:id, android:tag, or have a parent with"

    .line 2199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2201
    const-string/jumbo v3, " an id for "

    .line 2199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2197
    .end local v7    # "containerId":I
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "containerId":I
    goto :goto_0

    .line 2207
    :cond_3
    if-eq v9, v5, :cond_8

    invoke-virtual {p0, v9}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 2208
    :goto_1
    if-nez v1, :cond_4

    if-eqz v10, :cond_4

    .line 2209
    invoke-virtual {p0, v10}, Landroid/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 2211
    :cond_4
    if-nez v1, :cond_5

    if-eq v7, v5, :cond_5

    .line 2212
    invoke-virtual {p0, v7}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 2215
    :cond_5
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateView: id=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2216
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 2215
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2216
    const-string/jumbo v5, " fname="

    .line 2215
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2217
    const-string/jumbo v5, " existing="

    .line 2215
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    :cond_6
    if-nez v1, :cond_a

    .line 2219
    invoke-static {p3, v8}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 2220
    .local v1, "fragment":Landroid/app/Fragment;
    iput-boolean v2, v1, Landroid/app/Fragment;->mFromLayout:Z

    .line 2221
    if-eqz v9, :cond_9

    move v0, v9

    :goto_2
    iput v0, v1, Landroid/app/Fragment;->mFragmentId:I

    .line 2222
    iput v7, v1, Landroid/app/Fragment;->mContainerId:I

    .line 2223
    iput-object v10, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 2224
    iput-boolean v2, v1, Landroid/app/Fragment;->mInLayout:Z

    .line 2225
    iput-object p0, v1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2226
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v0, v1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 2227
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v4}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2228
    invoke-virtual {p0, v1, v2}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    .line 2250
    .end local v1    # "fragment":Landroid/app/Fragment;
    :cond_7
    :goto_3
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ge v0, v2, :cond_c

    iget-boolean v0, v1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_c

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2251
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 2256
    :goto_4
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_d

    .line 2257
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2258
    const-string/jumbo v3, " did not create a view."

    .line 2257
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2207
    :cond_8
    const/4 v1, 0x0

    .local v1, "fragment":Landroid/app/Fragment;
    goto/16 :goto_1

    .local v1, "fragment":Landroid/app/Fragment;
    :cond_9
    move v0, v7

    .line 2221
    goto :goto_2

    .line 2229
    .end local v1    # "fragment":Landroid/app/Fragment;
    :cond_a
    iget-boolean v0, v1, Landroid/app/Fragment;->mInLayout:Z

    if-eqz v0, :cond_b

    .line 2232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2233
    const-string/jumbo v3, ": Duplicate id 0x"

    .line 2232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2233
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 2232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2234
    const-string/jumbo v3, ", tag "

    .line 2232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2234
    const-string/jumbo v3, ", or parent id 0x"

    .line 2232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2234
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 2232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2235
    const-string/jumbo v3, " with another fragment for "

    .line 2232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2239
    :cond_b
    iput-boolean v2, v1, Landroid/app/Fragment;->mInLayout:Z

    .line 2243
    iget-boolean v0, v1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_7

    .line 2244
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v4}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 2253
    :cond_c
    invoke-virtual {p0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    goto/16 :goto_4

    .line 2260
    :cond_d
    if-eqz v9, :cond_e

    .line 2261
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 2263
    :cond_e
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 2264
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2266
    :cond_f
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2271
    const/4 v0, 0x0

    return-object v0
.end method

.method public performPendingDeferredStart(Landroid/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 866
    iget-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_1

    .line 867
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_0

    .line 869
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 870
    return-void

    .line 872
    :cond_0
    iput-boolean v3, p1, Landroid/app/Fragment;->mDeferStart:Z

    .line 873
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 865
    :cond_1
    return-void
.end method

.method public popBackStack()V
    .locals 2

    .prologue
    .line 572
    new-instance v0, Landroid/app/FragmentManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$2;-><init>(Landroid/app/FragmentManagerImpl;)V

    .line 576
    const/4 v1, 0x0

    .line 572
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 571
    return-void
.end method

.method public popBackStack(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 604
    if-gez p1, :cond_0

    .line 605
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_0
    new-instance v0, Landroid/app/FragmentManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/FragmentManagerImpl$4;-><init>(Landroid/app/FragmentManagerImpl;II)V

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 603
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 588
    new-instance v0, Landroid/app/FragmentManagerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/FragmentManagerImpl$3;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;I)V

    .line 592
    const/4 v1, 0x0

    .line 588
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 587
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 4

    .prologue
    .line 581
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 582
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 583
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 616
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 617
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 618
    if-gez p1, :cond_0

    .line 619
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 597
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 598
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 599
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 12
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1602
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 1603
    const/4 v9, 0x0

    return v9

    .line 1605
    :cond_0
    if-nez p2, :cond_2

    if-gez p3, :cond_2

    and-int/lit8 v9, p4, 0x1

    if-nez v9, :cond_2

    .line 1606
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 1607
    .local v5, "last":I
    if-gez v5, :cond_1

    .line 1608
    const/4 v9, 0x0

    return v9

    .line 1610
    :cond_1
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 1611
    .local v1, "bss":Landroid/app/BackStackRecord;
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1612
    .local v2, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1613
    .local v6, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    invoke-virtual {v1, v2, v6}, Landroid/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1614
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10, v2, v6}, Landroid/app/BackStackRecord;->popFromBackStack(ZLandroid/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/app/BackStackRecord$TransitionState;

    .line 1615
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1671
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    .end local v5    # "last":I
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 1617
    .end local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .end local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    :cond_2
    const/4 v4, -0x1

    .line 1618
    .local v4, "index":I
    if-nez p2, :cond_3

    if-ltz p3, :cond_a

    .line 1621
    :cond_3
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .line 1622
    :goto_1
    if-ltz v4, :cond_4

    .line 1623
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 1624
    .restart local v1    # "bss":Landroid/app/BackStackRecord;
    if-eqz p2, :cond_5

    invoke-virtual {v1}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1632
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_4
    if-gez v4, :cond_7

    .line 1633
    const/4 v9, 0x0

    return v9

    .line 1627
    .restart local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_5
    if-ltz p3, :cond_6

    iget v9, v1, Landroid/app/BackStackRecord;->mIndex:I

    if-eq p3, v9, :cond_4

    .line 1630
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1635
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_7
    and-int/lit8 v9, p4, 0x1

    if-eqz v9, :cond_a

    .line 1636
    add-int/lit8 v4, v4, -0x1

    .line 1638
    :goto_2
    if-ltz v4, :cond_a

    .line 1639
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 1640
    .restart local v1    # "bss":Landroid/app/BackStackRecord;
    if-eqz p2, :cond_8

    invoke-virtual {v1}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1641
    :cond_8
    if-ltz p3, :cond_a

    iget v9, v1, Landroid/app/BackStackRecord;->mIndex:I

    if-ne p3, v9, :cond_a

    .line 1642
    :cond_9
    add-int/lit8 v4, v4, -0x1

    .line 1643
    goto :goto_2

    .line 1649
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_a
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v4, v9, :cond_b

    .line 1650
    const/4 v9, 0x0

    return v9

    .line 1653
    :cond_b
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1654
    .local v8, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "i":I
    :goto_3
    if-le v3, v4, :cond_c

    .line 1655
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/BackStackRecord;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1657
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 1658
    .local v0, "LAST":I
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1659
    .restart local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1660
    .restart local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    const/4 v3, 0x0

    :goto_4
    if-gt v3, v0, :cond_d

    .line 1661
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/BackStackRecord;

    invoke-virtual {v9, v2, v6}, Landroid/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1660
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1663
    :cond_d
    const/4 v7, 0x0

    .line 1664
    .local v7, "state":Landroid/app/BackStackRecord$TransitionState;
    const/4 v3, 0x0

    .end local v7    # "state":Landroid/app/BackStackRecord$TransitionState;
    :goto_5
    if-gt v3, v0, :cond_10

    .line 1665
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_e

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Popping back stack state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_e
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/BackStackRecord;

    if-ne v3, v0, :cond_f

    const/4 v10, 0x1

    :goto_6
    invoke-virtual {v9, v10, v7, v2, v6}, Landroid/app/BackStackRecord;->popFromBackStack(ZLandroid/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/app/BackStackRecord$TransitionState;

    move-result-object v7

    .line 1664
    .local v7, "state":Landroid/app/BackStackRecord$TransitionState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1666
    .end local v7    # "state":Landroid/app/BackStackRecord$TransitionState;
    :cond_f
    const/4 v10, 0x0

    goto :goto_6

    .line 1669
    :cond_10
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    goto/16 :goto_0
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 651
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 652
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 653
    const-string/jumbo v2, " is not currently in the FragmentManager"

    .line 652
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 655
    :cond_0
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 650
    return-void
.end method

.method public removeFragment(Landroid/app/Fragment;II)V
    .locals 7
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1239
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " nesting="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x0

    .line 1241
    .local v6, "inactive":Z
    :goto_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_1

    if-eqz v6, :cond_5

    .line 1250
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1251
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1253
    :cond_2
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1254
    iput-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1256
    :cond_3
    iput-boolean v5, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1257
    iput-boolean v2, p1, Landroid/app/Fragment;->mRemoving:Z

    .line 1258
    if-eqz v6, :cond_4

    move v2, v5

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1238
    :cond_5
    return-void

    .line 1240
    .end local v6    # "inactive":Z
    :cond_6
    const/4 v6, 0x1

    .restart local v6    # "inactive":Z
    goto :goto_0
.end method

.method public removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 644
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 643
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 2

    .prologue
    .line 1586
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1587
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1588
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 1587
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1585
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 12
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "nonConfig":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1850
    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object v2, p1

    .line 1851
    check-cast v2, Landroid/app/FragmentManagerState;

    .line 1852
    .local v2, "fms":Landroid/app/FragmentManagerState;
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    if-nez v7, :cond_1

    return-void

    .line 1856
    :cond_1
    if-eqz p2, :cond_4

    .line 1857
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 1858
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1859
    .local v1, "f":Landroid/app/Fragment;
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreAllState: re-attaching retained "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    :cond_2
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    iget v8, v1, Landroid/app/Fragment;->mIndex:I

    aget-object v3, v7, v8

    .line 1861
    .local v3, "fs":Landroid/app/FragmentState;
    iput-object v1, v3, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 1862
    iput-object v10, v1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1863
    iput v11, v1, Landroid/app/Fragment;->mBackStackNesting:I

    .line 1864
    iput-boolean v11, v1, Landroid/app/Fragment;->mInLayout:Z

    .line 1865
    iput-boolean v11, v1, Landroid/app/Fragment;->mAdded:Z

    .line 1866
    iput-object v10, v1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1867
    iget-object v7, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v7, :cond_3

    .line 1868
    iget-object v7, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v8}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1869
    iget-object v7, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1870
    const-string/jumbo v8, "android:view_state"

    .line 1869
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    iput-object v7, v1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1871
    iget-object v7, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v7, v1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1857
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1878
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v3    # "fs":Landroid/app/FragmentState;
    .end local v4    # "i":I
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1879
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    .line 1880
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1882
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v7, v7

    if-ge v4, v7, :cond_a

    .line 1883
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v3, v7, v4

    .line 1884
    .restart local v3    # "fs":Landroid/app/FragmentState;
    if-eqz v3, :cond_7

    .line 1885
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v3, v7, v8}, Landroid/app/FragmentState;->instantiate(Landroid/app/FragmentHostCallback;Landroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object v1

    .line 1886
    .restart local v1    # "f":Landroid/app/Fragment;
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreAllState: active #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    :cond_6
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1891
    iput-object v10, v3, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 1882
    .end local v1    # "f":Landroid/app/Fragment;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1893
    :cond_7
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1894
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v7, :cond_8

    .line 1895
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1897
    :cond_8
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string/jumbo v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreAllState: avail #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :cond_9
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1903
    .end local v3    # "fs":Landroid/app/FragmentState;
    :cond_a
    if-eqz p2, :cond_d

    .line 1904
    const/4 v4, 0x0

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_d

    .line 1905
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1906
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v7, v1, Landroid/app/Fragment;->mTargetIndex:I

    if-ltz v7, :cond_b

    .line 1907
    iget v7, v1, Landroid/app/Fragment;->mTargetIndex:I

    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_c

    .line 1908
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v8, v1, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Fragment;

    iput-object v7, v1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1904
    :cond_b
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1910
    :cond_c
    const-string/jumbo v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Re-attaching retained fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1911
    const-string/jumbo v9, " target no longer exists: "

    .line 1910
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1911
    iget v9, v1, Landroid/app/Fragment;->mTargetIndex:I

    .line 1910
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    iput-object v10, v1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    goto :goto_4

    .line 1919
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_d
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    if-eqz v7, :cond_11

    .line 1920
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1921
    const/4 v4, 0x0

    :goto_5
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    array-length v7, v7

    if-ge v4, v7, :cond_12

    .line 1922
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v8, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1923
    .restart local v1    # "f":Landroid/app/Fragment;
    if-nez v1, :cond_e

    .line 1924
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 1925
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No instantiated fragment for index #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1924
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1927
    :cond_e
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/app/Fragment;->mAdded:Z

    .line 1928
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_f

    const-string/jumbo v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreAllState: added #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :cond_f
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1930
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Already added!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1932
    :cond_10
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1921
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1935
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_11
    iput-object v10, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1939
    :cond_12
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    if-eqz v7, :cond_15

    .line 1940
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1941
    const/4 v4, 0x0

    :goto_6
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v7, v7

    if-ge v4, v7, :cond_16

    .line 1942
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    aget-object v7, v7, v4

    invoke-virtual {v7, p0}, Landroid/app/BackStackState;->instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;

    move-result-object v0

    .line 1943
    .local v0, "bse":Landroid/app/BackStackRecord;
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_13

    .line 1944
    const-string/jumbo v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreAllState: back stack #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1945
    const-string/jumbo v9, " (index "

    .line 1944
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1945
    iget v9, v0, Landroid/app/BackStackRecord;->mIndex:I

    .line 1944
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1945
    const-string/jumbo v9, "): "

    .line 1944
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    new-instance v5, Landroid/util/LogWriter;

    const-string/jumbo v7, "FragmentManager"

    const/4 v8, 0x2

    invoke-direct {v5, v8, v7}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 1947
    .local v5, "logw":Landroid/util/LogWriter;
    new-instance v6, Lcom/android/internal/util/FastPrintWriter;

    const/16 v7, 0x400

    invoke-direct {v6, v5, v11, v7}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 1948
    .local v6, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v7, "  "

    invoke-virtual {v0, v7, v6, v11}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 1949
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 1951
    .end local v5    # "logw":Landroid/util/LogWriter;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    :cond_13
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1952
    iget v7, v0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v7, :cond_14

    .line 1953
    iget v7, v0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v7, v0}, Landroid/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/app/BackStackRecord;)V

    .line 1941
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1957
    .end local v0    # "bse":Landroid/app/BackStackRecord;
    :cond_15
    iput-object v10, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1847
    :cond_16
    return-void
.end method

.method retainNonConfig()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1675
    const/4 v1, 0x0

    .line 1676
    .local v1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 1677
    const/4 v2, 0x0

    .end local v1    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1678
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1679
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Landroid/app/Fragment;->mRetainInstance:Z

    if-eqz v3, :cond_1

    .line 1680
    if-nez v1, :cond_0

    .line 1681
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1683
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1684
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/app/Fragment;->mRetaining:Z

    .line 1685
    iget-object v3, v0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v3, v3, Landroid/app/Fragment;->mIndex:I

    :goto_1
    iput v3, v0, Landroid/app/Fragment;->mTargetIndex:I

    .line 1686
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "retainNonConfig: keeping retained "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1685
    :cond_2
    const/4 v3, -0x1

    goto :goto_1

    .line 1690
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1745
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1747
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1749
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_1

    .line 1750
    :cond_0
    return-object v12

    .line 1754
    :cond_1
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1755
    .local v0, "N":I
    new-array v1, v0, [Landroid/app/FragmentState;

    .line 1756
    .local v1, "active":[Landroid/app/FragmentState;
    const/4 v7, 0x0

    .line 1757
    .local v7, "haveFragments":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_8

    .line 1758
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 1759
    .local v4, "f":Landroid/app/Fragment;
    if-eqz v4, :cond_6

    .line 1760
    iget v9, v4, Landroid/app/Fragment;->mIndex:I

    if-gez v9, :cond_2

    .line 1761
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 1762
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1763
    const-string/jumbo v11, " has cleared index: "

    .line 1762
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1763
    iget v11, v4, Landroid/app/Fragment;->mIndex:I

    .line 1762
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1761
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1766
    :cond_2
    const/4 v7, 0x1

    .line 1768
    new-instance v6, Landroid/app/FragmentState;

    invoke-direct {v6, v4}, Landroid/app/FragmentState;-><init>(Landroid/app/Fragment;)V

    .line 1769
    .local v6, "fs":Landroid/app/FragmentState;
    aput-object v6, v1, v8

    .line 1771
    iget v9, v4, Landroid/app/Fragment;->mState:I

    if-lez v9, :cond_7

    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_7

    .line 1772
    invoke-virtual {p0, v4}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1774
    iget-object v9, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v9, :cond_5

    .line 1775
    iget-object v9, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v9, v9, Landroid/app/Fragment;->mIndex:I

    if-gez v9, :cond_3

    .line 1776
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 1777
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1778
    const-string/jumbo v11, " has target not in fragment manager: "

    .line 1777
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1778
    iget-object v11, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1777
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1776
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1780
    :cond_3
    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_4

    .line 1781
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1783
    :cond_4
    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1784
    const-string/jumbo v10, "android:target_state"

    iget-object v11, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1783
    invoke-virtual {p0, v9, v10, v11}, Landroid/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 1785
    iget v9, v4, Landroid/app/Fragment;->mTargetRequestCode:I

    if-eqz v9, :cond_5

    .line 1786
    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1787
    const-string/jumbo v10, "android:target_req_state"

    .line 1788
    iget v11, v4, Landroid/app/Fragment;->mTargetRequestCode:I

    .line 1786
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1796
    :cond_5
    :goto_1
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Saved state of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1797
    iget-object v11, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1796
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    .end local v6    # "fs":Landroid/app/FragmentState;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1793
    .restart local v6    # "fs":Landroid/app/FragmentState;
    :cond_7
    iget-object v9, v4, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_1

    .line 1801
    .end local v4    # "f":Landroid/app/Fragment;
    .end local v6    # "fs":Landroid/app/FragmentState;
    :cond_8
    if-nez v7, :cond_a

    .line 1802
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_9

    const-string/jumbo v9, "FragmentManager"

    const-string/jumbo v10, "saveAllState: no fragments!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :cond_9
    return-object v12

    .line 1806
    :cond_a
    const/4 v2, 0x0

    .line 1807
    .local v2, "added":[I
    const/4 v3, 0x0

    .line 1810
    .local v3, "backStack":[Landroid/app/BackStackState;
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v9, :cond_d

    .line 1811
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1812
    if-lez v0, :cond_d

    .line 1813
    new-array v2, v0, [I

    .line 1814
    .local v2, "added":[I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v0, :cond_d

    .line 1815
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Fragment;

    iget v9, v9, Landroid/app/Fragment;->mIndex:I

    aput v9, v2, v8

    .line 1816
    aget v9, v2, v8

    if-gez v9, :cond_b

    .line 1817
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 1818
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1819
    const-string/jumbo v11, " has cleared index: "

    .line 1818
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1819
    aget v11, v2, v8

    .line 1818
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1817
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1821
    :cond_b
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_c

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveAllState: adding fragment #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1822
    const-string/jumbo v11, ": "

    .line 1821
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1822
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1821
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1828
    .end local v2    # "added":[I
    :cond_d
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v9, :cond_f

    .line 1829
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1830
    if-lez v0, :cond_f

    .line 1831
    new-array v3, v0, [Landroid/app/BackStackState;

    .line 1832
    .local v3, "backStack":[Landroid/app/BackStackState;
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_f

    .line 1833
    new-instance v10, Landroid/app/BackStackState;

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/BackStackRecord;

    invoke-direct {v10, p0, v9}, Landroid/app/BackStackState;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V

    aput-object v10, v3, v8

    .line 1834
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_e

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveAllState: adding back stack #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1835
    const-string/jumbo v11, ": "

    .line 1834
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1835
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1834
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1840
    .end local v3    # "backStack":[Landroid/app/BackStackState;
    :cond_f
    new-instance v5, Landroid/app/FragmentManagerState;

    invoke-direct {v5}, Landroid/app/FragmentManagerState;-><init>()V

    .line 1841
    .local v5, "fms":Landroid/app/FragmentManagerState;
    iput-object v1, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    .line 1842
    iput-object v2, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    .line 1843
    iput-object v3, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    .line 1844
    return-object v5
.end method

.method saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    const/4 v2, 0x0

    .line 1710
    const/4 v0, 0x0

    .line 1712
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 1713
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1715
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1716
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1717
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1718
    .local v0, "result":Landroid/os/Bundle;
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1721
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1722
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    .line 1724
    :cond_2
    iget-object v1, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 1725
    if-nez v0, :cond_3

    .line 1726
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1729
    :cond_3
    const-string/jumbo v1, "android:view_state"

    iget-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1728
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1731
    :cond_4
    iget-boolean v1, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_6

    .line 1732
    if-nez v0, :cond_5

    .line 1733
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1736
    :cond_5
    const-string/jumbo v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1739
    :cond_6
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v1, 0x0

    .line 678
    iget v2, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v2, :cond_0

    .line 679
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 680
    const-string/jumbo v4, " is not currently in the FragmentManager"

    .line 679
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 682
    :cond_0
    iget v2, p1, Landroid/app/Fragment;->mState:I

    if-lez v2, :cond_2

    .line 683
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 684
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    new-instance v1, Landroid/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    :cond_1
    return-object v1

    .line 686
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_2
    return-object v1
.end method

.method saveFragmentViewState(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    const/4 v2, 0x0

    .line 1694
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1695
    return-void

    .line 1697
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1698
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 1702
    :goto_0
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1703
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1704
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1705
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 1693
    :cond_1
    return-void

    .line 1700
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0
.end method

.method public setBackStackIndex(ILandroid/app/BackStackRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "bse"    # Landroid/app/BackStackRecord;

    .prologue
    .line 1494
    monitor-enter p0

    .line 1495
    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1496
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1498
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1499
    .local v0, "N":I
    if-ge p1, v0, :cond_2

    .line 1500
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1493
    return-void

    .line 1503
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 1504
    :try_start_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1505
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1506
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1508
    :cond_3
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_4
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1510
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1512
    :cond_5
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_6
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1494
    .end local v0    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public showFragment(Landroid/app/Fragment;II)V
    .locals 7
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1304
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_0
    iget-boolean v2, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_5

    .line 1307
    iget-object v2, p1, Landroid/app/Fragment;->mAnimatingShowHide:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    .line 1308
    iget-object v2, p1, Landroid/app/Fragment;->mAnimatingShowHide:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 1311
    :cond_1
    iput-boolean v5, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1312
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1313
    invoke-virtual {p0, p1, p2, v6, p3}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1315
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_2

    .line 1316
    iput-object v0, p1, Landroid/app/Fragment;->mAnimatingShowHide:Landroid/animation/Animator;

    .line 1317
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1318
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v2, v0}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 1320
    move-object v1, p1

    .line 1321
    .local v1, "finalFragment":Landroid/app/Fragment;
    new-instance v2, Landroid/app/FragmentManagerImpl$7;

    invoke-direct {v2, p0, v1}, Landroid/app/FragmentManagerImpl$7;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/Fragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1328
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1330
    .end local v1    # "finalFragment":Landroid/app/Fragment;
    :cond_2
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1332
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_3
    iget-boolean v2, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_4

    .line 1333
    iput-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1335
    :cond_4
    invoke-virtual {p1, v5}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 1303
    :cond_5
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 3

    .prologue
    .line 1172
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    return-void

    .line 1174
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1175
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1176
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 1177
    invoke-virtual {p0, v0}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    .line 1174
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1171
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 697
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 701
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 705
    :goto_0
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 703
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
