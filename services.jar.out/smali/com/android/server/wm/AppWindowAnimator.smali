.class public Lcom/android/server/wm/AppWindowAnimator;
.super Ljava/lang/Object;
.source "AppWindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AppWindowAnimator"

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field allDrawn:Z

.field animLayerAdjustment:I

.field animating:Z

.field animation:Landroid/view/animation/Animation;

.field deferFinalFrameCleanup:Z

.field deferThumbnailDestruction:Z

.field freezingScreen:Z

.field hasTransformation:Z

.field lastFreezeDuration:I

.field mAllAppWinAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowStateAnimator;",
            ">;"
        }
    .end annotation
.end field

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field final mAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSkipFirstFrame:Z

.field thumbnail:Landroid/view/SurfaceControl;

.field thumbnailAnimation:Landroid/view/animation/Animation;

.field thumbnailForceAboveLayer:I

.field thumbnailLayer:I

.field thumbnailTransactionSeq:I

.field final thumbnailTransformation:Landroid/view/animation/Transformation;

.field thumbnailX:I

.field thumbnailY:I

.field final transformation:Landroid/view/animation/Transformation;

.field usingTransferredAnimation:Z

.field wasAnimating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppWindowToken;)V
    .locals 2
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 80
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    .line 94
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    .line 101
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 102
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 103
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 100
    return-void
.end method

.method private getStartTimeCorrection()J
    .locals 4

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v0

    neg-long v0, v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0

    .line 290
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private stepAnimation(J)Z
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 256
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v1, :cond_0

    .line 257
    return v3

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 260
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 261
    .local v0, "hasMoreFrames":Z
    if-nez v0, :cond_2

    .line 262
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    if-eqz v1, :cond_3

    .line 271
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    .line 272
    iput-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 273
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 274
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "AppWindowAnimator"

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Finished animation in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v0    # "hasMoreFrames":Z
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 279
    return v0

    .line 265
    .restart local v0    # "hasMoreFrames":Z
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    .line 266
    const/4 v0, 0x1

    .line 262
    .local v0, "hasMoreFrames":Z
    goto :goto_0
.end method

.method private stepThumbnailAnimation(J)V
    .locals 13
    .param p1, "currentTime"    # J

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 217
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 218
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 219
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 222
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v1

    .line 223
    .local v1, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v1, :cond_3

    .line 224
    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v0

    .line 225
    :goto_0
    if-eqz v0, :cond_0

    .line 226
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->postCompose(Landroid/view/animation/Transformation;)V

    .line 229
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v3, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 230
    .local v2, "tmpFloats":[F
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 231
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    .line 232
    const-string/jumbo v4, "thumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "POS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 233
    const-string/jumbo v6, ", "

    .line 232
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 233
    const/4 v6, 0x5

    aget v6, v2, v6

    .line 232
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-static {v3, v4, v5, v8}, Lcom/android/server/wm/WindowManagerService;->logSurface(Landroid/view/SurfaceControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 234
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    aget v4, v2, v10

    const/4 v5, 0x5

    aget v5, v2, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 235
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    .line 236
    const-string/jumbo v4, "thumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "alpha="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 237
    const-string/jumbo v6, " layer="

    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 237
    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 238
    const-string/jumbo v6, " matrix=["

    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 238
    aget v6, v2, v7

    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 239
    const-string/jumbo v6, ","

    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 239
    aget v6, v2, v11

    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 240
    const-string/jumbo v6, "]["

    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 240
    aget v6, v2, v9

    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 241
    const-string/jumbo v6, ","

    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 241
    const/4 v6, 0x4

    aget v6, v2, v6

    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 241
    const-string/jumbo v6, "]"

    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-static {v3, v4, v5, v8}, Lcom/android/server/wm/WindowManagerService;->logSurface(Landroid/view/SurfaceControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 242
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 243
    iget v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-lez v3, :cond_4

    .line 244
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 251
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    aget v4, v2, v7

    aget v5, v2, v11

    .line 252
    aget v6, v2, v9

    const/4 v7, 0x4

    aget v7, v2, v7

    .line 251
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 216
    return-void

    .line 223
    .end local v2    # "tmpFloats":[F
    :cond_3
    const/4 v0, 0x0

    .local v0, "screenAnimation":Z
    goto/16 :goto_0

    .line 248
    .end local v0    # "screenAnimation":Z
    .restart local v2    # "tmpFloats":[F
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    add-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setLayer(I)V

    goto :goto_1
.end method


# virtual methods
.method public clearAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 152
    iput-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 160
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    .line 150
    return-void
.end method

.method public clearThumbnail()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 170
    iput-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    .line 172
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    .line 167
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 399
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mAppToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 400
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mAnimator="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 401
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "freezingScreen="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 402
    const-string/jumbo v2, " allDrawn="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 403
    const-string/jumbo v2, " animLayerAdjustment="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 404
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    if-eqz v2, :cond_0

    .line 405
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastFreezeDuration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 408
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_2

    .line 409
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "animating="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 410
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "animation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 412
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    if-eqz v2, :cond_3

    .line 413
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "XForm: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    .line 415
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 417
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_4

    .line 418
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "thumbnail="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 419
    const-string/jumbo v2, " x="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 420
    const-string/jumbo v2, " y="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 421
    const-string/jumbo v2, " layer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 422
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "thumbnailAnimation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 423
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "thumbnailTransformation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 427
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowStateAnimator;

    .line 428
    .local v1, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "App Win Anim #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 429
    const-string/jumbo v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v1    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;IIZ)V
    .locals 8
    .param p1, "anim"    # Landroid/view/animation/Animation;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "skipFirstFrame"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 107
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "AppWindowAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Setting animation in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 108
    const-string/jumbo v6, ": "

    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 108
    const-string/jumbo v6, " wxh="

    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 108
    const-string/jumbo v6, "x"

    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 109
    const-string/jumbo v6, " isVisible="

    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 109
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v6

    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 111
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 112
    invoke-virtual {p1}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 115
    :cond_1
    const-wide/16 v6, 0x2710

    invoke-virtual {p1, v6, v7}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 116
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 117
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v1

    .line 118
    .local v1, "zorder":I
    const/4 v0, 0x0

    .line 119
    .local v0, "adj":I
    if-ne v1, v3, :cond_5

    .line 120
    const/16 v0, 0x3e8

    .line 125
    :cond_2
    :goto_0
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-eq v2, v0, :cond_3

    .line 126
    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 127
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 130
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 131
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_1
    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 132
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 134
    iput-boolean p4, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    .line 136
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-nez v2, :cond_4

    .line 137
    invoke-virtual {p1, v4}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    .line 106
    :cond_4
    return-void

    .line 121
    :cond_5
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 122
    const/16 v0, -0x3e8

    goto :goto_0

    :cond_6
    move v2, v4

    .line 131
    goto :goto_1
.end method

.method public setDummyAnimation()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 142
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AppWindowAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting dummy animation in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 143
    const-string/jumbo v3, " isVisible="

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 143
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v3

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    sget-object v1, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 145
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 146
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 147
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 141
    return-void

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showAllWindowsLocked()Z
    .locals 7

    .prologue
    .line 386
    const/4 v2, 0x0

    .line 387
    .local v2, "isAnimating":Z
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 388
    .local v0, "NW":I
    const/4 v1, 0x0

    .end local v2    # "isAnimating":Z
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 389
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowStateAnimator;

    .line 390
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "AppWindowAnimator"

    .line 391
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "performing show on: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 390
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    .line 393
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v2, v4

    .line 388
    .local v2, "isAnimating":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    .end local v2    # "isAnimating":Z
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1
    return v2
.end method

.method stepAnimationLocked(JI)Z
    .locals 15
    .param p1, "currentTime"    # J
    .param p3, "displayId"    # I

    .prologue
    const-wide/16 v12, 0x1020

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 296
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 299
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v7, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v6, v7, :cond_0

    .line 304
    return v10

    .line 307
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v6, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v6, v6, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v6, :cond_7

    .line 308
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_7

    .line 309
    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v6, :cond_4

    .line 310
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "AppWindowAnimator"

    .line 311
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Starting animation in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 312
    const-string/jumbo v8, " @ "

    .line 311
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 312
    const-string/jumbo v8, " scale="

    .line 311
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 313
    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v8

    .line 311
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 314
    const-string/jumbo v8, " allDrawn="

    .line 311
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 314
    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v8, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 311
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 314
    const-string/jumbo v8, " animating="

    .line 311
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 314
    iget-boolean v8, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 311
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 310
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowAnimator;->getStartTimeCorrection()J

    move-result-wide v2

    .line 316
    .local v2, "correction":J
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    add-long v8, p1, v2

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 317
    iput-boolean v11, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 318
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_3

    .line 319
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->show()V

    .line 320
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    add-long v8, p1, v2

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 322
    :cond_3
    iput-boolean v10, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    .line 324
    .end local v2    # "correction":J
    :cond_4
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimation(J)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 327
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_5

    .line 328
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/AppWindowAnimator;->stepThumbnailAnimation(J)V

    .line 330
    :cond_5
    return v11

    .line 333
    :cond_6
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_7

    .line 336
    iput-boolean v11, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 337
    iput-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 340
    :cond_7
    iput-boolean v10, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 342
    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v6, :cond_8

    .line 343
    return v10

    .line 346
    :cond_8
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 347
    const-string/jumbo v7, "AppWindowToken"

    .line 346
    const/16 v8, 0x8

    move/from16 v0, p3

    invoke-virtual {v6, p0, v8, v7, v0}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 349
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    .line 350
    iput-boolean v10, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 351
    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-eqz v6, :cond_9

    .line 352
    iput v10, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 353
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 355
    :cond_9
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_a

    .line 356
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v6, v7, :cond_a

    .line 357
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v11}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 362
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "app animation done : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 361
    invoke-static {v12, v13, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 363
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v6, :cond_b

    const-string/jumbo v6, "AppWindowAnimator"

    .line 364
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Animation done in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 365
    const-string/jumbo v8, ": reportedVisible="

    .line 364
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 365
    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v8, v8, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 364
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 363
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_b
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 369
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->clear()V

    .line 371
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 372
    .local v5, "numAllAppWinAnimators":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_c

    .line 373
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    .line 372
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 375
    :cond_c
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 378
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_d

    .line 379
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->cacheStartingWindow(Lcom/android/server/wm/AppWindowToken;)V

    .line 382
    :cond_d
    return v10
.end method

.method transferCurrentAnimation(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 2
    .param p1, "toAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "transferWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    iput-object v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 180
    iput-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 181
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 182
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    iput v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 184
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 185
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    .line 188
    :cond_0
    if-eqz p2, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iput-object p1, p2, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 176
    :cond_1
    return-void
.end method

.method updateLayers()V
    .locals 8

    .prologue
    .line 196
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 197
    .local v4, "windowCount":I
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 198
    .local v0, "adj":I
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 199
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_5

    .line 200
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 201
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 202
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget v5, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, v0

    iput v5, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 203
    iget v5, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    if-le v5, v6, :cond_0

    .line 204
    iget v5, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 206
    :cond_0
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYERS:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "AppWindowAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Updating layer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    if-eqz v5, :cond_4

    .line 210
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_3

    .line 211
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->setWallpaperAnimLayerAdjustmentLocked(I)V

    .line 199
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    goto :goto_1

    .line 195
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    return-void
.end method
