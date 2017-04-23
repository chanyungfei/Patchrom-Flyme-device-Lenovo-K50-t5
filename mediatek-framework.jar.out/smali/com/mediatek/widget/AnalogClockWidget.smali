.class public Lcom/mediatek/widget/AnalogClockWidget;
.super Landroid/view/View;
.source "AnalogClockWidget.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/AnalogClockWidget$1;
    }
.end annotation


# static fields
.field private static final HOUR_RADIUS_SCALE:F = 0.5f

.field private static final MINUTE_RADIUS_SCALE:F = 0.8f

.field private static final OFFSET_RADIUS_SCALE:F = 0.1f

.field private static final RADIUS_SCALE:F = 0.9f

.field private static final STROKE_WIDTH:F = 4.0f

.field private static final STROKE_WIDTH_MS:F = 3.0f


# instance fields
.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private final mDensity:F

.field private final mHandler:Landroid/os/Handler;

.field private mHour:F

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinutes:F

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method static synthetic -set0(Lcom/mediatek/widget/AnalogClockWidget;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/widget/AnalogClockWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/widget/AnalogClockWidget;->onTimeChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/widget/AnalogClockWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/AnalogClockWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mHandler:Landroid/os/Handler;

    .line 162
    new-instance v0, Lcom/mediatek/widget/AnalogClockWidget$1;

    invoke-direct {v0, p0}, Lcom/mediatek/widget/AnalogClockWidget$1;-><init>(Lcom/mediatek/widget/AnalogClockWidget;)V

    iput-object v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mDensity:F

    .line 91
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;

    .line 92
    iget-object v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mediatek/widget/AnalogClockWidget;->mDensity:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    iget-object v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    return-void
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    const/high16 v5, 0x42700000    # 60.0f

    .line 150
    iget-object v3, p0, Lcom/mediatek/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 152
    iget-object v3, p0, Lcom/mediatek/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 153
    .local v0, "hour":I
    iget-object v3, p0, Lcom/mediatek/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    .line 154
    .local v1, "minute":I
    iget-object v3, p0, Lcom/mediatek/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 156
    .local v2, "second":I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/mediatek/widget/AnalogClockWidget;->mMinutes:F

    .line 157
    int-to-float v3, v0

    iget v4, p0, Lcom/mediatek/widget/AnalogClockWidget;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/mediatek/widget/AnalogClockWidget;->mHour:F

    .line 159
    iget-object v3, p0, Lcom/mediatek/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0, v3}, Lcom/mediatek/widget/AnalogClockWidget;->updateContentDescription(Landroid/text/format/Time;)V

    .line 149
    return-void
.end method

.method private updateContentDescription(Landroid/text/format/Time;)V
    .locals 6
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 176
    const/16 v1, 0x81

    .line 177
    .local v1, "flags":I
    iget-object v2, p0, Lcom/mediatek/widget/AnalogClockWidget;->mContext:Landroid/content/Context;

    .line 178
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const/16 v3, 0x81

    .line 177
    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "contentDescription":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/widget/AnalogClockWidget;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 124
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 126
    iget-boolean v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mAttached:Z

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mAttached:Z

    .line 128
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/mediatek/widget/AnalogClockWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/widget/AnalogClockWidget;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v5, p0, Lcom/mediatek/widget/AnalogClockWidget;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    .line 132
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 136
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;

    .line 137
    invoke-direct {p0}, Lcom/mediatek/widget/AnalogClockWidget;->onTimeChanged()V

    .line 123
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 143
    iget-boolean v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mAttached:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/mediatek/widget/AnalogClockWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/widget/AnalogClockWidget;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mAttached:Z

    .line 141
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x43b40000    # 360.0f

    const v9, 0x3dcccccd    # 0.1f

    .line 100
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 101
    iget v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mRight:I

    iget v1, p0, Lcom/mediatek/widget/AnalogClockWidget;->mLeft:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    .line 102
    .local v7, "x":I
    iget v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mBottom:I

    iget v1, p0, Lcom/mediatek/widget/AnalogClockWidget;->mTop:I

    sub-int/2addr v0, v1

    div-int/lit8 v8, v0, 0x2

    .line 103
    .local v8, "y":I
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float v6, v0, v1

    .line 105
    .local v6, "radius":F
    iget-object v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mediatek/widget/AnalogClockWidget;->mDensity:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    int-to-float v0, v7

    int-to-float v1, v8

    iget-object v2, p0, Lcom/mediatek/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 108
    iget-object v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mediatek/widget/AnalogClockWidget;->mDensity:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    iget v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mHour:F

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v10

    int-to-float v1, v7

    int-to-float v2, v8

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 111
    int-to-float v1, v7

    int-to-float v0, v8

    mul-float v2, v6, v9

    add-float/2addr v2, v0

    .line 112
    int-to-float v3, v7

    int-to-float v0, v8

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/mediatek/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 111
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 116
    iget v0, p0, Lcom/mediatek/widget/AnalogClockWidget;->mMinutes:F

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v10

    int-to-float v1, v7

    int-to-float v2, v8

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 117
    int-to-float v1, v7

    int-to-float v0, v8

    mul-float v2, v6, v9

    add-float/2addr v2, v0

    .line 118
    int-to-float v3, v7

    int-to-float v0, v8

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/mediatek/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 117
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 99
    return-void
.end method
