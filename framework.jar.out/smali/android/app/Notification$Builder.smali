.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final EXTRA_NEEDS_REBUILD:Ljava/lang/String; = "android.rebuild"

.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW:Ljava/lang/String; = "android.rebuild.bigView"

.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.bigViewActionCount"

.field public static final EXTRA_REBUILD_CONTENT_VIEW:Ljava/lang/String; = "android.rebuild.contentView"

.field public static final EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.contentViewActionCount"

.field private static final EXTRA_REBUILD_CONTEXT_APPLICATION_INFO:Ljava/lang/String; = "android.rebuild.applicationInfo"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW:Ljava/lang/String; = "android.rebuild.hudView"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.hudViewActionCount"

.field public static final EXTRA_REBUILD_LARGE_ICON:Ljava/lang/String; = "android.rebuild.largeIcon"

.field private static final LARGE_TEXT_SCALE:F = 1.3f

.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field private static final STRIP_AND_REBUILD:Z = true


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioStreamType:I

.field private mCategory:Ljava/lang/String;

.field private mColor:I

.field private final mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mContentInfo:Ljava/lang/CharSequence;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mDefaults:I

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mFullScreenIntent:Landroid/app/PendingIntent;

.field private mGroupKey:Ljava/lang/String;

.field private mHasThreeLines:Z

.field private mLargeIcon:Landroid/graphics/drawable/Icon;

.field private mLedArgb:I

.field private mLedOffMs:I

.field private mLedOnMs:I

.field private mNumber:I

.field private mOriginatingUserId:I

.field private mPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:I

.field private mProgress:I

.field private mProgressIndeterminate:Z

.field private mProgressMax:I

.field private mPublicVersion:Landroid/app/Notification;

.field private mRebuildBundle:Landroid/os/Bundle;

.field private mRebuildNotification:Landroid/app/Notification;

.field private mShowWhen:Z

.field private mSmallIcon:Landroid/graphics/drawable/Icon;

.field private mSmallIconLevel:I

.field private mSortKey:Ljava/lang/String;

.field private mSound:Landroid/net/Uri;

.field private mStyle:Landroid/app/Notification$Style;

.field private mSubText:Ljava/lang/CharSequence;

.field private mTickerText:Ljava/lang/CharSequence;

.field private mTickerView:Landroid/widget/RemoteViews;

.field private mUseChronometer:Z

.field private mVibrate:[J

.field private mVisibility:I

.field private mWhen:J


# direct methods
.method static synthetic -get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get3(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Landroid/app/Notification$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    return v0
.end method

.method static synthetic -get5(Landroid/app/Notification$Builder;)Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method static synthetic -get6(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get7(Landroid/app/Notification$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    return v0
.end method

.method static synthetic -set0(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -set1(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -set2(Landroid/app/Notification$Builder;I)I
    .locals 0

    iput p1, p0, Landroid/app/Notification$Builder;->mFlags:I

    return p1
.end method

.method static synthetic -set3(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "layoutId"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->shrinkLine3Text(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "resId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/app/Notification$Builder;)Z
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "bigContentView"    # Landroid/widget/RemoteViews;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 2162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2109
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 2112
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    .line 2113
    iput v4, p0, Landroid/app/Notification$Builder;->mVisibility:I

    .line 2114
    iput-object v0, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 2117
    iput v4, p0, Landroid/app/Notification$Builder;->mColor:I

    .line 2127
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    .line 2132
    iput-object v0, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    .line 2172
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 2175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 2176
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 2177
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 2178
    iput v4, p0, Landroid/app/Notification$Builder;->mPriority:I

    .line 2179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    .line 2181
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 2182
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    .line 2181
    :cond_0
    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 2162
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "n"    # Landroid/app/Notification;

    .prologue
    .line 2191
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2192
    iput-object p2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    .line 2193
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->restoreFromNotification(Landroid/app/Notification;)V

    .line 2195
    const/4 v3, 0x0

    .line 2196
    .local v3, "style":Landroid/app/Notification$Style;
    iget-object v2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2197
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v7, "android.template"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2198
    .local v6, "templateClass":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2199
    invoke-static {v6}, Landroid/app/Notification$Builder;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 2200
    .local v4, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    if-nez v4, :cond_0

    .line 2201
    const-string/jumbo v7, "Notification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown style class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    return-void

    .line 2206
    :cond_0
    const/4 v7, 0x0

    :try_start_0
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 2207
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2208
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/app/Notification$Style;

    move-object v3, v0

    .line 2209
    .local v3, "style":Landroid/app/Notification$Style;
    invoke-virtual {v3, v2}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2215
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    .end local v3    # "style":Landroid/app/Notification$Style;
    .end local v4    # "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_1
    if-eqz v3, :cond_2

    .line 2216
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 2190
    :cond_2
    return-void

    .line 2210
    .restart local v4    # "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :catch_0
    move-exception v5

    .line 2211
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "Notification"

    const-string/jumbo v8, "Could not create Style"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2212
    return-void
.end method

.method private addProfileBadge(Landroid/widget/RemoteViews;I)Z
    .locals 5
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "resId"    # I

    .prologue
    const v4, 0x1020381

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2909
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2911
    .local v0, "profileBadge":Landroid/graphics/Bitmap;
    const v1, 0x102036e

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2912
    const v1, 0x102037e

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2913
    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2915
    if-eqz v0, :cond_1

    .line 2916
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2917
    invoke-virtual {p1, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2921
    if-ne p2, v4, :cond_0

    .line 2922
    const v1, 0x102037f

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2924
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 2926
    :cond_1
    return v2
.end method

.method private applyLargeIconBackground(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v3, -0x1

    const v1, 0x1020006

    .line 3259
    const-string/jumbo v0, "setBackgroundResource"

    .line 3260
    const v4, 0x10804e7

    .line 3259
    invoke-virtual {p1, v1, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3266
    invoke-direct {p0}, Landroid/app/Notification$Builder;->resolveColor()I

    move-result v4

    .line 3267
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 3264
    const/4 v2, 0x1

    move-object v0, p1

    move v6, v3

    .line 3262
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 3270
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3271
    const v3, 0x1050061

    .line 3270
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, "padding":I
    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 3272
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 3258
    return-void
.end method

.method private applyStandardTemplate(I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 2965
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    .locals 18
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z

    .prologue
    .line 2972
    new-instance v2, Landroid/app/Notification$BuilderRemoteViews;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move/from16 v0, p1

    invoke-direct {v2, v3, v0}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 2974
    .local v2, "contentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    .line 2976
    const/4 v13, 0x0

    .line 2977
    .local v13, "showLine3":Z
    const/4 v12, 0x0

    .line 2978
    .local v12, "showLine2":Z
    const/4 v10, 0x0

    .line 2980
    .local v10, "contentTextInLine2":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v3, :cond_5

    .line 2981
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    const v4, 0x1020006

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 2982
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Landroid/app/Notification$Builder;->processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    .line 2983
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    const v4, 0x1020040

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 2984
    const v3, 0x1020040

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2985
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Landroid/app/Notification$Builder;->processSmallRightIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    .line 2991
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 2992
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2994
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 2995
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x1020075

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2996
    const/4 v13, 0x1

    .line 2998
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    .line 2999
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x1020380

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3000
    const v3, 0x1020380

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3001
    const/4 v13, 0x1

    .line 3020
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_a

    .line 3021
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x1020075

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3022
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    .line 3023
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x1020015

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3024
    const v3, 0x1020015

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3025
    const/4 v12, 0x1

    .line 3026
    const/4 v10, 0x1

    .line 3049
    :goto_2
    if-eqz v12, :cond_2

    .line 3052
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;->shrinkLine3Text(Landroid/widget/RemoteViews;)V

    .line 3055
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3056
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    if-eqz v3, :cond_e

    .line 3057
    const v3, 0x102037c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3058
    const-string/jumbo v3, "setBase"

    .line 3059
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/app/Notification$Builder;->mWhen:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v6, v6, v16

    add-long/2addr v4, v6

    .line 3058
    const v6, 0x102037c

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 3060
    const-string/jumbo v3, "setStarted"

    const v4, 0x102037c

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 3068
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 3069
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 3068
    invoke-static {v3, v4, v5}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    move-result v5

    const v3, 0x102037d

    const/4 v4, 0x0

    .line 3070
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3068
    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 3074
    if-eqz v10, :cond_f

    const v3, 0x102037e

    .line 3073
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z

    move-result v8

    .line 3076
    .local v8, "addedBadge":Z
    if-eqz v8, :cond_4

    if-eqz v10, :cond_10

    .line 3081
    :cond_4
    :goto_5
    if-eqz v13, :cond_11

    const/4 v3, 0x0

    :goto_6
    const v4, 0x102037f

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3082
    if-eqz v13, :cond_12

    const/4 v3, 0x0

    :goto_7
    const v4, 0x1020372

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3083
    return-object v2

    .line 2987
    .end local v8    # "addedBadge":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    const v4, 0x1020006

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 2988
    const v3, 0x1020006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2989
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Landroid/app/Notification$Builder;->processSmallIconAsLarge(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 3002
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mNumber:I

    if-lez v3, :cond_8

    .line 3003
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3004
    const v4, 0x10e0003

    .line 3003
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 3005
    .local v14, "tooBig":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mNumber:I

    if-le v3, v14, :cond_7

    .line 3007
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3008
    const v4, 0x1040017

    .line 3007
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3006
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x1020380

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3013
    :goto_8
    const v3, 0x1020380

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3014
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 3010
    :cond_7
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v11

    .line 3011
    .local v11, "f":Ljava/text/NumberFormat;
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mNumber:I

    int-to-long v4, v3

    invoke-virtual {v11, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x1020380

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_8

    .line 3016
    .end local v11    # "f":Ljava/text/NumberFormat;
    .end local v14    # "tooBig":I
    :cond_8
    const v3, 0x1020380

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 3028
    :cond_9
    const v3, 0x1020015

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 3031
    :cond_a
    const v3, 0x1020015

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3032
    if-eqz p2, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mProgressMax:I

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    if-eqz v3, :cond_d

    .line 3033
    :cond_b
    const v3, 0x102000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3035
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mProgressMax:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/Notification$Builder;->mProgress:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    const v6, 0x102000d

    .line 3034
    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 3037
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 3038
    const v4, 0x1060053

    .line 3037
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const v4, 0x102000d

    .line 3036
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    .line 3039
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mColor:I

    if-eqz v3, :cond_c

    .line 3040
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mColor:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 3041
    .local v9, "colorStateList":Landroid/content/res/ColorStateList;
    const v3, 0x102000d

    invoke-virtual {v2, v3, v9}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    .line 3042
    const v3, 0x102000d

    invoke-virtual {v2, v3, v9}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 3044
    .end local v9    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_c
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 3046
    :cond_d
    const v3, 0x102000d

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 3062
    :cond_e
    const v3, 0x102008c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3063
    const-string/jumbo v3, "setTime"

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/app/Notification$Builder;->mWhen:J

    const v6, 0x102008c

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto/16 :goto_3

    .line 3074
    :cond_f
    const v3, 0x1020381

    goto/16 :goto_4

    .line 3077
    .restart local v8    # "addedBadge":Z
    :cond_10
    const/4 v13, 0x1

    goto/16 :goto_5

    .line 3081
    :cond_11
    const/16 v3, 0x8

    goto/16 :goto_6

    .line 3082
    :cond_12
    const/16 v3, 0x8

    goto/16 :goto_7
.end method

.method private applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "layoutId"    # I

    .prologue
    const v6, 0x1020366

    const/4 v5, 0x0

    .line 3140
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 3142
    .local v1, "big":Landroid/widget/RemoteViews;
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    .line 3144
    iget-object v4, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3145
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 3146
    invoke-virtual {v1, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3147
    const v4, 0x102036f

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3148
    const/4 v4, 0x3

    if-le v0, v4, :cond_0

    const/4 v0, 0x3

    .line 3149
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 3150
    iget-object v4, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$Action;

    invoke-direct {p0, v4}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 3151
    .local v2, "button":Landroid/widget/RemoteViews;
    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 3149
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3154
    .end local v2    # "button":Landroid/widget/RemoteViews;
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method public static calculateTopPadding(Landroid/content/Context;ZF)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "hasThreeLines"    # Z
    .param p2, "fontScale"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 3119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p1, :cond_0

    .line 3120
    const v3, 0x105005e

    .line 3119
    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3122
    .local v2, "padding":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p1, :cond_1

    .line 3123
    const v3, 0x1050060

    .line 3122
    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3125
    .local v1, "largePadding":I
    const v3, 0x3fa66666    # 1.3f

    invoke-static {p2, v5, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    sub-float/2addr v3, v5

    .line 3126
    const v4, 0x3e999998    # 0.29999995f

    .line 3125
    div-float v0, v3, v4

    .line 3130
    .local v0, "largeFactor":F
    sub-float v3, v5, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3

    .line 3121
    .end local v0    # "largeFactor":F
    .end local v1    # "largePadding":I
    .end local v2    # "padding":I
    :cond_0
    const v3, 0x105005d

    goto :goto_0

    .line 3124
    .restart local v2    # "padding":I
    :cond_1
    const v3, 0x105005f

    goto :goto_1
.end method

.method private generateActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    const/4 v3, 0x0

    const v1, 0x1020367

    .line 3186
    iget-object v4, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v4, :cond_1

    const/4 v6, 0x1

    .line 3187
    .local v6, "tombstone":Z
    :goto_0
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 3188
    if-eqz v6, :cond_2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    move-result v4

    .line 3187
    :goto_1
    invoke-direct {v0, v5, v4}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 3190
    .local v0, "button":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    .local v2, "ai":Landroid/graphics/drawable/Icon;
    move-object v4, v3

    move-object v5, v3

    .line 3191
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelative(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    .line 3192
    iget-object v3, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3193
    if-nez v6, :cond_0

    .line 3194
    iget-object v3, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3196
    :cond_0
    iget-object v3, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 3197
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->processLegacyAction(Landroid/app/Notification$Action;Landroid/widget/RemoteViews;)V

    .line 3198
    return-object v0

    .line 3186
    .end local v0    # "button":Landroid/widget/RemoteViews;
    .end local v2    # "ai":Landroid/graphics/drawable/Icon;
    .end local v6    # "tombstone":Z
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "tombstone":Z
    goto :goto_0

    .line 3189
    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    move-result v4

    goto :goto_1
.end method

.method private getActionLayoutResource()I
    .locals 1

    .prologue
    .line 3717
    const v0, 0x1090080

    return v0
.end method

.method private getActionTombstoneLayoutResource()I
    .locals 1

    .prologue
    .line 3721
    const v0, 0x1090082

    return v0
.end method

.method private getBaseLayoutResource()I
    .locals 1

    .prologue
    .line 3697
    const v0, 0x1090085

    return v0
.end method

.method private getBigBaseLayoutResource()I
    .locals 1

    .prologue
    .line 3701
    const v0, 0x1090086

    return v0
.end method

.method private getBigPictureLayoutResource()I
    .locals 1

    .prologue
    .line 3705
    const v0, 0x1090089

    return v0
.end method

.method private getBigTextLayoutResource()I
    .locals 1

    .prologue
    .line 3709
    const v0, 0x109008a

    return v0
.end method

.method private getInboxLayoutResource()I
    .locals 1

    .prologue
    .line 3713
    const v0, 0x109008b

    return v0
.end method

.method private static getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "templateClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3544
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Class;

    .line 3545
    const-class v3, Landroid/app/Notification$BigTextStyle;

    aput-object v3, v0, v2

    const-class v3, Landroid/app/Notification$BigPictureStyle;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$InboxStyle;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$MediaStyle;

    const/4 v4, 0x3

    aput-object v3, v0, v4

    .line 3546
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 3547
    .local v1, "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3548
    return-object v1

    .line 3546
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3551
    .end local v1    # "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getProfileBadge()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 2895
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2896
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 2897
    return-object v4

    .line 2899
    :cond_0
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2900
    const v5, 0x1050062

    .line 2899
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2901
    .local v3, "size":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2902
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2903
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v6, v6, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2904
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2905
    return-object v1
.end method

.method private getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 2890
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2891
    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Landroid/app/Notification$Builder;->mOriginatingUserId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    .line 2890
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private hasThreeLines()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 3102
    iget-object v6, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    .line 3103
    .local v1, "contentTextInLine2":Z
    :goto_0
    iget-object v6, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v6}, Landroid/app/Notification$Style;->hasProgress()Z

    move-result v4

    .line 3105
    :goto_1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    const/4 v0, 0x0

    .line 3106
    .local v0, "badgeInLine3":Z
    :goto_2
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    :cond_1
    const/4 v3, 0x1

    .line 3108
    :goto_3
    iget-object v6, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_6

    const/4 v2, 0x1

    .line 3111
    :goto_4
    if-eqz v2, :cond_9

    :goto_5
    return v3

    .line 3102
    .end local v0    # "badgeInLine3":Z
    .end local v1    # "contentTextInLine2":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "contentTextInLine2":Z
    goto :goto_0

    .line 3103
    :cond_3
    const/4 v4, 0x1

    .local v4, "hasProgress":Z
    goto :goto_1

    .line 3105
    .end local v4    # "hasProgress":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "badgeInLine3":Z
    goto :goto_2

    .line 3106
    :cond_5
    iget v6, p0, Landroid/app/Notification$Builder;->mNumber:I

    if-gtz v6, :cond_1

    .line 3107
    move v3, v0

    .local v3, "hasLine3":Z
    goto :goto_3

    .line 3109
    .end local v3    # "hasLine3":Z
    :cond_6
    if-eqz v4, :cond_8

    iget-object v6, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    if-nez v6, :cond_8

    .line 3110
    iget v6, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    if-nez v6, :cond_7

    iget-boolean v2, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    .local v2, "hasLine2":Z
    goto :goto_4

    .end local v2    # "hasLine2":Z
    :cond_7
    const/4 v2, 0x1

    .local v2, "hasLine2":Z
    goto :goto_4

    .line 3109
    .end local v2    # "hasLine2":Z
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "hasLine2":Z
    goto :goto_4

    .end local v2    # "hasLine2":Z
    :cond_9
    move v3, v5

    .line 3111
    goto :goto_5
.end method

.method private isLegacy()Z
    .locals 1

    .prologue
    .line 3206
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 3173
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3175
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private makeContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 3158
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 3159
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    return-object v0

    .line 3161
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 3179
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3181
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private makeTickerView()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3166
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 3167
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    return-object v0

    .line 3169
    :cond_0
    return-object v1
.end method

.method private processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3247
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3248
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    .line 3247
    if-eqz v0, :cond_0

    .line 3249
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->applyLargeIconBackground(Landroid/widget/RemoteViews;)V

    .line 3246
    :goto_0
    return-void

    .line 3251
    :cond_0
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->removeLargeIconBackground(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method private processLegacyAction(Landroid/app/Notification$Action;Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "action"    # Landroid/app/Notification$Action;
    .param p2, "button"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3210
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3212
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v1, 0x1060050

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 3213
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 3211
    const v2, 0x1020367

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelativeColorFilter(IIILandroid/graphics/PorterDuff$Mode;)V

    .line 3209
    :cond_1
    return-void
.end method

.method private processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 3218
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3219
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/NotificationColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3221
    :cond_0
    return-object p1
.end method

.method private processSmallIconAsLarge(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v3, -0x1

    .line 3229
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3232
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 3230
    const v1, 0x1020006

    const/4 v2, 0x0

    move-object v0, p2

    move v4, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 3233
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->applyLargeIconBackground(Landroid/widget/RemoteViews;)V

    .line 3228
    :cond_0
    :goto_0
    return-void

    .line 3235
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3236
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->applyLargeIconBackground(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method private processSmallRightIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "smallIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v1, 0x1020040

    const/4 v3, -0x1

    .line 3283
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3286
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 3284
    const/4 v2, 0x0

    move-object v0, p2

    move v4, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 3288
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3289
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 3290
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    move-result v7

    .line 3291
    :goto_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v7, :cond_2

    .line 3293
    :cond_1
    const-string/jumbo v0, "setBackgroundResource"

    .line 3294
    const v2, 0x10804e7

    .line 3292
    invoke-virtual {p2, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3300
    invoke-direct {p0}, Landroid/app/Notification$Builder;->resolveColor()I

    move-result v4

    .line 3301
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 3298
    const/4 v2, 0x1

    move-object v0, p2

    move v6, v3

    .line 3296
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 3282
    :cond_2
    return-void

    .line 3288
    :cond_3
    const/4 v7, 0x0

    .local v7, "gray":Z
    goto :goto_0
.end method

.method private rebuild()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 3503
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    if-nez v1, :cond_0

    .line 3504
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "rebuild() only valid when in \'rebuild\' mode."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3506
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasThreeLines()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    .line 3508
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    iget-object v0, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3510
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "android.rebuild.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3511
    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    const-string/jumbo v1, "android.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 3513
    :cond_1
    const-string/jumbo v1, "android.rebuild.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3515
    const-string/jumbo v1, "android.rebuild.contentView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3516
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/Notification$Builder;->setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3517
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_2

    .line 3518
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->populateContentView(Landroid/app/Notification;)V

    .line 3521
    :cond_2
    const-string/jumbo v1, "android.rebuild.contentView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3523
    const-string/jumbo v1, "android.rebuild.bigView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3524
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3525
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_3

    .line 3526
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->populateBigContentView(Landroid/app/Notification;)V

    .line 3529
    :cond_3
    const-string/jumbo v1, "android.rebuild.bigView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3531
    const-string/jumbo v1, "android.rebuild.hudView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3532
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/Notification$Builder;->setBuilderHeadsUpContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3533
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_4

    .line 3534
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->populateHeadsUpContentView(Landroid/app/Notification;)V

    .line 3537
    :cond_4
    const-string/jumbo v1, "android.rebuild.hudView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3539
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    .line 3540
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    return-object v1
.end method

.method public static rebuild(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 3473
    iget-object v4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3474
    .local v4, "extras":Landroid/os/Bundle;
    const-string/jumbo v5, "android.rebuild"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    return-object p1

    .line 3475
    :cond_0
    const-string/jumbo v5, "android.rebuild"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3479
    const-string/jumbo v5, "android.rebuild.applicationInfo"

    .line 3478
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3483
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x4

    .line 3482
    :try_start_0
    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3489
    .local v2, "builderContext":Landroid/content/Context;
    :goto_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 3490
    .local v1, "b":Landroid/app/Notification$Builder;
    invoke-direct {v1}, Landroid/app/Notification$Builder;->rebuild()Landroid/app/Notification;

    move-result-object v5

    return-object v5

    .line 3484
    .end local v1    # "b":Landroid/app/Notification$Builder;
    .end local v2    # "builderContext":Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 3485
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "Notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ApplicationInfo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    move-object v2, p0

    .restart local v2    # "builderContext":Landroid/content/Context;
    goto :goto_0
.end method

.method private removeLargeIconBackground(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3276
    const-string/jumbo v0, "setBackgroundResource"

    const v1, 0x1020006

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3275
    return-void
.end method

.method private resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .locals 9
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v8, 0x0

    const v7, 0x1020040

    const v1, 0x1020006

    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 2942
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->removeLargeIconBackground(Landroid/widget/RemoteViews;)V

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 2943
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 2944
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2945
    const-string/jumbo v0, "setBackgroundResource"

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2946
    invoke-virtual {p1, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2947
    const-string/jumbo v0, "setBackgroundResource"

    invoke-virtual {p1, v7, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2948
    invoke-virtual {p1, v7, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2949
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2950
    const v0, 0x1020016

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2951
    const v0, 0x1020075

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2952
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->unshrinkLine3Text(Landroid/widget/RemoteViews;)V

    .line 2953
    const v0, 0x1020015

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2954
    const v0, 0x1020015

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2955
    const v0, 0x1020380

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2956
    const v0, 0x102008c

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2957
    const v0, 0x102037f

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2958
    const v0, 0x1020372

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2959
    const v0, 0x102000d

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2960
    const v0, 0x102037c

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2961
    const v0, 0x102008c

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2941
    return-void
.end method

.method private resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "big"    # Landroid/widget/RemoteViews;

    .prologue
    const v2, 0x1020366

    const/16 v1, 0x8

    .line 3134
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3135
    const v0, 0x102036f

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3136
    invoke-virtual {p1, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 3133
    return-void
.end method

.method private resolveColor()I
    .locals 2

    .prologue
    .line 3314
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    if-nez v0, :cond_0

    .line 3315
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v1, 0x106004f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0

    .line 3317
    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    return v0
.end method

.method private restoreFromNotification(Landroid/app/Notification;)V
    .locals 4
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 3582
    iget-wide v2, p1, Landroid/app/Notification;->when:J

    iput-wide v2, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 3583
    invoke-static {p1}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 3584
    iget v1, p1, Landroid/app/Notification;->iconLevel:I

    iput v1, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    .line 3585
    iget v1, p1, Landroid/app/Notification;->number:I

    iput v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    .line 3587
    iget v1, p1, Landroid/app/Notification;->color:I

    iput v1, p0, Landroid/app/Notification$Builder;->mColor:I

    .line 3589
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 3590
    iget-object v1, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 3591
    iget-object v1, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 3592
    iget-object v1, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 3593
    iget-object v1, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 3594
    invoke-static {p1}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 3595
    iget-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 3596
    iget v1, p1, Landroid/app/Notification;->audioStreamType:I

    iput v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 3597
    iget-object v1, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 3599
    iget-object v1, p1, Landroid/app/Notification;->vibrate:[J

    iput-object v1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    .line 3600
    iget v1, p1, Landroid/app/Notification;->ledARGB:I

    iput v1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    .line 3601
    iget v1, p1, Landroid/app/Notification;->ledOnMS:I

    iput v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    .line 3602
    iget v1, p1, Landroid/app/Notification;->ledOffMS:I

    iput v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    .line 3603
    iget v1, p1, Landroid/app/Notification;->defaults:I

    iput v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    .line 3604
    iget v1, p1, Landroid/app/Notification;->flags:I

    iput v1, p0, Landroid/app/Notification$Builder;->mFlags:I

    .line 3606
    iget-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mCategory:Ljava/lang/String;

    .line 3607
    invoke-static {p1}, Landroid/app/Notification;->-get0(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mGroupKey:Ljava/lang/String;

    .line 3608
    invoke-static {p1}, Landroid/app/Notification;->-get3(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mSortKey:Ljava/lang/String;

    .line 3609
    iget v1, p1, Landroid/app/Notification;->priority:I

    iput v1, p0, Landroid/app/Notification$Builder;->mPriority:I

    .line 3610
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3611
    iget-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_0

    .line 3612
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3614
    :cond_0
    iget v1, p1, Landroid/app/Notification;->visibility:I

    iput v1, p0, Landroid/app/Notification$Builder;->mVisibility:I

    .line 3616
    iget-object v1, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 3619
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3620
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "android.originatingUserId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mOriginatingUserId:I

    .line 3621
    const-string/jumbo v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 3622
    const-string/jumbo v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 3623
    const-string/jumbo v1, "android.subText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 3624
    const-string/jumbo v1, "android.infoText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 3625
    const-string/jumbo v1, "android.progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mProgress:I

    .line 3626
    const-string/jumbo v1, "android.progressMax"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    .line 3627
    const-string/jumbo v1, "android.progressIndeterminate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    .line 3628
    const-string/jumbo v1, "android.showChronometer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    .line 3629
    const-string/jumbo v1, "android.showWhen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    .line 3630
    const-string/jumbo v1, "android.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3631
    const-string/jumbo v1, "android.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 3633
    :cond_1
    const-string/jumbo v1, "android.people"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3634
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3635
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    const-string/jumbo v2, "android.people"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3579
    :cond_2
    return-void
.end method

.method private sanitizeColor()I
    .locals 2

    .prologue
    .line 3307
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    if-eqz v0, :cond_0

    .line 3308
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$Builder;->mColor:I

    .line 3310
    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    return v0
.end method

.method private setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "bigContentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3563
    iput-object p2, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3564
    instance-of v0, p2, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v0, :cond_0

    .line 3565
    iget-object v0, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.bigViewActionCount"

    .line 3566
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 3565
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3562
    :cond_0
    return-void
.end method

.method private setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3555
    iput-object p2, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3556
    instance-of v0, p2, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v0, :cond_0

    .line 3557
    iget-object v0, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.contentViewActionCount"

    .line 3558
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 3557
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3554
    :cond_0
    return-void
.end method

.method private setBuilderHeadsUpContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "headsUpContentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3572
    iput-object p2, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3573
    instance-of v0, p2, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v0, :cond_0

    .line 3574
    iget-object v0, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "android.rebuild.hudViewActionCount"

    .line 3575
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 3574
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3571
    :cond_0
    return-void
.end method

.method private showsTimeOrChronometer()Z
    .locals 4

    .prologue
    .line 3091
    iget-wide v0, p0, Landroid/app/Notification$Builder;->mWhen:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shrinkLine3Text(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2930
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2931
    const v2, 0x105005c

    .line 2930
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v0, v1

    .line 2932
    .local v0, "subTextSize":F
    const v1, 0x1020075

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 2929
    return-void
.end method

.method public static stripForDelivery(Landroid/app/Notification;)V
    .locals 8
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3419
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.template"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3422
    .local v2, "templateClass":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3423
    invoke-static {v2}, Landroid/app/Notification$Builder;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v1, 0x1

    .line 3425
    .local v1, "stripViews":Z
    :goto_0
    const/4 v0, 0x0

    .line 3427
    .local v0, "isStripped":Z
    iget-object v3, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.largeIcon"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3430
    iput-object v5, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 3431
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.largeIcon"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3432
    const/4 v0, 0x1

    .line 3436
    :cond_0
    if-eqz v1, :cond_1

    .line 3437
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    instance-of v3, v3, Landroid/app/Notification$BuilderRemoteViews;

    .line 3436
    if-eqz v3, :cond_1

    .line 3438
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.contentViewActionCount"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3439
    iget-object v4, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    .line 3438
    if-ne v3, v4, :cond_1

    .line 3440
    iput-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3441
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.contentView"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3442
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.contentViewActionCount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3443
    const/4 v0, 0x1

    .line 3445
    :cond_1
    if-eqz v1, :cond_2

    .line 3446
    iget-object v3, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    instance-of v3, v3, Landroid/app/Notification$BuilderRemoteViews;

    .line 3445
    if-eqz v3, :cond_2

    .line 3447
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.bigViewActionCount"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3448
    iget-object v4, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    .line 3447
    if-ne v3, v4, :cond_2

    .line 3449
    iput-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3450
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.bigView"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3451
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.bigViewActionCount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3452
    const/4 v0, 0x1

    .line 3454
    :cond_2
    if-eqz v1, :cond_3

    .line 3455
    iget-object v3, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    instance-of v3, v3, Landroid/app/Notification$BuilderRemoteViews;

    .line 3454
    if-eqz v3, :cond_3

    .line 3456
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.hudViewActionCount"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3457
    iget-object v4, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    .line 3456
    if-ne v3, v4, :cond_3

    .line 3458
    iput-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3459
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.hudView"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3460
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild.hudViewActionCount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3461
    const/4 v0, 0x1

    .line 3464
    :cond_3
    if-eqz v0, :cond_4

    .line 3465
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.rebuild"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3414
    :cond_4
    return-void

    .line 3422
    .end local v0    # "isStripped":Z
    .end local v1    # "stripViews":Z
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "stripViews":Z
    goto/16 :goto_0

    .line 3423
    .end local v1    # "stripViews":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "stripViews":Z
    goto/16 :goto_0
.end method

.method private unshrinkLine3Text(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2936
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2937
    const v2, 0x105005a

    .line 2936
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v0, v1

    .line 2938
    .local v0, "regularTextSize":F
    const v1, 0x1020075

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 2935
    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2792
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2793
    return-object p0
.end method

.method public addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    .line 2812
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2813
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2727
    if-eqz p1, :cond_0

    .line 2728
    iget-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 2729
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    .line 2734
    :cond_0
    :goto_0
    return-object p0

    .line 2731
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 2670
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2671
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3652
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_0

    .line 3653
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 3655
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_1

    .line 3656
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 3658
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mOriginatingUserId:I

    .line 3659
    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasThreeLines()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    .line 3661
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    move-result-object v0

    .line 3663
    .local v0, "n":Landroid/app/Notification;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_2

    .line 3664
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->purgeResources()V

    .line 3665
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v0

    .line 3668
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 3669
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3672
    :cond_3
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 3673
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3674
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 3677
    :cond_4
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->populateExtras(Landroid/os/Bundle;)V

    .line 3678
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_5

    .line 3679
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 3682
    :cond_5
    iput-boolean v3, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    .line 3683
    return-object v0
.end method

.method public buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 3692
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 3693
    return-object p1
.end method

.method public buildUnstyled()Landroid/app/Notification;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3325
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 3326
    .local v0, "n":Landroid/app/Notification;
    iget-wide v2, p0, Landroid/app/Notification$Builder;->mWhen:J

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 3327
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v0, v1}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3328
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3329
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 3331
    :cond_0
    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    iput v1, v0, Landroid/app/Notification;->iconLevel:I

    .line 3332
    iget v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    iput v1, v0, Landroid/app/Notification;->number:I

    .line 3334
    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->color:I

    .line 3336
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3337
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3338
    iget-object v1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 3339
    iget-object v1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 3340
    iget-object v1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3341
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeTickerView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 3342
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v0, v1}, Landroid/app/Notification;->-set1(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3343
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 3344
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 3346
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3347
    iget v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 3348
    iget-object v1, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    iput-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 3349
    iget-object v1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    .line 3350
    iget v1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 3351
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 3352
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 3353
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 3354
    iget v1, p0, Landroid/app/Notification$Builder;->mFlags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3355
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3356
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setBuilderHeadsUpContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3357
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    if-nez v1, :cond_2

    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    if-eqz v1, :cond_3

    .line 3358
    :cond_2
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3360
    :cond_3
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 3361
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3363
    :cond_4
    iget-object v1, p0, Landroid/app/Notification$Builder;->mCategory:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 3364
    iget-object v1, p0, Landroid/app/Notification$Builder;->mGroupKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/Notification;->-set0(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3365
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSortKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/Notification;->-set3(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3366
    iget v1, p0, Landroid/app/Notification$Builder;->mPriority:I

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 3367
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 3368
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 3369
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3371
    :cond_5
    iget v1, p0, Landroid/app/Notification$Builder;->mVisibility:I

    iput v1, v0, Landroid/app/Notification;->visibility:I

    .line 3373
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_6

    .line 3374
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 3375
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    iget-object v2, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v1, v2, v4}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 3378
    :cond_6
    return-object v0
.end method

.method public extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/app/Notification$Extender;

    .prologue
    .line 2860
    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 2861
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2765
    iget-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2766
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    .line 2768
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3644
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public populateExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3388
    const-string/jumbo v0, "android.originatingUserId"

    iget v1, p0, Landroid/app/Notification$Builder;->mOriginatingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3389
    const-string/jumbo v0, "android.rebuild.applicationInfo"

    .line 3390
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3389
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3391
    const-string/jumbo v0, "android.title"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3392
    const-string/jumbo v0, "android.text"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3393
    const-string/jumbo v0, "android.subText"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3394
    const-string/jumbo v0, "android.infoText"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3395
    const-string/jumbo v0, "android.icon"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3396
    const-string/jumbo v0, "android.progress"

    iget v1, p0, Landroid/app/Notification$Builder;->mProgress:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3397
    const-string/jumbo v0, "android.progressMax"

    iget v1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3398
    const-string/jumbo v0, "android.progressIndeterminate"

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3399
    const-string/jumbo v0, "android.showChronometer"

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3400
    const-string/jumbo v0, "android.showWhen"

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3401
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    .line 3402
    const-string/jumbo v0, "android.largeIcon"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3404
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3405
    const-string/jumbo v1, "android.people"

    iget-object v0, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3386
    :cond_1
    return-void
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .prologue
    .line 2598
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2599
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 2643
    iput-object p1, p0, Landroid/app/Notification$Builder;->mCategory:Ljava/lang/String;

    .line 2644
    return-object p0
.end method

.method public setColor(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "argb"    # I

    .prologue
    .line 2883
    iput p1, p0, Landroid/app/Notification$Builder;->mColor:I

    .line 2884
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2371
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 2372
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 2349
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 2350
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2387
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 2388
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2318
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 2319
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2310
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 2311
    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "defaults"    # I

    .prologue
    .line 2623
    iput p1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    .line 2624
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2397
    iput-object p1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 2398
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2750
    iput-object p1, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    .line 2751
    return-object p0
.end method

.method public setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 2868
    if-eqz p2, :cond_0

    .line 2869
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    .line 2867
    :goto_0
    return-void

    .line 2871
    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    goto :goto_0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .prologue
    .line 2422
    iput-object p1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 2423
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2424
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 2686
    iput-object p1, p0, Landroid/app/Notification$Builder;->mGroupKey:Ljava/lang/String;

    .line 2687
    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "isGroupSummary"    # Z

    .prologue
    .line 2698
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2699
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 2456
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2467
    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 2468
    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .prologue
    .line 2553
    iput p1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    .line 2554
    iput p2, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    .line 2555
    iput p3, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    .line 2556
    return-object p0
.end method

.method public setLocalOnly(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "localOnly"    # Z

    .prologue
    .line 2609
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2610
    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 2338
    iput p1, p0, Landroid/app/Notification$Builder;->mNumber:I

    .line 2339
    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    .prologue
    .line 2576
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2577
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    .prologue
    .line 2587
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2588
    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "pri"    # I

    .prologue
    .line 2633
    iput p1, p0, Landroid/app/Notification$Builder;->mPriority:I

    .line 2634
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 2359
    iput p1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    .line 2360
    iput p2, p0, Landroid/app/Notification$Builder;->mProgress:I

    .line 2361
    iput-boolean p3, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    .line 2362
    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 2851
    iput-object p1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 2852
    return-object p0
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 2237
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    .line 2238
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 2272
    if-eqz p1, :cond_0

    .line 2273
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 2272
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0

    .line 2274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .prologue
    .line 2289
    iput p2, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    .line 2290
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2302
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 2303
    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "sortKey"    # Ljava/lang/String;

    .prologue
    .line 2715
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSortKey:Ljava/lang/String;

    .line 2716
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 2484
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 2485
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 2486
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2502
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 2503
    iput p2, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 2504
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 2518
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 2519
    iput-object p2, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 2520
    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "style"    # Landroid/app/Notification$Style;

    .prologue
    .line 2822
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_0

    .line 2823
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 2824
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    .line 2825
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 2828
    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2328
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 2329
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .prologue
    .line 2433
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 2434
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2443
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 2444
    iput-object p2, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 2445
    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 2253
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    .line 2254
    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "pattern"    # [J

    .prologue
    .line 2536
    iput-object p1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    .line 2537
    return-object p0
.end method

.method public setVisibility(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 2840
    iput p1, p0, Landroid/app/Notification$Builder;->mVisibility:I

    .line 2841
    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "when"    # J

    .prologue
    .line 2228
    iput-wide p1, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 2229
    return-object p0
.end method
