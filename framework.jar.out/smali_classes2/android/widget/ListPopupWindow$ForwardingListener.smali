.class public abstract Landroid/widget/ListPopupWindow$ForwardingListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForwardingListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;,
        Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private mTriggerLongPress:Ljava/lang/Runnable;

.field private mWasLongPress:Z


# direct methods
.method static synthetic -get0(Landroid/widget/ListPopupWindow$ForwardingListener;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/ListPopupWindow$ForwardingListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->onLongPress()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 1260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1261
    iput-object p1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1262
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    .line 1263
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    .line 1266
    iget v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    .line 1268
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1260
    return-void
.end method

.method private clearCallbacks()V
    .locals 2

    .prologue
    .line 1420
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1424
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1425
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1419
    :cond_1
    return-void
.end method

.method private onLongPress()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 1430
    invoke-direct {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    .line 1432
    iget-object v9, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1433
    .local v9, "src":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1436
    :cond_0
    return-void

    .line 1439
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1440
    return-void

    .line 1444
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1447
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1448
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1449
    .local v8, "e":Landroid/view/MotionEvent;
    invoke-virtual {v9, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1450
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1452
    iput-boolean v10, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1453
    iput-boolean v10, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    .line 1429
    return-void
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 1464
    iget-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1465
    .local v6, "src":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v5

    .line 1466
    .local v5, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1470
    invoke-static {v5}, Landroid/widget/ListPopupWindow;->-get0(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    .line 1471
    .local v1, "dst":Landroid/widget/ListPopupWindow$DropDownListView;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow$DropDownListView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1476
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1477
    .local v2, "dstEvent":Landroid/view/MotionEvent;
    invoke-virtual {v6, v2}, Landroid/view/View;->toGlobalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1478
    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow$DropDownListView;->toLocalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1481
    iget v8, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {v1, v2, v8}, Landroid/widget/ListPopupWindow$DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v3

    .line 1482
    .local v3, "handled":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1486
    .local v0, "action":I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_3

    .line 1487
    const/4 v8, 0x3

    if-eq v0, v8, :cond_2

    const/4 v4, 0x1

    .line 1489
    .local v4, "keepForwarding":Z
    :goto_0
    if-eqz v3, :cond_4

    .end local v4    # "keepForwarding":Z
    :goto_1
    return v4

    .line 1467
    .end local v0    # "action":I
    .end local v1    # "dst":Landroid/widget/ListPopupWindow$DropDownListView;
    .end local v2    # "dstEvent":Landroid/view/MotionEvent;
    .end local v3    # "handled":Z
    :cond_0
    return v7

    .line 1472
    .restart local v1    # "dst":Landroid/widget/ListPopupWindow$DropDownListView;
    :cond_1
    return v7

    .line 1487
    .restart local v0    # "action":I
    .restart local v2    # "dstEvent":Landroid/view/MotionEvent;
    .restart local v3    # "handled":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "keepForwarding":Z
    goto :goto_0

    .line 1486
    .end local v4    # "keepForwarding":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "keepForwarding":Z
    goto :goto_0

    :cond_4
    move v4, v7

    .line 1489
    goto :goto_1
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1373
    iget-object v2, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1374
    .local v2, "src":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1375
    return v8

    .line 1378
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1379
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 1416
    :cond_1
    :goto_0
    return v8

    .line 1381
    :pswitch_0
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    .line 1382
    iput-boolean v8, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    .line 1384
    iget-object v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v5, :cond_2

    .line 1385
    new-instance v5, Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;

    invoke-direct {v5, p0, v9}, Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Landroid/widget/ListPopupWindow$ForwardingListener;Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;)V

    iput-object v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 1387
    :cond_2
    iget-object v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1389
    iget-object v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v5, :cond_3

    .line 1390
    new-instance v5, Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;

    invoke-direct {v5, p0, v9}, Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;-><init>(Landroid/widget/ListPopupWindow$ForwardingListener;Landroid/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;)V

    iput-object v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 1392
    :cond_3
    iget-object v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1395
    :pswitch_1
    iget v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1396
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_1

    .line 1397
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1398
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1401
    .local v4, "y":F
    iget v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->pointInView(FFF)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1402
    invoke-direct {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    .line 1405
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1406
    return v6

    .line 1412
    .end local v1    # "activePointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    goto :goto_0

    .line 1379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abstract getPopup()Landroid/widget/ListPopupWindow;
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .prologue
    .line 1342
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 1343
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1346
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1344
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 1359
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 1360
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1361
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1363
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1285
    iget-boolean v11, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1287
    .local v11, "wasForwarding":Z
    if-eqz v11, :cond_5

    .line 1288
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->onForwardingStopped()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v10, 0x0

    .line 1306
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1307
    .local v8, "action":I
    if-nez v10, :cond_1

    if-eqz v11, :cond_3

    .line 1308
    :cond_1
    if-eq v8, v12, :cond_2

    if-ne v8, v4, :cond_3

    .line 1309
    :cond_2
    iget-object v2, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1310
    iget-object v2, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1314
    :cond_3
    iput-boolean v10, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1315
    if-nez v10, :cond_7

    .end local v11    # "wasForwarding":Z
    :goto_1
    return v11

    .line 1288
    .end local v8    # "action":I
    .restart local v11    # "wasForwarding":Z
    :cond_4
    const/4 v10, 0x1

    .local v10, "forwarding":Z
    goto :goto_0

    .line 1290
    .end local v10    # "forwarding":Z
    :cond_5
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v10

    .line 1292
    :goto_2
    if-eqz v10, :cond_0

    .line 1294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "now":J
    move-wide v2, v0

    move v6, v5

    .line 1295
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1297
    .local v9, "e":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1298
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 1290
    .end local v0    # "now":J
    .end local v9    # "e":Landroid/view/MotionEvent;
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "forwarding":Z
    goto :goto_2

    .end local v10    # "forwarding":Z
    .restart local v8    # "action":I
    :cond_7
    move v11, v12

    .line 1315
    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1319
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1324
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1325
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    .line 1327
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1323
    :cond_0
    return-void
.end method
