.class public Landroid/widget/ShareActionProvider;
.super Landroid/view/ActionProvider;
.source "ShareActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;,
        Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;,
        Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_INITIAL_ACTIVITY_COUNT:I = 0x4

.field public static final DEFAULT_SHARE_HISTORY_FILE_NAME:Ljava/lang/String; = "share_history.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "ShareActionProvider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMaxShownActivityCount:I

.field private mOnChooseActivityListener:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

.field private final mOnMenuItemClickListener:Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

.field private mOnShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

.field private mShareHistoryFileName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/widget/ShareActionProvider;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/ShareActionProvider;)Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/ShareActionProvider;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/ShareActionProvider;->DBG:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 119
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/ShareActionProvider;->mMaxShownActivityCount:I

    .line 125
    new-instance v0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Landroid/widget/ShareActionProvider;Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;)V

    .line 124
    iput-object v0, p0, Landroid/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 140
    const-string/jumbo v0, "share_history.xml"

    iput-object v0, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 153
    iput-object p1, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    .line 151
    return-void
.end method

.method private setActivityChooserPolicyIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 341
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-nez v1, :cond_0

    .line 344
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 346
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-virtual {v0, v3}, Landroid/widget/ActivityChooserModel;->setOnChooseActivityListener(Landroid/widget/ActivityChooserModel$OnChooseActivityListener;)V

    .line 347
    return-void

    .line 349
    .end local v0    # "dataModel":Landroid/widget/ActivityChooserModel;
    :cond_0
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    if-nez v1, :cond_1

    .line 350
    new-instance v1, Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;

    invoke-direct {v1, p0, v3}, Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;-><init>(Landroid/widget/ShareActionProvider;Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;)V

    iput-object v1, p0, Landroid/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 352
    :cond_1
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 353
    .restart local v0    # "dataModel":Landroid/widget/ActivityChooserModel;
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->setOnChooseActivityListener(Landroid/widget/ActivityChooserModel$OnChooseActivityListener;)V

    .line 340
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 7

    .prologue
    .line 177
    new-instance v0, Landroid/widget/ActivityChooserView;

    iget-object v4, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, "activityChooserView":Landroid/widget/ActivityChooserView;
    const/4 v1, 0x0

    .line 180
    .local v1, "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 181
    iget-object v4, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v1

    .line 182
    .local v1, "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserView;->setActivityChooserModel(Landroid/widget/ActivityChooserModel;)V

    .line 185
    .end local v1    # "dataModel":Landroid/widget/ActivityChooserModel;
    :cond_0
    sget-boolean v4, Landroid/widget/ShareActionProvider;->DBG:Z

    if-eqz v4, :cond_1

    .line 186
    const-string/jumbo v4, "ShareActionProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreateActionView, mShareHistoryFileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 187
    iget-object v6, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 186
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 188
    const-string/jumbo v6, ", dataModel = "

    .line 186
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 189
    const-string/jumbo v6, ", activityChooserView = "

    .line 186
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 189
    const-string/jumbo v6, ", this = "

    .line 186
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 194
    .local v3, "outTypedValue":Landroid/util/TypedValue;
    iget-object v4, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010479

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 195
    iget-object v4, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 196
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2}, Landroid/widget/ActivityChooserView;->setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    invoke-virtual {v0, p0}, Landroid/widget/ActivityChooserView;->setProvider(Landroid/view/ActionProvider;)V

    .line 201
    const v4, 0x1040477

    .line 200
    invoke-virtual {v0, v4}, Landroid/widget/ActivityChooserView;->setDefaultActionButtonContentDescription(I)V

    .line 203
    const v4, 0x1040476

    .line 202
    invoke-virtual {v0, v4}, Landroid/widget/ActivityChooserView;->setExpandActivityOverflowButtonContentDescription(I)V

    .line 205
    return-object v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 10
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .prologue
    const/4 v9, 0x0

    .line 222
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 224
    iget-object v7, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v2

    .line 225
    .local v2, "dataModel":Landroid/widget/ActivityChooserModel;
    iget-object v7, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 227
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v3

    .line 228
    .local v3, "expandedActivityCount":I
    iget v7, p0, Landroid/widget/ShareActionProvider;->mMaxShownActivityCount:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 231
    .local v1, "collapsedActivityCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 232
    invoke-virtual {v2, v5}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 233
    .local v0, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p1, v9, v5, v5, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 234
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 233
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v7

    .line 235
    iget-object v8, p0, Landroid/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 233
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 231
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "activity":Landroid/content/pm/ResolveInfo;
    :cond_0
    if-ge v1, v3, :cond_1

    .line 242
    iget-object v7, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    const v8, 0x10404a3

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 240
    invoke-interface {p1, v9, v1, v1, v7}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v4

    .line 243
    .local v4, "expandedSubMenu":Landroid/view/SubMenu;
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 244
    invoke-virtual {v2, v5}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 245
    .restart local v0    # "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v4, v9, v5, v5, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 246
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 245
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v7

    .line 247
    iget-object v8, p0, Landroid/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 245
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 243
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 220
    .end local v0    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v4    # "expandedSubMenu":Landroid/view/SubMenu;
    :cond_1
    return-void
.end method

.method public setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .prologue
    .line 167
    iput-object p1, p0, Landroid/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 168
    invoke-direct {p0}, Landroid/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    .line 166
    return-void
.end method

.method public setShareHistoryFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareHistoryFile"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 283
    invoke-direct {p0}, Landroid/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    .line 281
    return-void
.end method

.method public setShareIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "shareIntent"    # Landroid/content/Intent;

    .prologue
    .line 301
    if-eqz p1, :cond_1

    .line 302
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    :cond_0
    const/high16 v2, 0x8080000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    .line 309
    iget-object v3, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 308
    invoke-static {v2, v3}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v1

    .line 310
    .local v1, "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-virtual {v1, p1}, Landroid/widget/ActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    .line 300
    return-void
.end method
