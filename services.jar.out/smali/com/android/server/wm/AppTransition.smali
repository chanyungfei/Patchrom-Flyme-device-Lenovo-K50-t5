.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field private static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "AppTransition"

.field private static final THUMBNAIL_APP_TRANSITION_ALPHA_DURATION:I = 0x150

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x7

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x6

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x9

.field public static final TRANSIT_TASK_IN_PLACE:I = 0x11

.field public static final TRANSIT_TASK_OPEN:I = 0x8

.field public static final TRANSIT_TASK_OPEN_BEHIND:I = 0x10

.field public static final TRANSIT_TASK_TO_BACK:I = 0xb

.field public static final TRANSIT_TASK_TO_FRONT:I = 0xa

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0xc

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0xf

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0xe

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0xd


# instance fields
.field private mAppTransitionState:I

.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mH:Landroid/os/Handler;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransition:I

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartOriX:I

.field private mNextAppTransitionStartOriY:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

.field private mNextAppTransitionType:I

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;

.field private final mTouchResponseInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 166
    iput v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 199
    iput v4, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 207
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v3, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 211
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v3, v2, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 210
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    .line 215
    iput v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 220
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 221
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    .line 223
    const v0, 0x10c000e

    .line 222
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 225
    const v0, 0x10c000f

    .line 224
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 227
    const/high16 v1, 0x10e0000

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 229
    const v0, 0x10c0003

    .line 228
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 230
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 242
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 253
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    .line 219
    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1407
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_0

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1409
    :pswitch_0
    const-string/jumbo v0, "APP_STATE_IDLE"

    return-object v0

    .line 1411
    :pswitch_1
    const-string/jumbo v0, "APP_STATE_READY"

    return-object v0

    .line 1413
    :pswitch_2
    const-string/jumbo v0, "APP_STATE_RUNNING"

    return-object v0

    .line 1415
    :pswitch_3
    const-string/jumbo v0, "APP_STATE_TIMEOUT"

    return-object v0

    .line 1407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "transition"    # I

    .prologue
    .line 1360
    packed-switch p0, :pswitch_data_0

    .line 1401
    :pswitch_0
    const-string/jumbo v0, "<UNKNOWN>"

    return-object v0

    .line 1362
    :pswitch_1
    const-string/jumbo v0, "TRANSIT_UNSET"

    return-object v0

    .line 1365
    :pswitch_2
    const-string/jumbo v0, "TRANSIT_NONE"

    return-object v0

    .line 1368
    :pswitch_3
    const-string/jumbo v0, "TRANSIT_ACTIVITY_OPEN"

    return-object v0

    .line 1371
    :pswitch_4
    const-string/jumbo v0, "TRANSIT_ACTIVITY_CLOSE"

    return-object v0

    .line 1374
    :pswitch_5
    const-string/jumbo v0, "TRANSIT_TASK_OPEN"

    return-object v0

    .line 1377
    :pswitch_6
    const-string/jumbo v0, "TRANSIT_TASK_CLOSE"

    return-object v0

    .line 1380
    :pswitch_7
    const-string/jumbo v0, "TRANSIT_TASK_TO_FRONT"

    return-object v0

    .line 1383
    :pswitch_8
    const-string/jumbo v0, "TRANSIT_TASK_TO_BACK"

    return-object v0

    .line 1386
    :pswitch_9
    const-string/jumbo v0, "TRANSIT_WALLPAPER_CLOSE"

    return-object v0

    .line 1389
    :pswitch_a
    const-string/jumbo v0, "TRANSIT_WALLPAPER_OPEN"

    return-object v0

    .line 1392
    :pswitch_b
    const-string/jumbo v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    return-object v0

    .line 1395
    :pswitch_c
    const-string/jumbo v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    return-object v0

    .line 1398
    :pswitch_d
    const-string/jumbo v0, "TRANSIT_TASK_OPEN_BEHIND"

    return-object v0

    .line 1360
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static computePivot(IF)F
    .locals 3
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .prologue
    .line 478
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, p1, v1

    .line 479
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 480
    int-to-float v1, p0

    return v1

    .line 482
    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method private createAnimationForFloatingLocked(IZII)Landroid/view/animation/Animation;
    .locals 18
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    .line 1679
    const/4 v13, 0x0

    .line 1680
    .local v13, "a":Landroid/view/animation/Animation;
    if-eqz p2, :cond_9

    .line 1681
    const/4 v5, 0x6

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    .line 1682
    const/16 v5, 0xc

    move/from16 v0, p1

    if-ne v0, v5, :cond_3

    .line 1683
    :cond_0
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1684
    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    .line 1685
    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    .line 1683
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1686
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1687
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v14, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1688
    .local v14, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1689
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1690
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1691
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1692
    move-object/from16 v13, v16

    .line 1693
    .local v13, "a":Landroid/view/animation/Animation;
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 1694
    const-wide/16 v6, 0x12c

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1810
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v13    # "a":Landroid/view/animation/Animation;
    .end local v14    # "alpha":Landroid/view/animation/Animation;
    .end local v16    # "set":Landroid/view/animation/AnimationSet;
    :cond_1
    :goto_0
    if-eqz v13, :cond_2

    .line 1811
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1812
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1814
    :cond_2
    return-object v13

    .line 1695
    .local v13, "a":Landroid/view/animation/Animation;
    :cond_3
    const/4 v5, 0x7

    move/from16 v0, p1

    if-eq v0, v5, :cond_4

    .line 1696
    const/16 v5, 0xd

    move/from16 v0, p1

    if-ne v0, v5, :cond_5

    .line 1697
    :cond_4
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v14, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1698
    .restart local v14    # "alpha":Landroid/view/animation/Animation;
    move-object v13, v14

    .line 1699
    .local v13, "a":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x12c

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1700
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    goto :goto_0

    .line 1701
    .end local v14    # "alpha":Landroid/view/animation/Animation;
    .local v13, "a":Landroid/view/animation/Animation;
    :cond_5
    const/16 v5, 0x8

    move/from16 v0, p1

    if-eq v0, v5, :cond_6

    .line 1702
    const/16 v5, 0xa

    move/from16 v0, p1

    if-ne v0, v5, :cond_7

    .line 1703
    :cond_6
    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40200000    # 2.5f

    invoke-direct {v15, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 1704
    .local v15, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v14, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1705
    .restart local v14    # "alpha":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/TranslateYAnimation;

    .line 1706
    const/4 v5, 0x0

    const v6, 0x3f99999a    # 1.2f

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1705
    move-object/from16 v0, v17

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateYAnimation;-><init>(IFIF)V

    .line 1707
    .local v17, "translateY":Landroid/view/animation/TranslateYAnimation;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/view/animation/TranslateYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1708
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1709
    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    .line 1710
    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    .line 1708
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1711
    .restart local v4    # "scale":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1712
    .restart local v16    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1713
    invoke-virtual/range {v16 .. v17}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1714
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1715
    move-object/from16 v13, v16

    .line 1716
    .local v13, "a":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x12c

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1717
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 1718
    const-wide/16 v6, 0x190

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    .line 1719
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v14    # "alpha":Landroid/view/animation/Animation;
    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v16    # "set":Landroid/view/animation/AnimationSet;
    .end local v17    # "translateY":Landroid/view/animation/TranslateYAnimation;
    .local v13, "a":Landroid/view/animation/Animation;
    :cond_7
    const/16 v5, 0x9

    move/from16 v0, p1

    if-eq v0, v5, :cond_8

    .line 1720
    const/16 v5, 0xb

    move/from16 v0, p1

    if-ne v0, v5, :cond_1

    .line 1721
    :cond_8
    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40200000    # 2.5f

    invoke-direct {v15, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 1722
    .restart local v15    # "interpolator":Landroid/view/animation/Interpolator;
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v14, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1723
    .restart local v14    # "alpha":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/TranslateYAnimation;

    .line 1724
    const/4 v5, 0x0

    const v6, -0x40666666    # -1.2f

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1723
    move-object/from16 v0, v17

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateYAnimation;-><init>(IFIF)V

    .line 1725
    .restart local v17    # "translateY":Landroid/view/animation/TranslateYAnimation;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/view/animation/TranslateYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1726
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1727
    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    .line 1728
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1726
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1729
    .restart local v4    # "scale":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1730
    .restart local v16    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1731
    invoke-virtual/range {v16 .. v17}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1732
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1733
    move-object/from16 v13, v16

    .line 1734
    .local v13, "a":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x12c

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1735
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 1736
    const-wide/16 v6, 0x190

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    .line 1739
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v14    # "alpha":Landroid/view/animation/Animation;
    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v16    # "set":Landroid/view/animation/AnimationSet;
    .end local v17    # "translateY":Landroid/view/animation/TranslateYAnimation;
    .local v13, "a":Landroid/view/animation/Animation;
    :cond_9
    const/4 v5, 0x6

    move/from16 v0, p1

    if-ne v0, v5, :cond_a

    .line 1740
    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40200000    # 2.5f

    invoke-direct {v15, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 1741
    .restart local v15    # "interpolator":Landroid/view/animation/Interpolator;
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v14, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1742
    .restart local v14    # "alpha":Landroid/view/animation/Animation;
    invoke-virtual {v14, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1743
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1744
    .restart local v16    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v13, v16

    .line 1745
    .local v13, "a":Landroid/view/animation/Animation;
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 1746
    const-wide/16 v6, 0x12c

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    .line 1747
    .end local v14    # "alpha":Landroid/view/animation/Animation;
    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v16    # "set":Landroid/view/animation/AnimationSet;
    .local v13, "a":Landroid/view/animation/Animation;
    :cond_a
    const/4 v5, 0x7

    move/from16 v0, p1

    if-ne v0, v5, :cond_b

    .line 1748
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v14, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1749
    .restart local v14    # "alpha":Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f4ccccd    # 0.8f

    .line 1750
    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    .line 1751
    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    .line 1749
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1752
    .restart local v4    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1753
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1754
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1755
    .restart local v16    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1756
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1757
    move-object/from16 v13, v16

    .line 1758
    .local v13, "a":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x12c

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    .line 1759
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v14    # "alpha":Landroid/view/animation/Animation;
    .end local v16    # "set":Landroid/view/animation/AnimationSet;
    .local v13, "a":Landroid/view/animation/Animation;
    :cond_b
    const/16 v5, 0x8

    move/from16 v0, p1

    if-eq v0, v5, :cond_c

    .line 1760
    const/16 v5, 0xa

    move/from16 v0, p1

    if-ne v0, v5, :cond_d

    .line 1761
    :cond_c
    new-instance v15, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-direct {v15, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 1762
    .restart local v15    # "interpolator":Landroid/view/animation/Interpolator;
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v14, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1763
    .restart local v14    # "alpha":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/TranslateYAnimation;

    .line 1764
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, -0x40666666    # -1.2f

    .line 1763
    move-object/from16 v0, v17

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateYAnimation;-><init>(IFIF)V

    .line 1765
    .restart local v17    # "translateY":Landroid/view/animation/TranslateYAnimation;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/view/animation/TranslateYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1766
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 1767
    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    .line 1768
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1766
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1769
    .restart local v4    # "scale":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1770
    .restart local v16    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1771
    invoke-virtual/range {v16 .. v17}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1772
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1773
    move-object/from16 v13, v16

    .line 1774
    .local v13, "a":Landroid/view/animation/Animation;
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 1775
    const-wide/16 v6, 0x190

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    .line 1776
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v14    # "alpha":Landroid/view/animation/Animation;
    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v16    # "set":Landroid/view/animation/AnimationSet;
    .end local v17    # "translateY":Landroid/view/animation/TranslateYAnimation;
    .local v13, "a":Landroid/view/animation/Animation;
    :cond_d
    const/16 v5, 0x9

    move/from16 v0, p1

    if-eq v0, v5, :cond_e

    .line 1777
    const/16 v5, 0xb

    move/from16 v0, p1

    if-ne v0, v5, :cond_f

    .line 1778
    :cond_e
    new-instance v15, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x40200000    # 2.5f

    invoke-direct {v15, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 1779
    .restart local v15    # "interpolator":Landroid/view/animation/Interpolator;
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v14, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1780
    .restart local v14    # "alpha":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/TranslateYAnimation;

    .line 1781
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x3f99999a    # 1.2f

    .line 1780
    move-object/from16 v0, v17

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateYAnimation;-><init>(IFIF)V

    .line 1782
    .restart local v17    # "translateY":Landroid/view/animation/TranslateYAnimation;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/view/animation/TranslateYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1783
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 1784
    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    .line 1785
    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    .line 1783
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1786
    .restart local v4    # "scale":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1787
    .restart local v16    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1788
    invoke-virtual/range {v16 .. v17}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1789
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1790
    move-object/from16 v13, v16

    .line 1791
    .local v13, "a":Landroid/view/animation/Animation;
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 1792
    const-wide/16 v6, 0x190

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    .line 1793
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v14    # "alpha":Landroid/view/animation/Animation;
    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v16    # "set":Landroid/view/animation/AnimationSet;
    .end local v17    # "translateY":Landroid/view/animation/TranslateYAnimation;
    .local v13, "a":Landroid/view/animation/Animation;
    :cond_f
    const/16 v5, 0xd

    move/from16 v0, p1

    if-ne v0, v5, :cond_1

    .line 1794
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v14, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1795
    .restart local v14    # "alpha":Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 1796
    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    .line 1797
    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    .line 1795
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1798
    .restart local v4    # "scale":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1799
    .restart local v16    # "set":Landroid/view/animation/AnimationSet;
    const-wide/16 v6, 0xc8

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1800
    const-wide/16 v6, 0x177

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1801
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1802
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1803
    move-object/from16 v13, v16

    .line 1804
    .local v13, "a":Landroid/view/animation/Animation;
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    goto/16 :goto_0
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 25
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 545
    if-eqz p2, :cond_1

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 549
    .local v10, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 551
    .local v9, "appHeight":I
    const/16 v18, 0x0

    .line 552
    .local v18, "t":F
    if-lez v9, :cond_0

    .line 553
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v9

    move/from16 v22, v0

    div-float v18, v21, v22

    .line 555
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    move/from16 v21, v0

    .line 556
    int-to-float v0, v9

    move/from16 v22, v0

    const/high16 v23, 0x40e00000    # 7.0f

    div-float v22, v22, v23

    mul-float v22, v22, v18

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    .line 555
    add-int v20, v21, v22

    .line 558
    .local v20, "translationY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v11, v21, v22

    .line 559
    .local v11, "centerX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v12, v21, v22

    .line 562
    .local v12, "centerY":I
    new-instance v13, Landroid/view/animation/ClipRectLRAnimation;

    .line 563
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    sub-int v21, v11, v21

    .line 564
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v11

    .line 565
    const/16 v23, 0x0

    .line 562
    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v13, v0, v1, v2, v10}, Landroid/view/animation/ClipRectLRAnimation;-><init>(IIII)V

    .line 566
    .local v13, "clipAnimLR":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 567
    const-wide/16 v22, 0x86

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 568
    new-instance v14, Landroid/view/animation/ClipRectTBAnimation;

    .line 569
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    sub-int v21, v12, v21

    sub-int v21, v21, v20

    .line 570
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v12

    sub-int v22, v22, v20

    .line 571
    const/16 v23, 0x0

    .line 568
    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v14, v0, v1, v2, v9}, Landroid/view/animation/ClipRectTBAnimation;-><init>(IIII)V

    .line 572
    .local v14, "clipAnimTB":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 573
    const-wide/16 v22, 0x150

    move-wide/from16 v0, v22

    invoke-virtual {v14, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 575
    new-instance v19, Landroid/view/animation/TranslateYAnimation;

    .line 576
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 575
    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v24

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateYAnimation;-><init>(IFIF)V

    .line 577
    .local v19, "translateY":Landroid/view/animation/TranslateYAnimation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 578
    const-wide/16 v22, 0x150

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateYAnimation;->setDuration(J)V

    .line 581
    const/16 v7, 0x54

    .line 582
    .local v7, "alphaDuration":I
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f000000    # 0.5f

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 583
    .local v6, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v22, 0x54

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 586
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-direct {v15, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 587
    .local v15, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 588
    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 589
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 590
    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 591
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 592
    invoke-virtual {v15, v10, v9, v10, v9}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 593
    move-object v8, v15

    .line 621
    .end local v6    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v7    # "alphaDuration":I
    .end local v9    # "appHeight":I
    .end local v10    # "appWidth":I
    .end local v11    # "centerX":I
    .end local v12    # "centerY":I
    .end local v13    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v14    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v15    # "set":Landroid/view/animation/AnimationSet;
    .end local v18    # "t":F
    .end local v19    # "translateY":Landroid/view/animation/TranslateYAnimation;
    .end local v20    # "translationY":I
    .local v8, "anim":Landroid/view/animation/Animation;
    :goto_0
    return-object v8

    .line 596
    .end local v8    # "anim":Landroid/view/animation/Animation;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 602
    const-wide/16 v16, 0x150

    .line 605
    .local v16, "duration":J
    :goto_1
    const/16 v21, 0xe

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 606
    const/16 v21, 0xf

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 611
    :cond_2
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 612
    .restart local v8    # "anim":Landroid/view/animation/Animation;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 617
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 618
    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 619
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_0

    .line 599
    .end local v8    # "anim":Landroid/view/animation/Animation;
    .end local v16    # "duration":J
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 600
    .restart local v16    # "duration":J
    goto :goto_1

    .line 615
    :cond_3
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v8    # "anim":Landroid/view/animation/Animation;
    goto :goto_2

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .locals 17
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getSingleHandWinScale()F

    move-result v16

    .line 489
    .local v16, "shScale":F
    move/from16 v0, p3

    int-to-float v6, v0

    mul-float v6, v6, v16

    float-to-int v0, v6

    move/from16 p3, v0

    .line 490
    move/from16 v0, p4

    int-to-float v6, v0

    mul-float v6, v6, v16

    float-to-int v0, v6

    move/from16 p4, v0

    .line 492
    const/4 v11, 0x0

    .line 493
    .local v11, "a":Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 495
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v6, v6

    move/from16 v0, p3

    int-to-float v8, v0

    div-float v5, v6, v8

    .line 496
    .local v5, "scaleW":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v6, v6

    move/from16 v0, p4

    int-to-float v8, v0

    div-float v7, v6, v8

    .line 497
    .local v7, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 498
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    .line 499
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    .line 497
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 500
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 502
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v12, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 503
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 505
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v13, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 506
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 507
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 508
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 509
    move-object v11, v13

    .line 527
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .local v11, "a":Landroid/view/animation/Animation;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 533
    const-wide/16 v14, 0x150

    .line 536
    .local v14, "duration":J
    :goto_1
    invoke-virtual {v11, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 537
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 538
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 539
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 540
    return-object v11

    .line 510
    .end local v14    # "duration":J
    .local v11, "a":Landroid/view/animation/Animation;
    :cond_0
    const/16 v6, 0xe

    move/from16 v0, p1

    if-eq v0, v6, :cond_1

    .line 511
    const/16 v6, 0xf

    move/from16 v0, p1

    if-ne v0, v6, :cond_2

    .line 516
    :cond_1
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 517
    .local v11, "a":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    goto :goto_0

    .line 520
    .local v11, "a":Landroid/view/animation/Animation;
    :cond_2
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v11, "a":Landroid/view/animation/Animation;
    goto :goto_0

    .line 530
    :pswitch_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v14, v6

    .line 531
    .restart local v14    # "duration":J
    goto :goto_1

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 6
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, 0x0

    .line 388
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v2, :cond_0

    const-string/jumbo v4, "AppTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Loading animations: layout params pkg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 389
    if-eqz p1, :cond_3

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 388
    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 390
    const-string/jumbo v5, " resId=0x"

    .line 388
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 390
    if-eqz p1, :cond_4

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    if-eqz p1, :cond_6

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_6

    .line 395
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 396
    .local v0, "packageName":Ljava/lang/String;
    :goto_2
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 397
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_1

    .line 398
    const-string/jumbo v0, "android"

    .line 400
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "AppTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Loading animations: picked package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_2
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    .line 403
    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 402
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    return-object v2

    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_3
    move-object v2, v3

    .line 389
    goto :goto_0

    :cond_4
    move-object v2, v3

    .line 390
    goto :goto_1

    .line 395
    :cond_5
    const-string/jumbo v0, "android"

    .restart local v0    # "packageName":Ljava/lang/String;
    goto :goto_2

    .line 405
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_6
    return-object v3
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 409
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loading animations: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 410
    const-string/jumbo v2, " resId=0x"

    .line 409
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 410
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    if-eqz p1, :cond_3

    .line 412
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_1

    .line 413
    const-string/jumbo p1, "android"

    .line 415
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loading animations: picked package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_2
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    .line 418
    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 417
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    return-object v0

    .line 420
    :cond_3
    return-object v3
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 454
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 455
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 456
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 457
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 458
    move v0, p2

    .line 461
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 462
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 464
    :cond_1
    return-object v3
.end method

.method private notifyAppTransitionCancelledLocked()V
    .locals 2

    .prologue
    .line 374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked()V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_0
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .locals 2

    .prologue
    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_0
    return-void
.end method

.method private notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "openToken"    # Landroid/os/IBinder;
    .param p2, "closeToken"    # Landroid/os/IBinder;
    .param p3, "openAnimation"    # Landroid/view/animation/Animation;
    .param p4, "closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_0
    return-void
.end method

.method private transitTypeToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1422
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1424
    :pswitch_0
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_NONE"

    return-object v0

    .line 1426
    :pswitch_1
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    return-object v0

    .line 1428
    :pswitch_2
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    return-object v0

    .line 1430
    :pswitch_3
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    return-object v0

    .line 1432
    :pswitch_4
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    return-object v0

    .line 1434
    :pswitch_5
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    return-object v0

    .line 1436
    :pswitch_6
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    return-object v0

    .line 1438
    :pswitch_7
    const-string/jumbo v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    return-object v0

    .line 1422
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method canSkipFirstFrame()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1061
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v2, v0, :cond_1

    .line 1062
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    .line 1063
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 1061
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1063
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1061
    goto :goto_0
.end method

.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 345
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 346
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 347
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 344
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 21
    .param p1, "thumbTransitState"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "orientation"    # I
    .param p5, "transit"    # I
    .param p6, "containingFrame"    # Landroid/graphics/Rect;
    .param p7, "contentInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 755
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    move/from16 v17, v0

    .line 756
    .local v17, "thumbWidthI":I
    if-lez v17, :cond_0

    .end local v17    # "thumbWidthI":I
    :goto_0
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 757
    .local v16, "thumbWidth":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 758
    .local v15, "thumbHeightI":I
    if-lez v15, :cond_1

    .end local v15    # "thumbHeightI":I
    :goto_1
    int-to-float v14, v15

    .line 760
    .local v14, "thumbHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getSingleHandWinScale()F

    move-result v13

    .line 761
    .local v13, "shScale":F
    move/from16 v0, p2

    int-to-float v3, v0

    mul-float/2addr v3, v13

    float-to-int v0, v3

    move/from16 p2, v0

    .line 762
    move/from16 v0, p3

    int-to-float v3, v0

    mul-float/2addr v3, v13

    float-to-int v0, v3

    move/from16 p3, v0

    .line 765
    const/high16 v2, 0x3f800000    # 1.0f

    .line 766
    .local v2, "scale":F
    const/4 v11, 0x0

    .line 768
    .local v11, "scaledTopDecor":I
    packed-switch p1, :pswitch_data_0

    .line 868
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Invalid thumbnail transition state"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 756
    .end local v2    # "scale":F
    .end local v11    # "scaledTopDecor":I
    .end local v13    # "shScale":F
    .end local v14    # "thumbHeight":F
    .end local v16    # "thumbWidth":F
    .restart local v17    # "thumbWidthI":I
    :cond_0
    const/16 v17, 0x1

    goto :goto_0

    .line 758
    .end local v17    # "thumbWidthI":I
    .restart local v15    # "thumbHeightI":I
    .restart local v16    # "thumbWidth":F
    :cond_1
    const/4 v15, 0x1

    goto :goto_1

    .line 771
    .end local v15    # "thumbHeightI":I
    .restart local v2    # "scale":F
    .restart local v11    # "scaledTopDecor":I
    .restart local v13    # "shScale":F
    .restart local v14    # "thumbHeight":F
    :pswitch_0
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_2

    .line 773
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v2, v16, v3

    .line 774
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    .line 775
    div-float v3, v14, v2

    float-to-int v0, v3

    move/from16 v19, v0

    .line 776
    .local v19, "unscaledThumbHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v5, v5, v19

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 778
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 789
    .end local v19    # "unscaledThumbHeight":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 793
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 794
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v6, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v6

    .line 795
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v8, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v7

    move v4, v2

    .line 793
    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 796
    .local v1, "scaleAnim":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v10, v3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 797
    .local v10, "clipAnim":Landroid/view/animation/Animation;
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    neg-int v6, v11

    int-to-float v6, v6

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v5, v6, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 799
    .local v18, "translateAnim":Landroid/view/animation/Animation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 800
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 801
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 802
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 803
    move-object v4, v12

    .line 871
    .end local v1    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v10    # "clipAnim":Landroid/view/animation/Animation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .end local v18    # "translateAnim":Landroid/view/animation/Animation;
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_3
    const/16 v3, 0x150

    .line 872
    const/16 v5, 0x150

    .line 871
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 874
    .local v7, "duration":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v3, p0

    move/from16 v5, p2

    move/from16 v6, p3

    .line 873
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 781
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v7    # "duration":I
    :cond_2
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v3

    int-to-float v3, v3

    div-float v2, v14, v3

    .line 782
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    .line 783
    div-float v3, v16, v2

    float-to-int v0, v3

    move/from16 v20, v0

    .line 784
    .local v20, "unscaledThumbWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v5, v5, v20

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 808
    .end local v20    # "unscaledThumbWidth":I
    :pswitch_1
    const/16 v3, 0xe

    move/from16 v0, p5

    if-ne v0, v3, :cond_3

    .line 811
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    .line 813
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_3
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    .line 819
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    const/16 v3, 0xe

    move/from16 v0, p5

    if-ne v0, v3, :cond_4

    .line 822
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    .line 824
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_4
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_3

    .line 830
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_3
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    .line 832
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v2, v16, v3

    .line 833
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    .line 834
    div-float v3, v14, v2

    float-to-int v0, v3

    move/from16 v19, v0

    .line 835
    .restart local v19    # "unscaledThumbHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v5, v5, v19

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 848
    .end local v19    # "unscaledThumbHeight":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 850
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 852
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 853
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v3, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v8

    .line 854
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v3, v2}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object v3, v1

    move v5, v2

    move v7, v2

    .line 852
    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 855
    .restart local v1    # "scaleAnim":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v10, v3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 856
    .restart local v10    # "clipAnim":Landroid/view/animation/Animation;
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    neg-int v8, v11

    int-to-float v8, v8

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v5, v6, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 858
    .restart local v18    # "translateAnim":Landroid/view/animation/Animation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 859
    .restart local v12    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 860
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 861
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 863
    move-object v4, v12

    .line 864
    .restart local v4    # "a":Landroid/view/animation/Animation;
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    goto/16 :goto_3

    .line 840
    .end local v1    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v10    # "clipAnim":Landroid/view/animation/Animation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .end local v18    # "translateAnim":Landroid/view/animation/Animation;
    :cond_5
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v3

    int-to-float v3, v3

    div-float v2, v14, v3

    .line 841
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    .line 842
    div-float v3, v16, v2

    float-to-int v0, v3

    move/from16 v20, v0

    .line 843
    .restart local v20    # "unscaledThumbWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 844
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 845
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v5, v5, v20

    iput v5, v3, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .line 768
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method createThumbnailAspectScaleAnimationLocked(IIII)Landroid/view/animation/Animation;
    .locals 22
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "deviceWidth"    # I
    .param p4, "transit"    # I

    .prologue
    .line 685
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 686
    .local v17, "thumbWidthI":I
    if-lez v17, :cond_0

    .end local v17    # "thumbWidthI":I
    :goto_0
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 687
    .local v16, "thumbWidth":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 688
    .local v15, "thumbHeightI":I
    if-lez v15, :cond_1

    .end local v15    # "thumbHeightI":I
    :goto_1
    int-to-float v14, v15

    .line 690
    .local v14, "thumbHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getSingleHandWinScale()F

    move-result v13

    .line 691
    .local v13, "shScale":F
    move/from16 v0, p1

    int-to-float v3, v0

    mul-float/2addr v3, v13

    float-to-int v0, v3

    move/from16 p1, v0

    .line 692
    move/from16 v0, p2

    int-to-float v3, v0

    mul-float/2addr v3, v13

    float-to-int v0, v3

    move/from16 p2, v0

    .line 695
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v4, v3, v16

    .line 696
    .local v4, "scaleW":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v21, v0

    .line 697
    .local v21, "unscaledWidth":F
    mul-float v19, v14, v4

    .line 698
    .local v19, "unscaledHeight":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    int-to-float v3, v3

    sub-float v5, v19, v14

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sub-float v20, v3, v5

    .line 699
    .local v20, "unscaledStartY":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v3, :cond_2

    .line 701
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 702
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v16, v5

    add-float v7, v3, v5

    .line 703
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v14, v5

    add-float v8, v3, v5

    .line 701
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move v6, v4

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 704
    .local v2, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 705
    const-wide/16 v8, 0x150

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 706
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v11, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 707
    .local v11, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 708
    const-wide/16 v8, 0x150

    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 709
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v0, v20

    neg-float v8, v0

    .line 710
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    .line 709
    add-float/2addr v8, v9

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 711
    .local v18, "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 712
    const-wide/16 v8, 0x150

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 715
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 716
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 717
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 718
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 719
    move-object v6, v12

    .line 744
    .local v6, "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    .line 743
    const/4 v9, 0x0

    move-object/from16 v5, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 686
    .end local v2    # "scale":Landroid/view/animation/Animation;
    .end local v4    # "scaleW":F
    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v11    # "alpha":Landroid/view/animation/Animation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    .end local v13    # "shScale":F
    .end local v14    # "thumbHeight":F
    .end local v16    # "thumbWidth":F
    .end local v18    # "translate":Landroid/view/animation/Animation;
    .end local v19    # "unscaledHeight":F
    .end local v20    # "unscaledStartY":F
    .end local v21    # "unscaledWidth":F
    .restart local v17    # "thumbWidthI":I
    :cond_0
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 688
    .end local v17    # "thumbWidthI":I
    .restart local v15    # "thumbHeightI":I
    .restart local v16    # "thumbWidth":F
    :cond_1
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 722
    .end local v15    # "thumbHeightI":I
    .restart local v4    # "scaleW":F
    .restart local v13    # "shScale":F
    .restart local v14    # "thumbHeight":F
    .restart local v19    # "unscaledHeight":F
    .restart local v20    # "unscaledStartY":F
    .restart local v21    # "unscaledWidth":F
    :cond_2
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 723
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v16, v5

    add-float v8, v3, v5

    .line 724
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v14, v5

    add-float v9, v3, v5

    .line 722
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, v2

    move v6, v4

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 725
    .restart local v2    # "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 726
    const-wide/16 v8, 0x150

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 727
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v11, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 728
    .restart local v11    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 729
    const-wide/16 v8, 0x150

    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 730
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v0, v20

    neg-float v7, v0

    .line 731
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    .line 730
    add-float/2addr v7, v8

    .line 731
    const/4 v8, 0x0

    .line 730
    move-object/from16 v0, v18

    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 732
    .restart local v18    # "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 733
    const-wide/16 v8, 0x150

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 736
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 737
    .restart local v12    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 738
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 739
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 740
    move-object v6, v12

    .restart local v6    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_2
.end method

.method createThumbnailEnterExitAnimationLocked(IIII)Landroid/view/animation/Animation;
    .locals 23
    .param p1, "thumbTransitState"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .prologue
    .line 977
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 978
    .local v22, "thumbWidthI":I
    if-lez v22, :cond_0

    .end local v22    # "thumbWidthI":I
    :goto_0
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v21, v0

    .line 979
    .local v21, "thumbWidth":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 980
    .local v20, "thumbHeightI":I
    if-lez v20, :cond_1

    .end local v20    # "thumbHeightI":I
    :goto_1
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    .line 982
    .local v19, "thumbHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getSingleHandWinScale()F

    move-result v18

    .line 983
    .local v18, "shScale":F
    move/from16 v0, p2

    int-to-float v6, v0

    mul-float v6, v6, v18

    float-to-int v0, v6

    move/from16 p2, v0

    .line 984
    move/from16 v0, p3

    int-to-float v6, v0

    mul-float v6, v6, v18

    float-to-int v0, v6

    move/from16 p3, v0

    .line 987
    packed-switch p1, :pswitch_data_0

    .line 1049
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Invalid thumbnail transition state"

    invoke-direct {v6, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 978
    .end local v18    # "shScale":F
    .end local v19    # "thumbHeight":F
    .end local v21    # "thumbWidth":F
    .restart local v22    # "thumbWidthI":I
    :cond_0
    const/16 v22, 0x1

    goto :goto_0

    .line 980
    .end local v22    # "thumbWidthI":I
    .restart local v20    # "thumbHeightI":I
    .restart local v21    # "thumbWidth":F
    :cond_1
    const/16 v20, 0x1

    goto :goto_1

    .line 990
    .end local v20    # "thumbHeightI":I
    .restart local v18    # "shScale":F
    .restart local v19    # "thumbHeight":F
    :pswitch_0
    move/from16 v0, p2

    int-to-float v6, v0

    div-float v5, v21, v6

    .line 991
    .local v5, "scaleW":F
    move/from16 v0, p3

    int-to-float v6, v0

    div-float v7, v19, v6

    .line 997
    .local v7, "scaleH":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartOriX:I

    invoke-static {v6, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v6

    .line 998
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartOriY:I

    invoke-static {v9, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    .line 996
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/android/server/wm/AppTransition;->switchToSinlehandPoint(FF)Landroid/graphics/Point;

    move-result-object v16

    .line 999
    .local v16, "mPivotPoint":Landroid/graphics/Point;
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1000
    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    .line 1001
    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    .line 999
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1052
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .end local v16    # "mPivotPoint":Landroid/graphics/Point;
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v6

    return-object v6

    .line 1007
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_1
    const/16 v6, 0xe

    move/from16 v0, p4

    if-ne v0, v6, :cond_2

    .line 1011
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 1014
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_2
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 1021
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1022
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 1026
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_3
    move/from16 v0, p2

    int-to-float v6, v0

    div-float v5, v21, v6

    .line 1027
    .restart local v5    # "scaleW":F
    move/from16 v0, p3

    int-to-float v6, v0

    div-float v7, v19, v6

    .line 1033
    .restart local v7    # "scaleH":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartOriX:I

    invoke-static {v6, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v6

    .line 1034
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartOriY:I

    invoke-static {v9, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    .line 1032
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/android/server/wm/AppTransition;->switchToSinlehandPoint(FF)Landroid/graphics/Point;

    move-result-object v16

    .line 1035
    .restart local v16    # "mPivotPoint":Landroid/graphics/Point;
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    .line 1036
    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-float v13, v6

    .line 1037
    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-float v14, v6

    move v10, v5

    move v12, v7

    .line 1035
    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1039
    .local v8, "scale":Landroid/view/animation/Animation;
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v15, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1041
    .local v15, "alpha":Landroid/view/animation/Animation;
    new-instance v17, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1042
    .local v17, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1043
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1044
    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1045
    move-object/from16 v4, v17

    .line 1046
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_2

    .line 987
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method createThumbnailScaleAnimationLocked(III)Landroid/view/animation/Animation;
    .locals 20
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "transit"    # I

    .prologue
    .line 883
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 884
    .local v19, "thumbWidthI":I
    if-lez v19, :cond_0

    .end local v19    # "thumbWidthI":I
    :goto_0
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v18, v0

    .line 885
    .local v18, "thumbWidth":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 886
    .local v17, "thumbHeightI":I
    if-lez v17, :cond_1

    .end local v17    # "thumbHeightI":I
    :goto_1
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 888
    .local v16, "thumbHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getSingleHandWinScale()F

    move-result v15

    .line 889
    .local v15, "shScale":F
    move/from16 v0, p1

    int-to-float v7, v0

    mul-float/2addr v7, v15

    float-to-int v0, v7

    move/from16 p1, v0

    .line 890
    move/from16 v0, p2

    int-to-float v7, v0

    mul-float/2addr v7, v15

    float-to-int v0, v7

    move/from16 p2, v0

    .line 892
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_2

    .line 894
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v18

    .line 895
    .local v6, "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v16

    .line 901
    .local v8, "scaleH":F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartOriX:I

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v6

    invoke-static {v7, v9}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v7

    .line 902
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartOriY:I

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v8

    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    .line 900
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/wm/AppTransition;->switchToSinlehandPoint(FF)Landroid/graphics/Point;

    move-result-object v13

    .line 903
    .local v13, "mPivotPoint":Landroid/graphics/Point;
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 904
    iget v9, v13, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    .line 905
    iget v10, v13, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    .line 903
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 907
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 909
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v12, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 910
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 913
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v14, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 914
    .local v14, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v14, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 915
    invoke-virtual {v14, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 916
    move-object v5, v14

    .line 934
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v14    # "set":Landroid/view/animation/AnimationSet;
    .local v5, "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v7

    return-object v7

    .line 884
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v13    # "mPivotPoint":Landroid/graphics/Point;
    .end local v15    # "shScale":F
    .end local v16    # "thumbHeight":F
    .end local v18    # "thumbWidth":F
    .restart local v19    # "thumbWidthI":I
    :cond_0
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 886
    .end local v19    # "thumbWidthI":I
    .restart local v17    # "thumbHeightI":I
    .restart local v18    # "thumbWidth":F
    :cond_1
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 919
    .end local v17    # "thumbHeightI":I
    .restart local v15    # "shScale":F
    .restart local v16    # "thumbHeight":F
    :cond_2
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v18

    .line 920
    .restart local v6    # "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v16

    .line 926
    .restart local v8    # "scaleH":F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartOriX:I

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v6

    invoke-static {v7, v9}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v7

    .line 927
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartOriY:I

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v8

    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    .line 925
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/wm/AppTransition;->switchToSinlehandPoint(FF)Landroid/graphics/Point;

    move-result-object v13

    .line 928
    .restart local v13    # "mPivotPoint":Landroid/graphics/Point;
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 929
    iget v10, v13, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    .line 930
    iget v11, v13, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    .line 928
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1446
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1447
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_0

    .line 1449
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1450
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 1495
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    .line 1496
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1497
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1445
    :cond_1
    return-void

    .line 1454
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1457
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1458
    const-string/jumbo v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1459
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1462
    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1464
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1465
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1468
    :pswitch_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1469
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1470
    const-string/jumbo v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1471
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1472
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1473
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1474
    const-string/jumbo v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1475
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_0

    .line 1481
    :pswitch_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1483
    const-string/jumbo v0, " mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1484
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1485
    const-string/jumbo v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1486
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1487
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1488
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1489
    const-string/jumbo v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1490
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1491
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1492
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_0

    .line 1452
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method freeze()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    .line 352
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 353
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 354
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked()V

    .line 350
    return-void
.end method

.method getAppTransition()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getNextAppTransitionThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getSingleHandWinScale()F
    .locals 5

    .prologue
    .line 956
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 957
    .local v1, "mAm":Landroid/app/IActivityManager;
    invoke-interface {v1}, Landroid/app/IActivityManager;->getGlobalTransform()Landroid/view/animation/Transformation;

    move-result-object v3

    .line 958
    .local v3, "mTransformation":Landroid/view/animation/Transformation;
    if-eqz v3, :cond_0

    .line 959
    const/16 v4, 0x9

    new-array v2, v4, [F

    .line 960
    .local v2, "mTmpFloats":[F
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 961
    const/4 v4, 0x0

    aget v4, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 963
    .end local v1    # "mAm":Landroid/app/IActivityManager;
    .end local v2    # "mTmpFloats":[F
    .end local v3    # "mTransformation":Landroid/view/animation/Transformation;
    :catch_0
    move-exception v0

    .line 965
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    return v4
.end method

.method getStartingX()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    return v0
.end method

.method getStartingY()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    return v0
.end method

.method getThumbnailTransitionState(Z)I
    .locals 1
    .param p1, "enter"    # Z

    .prologue
    .line 663
    if-eqz p1, :cond_1

    .line 664
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_0

    .line 665
    const/4 v0, 0x0

    return v0

    .line 667
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 670
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_2

    .line 671
    const/4 v0, 0x1

    return v0

    .line 673
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method goodToGo(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;)V
    .locals 4
    .param p1, "openingAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "closingAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;

    .prologue
    const/4 v0, 0x0

    .line 335
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 336
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 338
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v3, v1

    .line 339
    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v2, v1

    .line 340
    :goto_1
    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 341
    :goto_2
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 337
    :cond_0
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 334
    return-void

    :cond_1
    move-object v3, v0

    .line 338
    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 339
    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 340
    goto :goto_2
.end method

.method isNextThumbnailTransitionAspectScaled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 308
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 309
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v0

    .line 309
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNextThumbnailTransitionScaleUp()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 278
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v1, v0, :cond_0

    .line 279
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRunning()Z
    .locals 2

    .prologue
    .line 287
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTimeout()Z
    .locals 2

    .prologue
    .line 295
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionEqual(I)Z
    .locals 1
    .param p1, "transit"    # I

    .prologue
    .line 266
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionNone()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 262
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isTransitionSet()Z
    .locals 2

    .prologue
    .line 258
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .locals 15
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I
    .param p6, "orientation"    # I
    .param p7, "containingFrame"    # Landroid/graphics/Rect;
    .param p8, "contentInsets"    # Landroid/graphics/Rect;
    .param p9, "appFrame"    # Landroid/graphics/Rect;
    .param p10, "isVoiceInteraction"    # Z

    .prologue
    .line 1070
    if-eqz p10, :cond_4

    const/4 v4, 0x6

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    .line 1071
    const/16 v4, 0x8

    move/from16 v0, p2

    if-ne v0, v4, :cond_3

    .line 1073
    :cond_0
    if-eqz p3, :cond_7

    .line 1074
    const v4, 0x10a007e

    .line 1073
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v4}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v12

    .line 1076
    .local v12, "a":Landroid/view/animation/Animation;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v4, :cond_2

    :cond_1
    const-string/jumbo v4, "AppTransition"

    .line 1077
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applyAnimation voice: anim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1078
    const-string/jumbo v6, " transit="

    .line 1077
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1078
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v6

    .line 1077
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1079
    const-string/jumbo v6, " isEntrance="

    .line 1077
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1079
    const-string/jumbo v6, " Callers="

    .line 1077
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1079
    const/4 v6, 0x3

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    .line 1077
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1076
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_2
    :goto_1
    return-object v12

    .line 1072
    :cond_3
    const/16 v4, 0xa

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    .line 1080
    :cond_4
    if-eqz p10, :cond_9

    const/4 v4, 0x7

    move/from16 v0, p2

    if-eq v0, v4, :cond_5

    .line 1081
    const/16 v4, 0x9

    move/from16 v0, p2

    if-ne v0, v4, :cond_8

    .line 1083
    :cond_5
    if-eqz p3, :cond_b

    .line 1084
    const v4, 0x10a007c

    .line 1083
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v4}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v12

    .line 1086
    .restart local v12    # "a":Landroid/view/animation/Animation;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v4, :cond_6

    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v4, :cond_2

    :cond_6
    const-string/jumbo v4, "AppTransition"

    .line 1087
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applyAnimation voice: anim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1088
    const-string/jumbo v6, " transit="

    .line 1087
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1088
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v6

    .line 1087
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1089
    const-string/jumbo v6, " isEntrance="

    .line 1087
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1089
    const-string/jumbo v6, " Callers="

    .line 1087
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1089
    const/4 v6, 0x3

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    .line 1087
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1086
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1075
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_7
    const v4, 0x10a007f

    goto/16 :goto_0

    .line 1082
    :cond_8
    const/16 v4, 0xb

    move/from16 v0, p2

    if-eq v0, v4, :cond_5

    .line 1090
    :cond_9
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 1091
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_c

    .line 1092
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1091
    :goto_3
    invoke-direct {p0, v5, v4}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v12

    .line 1093
    .restart local v12    # "a":Landroid/view/animation/Animation;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v4, :cond_a

    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v4, :cond_2

    :cond_a
    const-string/jumbo v4, "AppTransition"

    .line 1094
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applyAnimation: anim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1095
    const-string/jumbo v6, " nextAppTransition=ANIM_CUSTOM"

    .line 1094
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1096
    const-string/jumbo v6, " transit="

    .line 1094
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1096
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v6

    .line 1094
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1096
    const-string/jumbo v6, " isEntrance="

    .line 1094
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1097
    const-string/jumbo v6, " Callers="

    .line 1094
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1097
    const/4 v6, 0x3

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    .line 1094
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1093
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1085
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_b
    const v4, 0x10a007d

    goto/16 :goto_2

    .line 1092
    :cond_c
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_3

    .line 1098
    :cond_d
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_f

    .line 1099
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v12

    .line 1100
    .restart local v12    # "a":Landroid/view/animation/Animation;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v4, :cond_e

    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v4, :cond_2

    :cond_e
    const-string/jumbo v4, "AppTransition"

    .line 1101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applyAnimation: anim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1102
    const-string/jumbo v6, " nextAppTransition=ANIM_CUSTOM_IN_PLACE"

    .line 1101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1103
    const-string/jumbo v6, " transit="

    .line 1101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1103
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v6

    .line 1101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1104
    const-string/jumbo v6, " Callers="

    .line 1101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1104
    const/4 v6, 0x3

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    .line 1101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1100
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1105
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_f
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_11

    .line 1106
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p9

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v12

    .line 1107
    .restart local v12    # "a":Landroid/view/animation/Animation;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v4, :cond_10

    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v4, :cond_2

    :cond_10
    const-string/jumbo v4, "AppTransition"

    .line 1108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applyAnimation: anim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1109
    const-string/jumbo v6, " nextAppTransition=ANIM_CLIP_REVEAL"

    .line 1108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1110
    const-string/jumbo v6, " Callers="

    .line 1108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1110
    const/4 v6, 0x3

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    .line 1108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1107
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1111
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_11
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_13

    .line 1112
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v12

    .line 1113
    .restart local v12    # "a":Landroid/view/animation/Animation;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v4, :cond_12

    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v4, :cond_2

    :cond_12
    const-string/jumbo v4, "AppTransition"

    .line 1114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applyAnimation: anim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1115
    const-string/jumbo v6, " nextAppTransition=ANIM_SCALE_UP"

    .line 1114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1116
    const-string/jumbo v6, " transit="

    .line 1114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1116
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v6

    .line 1114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1116
    const-string/jumbo v6, " isEntrance="

    .line 1114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1117
    const-string/jumbo v6, " Callers="

    .line 1114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1117
    const/4 v6, 0x3

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    .line 1114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1113
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1118
    .end local v12    # "a":Landroid/view/animation/Animation;
    :cond_13
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_14

    .line 1119
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_18

    .line 1121
    :cond_14
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_16

    const/4 v4, 0x1

    .line 1120
    :goto_4
    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1122
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v4

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p2

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(IIII)Landroid/view/animation/Animation;

    move-result-object v12

    .line 1124
    .restart local v12    # "a":Landroid/view/animation/Animation;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v4, :cond_15

    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v4, :cond_2

    .line 1125
    :cond_15
    iget-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v4, :cond_17

    .line 1126
    const-string/jumbo v14, "ANIM_THUMBNAIL_SCALE_UP"

    .line 1127
    .local v14, "animName":Ljava/lang/String;
    :goto_5
    const-string/jumbo v4, "AppTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applyAnimation: anim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1128
    const-string/jumbo v6, " nextAppTransition="

    .line 1127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1129
    const-string/jumbo v6, " transit="

    .line 1127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1129
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v6

    .line 1127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1129
    const-string/jumbo v6, " isEntrance="

    .line 1127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1130
    const-string/jumbo v6, " Callers="

    .line 1127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1130
    const/4 v6, 0x3

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    .line 1127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1121
    .end local v12    # "a":Landroid/view/animation/Animation;
    .end local v14    # "animName":Ljava/lang/String;
    :cond_16
    const/4 v4, 0x0

    goto :goto_4

    .line 1126
    .restart local v12    # "a":Landroid/view/animation/Animation;
    :cond_17
    const-string/jumbo v14, "ANIM_THUMBNAIL_SCALE_DOWN"

    .restart local v14    # "animName":Ljava/lang/String;
    goto :goto_5

    .line 1132
    .end local v12    # "a":Landroid/view/animation/Animation;
    .end local v14    # "animName":Ljava/lang/String;
    :cond_18
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_19

    .line 1133
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1d

    .line 1135
    :cond_19
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1b

    const/4 v4, 0x1

    .line 1134
    :goto_6
    iput-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1137
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v5

    move-object v4, p0

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p2

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 1136
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v12

    .line 1139
    .restart local v12    # "a":Landroid/view/animation/Animation;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v4, :cond_1a

    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v4, :cond_2

    .line 1140
    :cond_1a
    iget-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v4, :cond_1c

    .line 1141
    const-string/jumbo v14, "ANIM_THUMBNAIL_ASPECT_SCALE_UP"

    .line 1142
    .restart local v14    # "animName":Ljava/lang/String;
    :goto_7
    const-string/jumbo v4, "AppTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applyAnimation: anim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1143
    const-string/jumbo v6, " nextAppTransition="

    .line 1142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1144
    const-string/jumbo v6, " transit="

    .line 1142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1144
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v6

    .line 1142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1144
    const-string/jumbo v6, " isEntrance="

    .line 1142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1145
    const-string/jumbo v6, " Callers="

    .line 1142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1145
    const/4 v6, 0x3

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    .line 1142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1135
    .end local v12    # "a":Landroid/view/animation/Animation;
    .end local v14    # "animName":Ljava/lang/String;
    :cond_1b
    const/4 v4, 0x0

    goto :goto_6

    .line 1141
    .restart local v12    # "a":Landroid/view/animation/Animation;
    :cond_1c
    const-string/jumbo v14, "ANIM_THUMBNAIL_ASPECT_SCALE_DOWN"

    .restart local v14    # "animName":Ljava/lang/String;
    goto :goto_7

    .line 1148
    .end local v12    # "a":Landroid/view/animation/Animation;
    .end local v14    # "animName":Ljava/lang/String;
    :cond_1d
    const/4 v13, 0x0

    .line 1149
    .local v13, "animAttr":I
    packed-switch p2, :pswitch_data_0

    .line 1205
    :goto_8
    if-eqz v13, :cond_2a

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v13}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v12

    .line 1206
    :goto_9
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v4, :cond_1e

    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v4, :cond_2

    :cond_1e
    const-string/jumbo v4, "AppTransition"

    .line 1207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applyAnimation: anim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1209
    const-string/jumbo v6, " animAttr=0x"

    .line 1207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1209
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 1207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1210
    const-string/jumbo v6, " transit="

    .line 1207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1210
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v6

    .line 1207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1210
    const-string/jumbo v6, " isEntrance="

    .line 1207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1211
    const-string/jumbo v6, " Callers="

    .line 1207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1211
    const/4 v6, 0x3

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    .line 1207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1206
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1151
    :pswitch_0
    if-eqz p3, :cond_1f

    .line 1152
    const/4 v13, 0x4

    goto :goto_8

    .line 1153
    :cond_1f
    const/4 v13, 0x5

    goto :goto_8

    .line 1156
    :pswitch_1
    if-eqz p3, :cond_20

    .line 1157
    const/4 v13, 0x6

    goto :goto_8

    .line 1158
    :cond_20
    const/4 v13, 0x7

    goto :goto_8

    .line 1161
    :pswitch_2
    if-eqz p3, :cond_21

    .line 1162
    const/16 v13, 0x8

    goto :goto_8

    .line 1163
    :cond_21
    const/16 v13, 0x9

    goto :goto_8

    .line 1166
    :pswitch_3
    if-eqz p3, :cond_22

    .line 1167
    const/16 v13, 0xa

    goto :goto_8

    .line 1168
    :cond_22
    const/16 v13, 0xb

    goto/16 :goto_8

    .line 1171
    :pswitch_4
    if-eqz p3, :cond_23

    .line 1172
    const/16 v13, 0xc

    goto/16 :goto_8

    .line 1173
    :cond_23
    const/16 v13, 0xd

    goto/16 :goto_8

    .line 1176
    :pswitch_5
    if-eqz p3, :cond_24

    .line 1177
    const/16 v13, 0xe

    goto/16 :goto_8

    .line 1178
    :cond_24
    const/16 v13, 0xf

    goto/16 :goto_8

    .line 1181
    :pswitch_6
    if-eqz p3, :cond_25

    .line 1182
    const/16 v13, 0x10

    goto/16 :goto_8

    .line 1183
    :cond_25
    const/16 v13, 0x11

    goto/16 :goto_8

    .line 1186
    :pswitch_7
    if-eqz p3, :cond_26

    .line 1187
    const/16 v13, 0x12

    goto/16 :goto_8

    .line 1188
    :cond_26
    const/16 v13, 0x13

    goto/16 :goto_8

    .line 1191
    :pswitch_8
    if-eqz p3, :cond_27

    .line 1192
    const/16 v13, 0x14

    goto/16 :goto_8

    .line 1193
    :cond_27
    const/16 v13, 0x15

    goto/16 :goto_8

    .line 1196
    :pswitch_9
    if-eqz p3, :cond_28

    .line 1197
    const/16 v13, 0x16

    goto/16 :goto_8

    .line 1198
    :cond_28
    const/16 v13, 0x17

    goto/16 :goto_8

    .line 1201
    :pswitch_a
    if-eqz p3, :cond_29

    .line 1202
    const/16 v13, 0x19

    goto/16 :goto_8

    .line 1203
    :cond_29
    const/16 v13, 0x18

    goto/16 :goto_8

    .line 1205
    :cond_2a
    const/4 v12, 0x0

    .local v12, "a":Landroid/view/animation/Animation;
    goto/16 :goto_9

    .line 1149
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 6
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 426
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 427
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 428
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 429
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 430
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 433
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 434
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 436
    :cond_1
    return-object v5
.end method

.method loadAnimationForFloating(Landroid/view/WindowManager$LayoutParams;IZIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .locals 11
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I
    .param p6, "orientation"    # I
    .param p7, "containingFrame"    # Landroid/graphics/Rect;
    .param p8, "contentInsets"    # Landroid/graphics/Rect;
    .param p9, "appFrame"    # Landroid/graphics/Rect;
    .param p10, "isVoiceInteraction"    # Z

    .prologue
    .line 1511
    if-eqz p10, :cond_4

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    .line 1512
    const/16 v1, 0x8

    if-ne p2, v1, :cond_3

    .line 1514
    :cond_0
    if-eqz p3, :cond_7

    .line 1515
    const v1, 0x10a007e

    .line 1514
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 1517
    .local v9, "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "AppTransition"

    .line 1518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applyAnimation voice: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1519
    const-string/jumbo v3, " transit="

    .line 1518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1519
    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1520
    const-string/jumbo v3, " isEntrance="

    .line 1518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1520
    const-string/jumbo v3, " Callers="

    .line 1518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1520
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 1518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1517
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_2
    :goto_1
    return-object v9

    .line 1513
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_3
    const/16 v1, 0xa

    if-eq p2, v1, :cond_0

    .line 1521
    :cond_4
    if-eqz p10, :cond_9

    const/4 v1, 0x7

    if-eq p2, v1, :cond_5

    .line 1522
    const/16 v1, 0x9

    if-ne p2, v1, :cond_8

    .line 1524
    :cond_5
    if-eqz p3, :cond_b

    .line 1525
    const v1, 0x10a007c

    .line 1524
    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 1527
    .restart local v9    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_2

    :cond_6
    const-string/jumbo v1, "AppTransition"

    .line 1528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applyAnimation voice: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1529
    const-string/jumbo v3, " transit="

    .line 1528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1529
    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1530
    const-string/jumbo v3, " isEntrance="

    .line 1528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1530
    const-string/jumbo v3, " Callers="

    .line 1528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1530
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 1528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1527
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1516
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_7
    const v1, 0x10a007f

    goto/16 :goto_0

    .line 1523
    :cond_8
    const/16 v1, 0xb

    if-eq p2, v1, :cond_5

    .line 1531
    :cond_9
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 1532
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_c

    .line 1533
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1532
    :goto_3
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 1534
    .restart local v9    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_a

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_2

    :cond_a
    const-string/jumbo v1, "AppTransition"

    .line 1535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1536
    const-string/jumbo v3, " nextAppTransition=ANIM_CUSTOM"

    .line 1535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1537
    const-string/jumbo v3, " transit="

    .line 1535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1537
    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1537
    const-string/jumbo v3, " isEntrance="

    .line 1535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1538
    const-string/jumbo v3, " Callers="

    .line 1535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1538
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 1535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1534
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1526
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_b
    const v1, 0x10a007d

    goto/16 :goto_2

    .line 1533
    :cond_c
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_3

    .line 1539
    :cond_d
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_f

    .line 1540
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 1541
    .restart local v9    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_e

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_2

    :cond_e
    const-string/jumbo v1, "AppTransition"

    .line 1542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1543
    const-string/jumbo v3, " nextAppTransition=ANIM_CUSTOM_IN_PLACE"

    .line 1542
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1544
    const-string/jumbo v3, " transit="

    .line 1542
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1544
    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1542
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1545
    const-string/jumbo v3, " Callers="

    .line 1542
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1545
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 1542
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1541
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1546
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_f
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_11

    .line 1547
    move-object/from16 v0, p9

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v9

    .line 1548
    .restart local v9    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_10

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_2

    :cond_10
    const-string/jumbo v1, "AppTransition"

    .line 1549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1550
    const-string/jumbo v3, " nextAppTransition=ANIM_CLIP_REVEAL"

    .line 1549
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1551
    const-string/jumbo v3, " Callers="

    .line 1549
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1551
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 1549
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1548
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1552
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_11
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 1553
    move/from16 v0, p5

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v9

    .line 1554
    .restart local v9    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_12

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_2

    :cond_12
    const-string/jumbo v1, "AppTransition"

    .line 1555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1556
    const-string/jumbo v3, " nextAppTransition=ANIM_SCALE_UP"

    .line 1555
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1557
    const-string/jumbo v3, " transit="

    .line 1555
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1557
    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1555
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1557
    const-string/jumbo v3, " isEntrance="

    .line 1555
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1558
    const-string/jumbo v3, " Callers="

    .line 1555
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1558
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 1555
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1554
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1559
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_13
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_14

    .line 1560
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_18

    .line 1562
    :cond_14
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    const/4 v1, 0x1

    .line 1561
    :goto_4
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1563
    invoke-virtual {p0, p3}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v1

    move/from16 v0, p5

    invoke-virtual {p0, v1, p4, v0, p2}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(IIII)Landroid/view/animation/Animation;

    move-result-object v9

    .line 1565
    .restart local v9    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_15

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_2

    .line 1566
    :cond_15
    iget-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v1, :cond_17

    .line 1567
    const-string/jumbo v10, "ANIM_THUMBNAIL_SCALE_UP"

    .line 1568
    .local v10, "animName":Ljava/lang/String;
    :goto_5
    const-string/jumbo v1, "AppTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1569
    const-string/jumbo v3, " nextAppTransition="

    .line 1568
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1570
    const-string/jumbo v3, " transit="

    .line 1568
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1570
    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1568
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1570
    const-string/jumbo v3, " isEntrance="

    .line 1568
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1571
    const-string/jumbo v3, " Callers="

    .line 1568
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1571
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 1568
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1562
    .end local v9    # "a":Landroid/view/animation/Animation;
    .end local v10    # "animName":Ljava/lang/String;
    :cond_16
    const/4 v1, 0x0

    goto :goto_4

    .line 1567
    .restart local v9    # "a":Landroid/view/animation/Animation;
    :cond_17
    const-string/jumbo v10, "ANIM_THUMBNAIL_SCALE_DOWN"

    .restart local v10    # "animName":Ljava/lang/String;
    goto :goto_5

    .line 1573
    .end local v9    # "a":Landroid/view/animation/Animation;
    .end local v10    # "animName":Ljava/lang/String;
    :cond_18
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_19

    .line 1574
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1d

    .line 1576
    :cond_19
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x1

    .line 1575
    :goto_6
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1578
    invoke-virtual {p0, p3}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v2

    move-object v1, p0

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1577
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v9

    .line 1580
    .restart local v9    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_1a

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_2

    .line 1581
    :cond_1a
    iget-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v1, :cond_1c

    .line 1582
    const-string/jumbo v10, "ANIM_THUMBNAIL_ASPECT_SCALE_UP"

    .line 1583
    .restart local v10    # "animName":Ljava/lang/String;
    :goto_7
    const-string/jumbo v1, "AppTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1584
    const-string/jumbo v3, " nextAppTransition="

    .line 1583
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1585
    const-string/jumbo v3, " transit="

    .line 1583
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1585
    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1583
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1585
    const-string/jumbo v3, " isEntrance="

    .line 1583
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1586
    const-string/jumbo v3, " Callers="

    .line 1583
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1586
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 1583
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1576
    .end local v9    # "a":Landroid/view/animation/Animation;
    .end local v10    # "animName":Ljava/lang/String;
    :cond_1b
    const/4 v1, 0x0

    goto :goto_6

    .line 1582
    .restart local v9    # "a":Landroid/view/animation/Animation;
    :cond_1c
    const-string/jumbo v10, "ANIM_THUMBNAIL_ASPECT_SCALE_DOWN"

    .restart local v10    # "animName":Ljava/lang/String;
    goto :goto_7

    .line 1589
    .end local v9    # "a":Landroid/view/animation/Animation;
    .end local v10    # "animName":Ljava/lang/String;
    :cond_1d
    move/from16 v0, p5

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/server/wm/AppTransition;->createAnimationForFloatingLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v9

    .line 1668
    .restart local v9    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_1e

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_2

    :cond_1e
    const-string/jumbo v1, "AppTransition"

    .line 1669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[BMW]applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1671
    const-string/jumbo v3, " animAttr=0x"

    .line 1669
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1672
    const-string/jumbo v3, " transit="

    .line 1669
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1672
    const-string/jumbo v3, " isEntrance="

    .line 1669
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1673
    const-string/jumbo v3, " Callers="

    .line 1669
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1673
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 1669
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1668
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 441
    .local v0, "context":Landroid/content/Context;
    if-ltz p2, :cond_1

    .line 442
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 443
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_0

    .line 444
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 446
    :cond_0
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 448
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_1
    return-object v2
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_0
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .prologue
    .line 1339
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1341
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1342
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 1338
    :goto_0
    return-void

    .line 1344
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_0
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1227
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1229
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1230
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1231
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1232
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1224
    :goto_0
    return-void

    .line 1234
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_0
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V
    .locals 4
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1310
    if-eqz p7, :cond_0

    const/4 v2, 0x5

    :goto_0
    iput v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1312
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1313
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1314
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1315
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1316
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1318
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartOriX:I

    .line 1319
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartOriY:I

    .line 1321
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1322
    iput p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1324
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/AppTransition;->switchToSinlehandPoint(FF)Landroid/graphics/Point;

    move-result-object v0

    .line 1325
    .local v0, "shPoint":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1326
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1327
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->getSingleHandWinScale()F

    move-result v1

    .line 1328
    .local v1, "shScale":F
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1329
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1331
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1332
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1308
    .end local v0    # "shPoint":Landroid/graphics/Point;
    .end local v1    # "shScale":F
    :goto_1
    return-void

    .line 1311
    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    .line 1334
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    .line 1267
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1269
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1270
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1271
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1272
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1273
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1266
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 5
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    const/4 v4, 0x0

    .line 1240
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1241
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1242
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1243
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1244
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1245
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1247
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartOriX:I

    .line 1248
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartOriY:I

    .line 1250
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1251
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1253
    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/AppTransition;->switchToSinlehandPoint(FF)Landroid/graphics/Point;

    move-result-object v0

    .line 1254
    .local v0, "shPoint":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1255
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1256
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->getSingleHandWinScale()F

    move-result v1

    .line 1257
    .local v1, "shScale":F
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 1258
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 1260
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1261
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1239
    .end local v0    # "shPoint":Landroid/graphics/Point;
    .end local v1    # "shScale":F
    :cond_0
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .locals 9
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1280
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1281
    if-eqz p5, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1284
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1285
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1286
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1287
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1289
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartOriX:I

    .line 1290
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartOriY:I

    .line 1291
    int-to-float v0, p2

    int-to-float v2, p3

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/AppTransition;->switchToSinlehandPoint(FF)Landroid/graphics/Point;

    move-result-object v7

    .line 1292
    .local v7, "shPoint":Landroid/graphics/Point;
    iget v0, v7, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 1293
    iget v0, v7, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 1294
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->getSingleHandWinScale()F

    move-result v8

    .line 1295
    .local v8, "shScale":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1296
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1297
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1298
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    .line 1297
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1300
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1301
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1279
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "shPoint":Landroid/graphics/Point;
    .end local v8    # "shScale":F
    :goto_1
    return-void

    .line 1282
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 1303
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1
.end method

.method postAnimationCallback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1217
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1219
    iput-object v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1216
    :cond_0
    return-void
.end method

.method prepare()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 328
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    .line 329
    const/4 v0, 0x1

    return v0

    .line 331
    :cond_0
    return v1
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .locals 6
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .prologue
    .line 646
    packed-switch p4, :pswitch_data_0

    .line 652
    const/16 v4, 0x150

    .line 656
    .local v4, "duration":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 655
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 649
    .end local v4    # "duration":I
    :pswitch_0
    iget v4, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .restart local v4    # "duration":I
    goto :goto_0

    .line 646
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "duration"    # I
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 629
    if-lez p4, :cond_0

    .line 630
    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 632
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 633
    invoke-virtual {p1, p5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 634
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 635
    return-object p1
.end method

.method registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$AppTransitionListener;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method setAppTransition(I)V
    .locals 0
    .param p1, "transit"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 273
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 1502
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 1501
    return-void
.end method

.method setIdle()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 290
    return-void
.end method

.method setReady()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 282
    return-void
.end method

.method setTimeout()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 298
    return-void
.end method

.method switchToSinlehandPoint(FF)Landroid/graphics/Point;
    .locals 8
    .param p1, "sourcePointX"    # F
    .param p2, "sourcePointY"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 939
    const/4 v5, 0x2

    new-array v4, v5, [F

    .line 940
    aput p1, v4, v6

    aput p2, v4, v7

    .line 943
    .local v4, "points":[F
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 944
    .local v1, "mAm":Landroid/app/IActivityManager;
    invoke-interface {v1}, Landroid/app/IActivityManager;->getGlobalTransform()Landroid/view/animation/Transformation;

    move-result-object v3

    .line 945
    .local v3, "mTransformation":Landroid/view/animation/Transformation;
    if-eqz v3, :cond_0

    .line 946
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 947
    .local v2, "mMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapPoints([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    .end local v1    # "mAm":Landroid/app/IActivityManager;
    .end local v2    # "mMatrix":Landroid/graphics/Matrix;
    .end local v3    # "mTransformation":Landroid/view/animation/Transformation;
    :cond_0
    :goto_0
    new-instance v5, Landroid/graphics/Point;

    aget v6, v4, v6

    float-to-int v6, v6

    aget v7, v4, v7

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    return-object v5

    .line 949
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNextAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
